param(
  [Parameter(Mandatory = $true)]
  [string]$SourceRoot,
  [Parameter(Mandatory = $true)]
  [string]$IntegrationPath,
  [Parameter(Mandatory = $true)]
  [string]$RunPath
)

$ErrorActionPreference = 'Stop'
$source = (Resolve-Path -LiteralPath $SourceRoot).Path
$repo = Split-Path -Parent $PSScriptRoot

function Assert-ItemParity {
  param(
    [Parameter(Mandatory = $true)][string]$SourcePath,
    [Parameter(Mandatory = $true)][string]$TargetPath
  )

  if (Test-Path -LiteralPath $SourcePath -PathType Leaf) {
    $sourceHash = (Get-FileHash -LiteralPath $SourcePath -Algorithm SHA256).Hash
    $targetHash = (Get-FileHash -LiteralPath $TargetPath -Algorithm SHA256).Hash
    if ($sourceHash -ne $targetHash) { throw "El archivo empaquetado difiere: $TargetPath" }
    return
  }

  $sourceFiles = Get-ChildItem -LiteralPath $SourcePath -Recurse -File | ForEach-Object {
    [PSCustomObject]@{
      RelativePath = $_.FullName.Substring($SourcePath.Length).TrimStart('\\')
      Hash = (Get-FileHash -LiteralPath $_.FullName -Algorithm SHA256).Hash
    }
  }
  $targetFiles = Get-ChildItem -LiteralPath $TargetPath -Recurse -File | ForEach-Object {
    [PSCustomObject]@{
      RelativePath = $_.FullName.Substring($TargetPath.Length).TrimStart('\\')
      Hash = (Get-FileHash -LiteralPath $_.FullName -Algorithm SHA256).Hash
    }
  }
  if (Compare-Object $sourceFiles $targetFiles -Property RelativePath, Hash) {
    throw "El directorio empaquetado difiere: $TargetPath"
  }
}

$required = @('AGENTS.md', '.agents', 'agent-spec', 'evals', 'guardrails', 'knowledge', 'sources')
foreach ($item in $required) {
  if (-not (Test-Path -LiteralPath (Join-Path $source $item))) {
    throw "El core fuente no contiene $item"
  }
}

$targets = @(
  (Join-Path $repo 'templates\vmc-copywriter\references\runtime'),
  (Join-Path $repo 'claude-adapter\templates\vmc-copywriter\references\runtime'),
  (Join-Path $repo 'codex-adapter\templates\vmc-copywriter\references\runtime'),
  (Join-Path $repo 'vmc-copywriter-agent\skills\vmc-copywriter\references\runtime')
)

foreach ($target in $targets) {
  foreach ($item in $required) {
    $destination = Join-Path $target $item
    if (Test-Path -LiteralPath $destination) {
      Remove-Item -LiteralPath $destination -Force -Recurse
    }
    Copy-Item -LiteralPath (Join-Path $source $item) -Destination $destination -Force -Recurse
    Assert-ItemParity -SourcePath (Join-Path $source $item) -TargetPath $destination
  }

  $validator = Join-Path $target '.agents\skills\feedback-integration\scripts\validate-agent-integration.ps1'
  & pwsh -File $validator -Root $target -IntegrationPath $IntegrationPath
  if ($LASTEXITCODE -ne 0) { throw "El smoke test falló para $target" }

  $runValidator = Join-Path $target '.agents\skills\copywriter-workflow\scripts\validate-run.ps1'
  & pwsh -File $runValidator -RunPath (Join-Path $target $RunPath)
  if ($LASTEXITCODE -ne 0) { throw "El run validator falló para $target" }
}

Write-Output "DISTRIBUTION_GO: $($targets.Count) runtimes sincronizados y verificados."
