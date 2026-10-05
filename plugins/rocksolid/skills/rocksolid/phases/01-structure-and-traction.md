# Phase 1 — Structure & Traction

**Phase number:** 1 of 3
**Tools covered:** 1-4 (Accountability Chart™, Rocks™, Meeting Pulse™ / Level 10 Meeting™, Scorecard™)
**Goal:** Install Wickman's first four tools so the organization has
accountability, discipline, and a measurable weekly pulse — BEFORE any
vision work begins.

**Target weeks:** 1-13 (Standard tempo). Fast Track roughly weeks 2-7.
Deep tempo roughly weeks 2-20. Week numbers are orientation only — the
hard logic is the substance check.

**Phase gate criterion:** All four tools pass the substance rubrics in
`assessment/substance-rubrics.md` (Tools 1-4). Gate opens when every
required deliverable is either `substance_passed` or explicitly
`bypassed`, the first real L10™ has been run, and the first Rocks set
is in place.

**Rationale (Wickman's Chapter 9, paraphrased):** Vision work only
becomes productive after the leadership team is already running Rocks
and L10 Meetings on a weekly rhythm. Jumping straight to V/TO™ produces
aspirational vision documents that nobody executes. Foundation first,
vision second. This phase is the foundation.

## How to use this file

When the user is at a step in this phase:

1. Locate the step section below and read its metadata block.
2. Load the linked knowledge blocks from `../knowledge/`.
3. Copy the linked templates from `../templates/` into the user's
   deliverables folder if the files don't yet exist.
4. If the step is `team_mode: required`, run the team-mode
   clarification protocol from `../rules/team-required-tools.md`
   BEFORE writing any content.
5. Work through the step with the user, writing to the deliverable
   file(s) incrementally.
6. When the user says "check my {tool}" or the deliverable is
   complete, run the substance rubric for that tool from
   `../assessment/substance-rubrics.md`.
7. On pass: mark `status: substance_passed` in `eos-plan.md` and
   update `eos-state.md`. Check whether the phase gate has now opened.
8. On fail: report the failed checks with the failure messages from
   the rubric and stay on the step.

---

## Step 1 — Accountability Chart™ (+ People Analyzer™ + GWC™)

**Metadata:**
- phase: 1 (structure_and_traction)
- tool_number: 1
- target_weeks: 2-5 (Standard)
- team_mode: required (see `../rules/team-required-tools.md`)
- gate_level: non-negotiable
- prerequisite_steps: none
- knowledge_blocks:
  - `../knowledge/eos-accountability-chart.md`
  - `../knowledge/eos-visionary-integrator.md`
  - `../knowledge/eos-people-analyzer.md`
  - `../knowledge/eos-gwc.md`
- templates:
  - `../templates/accountability-chart.md`
  - `../templates/people-analyzer.md`
  - `../templates/gwc-assessments.md`
- deliverables:
  - `{deliverables_path}/accountability-chart.md`
  - `{deliverables_path}/people-analyzer.md`
  - `{deliverables_path}/gwc-assessments.md`
- substance_rubric: "See `../assessment/substance-rubrics.md` → Tool 1 — Accountability Chart"

**Guidance:**

This step installs the structural bones of the company. Walk the user
through it in Wickman's order: structure first (seats, major functions,
five roles per seat), THEN people (who goes in which seat). Resist any
attempt to reverse the order — if names go in first, the chart gets
sculpted around who is already there and it locks in existing
compromises.

After the structural chart is drafted, run the People Analyzer™ against
the defined Core Values (if they already exist — they may not in Phase
1; in that case use an interim working set and revisit during Phase 2
V/TO). For each leadership member, score 3-pluses / 3-plus-minuses /
no-minuses against each value. Then run GWC™ (Get it / Want it /
Capacity to do it) per seat per person — all three must be yes for the
person to hold the seat.

