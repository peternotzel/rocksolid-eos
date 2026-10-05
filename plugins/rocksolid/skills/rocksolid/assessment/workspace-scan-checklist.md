# Workspace Scan Checklist

Used by `onboarding.md` Step C to detect existing EOS(R) documents in the
user's workspace before the skill starts writing new ones. The scan has
two passes: a fast filename glob pass and a light verification pass that
reads the top of each suspect file.

## Purpose

- Avoid overwriting work the user already has.
- Classify every found document as `done`, `needs-sharpening`, or
  `empty` so onboarding can produce an accurate gap report.
- Give the user confidence that the skill sees their existing artifacts
  before it proposes a plan.

## Pass 1 — Filename glob patterns

For each EOS tool, run glob searches against the workspace root. Every
match becomes a **suspect** handed to Pass 2.

### Vision / Traction Organizer (V/TO(TM))
- `**/vto*.md`
- `**/v-to*.md`
- `**/vision-traction*.md`
- `**/vision.md`
- `**/traction-organizer*.md`

### Accountability Chart(TM)
- `**/accountability-chart*.md`
- `**/org-chart*.md`
- `**/accountability*.md`
- `**/seats*.md`
- `**/roles-and-seats*.md`

### Rocks(TM) / Quarterly priorities
- `**/rocks*.md`
- `**/rock-sheet*.md`
- `**/quarterly-priorities*.md`
- `**/q[1-4]-rocks*.md`

### Level 10 Meeting(TM) / L10(TM)
- `**/l10*.md`
- `**/level-10*.md`
- `**/weekly-meeting*.md`
- `**/leadership-meeting*.md`
- `**/l10-notes/**/*.md`

### Scorecard
- `**/scorecard*.md`
- `**/weekly-scorecard*.md`
- `**/weekly-metrics*.md`
- `**/kpi-weekly*.md`

### Issues List
- `**/issues-list*.md`
- `**/issues*.md`
- `**/long-term-issues*.md`

### Core Processes
- `**/core-processes/**/*.md`
- `**/processes/**/*.md`
- `**/sop-*.md`
- `**/process-*.md`

### Everyone Has a Number / Measurables
- `**/measurables*.md`
- `**/measurables-directory*.md`
- `**/numbers-directory*.md`
- `**/everyone-has-a-number*.md`

### People Analyzer(TM) / GWC(TM)
- `**/people-analyzer*.md`
- `**/gwc*.md`
- `**/core-values-assessment*.md`

## Pass 2 — Verification heuristics

For each suspect from Pass 1, read the first 50 to 100 lines and classify
it against these signals. If the heuristic does not clearly fit, mark it
`needs-sharpening` and note the uncertainty.

- **V/TO suspect:** Does it contain core values, Core Focus(TM), 10-Year
  Target(TM), Marketing Strategy, 3-Year Picture(TM), 1-Year Plan, Rocks,
  Issues? All eight answered → `done`. Some answered → `needs-sharpening`.
  Only headings → `empty`.
- **Accountability Chart suspect:** Does it name an Integrator seat and
  3 or more major functions with 5 roles each? All present → `done`.
  Structure but missing GWC or names → `needs-sharpening`. Headings only
  → `empty`.
- **Rocks suspect:** Does it list 3 to 7 company Rocks with named owners
  and due dates? Yes → `done`. Some missing → `needs-sharpening`.
- **L10 suspect:** Is there an agenda file with all 7 segments and at
  least 4 weeks of dated note files with real content? Yes → `done`.
  Agenda only → `needs-sharpening`. Placeholder → `empty`.
- **Scorecard suspect:** 5 to 15 numbered rows with owners, goals, and
  at least 2 weeks of actuals in a rolling 13-week grid? Yes → `done`.
- **Issues List suspect:** Active list with dated entries? Yes → `done`.
  Empty template → `empty`.
- **Core Processes suspect:** Index file plus documented processes in
  the 2 to 10 page range with major-steps-plus-bullets format? Yes →
  `done`.
- **Measurables suspect:** Directory naming every person with a weekly
  number, target, and owner? Yes → `done`.

## Directories to skip

Never descend into:

- `.git/`
- `node_modules/`
- `build/`
- `dist/`
- `.venv/`, `venv/`, `env/`, `__pycache__/`
- `.next/`, `.cache/`
- `output/` (unless it is clearly the user's EOS deliverables folder)
- `tmp/`, `.tmp/`

## Scope limits

- Do **not** read more than 50 to 100 lines per file.
- Do **not** process more than 20 suspects in Pass 2. If Pass 1 returns
  more than 20 candidates, ask the user which tools to prioritize.
- The full scan should complete in under 60 seconds of wall time.
- If a glob pattern returns hundreds of matches, it is almost certainly
  a false positive (e.g., `issues*.md` inside a bug tracker) — narrow
  the scope before reading anything.

## What to report to the user

Group findings by tool. For each tool, show one row per suspect:

```
## Workspace Scan Result

### V/TO
- docs/strategy/vto.md — done (all 8 questions answered)
- docs/strategy/vision-draft.md — needs-sharpening (no 3-Year Picture)

### Accountability Chart
- (none found)

### Rocks
- planning/q2-rocks.md — needs-sharpening (owners missing on 2 rocks)

### L10
- meetings/l10-agenda.md — done
- meetings/l10-notes/ — 3 weeks of notes (needs 4 to pass gate)
```

Then hand off to the gap template `Workspace Scan Result` in
`gap-templates.md` for the formatted summary the user sees.
