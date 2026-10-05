# Phase 3 — Systemization

**Phase number:** 3 of 3
**Tools covered:** 6 (Three-Step Process Documenter™) and 7 (Everyone Has a Number)
**Goal:** Turn the way the company runs into documented, transferable
systems — then extend the Scorecard™ discipline all the way down so
every person in the organization has at least one weekly number they
own. Once both pass, the skill graduates the user to Pure Operating
Mode.

**Target weeks:** 24-52 (Standard tempo). Fast Track roughly weeks
12-26 (Wickman's warning applies: Fast Track teams typically do NOT
finish Phase 3 in time — expect to roll Tool 6 into the second year).
Deep tempo roughly weeks 36-78. Week numbers are orientation only —
the hard logic is the substance check. Tool 6 in particular is a
6-12 month project under normal conditions, per Wickman's note.

**Phase gate criterion:** Tools 6 and 7 both pass their substance
rubrics in `assessment/substance-rubrics.md`. Phase 3 gate closure
triggers **Graduation** to Pure Operating Mode — see graduation
protocol in `../SKILL.md`.

**Rationale (Wickman's Chapter 9, paraphrased):** Without documented
core processes, the business stays dependent on the specific people
who happen to know how each thing runs today. Hiring, delegation,
and scaling all stall on tribal knowledge. Without every-person-has-
a-number, the Scorecard stops at the leadership team and the rest of
the organization never develops the "leading indicator" reflex.
Systemization is how the EOS™ Operating System becomes resilient to
individual departures and ready for growth.

## How to use this file

When the user is at Step 6 or 7:

1. Read the step section below and its metadata block.
2. Load the linked knowledge blocks from `../knowledge/`.
3. Copy the linked templates from `../templates/` into the user's
   deliverables folder if they don't yet exist.
4. If the step is `team_mode: required`, run the team-mode
   clarification protocol from `../rules/team-required-tools.md`.
   Tool 6 is notable — the Identify stage is team-required, but the
   Document stage is solo-ok per seat owner.
5. Work through the step with the user, writing to the deliverable
   file(s) incrementally.
6. When the user says "check my {tool}" or the deliverable is
   complete, run the substance rubric for that tool from
   `../assessment/substance-rubrics.md`.
7. On pass: mark `status: substance_passed` in `eos-plan.md` and
   update `eos-state.md`. When BOTH steps pass, the phase gate
   triggers graduation.

---

## Step 6 — Three-Step Process Documenter™

**Metadata:**
- phase: 3 (systemization)
- tool_number: 6
- target_weeks: 24-44 (Standard — 6-12 month project per Wickman)
- team_mode: required (Identify stage) / solo-ok (Document stage per seat owner)
- gate_level: non-negotiable
- prerequisite_steps: [5] (V/TO™ must exist so processes have a vision anchor)
- knowledge_blocks:
  - `../knowledge/eos-core-processes.md`
  - `../knowledge/eos-three-step-documenter.md`
- templates:
  - `../templates/process-template.md`
  - `../templates/hr-process-example.md`
- deliverables:
  - `{deliverables_path}/core-processes/index.md` (the named list, 5-15 entries)
  - `{deliverables_path}/core-processes/<process-name>.md` (one per identified core process, 2-10 pages each)
- substance_rubric: "See `../assessment/substance-rubrics.md` → Tool 6 — Core Processes"

**Guidance:**

The Three-Step Process Documenter runs in three distinct stages:
**Identify**, **Document**, and **Compile**.

### Stage 1 — Identify (team hour)

This is a team exercise. Gather the leadership team and ask: what
are the 5 to 15 core processes that make up how this business
actually runs? Typical core processes are HR, Marketing, Sales,
Operations (often 1-3 sub-processes), Accounting, and Customer
Retention — but the list varies by business model.

The naming exercise is not cosmetic. Each process needs exactly one
name, consistently used across the team. 100 percent consensus on
names and count is a non-negotiable rubric check — without it, the
Document stage produces incoherent artifacts because two people are
documenting the same process under different names, or two
different things under the same name.

Each process gets an owner, and the owner must be a seat on the
Accountability Chart™ from Phase 1 Step 1. If a process has no
obvious chart seat owning it, either the chart is incomplete or the
process doesn't actually belong on the core list — investigate.

Use `../templates/process-template.md` as the empty skeleton for the
index file and each process doc.

### Stage 2 — Document (solo-ok per seat owner, then team review)

Each process owner drafts their process in the
major-steps-with-bullet-sub-steps format — 20/80 rule. The sweet
spot is 2-10 pages per process. Under 2 pages and the doc doesn't
transfer real know-how; over 10 pages and it becomes a binder
nobody reads.

Teach the owner to stay at the level of major numbered steps
(typically 5-10 per process) with a handful of sub-bullets each —
not keystroke-level instructions, not flowcharts. The test is:
could a new hire read this and correctly execute the process, AND
is it short enough that they will actually read it?

After drafting, the owner hands the process to at least one other
person for a sanity read. A sanity-read log on each process is a
recommendation-level check — missing it doesn't block the gate, but
a single-author process risks encoding how one person thinks about
the work rather than how it actually happens.

Use `../templates/hr-process-example.md` as a structural reference
for what a complete process doc looks like.

### Stage 3 — Compile

All documented processes are pulled into a single accessible
package — the `core-processes/index.md` file acts as the table of
contents, listing every process name with a link to its doc. The
compiled set is then distributed to the organization. A scattered
set of process docs that never got bundled fails the
`compiled_and_distributed` check.

**Completion criteria (substance-pass condition):**

- 5 to 15 core processes named in `core-processes/index.md`
- Leadership team has explicitly logged 100 percent consensus on
  names and count (Identify stage team validation)
- Each process has an owner who maps to a seat on the Accountability
  Chart
- Each process document is 2 to 10 pages
- Each process follows the major-steps-plus-bullets format (no
  keystroke-level detail, no pure flowcharts)
- All processes compiled into `core-processes/index.md` and the set
  is accessible to the organization
- At least one sanity-read per process (recommendation — missing
  produces warnings, not a block)

**Reason if skipped:**

The business remains dependent on tribal knowledge. Hiring stalls on
"whoever knows the thing"; delegation stalls on "only Sarah knows
how we do this"; scaling becomes an exponential coordination cost.
Skipping is a non-negotiable block.

**Unlock on completion:** Nothing new — the unlock is Tool 7 being
able to anchor each individual number to a documented core process
(see `number_anchored_to_process` rubric check in Tool 7).

---

## Step 7 — Everyone Has a Number

**Metadata:**
- phase: 3 (systemization)
- tool_number: 7
- target_weeks: 44-52 (Standard)
- team_mode: solo-ok for data entry, team for structural design
- gate_level: non-negotiable
- prerequisite_steps: [4, 5, 6] (Scorecard for the rollup hierarchy, V/TO for the direction, Core Processes for the anchor)
- knowledge_blocks:
  - `../knowledge/eos-everyone-has-a-number.md`
- templates:
  - `../templates/measurables-directory.md`
- deliverables:
  - `{deliverables_path}/measurables-directory.md`
- substance_rubric: "See `../assessment/substance-rubrics.md` → Tool 7 — Everyone Has a Number"

**Guidance:**

Tool 7 extends the Scorecard discipline from the leadership team all
the way down. The premise is simple: every person in the
organization has at least one weekly activity-based number they own.
Not an abstract outcome, not a quarterly goal — a concrete leading
indicator that shows up weekly and can be red-flagged.

The work of this step is building a central directory. Walk the
Accountability Chart seat by seat, and for each person, define:

- **Metric name** — what the number is measuring
- **Owner** — the specific person (not a team)
- **Target** — the weekly goal
- **Frequency** — weekly (monthly or quarterly numbers belong
  elsewhere; this tool is the weekly activity layer)
- **Source** — where the number comes from (a report, a system
  export, a manual count)

Four requirements from the rubric:

1. **Rolls up to Scorecard.** Every individual number must trace
   upward through the Accountability Chart to a number on the
   leadership Scorecard. This is what makes it a hierarchy instead
   of a random collection.
2. **Anchored to a core process.** Every number references one of
   the documented processes from Tool 6. Without a process anchor,
   the number measures an outcome in isolation and cannot be
   improved systematically.
3. **Complete coverage.** The directory lists every person in the
   organization. Partial coverage is not tolerated by the rubric —
   it teaches the uncovered half that the discipline is optional.
4. **All four fields.** Name, owner, target, frequency, source —
   missing any one of these breaks the number.

**Completion criteria (substance-pass condition):**

- Every person in the organization appears in
  `measurables-directory.md`
- Every person has at least one weekly activity-based number
- Each number has owner, target, frequency (weekly), and source
- Each number rolls up through the Accountability Chart to a
  leadership Scorecard number
- Each number is anchored to a documented core process from Tool 6
- Directory is complete (no gaps)

**Reason if skipped:**

Tool 7 is the final discipline transfer. Without it, the Scorecard
mindset stops at the leadership team and the broader organization
stays in "just do your job" mode rather than "hit your number" mode.
Skipping is a non-negotiable block AND blocks graduation.

**Unlock on completion:** Graduation to Pure Operating Mode is
triggered (see below).

---

## Phase gate check — and Graduation trigger

Phase 3 closes when all of the following are true:

1. Step 6 (Core Processes) has `status: substance_passed` (all 15+
   checks including compile and distribute)
2. Step 7 (Everyone Has a Number) has `status: substance_passed`
3. Cross-tool integration checks that depend on Tool 6 / Tool 7
   pass:
   - Individual numbers correctly roll up to Scorecard numbers
   - Every process owner is a seat on the Accountability Chart
   - Every scorecard number still has a seat owner

**On gate close — Graduation protocol:**

Phase 3 gate closure is special: it triggers **Graduation**. This is
handled by the runtime logic in `../SKILL.md`, but the phase file
records what the gate closure should activate:

1. Run the second Organizational Checkup™ (compare against the
   first one from onboarding, stored in `checkup_history[0]` in
   `eos-state.md`)
2. Calculate the score delta and report both checkups to the user
3. Update `eos-state.md`:
   - `gates.phase_3.status: passed`
   - `current_phase: graduated`
   - `graduated_at: {timestamp}`
   - `final_checkup_score: {score}`
   - `checkup_history[1]: {full second checkup}`
4. Celebrate explicitly — this is the end of the implementation
   program and the start of the Pure Operating Mode journey
5. From this point forward, the SKILL.md greeting changes: no more
   "next implementation step" prompts. The greeting focuses on
   active cadences (Weekly L10™, Quarterly Planning, Annual
   Planning, State-of-the-Company) and on operating-mode health
   checks (periodic re-checkups, quarterly vision reviews)

The implementation program is now complete. The operating system
keeps running.

## Cadence unlocks during Phase 3

- After Tool 6 (Core Processes) complete: nothing new — the unlock
  is for Tool 7's process-anchor check to be passable
- After Tool 7 complete: graduation (see above)

Throughout Phase 3, the following cadences continue running:
- `../cadences/weekly-l10.md` — unchanged
- `../cadences/quarterly-planning.md` — unchanged
- `../cadences/quarterly-state-of-company.md` — unchanged
- `../cadences/annual-planning.md` — typically the first annual
  planning session runs inside Phase 3's window (Standard tempo
  places it around weeks 48-52), which gives the second
  Organizational Checkup a natural home at the same off-site

