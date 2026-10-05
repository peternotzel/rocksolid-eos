# Substance Rubrics

Named substance checks used by the EOS(R) Implementer skill to decide
whether a given tool's deliverable is actually complete enough to pass
its phase gate. Loaded at runtime by `phases/phase-N.md` when the skill
evaluates a tool.

## What rubrics are for

Every EOS tool in this skill has a set of named checks. Each check has:

- a machine-readable `name` (used in state and bypass history)
- a `criterion` (the rule, paraphrased from Wickman)
- a `gate_type` — either `non-negotiable` or `recommendation`
- a `failure_message` (what the skill tells the user when the check
  fails, written for the user not for a log)

## Gate types

- **non-negotiable** — a failed check **blocks** the phase gate. The
  skill refuses to silently move on. The user can override, but only
  after a two-round challenge (see `rules/non-negotiables.md`). Every
  bypass is logged in `bypass_history` in `eos-state.md`.
- **recommendation** — a failed check produces a **warning** but does
  not block the gate. The warning is logged in `warnings` in state so
  it can be revisited later.

## How the skill uses a rubric

1. Load the rubric block for the current tool.
2. Read the deliverable file(s) listed in `deliverable_files`.
3. Evaluate each check in order. For each check record one of:
   `pass`, `fail`, or `unclear`.
4. Report the per-check result to the user grouped by gate type.
5. If any `non-negotiable` check is `fail`, the phase gate does not
   open. If only `recommendation` checks fail, the gate opens with
   logged warnings.
6. `unclear` means the skill could not decide — ask the user to confirm
   before logging a pass.

---

## Tool 1 — Accountability Chart(TM)

```yaml
tool: Accountability Chart
source_chapter: 4
team_required: true
deliverable_files:
  - accountability-chart.md
  - people-analyzer.md
  - gwc-assessments.md
```

### Checks

- name: has_integrator
  criterion: "Exactly one Integrator seat exists on the front line"
  gate_type: non-negotiable
  failure_message: "No Integrator seat found. Every organization needs exactly one role that holds the major functions together and runs day-to-day operations — this is the seat that keeps friction between function heads from derailing the company."

- name: single_integrator
  criterion: "The Integrator seat has exactly one holder (not shared between two people)"
  gate_type: non-negotiable
  failure_message: "The Integrator seat shows {count} names. A split Integrator seat produces diffuse accountability — when two people share the integrating role, each assumes the other will carry the ball on hard decisions and the role stalls. Assign exactly one person."

- name: major_functions_count
  criterion: "3 to 10 major functions on the front line, with a minimum of 3 core functions (Sales/Marketing, Operations, Finance/Administration)"
  gate_type: non-negotiable
  failure_message: "You have {count} major functions. The structure needs 3 to 10, with minimum three core functions: Sales/Marketing, Operations, Finance/Administration. Below 3 means core accountabilities are missing; above 10 usually means some functions are actually sub-functions."

- name: five_roles_per_seat
  criterion: "Every seat has exactly 5 major roles listed"
  gate_type: non-negotiable
  failure_message: "Seat '{seat_name}' has {count} roles. Each seat needs exactly 5 major roles — not a bullet list of tasks, but the 5 core accountabilities that define what this seat owns."

- name: structure_before_names
  criterion: "Structure (seats, roles, reporting lines) was completed before any names were placed into seats"
  gate_type: non-negotiable
  failure_message: "The build history shows names were added before the structure was finalized. Starting with people means the chart is sculpted around who you already have, which locks in existing compromises. Rebuild structure-first."

- name: gwc_all_yes
  criterion: "Every person placed in a seat has Yes on all three of Get it, Want it, and Capacity (GWC(TM))"
  gate_type: non-negotiable
  failure_message: "Person '{name}' in seat '{seat}' has a No on {axis}. Two out of three on GWC is a fail, not a partial pass. Either move this person to a seat that fits or acknowledge the wrong-seat situation and plan the transition."

