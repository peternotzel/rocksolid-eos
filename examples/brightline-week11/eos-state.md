# Brightline Freight — EOS™ State

```yaml
started: 2026-07-27
last_session: 2026-10-05
session_count: 15
current_phase: 1
current_step: 4
current_step_progress: >-
  Steps 1-3 substance_passed. Step 4 (Scorecard) in progress: v1 grid
  with 8 numbers agreed 2026-09-14; 3 weeks of real data so far; two
  numbers (on-time %, claims) still pulled manually by Jonas/Sam.
  Next: 4th week of data, then substance check.
steps:
  1: { status: substance_passed, passed_at: 2026-08-24 }
  2: { status: substance_passed, passed_at: 2026-09-24, note: "Q4 Rocks set at quarterly session" }
  3: { status: substance_passed, passed_at: 2026-09-28, note: "5 L10s run since 2026-08-31" }
  4: { status: in_progress }
tool_1:
  name: Accountability Chart
  team_mode: scribe   # whiteboard 2026-10-02 + live with all five on 2026-10-05
  team_validated: true
  team_validated_at: 2026-08-24
  team_validated_by: Maya Torres, Jonas Weber, Priya Nair, Leo Brandt, Sam Okafor
  scope_validated: chart structure + seat placement (People Analyzer / GWC pending)
  seats:
    visionary: Maya Torres
    integrator: Jonas Weber
    sales_marketing: Priya Nair
    operations: Jonas Weber (interim, two seats until Ops lead hired)
    finance_admin: Leo Brandt
    customer_success: Sam Okafor
tempo: standard
tempo_history:
  - date: 2026-10-05
    tempo: standard
    reason: onboarding
    note: >-
      Blend of checkup 41% (Typical), 34 employees, 1 location, 6 team
      hours/week, top-3 priority. Parallel initiative (Kessler Industrial
      onboarding, ends 2026-11-30) would normally push one tier slower;
      kept Standard because it is time-bound and overlaps only Steps 1-2.
      Watch for drift through November.

team_size:
  leadership: 5
  total: 34
leadership_team:
  - { name: Maya Torres, title: CEO / founder }
  - { name: Jonas Weber, title: Head of Operations }
  - { name: Priya Nair, title: Head of Sales }
  - { name: Leo Brandt, title: Finance & Admin }
  - { name: Sam Okafor, title: Head of Customer Success }
locations: 1   # Hamburg office + remote dispatchers reporting into it
weekly_hours_committed: 6   # team hours (all five together), ~30 person-hours
eos_priority: top_3
parallel_initiatives:
  - name: Kessler Industrial customer onboarding
    ends: 2026-11-30

checkup_history:
  - date: 2026-10-05
    context: baseline
    total_score: 41
    percentage: 41
    category: Typical
    team_mode: team
    source: team offsite scoring (printed statements, re-mapped to skill order)
    per_statement: [2, 2, 3, 1, 3, 2, 2, 3, 1, 2, 2, 3, 2, 1, 3, 2, 2, 1, 1, 3]
    group_averages: { vision: 2.1, people: 2.0, data: 1.0, issues: 3.0, process: 2.0, traction: 2.3 }
    lowest: [4, 9, 14, 18, 19]
    dissent:
      - statements: [12, 18]
        note: Priya rated 3, rest of team 1 — reflects Sales-only practice (per-rep targets, weekly HubSpot pipeline).

discrepancy_notes:
  - statement: 12
    topic: Rocks
    finding: real_gap
    note: Only Sales has quarterly targets per rep; no company or per-leader Rocks. docs/q3-priorities.md is an unowned 8-item wish list.
  - statement: 18
    topic: Scorecard
    finding: partial_elsewhere
    note: Sales tracks pipeline weekly in HubSpot; no other function tracks weekly numbers. Seed for Step 4.
  - statement: 15
    topic: Issues
    finding: real_gap
    note: Issues surface in Slack and hallway conversations; no list, no IDS™.
  - statement: 20
    topic: Budget
    finding: exists_elsewhere
    note: Budget in Leo's Google Sheet; actuals reviewed quarterly.

gates:
  phase_1: { status: open }
  phase_2: { status: pending }
  phase_3: { status: pending }

bypass_history: []
warnings: []

cadences_active:
  weekly_l10:
    active: true
    unlocked_at: 2026-08-31
    schedule: { day: Monday, time: "09:00", participants: [Maya Torres, Jonas Weber, Priya Nair, Leo Brandt, Sam Okafor] }
    last_run: 2026-09-28
    next_due: 2026-10-05
    last_prep: 2026-10-05
    reschedules:
      - { date: 2026-10-05, from: "09:00", to: "14:00", reason: Kessler site visit }
    average_rating: 7.6
  quarterly_planning:
    active: true
    unlocked_at: 2026-09-24
    exceptions:
      - quarter: Q4-2026
        note: Q1 2027 Rocks set inside the December annual session; no separate late-December session (office closed Dec 23 – Jan 2).
    last_run: 2026-09-24
    next_due: 2026-12-01
  quarterly_state_of_company:
    active: false
    unlock_at: "Phase 2 Vision-side draft"
    last_run: null
    next_due: null
  annual_planning:
    active: false
    unlock_at: "Phase 1 Step 3 (minimum)"
    note: 2026 session is a light pre-V/TO version (2027 goals, budget, Q1 Rocks).
    last_run: null
    next_due: 2026-12-01

calendar:
  fiscal_year_start_month: 1
  quarter_end_dates: [2026-12-31, 2027-03-31, 2027-06-30, 2027-09-30]
  quarterly_session_timing: "last 2 weeks of quarter (Q4: merged into annual session)"
  annual_planning_window: { from: "12-01", to: "12-14" }
  closures:
    - { from: "12-23", to: "01-02", note: "office closed — no EOS sessions" }

pause_until: null
paused_weeks_total: 0
session_focus: null
```
