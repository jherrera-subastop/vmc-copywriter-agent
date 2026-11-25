param(
  [string]$Root,
  [Parameter(Mandatory = $true)]
  [string]$IntegrationPath
)

if ([string]::IsNullOrWhiteSpace($Root)) {
  $Root = (Resolve-Path (Join-Path $PSScriptRoot '..\..\..\..')).Path
}

$requiredPaths = @(
  'AGENTS.md',
  'agent-spec\system-prompt.md',
  '.agents\skills\copywriter-workflow\SKILL.md',
  '.agents\skills\audit-copy\SKILL.md',
  '.agents\skills\copywriter-workflow\agents\openai.yaml',
  '.agents\skills\feedback-integration\SKILL.md',
  '.agents\skills\feedback-integration\agents\openai.yaml',
  'knowledge',
  'guardrails',
  'guardrails\agent-integrity.md',
  'evals',
  'evals\integrations',
  'evals\agent-structure-smoke-test.md',
  'evals\cases.jsonl',
  'evals\hard-gates.md',
  'evals\commercial-coherence-grader.md',
  'evals\candidate-delta-grader.md',
  'evals\decision-readiness-grader.md',
  'evals\strategy-sheet.md',
  'evals\human-reaction-judge.md',
  'evals\factual-grader.md',
  'evals\feature-context-intake-grader.md',
  'evals\source-structure-grader.md',
  'evals\headline-grader.md',
  'evals\message-hierarchy-grader.md',
  'evals\body-persuasion-grader.md',
  'evals\language-integrity-grader.md',
  'evals\conversion-energy-grader.md',
  'evals\vendo-mis-cosas-conversion.md',
  'evals\panels\vendo-mis-cosas.md',
  'knowledge\precedents\vinted-vmc-translation.md',
  'knowledge\library\vendo-mis-cosas.md',
  'evals\decision-red-team.md'
)

$missing = @()
foreach ($relativePath in $requiredPaths) {
  if (-not (Test-Path -LiteralPath (Join-Path $Root $relativePath))) {
    $missing += $relativePath
  }
}

if ($missing.Count -gt 0) {
  Write-Error "NO_GO_INTEGRATION: missing required paths: $($missing -join ', ')"
  exit 1
}

$workflow = Get-Content -Raw -LiteralPath (Join-Path $Root '.agents\skills\copywriter-workflow\SKILL.md')
$feedbackSkill = Get-Content -Raw -LiteralPath (Join-Path $Root '.agents\skills\feedback-integration\SKILL.md')
$auditSkill = Get-Content -Raw -LiteralPath (Join-Path $Root '.agents\skills\audit-copy\SKILL.md')
$strategySheet = Get-Content -Raw -LiteralPath (Join-Path $Root 'evals\strategy-sheet.md')
$referenceFidelity = Get-Content -Raw -LiteralPath (Join-Path $Root 'evals\reference-fidelity-grader.md')
$bodyPersuasion = Get-Content -Raw -LiteralPath (Join-Path $Root 'evals\body-persuasion-grader.md')
$requiredWorkflowReferences = @(
  'feedback-integration',
  'hard-gates.md',
  'feature-context-intake-grader.md',
  'commercial-coherence-grader.md',
  'decision-readiness-grader.md'
)
$missingWorkflowReferences = @($requiredWorkflowReferences | Where-Object { $workflow -notmatch [regex]::Escape($_) })
if ($missingWorkflowReferences.Count -gt 0) {
  Write-Error "NO_GO_INTEGRATION: workflow is not wired to: $($missingWorkflowReferences -join ', ')"
  exit 1
}

$sourceConceptWiring = @(
  @{ Name = 'workflow'; Text = $workflow; Need = 'canonical concept' },
  @{ Name = 'audit'; Text = $auditSkill; Need = 'Mapa de intención' },
  @{ Name = 'strategy sheet'; Text = $strategySheet; Need = 'Concepto canónico del plan/texto fuente' },
  @{ Name = 'reference fidelity'; Text = $referenceFidelity; Need = 'Fidelidad al plan' }
)
foreach ($check in $sourceConceptWiring) {
  if ($check.Text -notmatch [regex]::Escape($check.Need)) {
    Write-Error "NO_GO_INTEGRATION: $($check.Name) is not wired to source-concept fidelity"
    exit 1
  }
}

if ($referenceFidelity -notmatch [regex]::Escape('Mecanismo de referencia trazable')) {
  Write-Error 'NO_GO_INTEGRATION: reference fidelity grader does not require a traceable reference mechanism'
  exit 1
}
if ($bodyPersuasion -notmatch [regex]::Escape('Cadena de presión')) {
  Write-Error 'NO_GO_INTEGRATION: body persuasion grader does not block abstract possibility chains'
  exit 1
}

$gateCriteria = @{
  'evals\hard-gates.md' = @('factual-grader.md', 'feature-context-intake-grader.md', 'source-structure-grader.md', 'feedback-integration')
  'evals\commercial-coherence-grader.md' = @('headline-grader.md', 'message-hierarchy-grader.md', 'body-persuasion-grader.md', 'cta-continuity-grader.md', 'language-integrity-grader.md', 'conversion-energy-grader.md', 'candidate-delta-grader.md', 'vendo-mis-cosas-conversion.md')
  'evals\decision-readiness-grader.md' = @('audience-grader.md', 'human-reaction-judge.md', 'situational-panel.md', 'decision-red-team.md', 'panels/vendo-mis-cosas.md')
}
foreach ($gate in $gateCriteria.Keys) {
  $gateText = Get-Content -Raw -LiteralPath (Join-Path $Root $gate)
  $missingCriteria = @($gateCriteria[$gate] | Where-Object { $gateText -notmatch [regex]::Escape($_) })
  if ($missingCriteria.Count -gt 0) {
    Write-Error "NO_GO_INTEGRATION: $gate is not wired to: $($missingCriteria -join ', ')"
    exit 1
  }
}