- name: people_analyzer_bar_met
  criterion: "Every leadership team member meets or exceeds the team's agreed People Analyzer(TM) bar on core values"
  gate_type: non-negotiable
  failure_message: "Person '{name}' scores below the People Analyzer bar on core values. Someone operating below the bar is either on a Three-Strike track or needs to transition out — leaving them unaddressed teaches the rest of the team that core values are negotiable."

- name: visionary_optional
  criterion: "Visionary seat is either present with exactly one holder or absent; not required"
  gate_type: recommendation
  failure_message: "No Visionary seat exists. That's fine — roughly half of companies don't have one. Recorded as an intentional choice, not a defect."

- name: function_count_sweet_spot
  criterion: "Number of front-line functions sits in the 3 to 7 sweet spot"
  gate_type: recommendation
  failure_message: "You have {count} front-line functions. The observed sweet spot is 3 to 7. Beyond 7 often signals that some of these are really sub-functions that could live under a parent. Consider consolidating."

- name: chart_revision_cadence
  criterion: "Chart has been revised within the last 90 days OR the business has not materially changed"
  gate_type: recommendation
  failure_message: "The chart has not been revised in {days} days. A healthy rhythm is roughly every 90 days as the business evolves. Review it at the next quarterly planning session."

---

## Tool 2 — Rocks(TM)

```yaml
tool: Rocks
source_chapter: 7
team_required: true
deliverable_files:
  - rock-sheet.md
```

### Checks

- name: company_rocks_count
  criterion: "Between 3 and 7 company Rocks for the quarter"
  gate_type: non-negotiable
  failure_message: "You have {count} company Rocks for the quarter. The rule is 3 to 7, with closer to 3 preferred. Fewer than 3 means the quarter has no real focus; more than 7 means nothing is actually a priority."

- name: individual_rocks_per_leader
  criterion: "Each leadership team member has 3 to 7 individual Rocks total (inclusive of any company Rocks they own)"
  gate_type: non-negotiable
  failure_message: "Leader '{name}' has {count} individual Rocks. The rule is 3 to 7 total — which includes any company Rocks they personally own, not 3 to 7 on top of them. Trim to the priorities they can actually deliver in 90 days."

- name: employee_rocks_count
  criterion: "Each non-leadership employee has 1 to 3 Rocks"
  gate_type: non-negotiable
  failure_message: "Employee '{name}' has {count} Rocks. Below the leadership team the cap is 1 to 3. Anything more is overwhelming and violates the less-is-more principle."

- name: rocks_are_smart
  criterion: "Each Rock is specific, measurable, and attainable in 90 days"
  gate_type: non-negotiable
  failure_message: "Rock '{rock_title}' fails the specific/measurable/attainable filter on: {reason}. A Rock must describe 'done' in one sentence, attach a concrete deliverable, and be realistically completable within 90 days."

- name: single_owner_per_rock
  criterion: "Each Rock has exactly one named owner — never shared, never a team"
  gate_type: non-negotiable
  failure_message: "Rock '{rock_title}' has {count} owners. Shared ownership is diffuse ownership — each owner assumes the other will carry the ball when things get hard. Assign exactly one person."

- name: rock_has_due_date
  criterion: "Each Rock has an explicit due date, typically the last day of the quarter"
  gate_type: non-negotiable
  failure_message: "Rock '{rock_title}' has no due date. Add an explicit date — normally Mar 31, Jun 30, Sep 30, or Dec 31."

- name: rock_binary_scorable
  criterion: "Each Rock can be scored done/not-done with no partial credit"
  gate_type: non-negotiable
  failure_message: "Rock '{rock_title}' is worded in a way that invites partial credit. Rewrite it so there is an unambiguous binary outcome — anything softer lets the team rationalize quarter-end."

- name: single_rock_sheet
  criterion: "A single landscape Rock Sheet artifact exists covering company Rocks and all leadership individual Rocks"
  gate_type: non-negotiable
  failure_message: "Company Rocks and individual Rocks are split across separate files. Consolidate into one Rock Sheet so the weekly Rock Review can walk it top to bottom without swapping documents."

