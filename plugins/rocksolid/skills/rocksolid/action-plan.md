# EOS Implementer — Master Action Plan

This is the read-only master template of the 7 tools in the EOS™
Implementation Program, in Gino Wickman's official order from *Traction*
Chapter 9. During onboarding, this master is used to generate a
personalized `eos-plan.md` in the user's project.

**Note:** This implementation follows Wickman's Chapter 9 ordering —
"traction first, then vision" — not the order the tools appear in the
earlier chapters of the book. Vision work (V/TO™) begins only after
accountability structure, Rocks™, the Level 10 Meeting™, and the
Scorecard™ are installed and the team is already running on a weekly
discipline. That sequencing is deliberate and load-bearing: a team that
is executing weekly can produce a vision it will actually follow; a
team that is not yet executing produces a wish list.

The 7 tools are grouped into 3 phases with phase-level gates. Phase
gates open only when every deliverable in the phase either passes its
substance rubric in `assessment/substance-rubrics.md` or has been
explicitly bypassed via the non-negotiable protocol in
`rules/non-negotiables.md`.

---

## Phase 1: Structure & Traction (Tools 1-4)

Foundation. Installs accountability, quarterly focus, weekly rhythm,
and weekly measurement — in that order.

**Phase file:** `phases/01-structure-and-traction.md`
**Target weeks (Standard):** 1-13
**Phase gate:** All four steps substance-passed or bypassed; at least
one real L10™ has been run; a current-quarter Rocks set is in place;
cross-tool integration checks pass.

### Step 1 — Accountability Chart™ (+ People Analyzer™ + GWC™)
- phase: structure_and_traction
- tool_number: 1
- target_weeks_standard: 2-5
- gate_level: non-negotiable
- team_mode: required
- knowledge_blocks:
  - eos-accountability-chart
  - eos-visionary-integrator
  - eos-people-analyzer
  - eos-gwc
- templates:
  - accountability-chart
  - people-analyzer
  - gwc-assessments
- deliverables:
  - accountability-chart.md
  - people-analyzer.md
  - gwc-assessments.md
- substance_rubric: "assessment/substance-rubrics.md → Tool 1 — Accountability Chart"
- prerequisite_steps: []
- reason_if_skipped: "Structure goes to the root of most leadership-team issues. Every tool after this is weaker without it — Rocks have no owners, L10 has no chair, Scorecard numbers have no accountability."
- unlock_on_completion: null

### Step 2 — Rocks™
- phase: structure_and_traction
- tool_number: 2
- target_weeks_standard: 5-6
- gate_level: non-negotiable
- team_mode: required
- knowledge_blocks:
  - eos-rocks
  - eos-ninety-day-world
- templates:
  - rocks-quarterly
- deliverables:
  - rocks-q{current_quarter}.md
- substance_rubric: "assessment/substance-rubrics.md → Tool 2 — Rocks"
- prerequisite_steps: [1]
- reason_if_skipped: "Without Rocks the L10 Rock Review has nothing to review and the 90-day traction engine never starts. The quarter becomes an indistinct blur rather than a focused sprint."
- unlock_on_completion: "90-Day Rocks Cycle cadence → cadences/quarterly-planning.md"

### Step 3 — Meeting Pulse™ (Level 10 Meeting™ + IDS™)
- phase: structure_and_traction
- tool_number: 3
- target_weeks_standard: 6-9
- gate_level: non-negotiable
- team_mode: required
- knowledge_blocks:
  - eos-meeting-pulse
  - eos-level-10-meeting
  - eos-ids-track
- templates:
  - l10-agenda
  - l10-notes-template
  - issues-list
- deliverables:
  - l10-agenda.md
  - l10-notes/ (folder — at least 4 populated note files)
  - issues-list.md
- substance_rubric: "assessment/substance-rubrics.md → Tool 3 — Meeting Pulse / Level 10 Meeting"
- prerequisite_steps: [1, 2]
- reason_if_skipped: "The L10 is the weekly heartbeat. Without it, Rock statuses drift, Scorecard numbers are never reviewed, and the Issues List never resolves."
- unlock_on_completion: "Weekly L10 Cadence → cadences/weekly-l10.md"

### Step 4 — Scorecard™
- phase: structure_and_traction
- tool_number: 4
- target_weeks_standard: 9-12
- gate_level: non-negotiable
- team_mode: required
- knowledge_blocks:
  - eos-scorecard
- templates:
  - scorecard
- deliverables:
  - scorecard.md (with at least 2 weeks of real data)
- substance_rubric: "assessment/substance-rubrics.md → Tool 4 — Scorecard"
- prerequisite_steps: [2, 3]
- reason_if_skipped: "Without a Scorecard the L10 Scorecard slot is empty and the team flies blind week to week. Problems surface only after they become crises."
- unlock_on_completion: "Scorecard becomes a first-class part of L10 prep (still inside cadences/weekly-l10.md)"

---

## Phase 2: Vision (Tool 5)

Now that the leadership team is already running on Rocks and L10, make
the vision explicit, shared, and team-owned — and retroactively align
the existing Phase 1 Rocks to the new 1-Year Plan.

**Phase file:** `phases/02-vision.md`
**Target weeks (Standard):** 14-22
**Phase gate:** V/TO substance-passed AND team-validated AND Rock
Alignment Check completed AND cross-tool integration checks
(`rock_vto_alignment`, `scorecard_1yp_alignment`) pass.

