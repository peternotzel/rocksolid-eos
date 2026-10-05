# Brightline Freight — EOS™ State

```yaml
started: 2026-10-05
last_session: 2026-10-05
session_count: 1
current_phase: 1
current_step: 1
current_step_progress: >-
  2026-10-05: accountability-chart.md v1 written with full team. Structure
  and placement agreed; Operations 5th role open (handover moved to CS).
  Next: Ops 5th role, then People Analyzer + GWC.
  Rubric check 2026-10-05: 6 pass (has_integrator, single_integrator,
  major_functions_count, visionary_optional, function_count_sweet_spot,
  chart_revision_cadence); 4 not passed (five_roles_per_seat — Ops has 4;
  structure_before_names — pending Ops role; gwc_all_yes — not run;
  people_analyzer_bar_met — not run). Maya role-2 rewording awaiting her OK.
tool_1:
  name: Accountability Chart
  team_mode: scribe   # whiteboard 2026-10-02 + live with all five on 2026-10-05
  team_validated: true
  team_validated_at: 2026-10-05
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
    active: false
    unlock_at: "Step 3"
    schedule: { day: Monday, time: "09:00", participants: [Maya Torres, Jonas Weber, Priya Nair, Leo Brandt, Sam Okafor] }
    last_run: null
    next_due: null
  quarterly_planning:
    active: false
    unlock_at: "Step 2"
    exceptions:
      - quarter: Q4-2026
        note: Q1 2027 Rocks set inside the December annual session; no separate late-December session (office closed Dec 23 – Jan 2).
    last_run: null
    next_due: null
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