This is a team-required tool. In a solo session, the skill must stop
and run the clarification protocol: Facilitator (prep for the team
session), Scribe (capture a team meeting that already happened), or
Draft-Mode (solo draft that will be team-validated later; phase gate
remains blocked until validation is recorded).

**Completion criteria (substance-pass condition):**

- One Integrator seat exists, held by exactly one person
- 3 to 10 major functions on the front line, with the 3 core
  functions (Sales/Marketing, Operations, Finance/Administration)
  all present
- Exactly 5 major roles per seat
- Structure was defined before names were placed
- Every assigned person has GWC confirmed (all three yes)
- Every leadership member scored against Core Values with the
  3-pluses / 2-plus-minuses / no-minuses bar met
- Team authorship recorded (team_validated: true in state)

**Reason if skipped:**

Structure is root cause for most leadership-team dysfunction. Every
tool after this one is weaker without it — Rocks without seats have no
owners, L10 without a leadership team has no attendees, Scorecard
numbers without seats have no accountability. Skipping is a
non-negotiable block.

**Unlock on completion:** Nothing new yet. Phase 1 cadences activate
after Steps 2 and 3.

---

## Step 2 — Rocks™

**Metadata:**
- phase: 1 (structure_and_traction)
- tool_number: 2
- target_weeks: 5-6 (Standard)
- team_mode: required (see `../rules/team-required-tools.md`)
- gate_level: non-negotiable
- prerequisite_steps: [1]
- knowledge_blocks:
  - `../knowledge/eos-rocks.md`
  - `../knowledge/eos-ninety-day-world.md`
- templates:
  - `../templates/rocks-quarterly.md`
- deliverables:
  - `{deliverables_path}/rocks-q{current_quarter}.md`
- substance_rubric: "See `../assessment/substance-rubrics.md` → Tool 2 — Rocks"

**Guidance:**

The 90-day world is the unit of cadence in the EOS™ Operating System.
Rocks are the 3-7 most important things the company and each
leadership member will complete this quarter. Walk the user through a
mini quarterly planning session: brainstorm candidates, keep it
concrete and measurable, and narrow down to 3-7 company Rocks plus 3-7
individual Rocks per leadership member (their company Rock counts
toward that number).

Every Rock must have exactly one owner, a clear due date (end of
quarter), and a binary done/not-done criterion. Open-ended Rocks like
"improve onboarding" fail the rubric — rewrite them as "ship v2 of the
customer onboarding flow to production by June 30" or similar.

Because Phase 1 runs before the V/TO™, the Rocks set in this step are
**Pre-Vision Rocks**. Mark them with a header note in the deliverable
file so the agent can later trigger the Rock Alignment Check when V/TO
completes in Phase 2.

**Completion criteria (substance-pass condition):**

- 3 to 7 company Rocks for the current quarter
- 3 to 7 individual Rocks per leadership team member
- Each Rock has exactly one owner
- Each Rock has a specific due date (end of quarter)
- Each Rock is specific, measurable, attainable, and binary
- Header note on pre-vision status present in the file
- Team authorship recorded

**Reason if skipped:**

Without Rocks the L10 Rock Review has nothing to review and the
traction engine does not start. Rocks are what turn a quarter from an
indistinct blur into a focused 90-day sprint. Skipping is a
non-negotiable block.

**Unlock on completion:** The 90-Day Rocks Cycle cadence activates —
see `../cadences/quarterly-planning.md`. The quarterly planning flow
becomes available as a trigger from next quarter-end onward.

---

## Step 3 — Meeting Pulse™ (Level 10 Meeting™ + IDS™)

**Metadata:**
- phase: 1 (structure_and_traction)
- tool_number: 3
- target_weeks: 6-9 (Standard)
- team_mode: required (see `../rules/team-required-tools.md`)
- gate_level: non-negotiable
- prerequisite_steps: [1, 2]
- knowledge_blocks:
  - `../knowledge/eos-meeting-pulse.md`
  - `../knowledge/eos-level-10-meeting.md`
  - `../knowledge/eos-ids-track.md`
