# EOS Implementer — Journey Map

The reference timeline showing what milestones to hit by which week,
in Standard tempo (~52 weeks) for Gino Wickman's EOS™ Implementation
Program. Fast Track halves the week numbers; Deep multiplies by 1.5.

**Important:** Week numbers are **orientation, not gates**. The hard
logic is always the substance check against
`assessment/substance-rubrics.md`. A user who is ahead of the map is
fine; a user who is behind by 4+ weeks triggers the Adaptive Tempo
conversation described in `SKILL.md` → "Adaptive Tempo Protocol".

---

## Standard tempo — 52 weeks

| Week | Milestone | Phase | Unlocks |
|---|---|---|---|
| 1 | Leadership team committed, *Traction* read, Organizational Checkup™ done (baseline) | Onboarding | — |
| 2-4 | Accountability Chart™ v1 — structure first (major functions + 5 roles per seat), then seats (names placed) | 1 | — |
| 4-5 | People Analyzer™ + GWC™ run on leadership team | 1 | — |
| 5-6 | First Quarterly Rocks™ set (pre-vision — 3-7 company Rocks, 3-7 per leader) | 1 | 90-Day Rocks Cycle → `cadences/quarterly-planning.md` |
| 6 | First Weekly L10™ run (7-item agenda, 90-minute hard stop) | 1 | Weekly L10 Cadence → `cadences/weekly-l10.md` |
| 7-9 | L10 discipline embedded (4+ consecutive L10s, real IDS™ happening) | 1 | — |
| 9-12 | Scorecard™ v1 — 5-15 weekly activity numbers, at least 2 weeks of real data | 1 | Scorecard review becomes part of L10 |
| 13 | **First Quarterly Planning Session** — Q2 Rocks set; Phase 1 gate check runs | 1 → 2 | — |
| 14-18 | V/TO™ Draft 1 — Vision side (Core Values, Core Focus™, 10-Year Target™, Marketing Strategy, 3-Year Picture™) | 2 | — |
| 18-20 | V/TO Draft 2 — Traction side (1-Year Plan, Quarterly Rocks on V/TO, Issues List); Rock Alignment Check against Phase 1 Rocks | 2 | — |
| 20-22 | Vision Cascade — first State-of-the-Company Meeting delivered to full workforce | 2 | State-of-Company Cadence → `cadences/quarterly-state-of-company.md` |
| 22 | **V/TO complete** — Phase 2 gate closes | 2 → 3 | — |
| 24-28 | Core Processes™ identified — 5-15 named with 100% leadership consensus, owners mapped to Accountability Chart seats | 3 | — |
| 26 | **Mid-year Organizational Checkup** — second run, compared against onboarding baseline | — | — |
| 28-36 | Core Processes documented — each 2-10 pages, major-steps-plus-bullets format, 20/80 rule | 3 | — |
| 36-40 | Processes trained organization-wide; sanity reads recorded per process | 3 | — |
| 40-44 | Cascade Rocks + L10 to department-level teams | — | Department-level L10s become legitimate sessions |
| 44-48 | Everyone Has a Number — measurables-directory.md lists every person with at least one weekly number, each rolling up to Scorecard and anchored to a Core Process | 3 | — |
| 48-52 | **First (or second) Annual Planning Session** — 2-day leadership off-site, V/TO rebuild, third Organizational Checkup | — | Annual Planning Cadence → `cadences/annual-planning.md` |
| 52 | **Foundation Complete → Graduation to Pure Operating Mode** — implementation program ends; operating cadences continue indefinitely | — | Implementation ends |

---

## Fast Track — 26 weeks

All week numbers ÷ 2. So the Accountability Chart lands at weeks
1-2.5, the first L10 at week 3, the Scorecard at weeks 4.5-6, the
Phase 1 gate at week 6.5, the V/TO at weeks 7-11, Phase 2 gate at
week 11, and so on.

**Recommended for:** small teams (under 20 people), strong Integrator
already in place, leadership 100% committed, focused attention with no
parallel major initiatives, 8+ weekly hours available for EOS work.

**Expected caveat:** Phase 3 (Processes) typically does NOT finish in
26 weeks. Wickman's own note is explicit about this. Fast Track teams
should expect Tool 6 to roll into year 2 of the journey. The skill
treats partial Tool 6 completion as a post-graduation commitment
rather than a graduation block (see `phases/03-systemization.md` →
"Bypass & skip handling").

---

## Deep — 78 weeks

All week numbers × 1.5. So the Accountability Chart lands at weeks
3-7.5, the first L10 at week 9, the Scorecard at weeks 13.5-18, the
Phase 1 gate at week 19.5, the V/TO at weeks 21-33, and so on.

**Recommended for:** larger teams (70+ people), multiple locations,
parallel change initiatives competing for leadership attention, lower
weekly hours committed, or a leadership team that wants deeper
anchoring before moving on to the next tool.

**Expected benefit:** Higher substance quality per tool because each
tool gets more real cycles of use (more L10s before the Scorecard gate
check, more Rocks cycles before the V/TO, more process sanity-reads
before Tool 6 closes).

---

## How drift detection works

On every session start, the skill:

1. Reads `started` date from `eos-state.md`
2. Computes `weeks_elapsed` from today, minus `paused_weeks_total`.
   While `pause_until` is in the future, drift detection is skipped
   entirely (see `SKILL.md` → "Entry Protocol", Step B)
3. Reads `current_step` from `eos-state.md` and looks up its target
   week range for the active tempo in this file
4. Classifies drift:
   - **Ahead** — `weeks_elapsed` is before the current step's target
     range → celebrate, no action
   - **On track** — `weeks_elapsed` is inside the current step's
     target range → normal flow
   - **Behind (mild)** — `weeks_elapsed` is up to 4 weeks past the
     target → acknowledge, offer focused catch-up, no tempo change
   - **Behind (significant)** — `weeks_elapsed` is 4+ weeks past the
     target → trigger Adaptive Tempo conversation (see `SKILL.md` →
     "Adaptive Tempo Protocol")

The Adaptive Tempo conversation does not automatically downgrade the
tempo. It asks the user WHY the drift happened (time reduced? priority
shifted? parallel initiative? team change?) and then offers either a
tempo downgrade OR a capacity protection plan (no new commitments for
the next N weeks) — depending on the cause.

---

## Outcome-based graduation

**The journey ends when every Phase 3 deliverable passes its substance
rubric AND the cross-tool integration checks pass — NOT when week 52
(or 26, or 78) is reached.**

- A Fast Track user who is ahead can graduate at week 22
- A Standard user can graduate at week 48 or at week 68 — both are
  legitimate
- A Deep user who is disciplined can graduate at week 70

Week numbers in this file are guidance for pacing conversations, drift
detection, and cadence timing. They are never used as gates. The gates
are in `assessment/substance-rubrics.md` and the phase files.

## Cross-references

- Tempo selection logic: `onboarding.md` Step G
- Drift detection at session start: `SKILL.md` → "Entry Protocol"
- Adaptive Tempo conversation: `SKILL.md` → "Adaptive Tempo Protocol"
- Phase definitions: `phases/01-structure-and-traction.md`,
  `phases/02-vision.md`, `phases/03-systemization.md`
- Cadence files (parallel to phases): `cadences/weekly-l10.md`,
  `cadences/quarterly-planning.md`,
  `cadences/quarterly-state-of-company.md`,
  `cadences/annual-planning.md`
- Graduation protocol: `SKILL.md` → "Graduation"