$landingSkill = Get-Content -Raw -LiteralPath (Join-Path $Root '.agents\skills\landing\SKILL.md')
$vmcWiring = @('vinted-vmc-translation.md', 'direct response', 'New Eras Again', 'New Again')
$missingVmcWiring = @($vmcWiring | Where-Object { $landingSkill -notmatch [regex]::Escape($_) })
if ($missingVmcWiring.Count -gt 0) {
  Write-Error "NO_GO_INTEGRATION: Vendo Mis Cosas landing route is not wired to: $($missingVmcWiring -join ', ')"
  exit 1
}

$requiredLandingVmcRules = @('premio/costo personal', 'publicación/propuestas como acción', 'tesis de producto amplia', 'explora primero al menos tres territorios de venta', 'Valoriza aporta la tensión')
$missingLandingVmcRules = @($requiredLandingVmcRules | Where-Object { $landingSkill -notmatch [regex]::Escape($_) })
if ($missingLandingVmcRules.Count -gt 0) {
  Write-Error "NO_GO_INTEGRATION: Vendo Mis Cosas landing route lacks: $($missingLandingVmcRules -join ', ')"
  exit 1
}

$vmcEvaluator = Get-Content -Raw -LiteralPath (Join-Path $Root 'evals\vendo-mis-cosas-conversion.md')
$requiredVmcCriteria = @('Referencia con peso correcto', 'Escena dentro del paquete de apertura', 'Orden con consecuencia', 'Carga legible', 'Claridad semántica del H1', 'Alcance correcto de la tesis', 'Gran idea vendedora', 'Nivel de referencia Vinted')
$missingVmcCriteria = @($requiredVmcCriteria | Where-Object { $vmcEvaluator -notmatch [regex]::Escape($_) })
if ($missingVmcCriteria.Count -gt 0) {
  Write-Error "NO_GO_INTEGRATION: Vendo Mis Cosas evaluator lacks: $($missingVmcCriteria -join ', ')"
  exit 1
}

$conversionEnergy = Get-Content -Raw -LiteralPath (Join-Path $Root 'evals\conversion-energy-grader.md')
if ($conversionEnergy -notmatch [regex]::Escape('Idea comercial, no posibilidad funcional')) {
  Write-Error 'NO_GO_INTEGRATION: conversion-energy grader does not block functional possibilities used as ideas'
  exit 1
}

$vmcLibrary = Get-Content -Raw -LiteralPath (Join-Path $Root 'knowledge\library\vendo-mis-cosas.md')
if ($vmcLibrary -notmatch [regex]::Escape('Arquitectura preferida de transformación')) {
  Write-Error 'NO_GO_INTEGRATION: Vendo Mis Cosas library does not preserve the preferred reference architecture'
  exit 1
}

$requiredFeedbackReferences = @(
  'guardrails/agent-integrity.md',
  'agent-structure-smoke-test.md',
  'GO_INTEGRATION'
)
$missingFeedbackReferences = @($requiredFeedbackReferences | Where-Object { $feedbackSkill -notmatch [regex]::Escape($_) })
if ($missingFeedbackReferences.Count -gt 0) {
  Write-Error "NO_GO_INTEGRATION: feedback skill is not wired to: $($missingFeedbackReferences -join ', ')"
  exit 1
}

$integrationCandidate = if ([System.IO.Path]::IsPathRooted($IntegrationPath)) { $IntegrationPath } else { Join-Path $Root $IntegrationPath }
if (-not (Test-Path -LiteralPath $integrationCandidate)) {
  Write-Error "NO_GO_INTEGRATION: integration record not found: $IntegrationPath"
  exit 1
}

$integration = Get-Content -Raw -LiteralPath $integrationCandidate
$requiredIntegrationHeadings = @(
  '# Integration ID',
  '## Corrección editorial',
  '## Clasificación y destinos',
  '## Prueba de no regresión',
  '## Validación',
  '## Siguiente paso',
  'Resultado: `GO_INTEGRATION`'
)
$missingIntegrationHeadings = @($requiredIntegrationHeadings | Where-Object { $integration -notmatch [regex]::Escape($_) })
if ($missingIntegrationHeadings.Count -gt 0) {
  Write-Error "NO_GO_INTEGRATION: integration record incomplete: $($missingIntegrationHeadings -join ', ')"
  exit 1
}

try {
  Get-Content -LiteralPath (Join-Path $Root 'evals\cases.jsonl') | Where-Object { $_.Trim() } | ForEach-Object { $_ | ConvertFrom-Json | Out-Null }
  Get-ChildItem -LiteralPath (Join-Path $Root 'evals\editorial-calibration') -Filter '*.jsonl' -File | ForEach-Object {
    Get-Content -LiteralPath $_.FullName | Where-Object { $_.Trim() } | ForEach-Object { $_ | ConvertFrom-Json | Out-Null }
  }
}
catch {
  Write-Error "NO_GO_INTEGRATION: JSONL validation failed: $($_.Exception.Message)"
  exit 1
}

Write-Output 'GO_INTEGRATION: agent structure, workflow wiring and fast regression inputs are valid.'