- name: no_mid_quarter_additions
  criterion: "No Rocks have been added to the list mid-quarter (new items went to the V/TO(TM) Issues List instead)"
  gate_type: non-negotiable
  failure_message: "Rock '{rock_title}' was added after the quarter started. Mid-quarter additions dilute focus — the correct move is to park the idea on the V/TO Issues List and consider it at the next quarterly planning session."

- name: state_of_company_run
  criterion: "Company Rocks have been shared with the full organization within the quarter (State-of-the-Company meeting)"
  gate_type: recommendation
  failure_message: "No State-of-the-Company meeting has been logged for this quarter. Without the company-wide share, the quarterly priorities stay trapped inside the leadership team and the vision cascade breaks. Schedule the 45-minute session."

---

## Tool 3 — Meeting Pulse(TM) / Level 10 Meeting(TM)

```yaml
tool: Meeting Pulse
source_chapter: 6-7
team_required: true
deliverable_files:
  - l10-agenda.md
  - l10-notes/<date>.md
```

### Checks

- name: agenda_has_seven_items
  criterion: "L10(TM) agenda contains all 7 items in order (Segue, Scorecard(TM), Rock Review, Headlines, To-Do Review, IDS(TM), Conclude)"
  gate_type: non-negotiable
  failure_message: "The L10 agenda is missing item(s): {missing}. All 7 items are required in order — removing any one of them collapses the feedback loop the L10 exists to run."

- name: time_allocations_standard
  criterion: "Time allocations match 5/5/5/5/5/60/5 for a 90-minute meeting"
  gate_type: non-negotiable
  failure_message: "Your L10 time allocation is {actual} instead of 5/5/5/5/5/60/5. IDS must get 60 minutes — it's the segment where real work happens. Other segments run 5 minutes each, hard."

- name: same_day_same_time
  criterion: "L10 runs on the same day and at the same time each week (verifiable from note filenames or calendar)"
  gate_type: non-negotiable
  failure_message: "L10 meetings shift day or time week to week. The rhythm depends on the meeting becoming a reflex the team stops scheduling around. Lock a fixed day and hour."

- name: four_weeks_of_notes
  criterion: "At least 4 weeks of L10 notes with real content exist (not empty placeholders)"
  gate_type: non-negotiable
  failure_message: "Only {count} weeks of L10 notes exist. Phase 1 needs at least 4 consecutive weeks of real L10 practice before the gate opens. Keep running the meeting."

- name: ids_work_visible
  criterion: "Each L10 shows Identify/Discuss/Solve structure against named issues"
  gate_type: non-negotiable
  failure_message: "L10 notes for {date} do not show IDS work — no named issues with identify/discuss/solve structure. Running an IDS segment that is really open discussion means the team will not actually resolve anything. Use IDS explicitly."

- name: quarterly_session_full_day_offsite
  criterion: "Quarterly session is a full day (~8 hours) and held off-site"
  gate_type: non-negotiable
  failure_message: "The quarterly session for {quarter} was {duration} and held at {location}. It must be a full day off-site — office distractions and half-day compression both kill the depth that makes quarterly planning work."

- name: annual_session_two_days_offsite
  criterion: "Annual session is two full days and held off-site"
  gate_type: non-negotiable
  failure_message: "The annual session was {duration} and held at {location}. It must be two days off-site, preferably far enough that returning to the office isn't tempting. The V/TO rebuild and team-health work both need the uninterrupted time."

- name: issues_list_maintained_between
  criterion: "Issues List has items added between meetings, not only at the meeting itself"
  gate_type: recommendation
  failure_message: "All Issues List entries were added during the L10 itself. The list should live between meetings — anything that surfaces during the week should land on it immediately, not wait for Tuesday at 9."

- name: missed_l10_logged_with_reason
  criterion: "Any missed L10 has a logged reason (vacation, emergency)"
  gate_type: recommendation
  failure_message: "L10 for {date} was missed with no reason logged. Missing the L10 should be an exception, not a pattern — if it's routine, the meeting isn't load-bearing and IDS isn't happening."