## Department-level cascade (parallel activity)

Wickman notes that during Phase 3 (roughly weeks 40-44 in the
Standard journey) the leadership team can start cascading the EOS
rhythm to department-level teams — each department runs its own
L10, its own Rocks, its own Scorecard, using the same tools. This
is not a separate step in the skill, but department cadences become
legitimate sessions during this phase. The Weekly L10 cadence file
already notes this (`team: leadership team, or cascaded department
team after Phase 3`).

## Bypass & skip handling

Steps 6 and 7 are both `gate_level: non-negotiable`. The two-round
challenge protocol from `../rules/non-negotiables.md` applies.

Tool 6 is particularly prone to honest skip attempts because of its
duration (6-12 months). The skill should recognize this and, rather
than offering bypass, offer a **partial progress** acknowledgement:
the user can substance-pass Tool 6 with a minimum viable set
(typically 5-7 processes covering the highest-risk seats first),
log the remaining processes as open work in `eos-state.md`, and
graduate. The graduation still depends on the rubric passing for
the identified set — the open work just becomes a tracked commitment
in operating mode rather than an implementation block.

Fast Track users: it is normal and expected that you do not finish
Tool 6 in 26 weeks. Wickman's own note is explicit about this. The
skill will not pretend otherwise — it will flag the tempo drift at
session start, ask why, and either recommend a tempo downgrade or
accept that Tool 6 will roll into year 2 of the journey.