- templates:
  - `../templates/l10-agenda.md`
  - `../templates/l10-notes-template.md`
  - `../templates/issues-list.md`
- deliverables:
  - `{deliverables_path}/l10-agenda.md`
  - `{deliverables_path}/l10-notes/` (folder — at least 4 populated notes files before rubric passes)
  - `{deliverables_path}/issues-list.md`
- substance_rubric: "See `../assessment/substance-rubrics.md` → Tool 3 — Meeting Pulse / Level 10 Meeting"

**Guidance:**

The L10 is the weekly heartbeat of the operating system. Install the
fixed agenda (7 items, hard timings summing to 90 minutes: Segue,
Scorecard, Rock Review, Customer/Employee Headlines, To-Do List, IDS,
Conclude). Same day, same time, same agenda — every week.

**Lock the slot first.** If `cadences_active.weekly_l10.schedule.day`
or `.time` in `eos-state.md` is still `null` from onboarding, ask the
team to fix weekday, time, and participants before anything else and
write them to `cadences_active.weekly_l10.schedule`. The L10 prep
routing in `SKILL.md` cannot work without this slot.

Teach the IDS track: Identify the real issue (not the symptom),
Discuss it once (one pass, no re-litigating), then Solve it by turning
it into a To-Do, a new Rock, or an escalated decision. IDS is what
makes the Issues List actually move rather than grow indefinitely.

The Issues List is the parking lot — it lives between meetings and
gets populated as issues surface during the week. At L10, the team
picks the top 3 and runs IDS on them. The rest wait.

This tool is considered substance-passed only after the L10 has
actually been **run** — the first 4 real L10 notes files must exist in
`l10-notes/`. Substance is behavioral here, not just structural.

**Completion criteria (substance-pass condition):**

- `l10-agenda.md` has all 7 fixed items with time allocations summing
  to 90 minutes
- Same day, same time, same agenda (verifiable by filenames and
  content in `l10-notes/`)
- At least 4 L10 notes files exist with real (non-empty) content
- Each L10 notes file has documented IDS items (Identify / Discuss /
  Solve visible)
- `issues-list.md` shows entries added between meetings, not only
  during the meeting itself
- Team authorship recorded

**Reason if skipped:**

The L10 is the heartbeat. Without it there is no accountability
rhythm, Rock statuses drift, Scorecard numbers are never reviewed, and
the Issues List never gets resolved. Skipping is a non-negotiable
block.

**Unlock on completion:** The Weekly L10 Cadence activates — see
`../cadences/weekly-l10.md`. From this point forward, "prep l10" and
"l10 notes" become available triggers.

---

## Step 4 — Scorecard™

**Metadata:**
- phase: 1 (structure_and_traction)
- tool_number: 4
- target_weeks: 9-12 (Standard)
- team_mode: required (see `../rules/team-required-tools.md`)
- gate_level: non-negotiable
- prerequisite_steps: [2, 3]
- knowledge_blocks:
  - `../knowledge/eos-scorecard.md`
- templates:
  - `../templates/scorecard.md`
- deliverables:
  - `{deliverables_path}/scorecard.md` (with at least 2 weeks of real data)
- substance_rubric: "See `../assessment/substance-rubrics.md` → Tool 4 — Scorecard"

**Guidance:**

The Scorecard replaces "how does everyone feel about this week?" with
"what do the numbers say?" Walk the leadership team through picking
5-15 weekly activity-based leading indicators — not P&L lag
indicators. Each number needs exactly one owner, a concrete weekly
goal, and a data source.