- name: state_of_company_capped_45
  criterion: "State-of-the-Company meeting has been run at least once with the entire workforce invited, within 45 minutes"
  gate_type: recommendation
  failure_message: "No State-of-the-Company meeting recorded with the full workforce. The quarterly 45-minute broadcast is how the vision and Rocks actually reach everyone outside the leadership team."

---

## Tool 4 — Scorecard(TM)

```yaml
tool: Scorecard
source_chapter: 5
team_required: true
deliverable_files:
  - scorecard.md
```

### Checks

- name: numbers_count
  criterion: "5 to 15 weekly numbers on the Scorecard"
  gate_type: non-negotiable
  failure_message: "The Scorecard has {count} numbers. The rule is 5 to 15, with closer to 5 preferred. Fewer than 5 means you're missing leading indicators; more than 15 means the review segment becomes noise."

- name: activity_based
  criterion: "Each number is activity-based (a leading indicator), not a trailing P&L figure"
  gate_type: non-negotiable
  failure_message: "Number '{metric}' is a trailing P&L figure, not a leading indicator. The Scorecard exists to predict what's about to happen while there's still time to act — replace with an activity that moves before the financial outcome does."

- name: single_owner_per_number
  criterion: "Each number has exactly one named owner from the Accountability Chart"
  gate_type: non-negotiable
  failure_message: "Number '{metric}' has no owner or multiple owners. The leftmost column is WHO for a reason — a number without a single named owner from the chart is a number nobody actually drives."

- name: weekly_goal_set
  criterion: "Each number has an explicit weekly goal, not only an actual"
  gate_type: non-negotiable
  failure_message: "Number '{metric}' has an actual value but no weekly goal. Without a goal, there is nothing to flag red against and the L10 Scorecard review becomes a status report instead of a trigger for action."

- name: two_weeks_actuals
  criterion: "At least 2 weeks of actual data entered so trend visibility can begin"
  gate_type: non-negotiable
  failure_message: "Number '{metric}' has {count} weeks of actuals. Phase 1 needs at least 2 weeks of data before the tool is meaningful — one data point is noise."

- name: goals_tied_to_1yp
  criterion: "In Phase 2+, weekly goals tie to 1-Year Plan targets; in Phase 1, goals tie to a recorded pragmatic team target"
  gate_type: non-negotiable
  failure_message: "Number '{metric}' has a goal but no traceability to the 1-Year Plan (Phase 2+) or no recorded pragmatic target rationale (Phase 1). Goals pulled from nowhere drift."

- name: red_flag_mechanism
  criterion: "Visible red-flag mechanism for misses (shading, marker, or equivalent)"
  gate_type: non-negotiable
  failure_message: "The Scorecard has no visible red-flag mechanism for misses. Without a visual marker, the eye slides past bad numbers during the L10 review and nothing drops to IDS. Add shading or explicit marking."

- name: used_in_l10
  criterion: "Scorecard is actively used in the L10 Scorecard Review segment (evidenced in L10 notes)"
  gate_type: non-negotiable
  failure_message: "The Scorecard is not referenced in the L10 notes for {date}. A Scorecard that nobody opens is just a spreadsheet. The L10 is the forum that makes it live."

- name: rolling_13_week_format
  criterion: "Rolling 13-week format with dated week-ending columns (not monthly, not summary-only)"
  gate_type: non-negotiable
  failure_message: "The Scorecard format is {format} instead of a rolling 13-week grid. 13 weeks is the right context window for trend detection — three off-weeks in a row is a signal, one off-week is noise."

- name: who_column_first
  criterion: "Leftmost column is WHO (owner elevated, not hidden)"
  gate_type: recommendation
  failure_message: "Owner column is not in the leftmost position. Structurally elevating WHO is what makes ownership unavoidable at a glance — move it to the left."

---

## Tool 5 — V/TO(TM) / Vision/Traction Organizer(TM)

