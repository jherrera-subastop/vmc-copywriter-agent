---
name: copywriter-workflow
description: Run VMC's evidence-based commercial-copy workflow for a URL, image or text. Use for landing pages, emails, posts, stories, reels and commercial UX copy.
---

# VMC Copywriter Workflow

## Purpose

Create one paste-ready commercial-copy candidate from verified product facts and the editor's brief. The workflow improves decision quality; it does not claim to predict conversion.

## Route

1. **Resolve the brief.** Read the editor's context, the relevant feature library and `sources/source-registry.md`. Establish the plan's canonical concept, intended direction, action **and the emotion/decision the editor wants to activate** before selecting any creative angle. An emotion expressly provided by the editor is canonical campaign direction, not optional decoration. If it is absent and two credible emotions would produce materially different copy, ask one material question; do not silently choose a generic emotion. If a missing fact would change the claim or target audience, ask one material question.

   **Feature intake, only when needed.** If the feature is not documented or the source/context leaves a material gap, use `evals/feature-context-intake-grader.md`. Ask only the missing items from its five-question grid, in one compact message; never make the editor complete a form when the piece already answers a question. Once the editor explains the feature, extract reusable facts for `knowledge/library/` according to its README; later corrections update the feature card through `feedback-integration`. If the feature is already documented and the brief is sufficient, do not ask the grid again.
2. **Audit the input.** Read `.agents/skills/audit-copy/SKILL.md`; map existing hierarchy, factual claims, the actual campaign objective and the commercial tension already present. When a source piece exists, create an ordered source map and treat it as delivery scope; read `evals/source-structure-grader.md` before drafting.
3. **Select the channel.** Read exactly one channel skill: `landing`, `email`, `post-social`, `story`, `reel` or `ux-copy`.
4. **Set strategy.** Use `evals/strategy-sheet.md`, `knowledge/principles/feature-to-feeling.md`, `knowledge/research/conversion-copywriting-method.md` and the design sheet in `knowledge/research/consumer-persuasion-evidence.md`: derive one audience context, one human decision, one tension, one desired change, one verified mechanism, one primary persuasion lever and at most one secondary lever. First order the message as `razón humana → cambio → mecanismo → acción`; treat real VMC research and editorial calibration as evidence, and external copywriting sources only as method. Map every candidate back to the canonical concept, direction, action and requested emotion from step 1; discard a clever angle that changes any of them. When the editor gives a correction, extract its transferable judgment (for example, tension, degree of concreteness or type of contrast) separately from the literal wording. A later candidate must apply that judgment with new language; it may reuse the editor's exact text only when the editor explicitly asks to use it. For consumer purchase-sale communication, also read `knowledge/voice/negociante-directo.md`. When the brief contains multiple legitimate reasons to act, also read `knowledge/principles/motivation-portfolio.md` and choose deliberately whether the asset has one route, several blocks or a sequence. Reuse the logic across features; never reuse another feature's angle, claims or wording.
5. **Develop the opening.** If the channel has H1, subject, hook or first frame, read [headline development](references/headline-development.md), [headline research](references/headline-research.md), `knowledge/principles/emotional-levers.md`, `knowledge/research/consumer-persuasion-evidence.md`, `knowledge/precedents/headline-pattern-library.md`, `knowledge/precedents/ecommerce-campaign-anatomy.md` and the creative layer of `knowledge/research/conversion-copywriting-method.md`. First define how the opening package will create product/action recognition —directly or through a naturally revealing pain/scene— then explore internally at least twelve territories before selecting one factual emotional lever and one decision-level consequence. References may sharpen the wording, sequence and tension only after their transferable pattern has been mapped to the plan's canonical concept. When editor examples exist, record their specific architecture as `decisión presente → costo/premio personal → control → acción`; a generic tonal summary is insufficient. A broad campaign opening cannot depend on one opaque pain for the reader to know what it offers. If approved examples exist, also read `knowledge/voice/approved-reference-deconstructions.md`. The opening is evaluated inside `evals/commercial-coherence-grader.md`; its resolving line must carry the emotional thought into the mechanism.
6. **Draft once the opening holds.** Build the rest of the piece so that each block has a different job: desire, proof, mechanism, objection or action. Develop the same human thesis through the body; do not let process steps replace the commercial idea. On a requested new version, preserve source structure but compare with the prior candidate and replace weak wording; only facts, canonical terms and explicitly positive editorial signals may carry over. When the editor explicitly requests `modo titulares`, stop after the opening: return a small set of materially different H1 + resolving-line packages for editorial calibration, never a full landing or a self-declared winner.
7. **Review sequentially.** Execute exactly three active gates, in this order:
   - `evals/hard-gates.md`: facts/legal, feature-context sufficiency, source fidelity and prior-feedback integration;
   - `evals/commercial-coherence-grader.md`: opening, idea, body, motivation coverage, reference use and CTA as applicable;
   - `evals/decision-readiness-grader.md`: contextual audience, six situations and adversarial decision check.
   The individual evaluator files are reference criteria called inside these gates, not a long runtime checklist. A failure in any gate requires a new premise, not synonym swaps or generic punctuation.
8. **Integrate editorial feedback, rework, calibrate or block.** When a material correction arrives, stop drafting and read `.agents/skills/feedback-integration/SKILL.md`. Create its integration record, classify it, update the correct component, create a regression and verify the workflow can invoke the change. Resume at step 1 only after that record passes `GO_INTEGRATION`; before then, never generate a revised candidate. A failed gate requires a new premise, not synonyms, punctuation or another generic headline. A missing material fact is `BLOCKED_FOR_CONTEXT`. When the gates pass but the relevant campaign has insufficient editor-approved signals, state `CALIBRATION_REQUIRED`; never relabel this state as final, ready, winner or conversion-ready.
9. **Record and validate.** Create a run record from [run-record.md](references/run-record.md), then run `scripts/validate-run.ps1`.

## Editorial calibration

Read `evals/editorial-calibration/README.md` before calling a creative result strong, on-tone or ready. Use the user's explicit approvals and rejections as calibration; do not replace that evidence with self-assigned numerical scores.

## Delivery

When status is `STRUCTURAL_PASS`, deliver only the candidate in the requested channel format. When status is `CALIBRATION_REQUIRED`, deliver a clearly labeled proposal for editorial calibration; do not imply finality. Do not show drafts or reviewer logs unless the editor asks for `modo diagnóstico`, `modo variantes` or `modo titulares`.

## Limits

- A workflow result is a structured and factual candidate, not a conversion guarantee.
- Never invent demand, results, urgency, financial outcomes or product conditions.
- No visible subagents or parallel reviewer chats without explicit editorial request.