Good Scorecard candidates are activity numbers that predict outcomes
(new qualified leads this week, shipped units, collected receivables,
trials started, NPS responses received). Bad candidates are lag
indicators (this month's revenue, profit margin) — those belong on the
P&L, not the Scorecard.

After the numbers are defined, the Scorecard starts collecting data
week over week. The substance check requires at least 2 weeks of real
entries before it will pass — empty cells do not count. A red-flag
mechanism (visual or textual) must exist for missed goals.

**Completion criteria (substance-pass condition):**

- 5 to 15 numbers, all weekly activity-based leading indicators
- No P&L lag items on the Scorecard
- Exactly one owner per number
- Each number has a concrete weekly goal
- At least 2 weeks of real data entered
- Goals tied to a pragmatic vision in Phase 1 (will be re-linked to
  the 1-Year Plan from the V/TO in Phase 2 via cross-tool checks)
- Red-flag mechanism for missed numbers is visible
- Team authorship recorded

**Reason if skipped:**

Without a Scorecard the L10 Scorecard slot is empty, the team flies
blind week to week, and problems surface only when they've already
become crises. Skipping is a non-negotiable block.

**Unlock on completion:** The Scorecard becomes part of the L10 prep
and review flow — see `../cadences/weekly-l10.md` prework section.

---

## Phase gate check

Phase 1 closes when all of the following are true:

1. All four steps (1-4) have `status: substance_passed` or explicitly
   `bypassed` with logged reasons
2. At least one real L10 has been run (the `l10-notes/` folder
   contains at least one populated entry, and ideally the four
   required by the Tool 3 rubric)
3. The first Rocks set for the current quarter is in place
4. All cross-tool integration checks that apply to Tools 1-4 pass
   (see `../assessment/substance-rubrics.md` → Cross-tool integration
   checks: `rock_chart_alignment`, `scorecard_chart_alignment`,
   `l10_leadership_alignment`)

**On gate close:**

- Update `eos-state.md`: `gates.phase_1.status: passed`
- Open Phase 2: `gates.phase_2.status: open`
- Set `current_phase: 2`, `current_step: 5`
- Announce Phase 1 completion to the user
- Celebrate explicitly (this is a real milestone — foundation is in
  place)
- Offer to start Phase 2 Step 5 in the next session or right now

## Pre-Vision Rocks — note for Phase 2

Phase 1 Rocks are set without a V/TO in place. This is intentional and
in line with Wickman's ordering — most organizations already have a
rough directional sense. Each `rocks-q{N}.md` deliverable written in
Phase 1 carries a header note: "Pre-Vision Rocks — will be aligned to
V/TO in Phase 2."

When the V/TO is complete in Phase 2, the skill triggers a **Rock
Alignment Check**: the user reviews current-quarter Rocks against the
new 1-Year Plan and decides which Rocks still serve the vision, which
need to be rewritten, and which need to be dropped at the next
quarterly session. The Rock Alignment Check is described in
`02-vision.md`.

## Cadence unlocks during Phase 1

- After Step 2 (Rocks set): 90-Day Rocks Cycle activates →
  `../cadences/quarterly-planning.md`
- After Step 3 (first real L10 run): Weekly L10 Cadence activates →
  `../cadences/weekly-l10.md`
- After Step 4 (Scorecard with 2+ weeks of data): Scorecard becomes a
  first-class part of L10 prep (still inside `weekly-l10.md`)

Cadences run parallel to the linear implementation — they do NOT move
`current_step` forward. They write to the same deliverable files
(scorecard.md, rocks-q{N}.md, issues-list.md, l10-notes/).

## Bypass & skip handling

Every step in this phase is `gate_level: non-negotiable`. That means
any skip attempt triggers the two-round challenge protocol from
`../rules/non-negotiables.md`:

1. Round 1: the skill paraphrases Wickman's reasoning for why this
   tool matters in this order
2. Round 2: the skill names the concrete downstream consequence for
   this specific user (e.g., "without a Scorecard your L10 Scorecard
   slot is empty and your team flies blind")
3. Only after the second explicit confirmation does the skill mark
   the step `bypassed` and log it to `bypass_history` in
   `eos-state.md` with reason and timestamp

A bypass does not auto-close the phase gate. Each deliverable must be
either substance-passed OR explicitly bypassed for the gate to open.