```yaml
tool: V/TO
source_chapter: 3
team_required: true
deliverable_files:
  - vto.md
```

### Checks

- name: all_eight_questions_answered
  criterion: "All 8 V/TO questions are answered (not a subset)"
  gate_type: non-negotiable
  failure_message: "V/TO is missing answer(s) to question(s): {missing}. Skipping any of the 8 questions means the cascade has a gap — downstream tools inherit the gap."

- name: core_values_count
  criterion: "Between 3 and 7 core values"
  gate_type: non-negotiable
  failure_message: "You have {count} core values. The rule is 3 to 7. Below 3 under-specifies the culture; above 7 dilutes it to the point where nothing is actually a filter."

- name: core_values_not_generic
  criterion: "Core values are phrased concretely enough to decide hire/fire on, not generic one-word abstractions"
  gate_type: non-negotiable
  failure_message: "Core value '{value}' is a one-word abstraction (e.g., 'Integrity', 'Excellence'). Rewrite it concretely enough that two reviewers can look at the same employee's behavior and agree whether it was lived or violated."

- name: core_focus_both_parts
  criterion: "Core Focus(TM) has both Purpose/Cause/Passion and Niche, each in a few words"
  gate_type: non-negotiable
  failure_message: "Core Focus is missing: {missing}. Both halves are required — the Purpose is why you exist beyond money, the Niche is the one thing you are already great at. A Core Focus with one half is not a sweet spot."

- name: ten_year_target_single_dated_numeric
  criterion: "10-Year Target(TM) is a single goal with a date and a measurable number"
  gate_type: non-negotiable
  failure_message: "10-Year Target fails on: {reason}. It must be a single entry (not a list), have a concrete number, and have a dated horizon. 'Become the leader in our space' is not a target — '$50M revenue by Dec 31, 2034' is."

- name: target_market_filterable
  criterion: "Target Market is specific enough (demo/geo/psycho) that a real prospect list could be built from it"
  gate_type: non-negotiable
  failure_message: "Target Market description is too vague to build a prospect list from. 'Small businesses' fails this test; 'US-based B2B SaaS companies with 20-100 employees and a dedicated revenue ops function' passes it."

- name: three_uniques_exactly_three
  criterion: "Exactly three Three Uniques(TM), and no single competitor can honestly claim all three"
  gate_type: non-negotiable
  failure_message: "You have {count} Uniques. The rule is exactly 3, and the set should be such that no competitor can honestly claim all three together. Individually they may share one or two — never all three."

- name: proven_process_named_illustrated
  criterion: "Proven Process(TM) is named, visually illustrated, and has 3 to 7 major steps"
  gate_type: non-negotiable
  failure_message: "Proven Process fails on: {reason}. It needs a name (e.g., 'The Acme Difference'), a visual, and 3 to 7 major steps with bullets. An unnamed or un-illustrated process doesn't work in sales conversations."

- name: three_year_picture_complete
  criterion: "3-Year Picture(TM) has future date, revenue target, profit target, measurables, and 10 to 20 'looks like' bullets"
  gate_type: non-negotiable
  failure_message: "3-Year Picture is missing: {missing}. All fields are required — vague pictures produce vague plans."

- name: one_year_plan_complete
  criterion: "1-Year Plan has future date, revenue, profit, measurables, 3 to 7 SMART goals, and budget support"
  gate_type: non-negotiable
  failure_message: "1-Year Plan fails on: {reason}. 3 to 7 goals (not 12), each SMART, backed by a realistic budget. Teams that load 12+ goals systematically under-deliver."

- name: quarterly_rocks_on_vto
  criterion: "Current Quarterly Rocks appear on the V/TO Traction page and match the Rock Sheet"
  gate_type: non-negotiable
  failure_message: "V/TO Rocks do not match the current Rock Sheet. The two artifacts must stay in sync — the V/TO is the canonical statement of what this quarter is about."