### Step 5 — V/TO™ (Vision/Traction Organizer™) — all 8 questions
- phase: vision
- tool_number: 5
- target_weeks_standard: 14-22
- gate_level: non-negotiable
- team_mode: required
- knowledge_blocks:
  - eos-vto
  - eos-core-values-discovery
  - eos-core-focus
  - eos-ten-year-target
  - eos-marketing-strategy
  - eos-three-year-picture
  - eos-six-components
- templates:
  - vto
  - core-values-discovery-session
- deliverables:
  - vto.md
- substance_rubric: "assessment/substance-rubrics.md → Tool 5 — V/TO / Vision/Traction Organizer"
- prerequisite_steps: [1, 2, 3, 4]
- reason_if_skipped: "Phase 3 cannot usefully begin without a vision. Core Processes lose their anchor, Everyone Has a Number has no 1-Year Plan to roll up to, and Quarterly and Annual sessions lose their frame of reference."
- unlock_on_completion: "Quarterly State-of-the-Company Meeting → cadences/quarterly-state-of-company.md (activated after Vision-side draft is complete and team-validated)"

**Post-completion activity inside Phase 2:** Rock Alignment Check — see
`phases/02-vision.md` → "Rock Alignment Check — post-V/TO phase
activity". The Phase 2 gate does not close until the Alignment Check is
logged in state.

---

## Phase 3: Systemization (Tools 6-7)

The final two tools. Turns the way the company runs into documented,
transferable systems and extends the Scorecard discipline all the way
down. Phase 3 gate closure triggers **Graduation** to Pure Operating
Mode.

**Phase file:** `phases/03-systemization.md`
**Target weeks (Standard):** 24-52
**Phase gate:** Tools 6 and 7 both substance-passed; cross-tool
integration checks (individual numbers roll up to Scorecard; every
process owner is a chart seat; every Scorecard number still has a seat
owner) pass.

### Step 6 — Three-Step Process Documenter™
- phase: systemization
- tool_number: 6
- target_weeks_standard: 24-44 (6-12 month project per Wickman)
- gate_level: non-negotiable
- team_mode: required for Identify stage; solo-ok for Document stage per seat owner
- knowledge_blocks:
  - eos-core-processes
  - eos-three-step-documenter
- templates:
  - process-template
  - hr-process-example
- deliverables:
  - core-processes/index.md
  - core-processes/<process-name>.md (5-15 individual process docs, 2-10 pages each)
- substance_rubric: "assessment/substance-rubrics.md → Tool 6 — Core Processes"
- prerequisite_steps: [5]
- reason_if_skipped: "The business remains dependent on tribal knowledge. Hiring stalls on 'whoever knows the thing', delegation stalls on 'only Sarah knows how we do this', and scaling becomes an exponential coordination cost."
- unlock_on_completion: "Enables Tool 7's process-anchor check (number_anchored_to_process rubric)"

### Step 7 — Everyone Has a Number
- phase: systemization
- tool_number: 7
- target_weeks_standard: 44-52
- gate_level: non-negotiable
- team_mode: solo-ok for data entry; team for structural design
- knowledge_blocks:
  - eos-everyone-has-a-number
- templates:
  - measurables-directory
- deliverables:
  - measurables-directory.md
- substance_rubric: "assessment/substance-rubrics.md → Tool 7 — Everyone Has a Number"
- prerequisite_steps: [4, 5, 6]
- reason_if_skipped: "The final discipline transfer. Without it, the Scorecard mindset stops at the leadership team and the rest of the organization stays in 'just do your job' mode rather than 'hit your number' mode. Skipping blocks graduation."
- unlock_on_completion: "Graduation to Pure Operating Mode (see SKILL.md → Graduation)"

---

## How this master is used during onboarding

During Onboarding Step G (Tempo Recommendation & Plan Derivation) and
Step H (Write State & Plan Files), the skill:

1. Reads this file as the master template
2. For each step, creates an entry in the user's `eos-plan.md` with the
   same fields plus a dynamic `status` field (`pending`, `in_progress`,
   `substance_passed`, `bypassed`, or `skipped-by-user`)
3. Attaches tempo-scaled week targets derived from the selected tempo
   (Fast Track ÷ 2 of Standard, Deep × 1.5 of Standard)
4. Sets `status: done` on any step the workspace scan identified as
   already substantially complete (rare — most users start with
   `pending` across the board)
5. Writes the personalized plan to `eos-plan.md` in the user's project
6. Sets `current_phase: 1`, `current_step: 1` (or the earliest
   non-passed step) in `eos-state.md`

From that point forward, `eos-plan.md` is the user's copy; this file
remains the unchanged master. Updating this master does NOT update
existing user plans — users keep the plan shape they started with,
unless they explicitly rebuild.

## Cross-references

- Phase files: `phases/01-structure-and-traction.md`,
  `phases/02-vision.md`, `phases/03-systemization.md`
- Cadence files: `cadences/weekly-l10.md`,
  `cadences/quarterly-planning.md`,
  `cadences/quarterly-state-of-company.md`,
  `cadences/annual-planning.md`
- Substance rubrics: `assessment/substance-rubrics.md`
- Non-negotiable rules: `rules/non-negotiables.md`
- Recommendation rules: `rules/recommendations.md`
- Team-required tool protocol: `rules/team-required-tools.md`
- Reference timeline: `journey-map.md`
- Runtime logic: `SKILL.md`