- name: team_authored
  criterion: "V/TO is the output of a leadership team session, not a solo draft by one person"
  gate_type: non-negotiable
  failure_message: "The V/TO was authored solo. V/TO creation is a team-mode deliverable — a founder alone cannot produce one. Schedule the off-site and redo this with the full leadership team."

- name: guarantee_present_or_justified
  criterion: "A concrete Guarantee exists OR a justified decision not to have one is recorded"
  gate_type: recommendation
  failure_message: "No Guarantee and no recorded decision about it. Roughly half of clients don't carry one, which is fine — but the decision should be explicit, not a gap."

- name: issues_list_has_entries
  criterion: "Long-term Issues List exists and has entries"
  gate_type: recommendation
  failure_message: "The long-term Issues List is empty. An empty list usually means the team isn't surfacing strategic concerns — not that there aren't any."

---

## Tool 6 — Core Processes

```yaml
tool: Core Processes
source_chapter: 8
team_required: true
deliverable_files:
  - core-processes/index.md
  - core-processes/<process-name>.md
```

### Checks

- name: process_list_count
  criterion: "Named list of core processes exists with 5 to 15 entries"
  gate_type: non-negotiable
  failure_message: "You have {count} core processes. The normal range is 5 to 15. Below 5 and important processes are being lumped together; above 15 and you're documenting sub-processes as if they were core."

- name: naming_consensus
  criterion: "Leadership team has explicitly reached 100 percent consensus on names and count"
  gate_type: non-negotiable
  failure_message: "Process naming consensus has not been logged. Skipping the Identify stage produces incoherent documentation — the team must agree on exactly what each process is called before Document stage begins."

- name: process_owner_on_chart
  criterion: "Each process has an owner, and the owner is a seat on the Accountability Chart"
  gate_type: non-negotiable
  failure_message: "Process '{process}' has owner '{owner}' who is not a seat on the Accountability Chart. Process ownership must trace to a chart seat — otherwise there is no accountable party when the process drifts."

- name: process_length_in_range
  criterion: "Each documented process is between 2 and 10 pages"
  gate_type: non-negotiable
  failure_message: "Process '{process}' is {length} pages. The 20/80 sweet spot is 2 to 10 pages. Under 2 doesn't transfer real knowledge; over 10 becomes a binder nobody reads."

- name: major_steps_plus_bullets
  criterion: "Each process follows the major-numbered-steps-with-bullet-sub-steps format"
  gate_type: non-negotiable
  failure_message: "Process '{process}' does not follow the major-steps-plus-bullets format. No flowcharts, no keystroke-level instructions — the format is numbered steps with a handful of bullets each."

- name: compiled_and_distributed
  criterion: "All core processes are compiled into a single accessible package and distributed"
  gate_type: non-negotiable
  failure_message: "Core processes are not compiled into a single package. The Compile stage is bundling them into one index with the process names as the table of contents — otherwise the documentation is scattered and cannot be enforced."

- name: sanity_read_by_other
  criterion: "Each process has been sanity-read by someone other than the author"
  gate_type: recommendation
  failure_message: "Process '{process}' has no second reader logged. A single-author process risks encoding how one person thinks about it, not how work actually happens. Ask someone else who runs it to read and mark it up."

---

## Tool 7 — Everyone Has a Number

```yaml
tool: Everyone Has a Number
source_chapter: 5
team_required: false
deliverable_files:
  - measurables-directory.md
```

### Checks

- name: every_person_has_number
  criterion: "Every person in the organization has at least one weekly activity-based number"
  gate_type: non-negotiable
  failure_message: "Person '{name}' has no weekly number. Tool 7 extends the Scorecard discipline all the way down — every seat, every person, at least one leading number they own."

- name: number_has_owner_target_frequency_source
  criterion: "Each number has a named owner, a target, a weekly frequency, and a data source"
  gate_type: non-negotiable
  failure_message: "Number '{metric}' is missing: {missing}. All four fields are required — a number without a data source cannot be trusted, a number without a target cannot be red-flagged."

- name: number_rolls_up_to_scorecard
  criterion: "Each number traces upward through the Accountability Chart to a leadership Scorecard number"
  gate_type: non-negotiable
  failure_message: "Number '{metric}' owned by '{name}' does not roll up to any Scorecard number. Individual numbers must feed the leadership Scorecard — otherwise they're floating, not hierarchical."

- name: number_anchored_to_process
  criterion: "Each number is anchored to one of the documented core processes"
  gate_type: non-negotiable
  failure_message: "Number '{metric}' does not reference a core process. Without a process anchor, the number measures an outcome in isolation and cannot be improved systematically."

- name: directory_complete
  criterion: "A centralized directory lists every person in the organization alongside their number(s) and targets"
  gate_type: non-negotiable
  failure_message: "The measurables directory is missing {count} people. Coverage must be complete — partial coverage teaches the uncovered half that the discipline is optional."

---

## Cross-tool integration checks

These checks verify that tools remain consistent with each other after
each has been individually passed. They run during any phase gate that
follows the completion of two or more related tools.

- name: rock_chart_alignment
  criterion: "Every Rock owner is a seat on the Accountability Chart"
  gate_type: non-negotiable
  failure_message: "Rock '{rock_title}' has owner '{owner}' who is not a seat on the Accountability Chart. Orphan owners indicate a Rock that has no real home — either the chart is missing a seat or the Rock is misassigned."

- name: scorecard_chart_alignment
  criterion: "Every Scorecard number owner is a seat on the Accountability Chart"
  gate_type: non-negotiable
  failure_message: "Scorecard number '{metric}' owner '{owner}' is not a seat on the Accountability Chart. A number with no seat behind it has no real owner."

- name: l10_leadership_alignment
  criterion: "L10 participants are exactly the leadership team as defined by the Accountability Chart — not a shifting cast"
  gate_type: non-negotiable
  failure_message: "L10 attendance for {date} includes or omits seats that don't match the leadership team on the Accountability Chart. The L10 attendance must be stable and must match the chart."

- name: rock_vto_alignment
  criterion: "After V/TO is complete (Phase 2), current quarter's Rocks align with the 1-Year Plan"
  gate_type: non-negotiable
  failure_message: "Rock '{rock_title}' no longer supports any 1-Year Plan goal. Either replace it at the next quarterly session or add a 1-Year Plan goal it serves."

- name: scorecard_1yp_alignment
  criterion: "Scorecard weekly goals tie to the 1-Year Plan targets (Phase 2+)"
  gate_type: non-negotiable
  failure_message: "Scorecard number '{metric}' goal has no linkage to the 1-Year Plan. Goals pulled from nowhere drift."

- name: process_chart_alignment
  criterion: "Every Core Process owner is a seat on the Accountability Chart"
  gate_type: non-negotiable
  failure_message: "Core Process '{process}' owner '{owner}' is not on the Accountability Chart."

- name: proven_process_core_process_alignment
  criterion: "The Proven Process element of Marketing Strategy is itself one of the documented core processes — linked, not duplicated"
  gate_type: non-negotiable
  failure_message: "The Proven Process on the V/TO and the Core Processes list do not link. They should be the same underlying process documented once and referenced twice."

- name: number_process_alignment
  criterion: "Every Everyone Has a Number measurable traces to a documented Core Process"
  gate_type: non-negotiable
  failure_message: "Measurable '{metric}' does not reference any Core Process. The anchor to a documented process is what makes the number improvable."

- name: number_chart_alignment
  criterion: "Every measurable rolls up through the Accountability Chart to the Scorecard"
  gate_type: non-negotiable
  failure_message: "Measurable '{metric}' does not roll up through the chart to a Scorecard number."

- name: vto_values_people_values_alignment
  criterion: "V/TO Core Values match (or have formally superseded) the Core Values draft that the People Analyzer is running against"
  gate_type: non-negotiable
  failure_message: "V/TO Core Values and People Analyzer Core Values have drifted. Reconcile them — the People Analyzer must evaluate against the canonical V/TO values."
