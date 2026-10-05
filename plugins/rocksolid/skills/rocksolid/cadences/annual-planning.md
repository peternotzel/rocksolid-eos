# Annual Planning Cadence — 2-Day Off-Site

**Cadence type:** Annual leadership team off-site session
**Unlocked when:** Phase 1 Step 3 (Meeting Pulse™) completes (the
first Annual can be run with a placeholder V/TO™ if Phase 2 is not
yet done, but it is strongly recommended to have a complete V/TO in
place before the first real Annual)
**Frequency:** Once per year
**Duration:** 2 full days, off-site
**Team:** Full leadership team

This is the deepest reset cadence of the EOS™ Operating System.
Once a year, the leadership team pulls away from the business for
two full days to look backward on the year that ended, rebuild or
refresh the V/TO, and set the direction for the year ahead.
Annual Planning is also the natural time to run the second (and
subsequent) Organizational Checkup™, giving year-over-year score
trends that track whether EOS is actually taking hold.

Wickman's constraint, paraphrased: it has to be off-site, it has
to be two days, and it has to be the full leadership team. One-day
or on-site versions consistently under-deliver because the team
stays in operational mode.

## Trigger phrases

The agent routes into this cadence on any of the following:

- "annual planning"
- "annual session"
- "yearly planning" / "year-end planning"
- "prep annual" / "annual prep"
- "annual followup"
- "2-day off-site" / "two day offsite" (in an EOS context)
- "run annual checkup" (triggers the Organizational Checkup
  re-run as part of the cadence)

The agent should proactively offer this cadence when
`cadences_active.annual_planning.next_due` is within 4 weeks of
current date, because the prework is substantial and off-site
logistics need real lead time.

## Dependencies on state and deliverables

Before starting any Annual flow the agent loads:

- `eos-state.md` — `cadences_active.annual_planning` (last run,
  next due), `checkup_history` (prior Organizational Checkup
  scores), `current_phase`, tempo history
- `eos-workspace-setup.md` — deliverables path, off-site
  preferences, external sources
- `{deliverables_path}/vto.md` — the full current vision
- `{deliverables_path}/rocks-q{current}.md` through
  `rocks-q{4-quarters-ago}.md` — full-year Rock history
- `{deliverables_path}/scorecard.md` — full-year trend
- `{deliverables_path}/issues-list.md` — short-term and long-term
- `{deliverables_path}/accountability-chart.md` — any structural
  changes over the year

Knowledge blocks loaded for this cadence:

- `../knowledge/eos-vto.md` (the whole V/TO is in play)
- `../knowledge/eos-core-values-discovery.md` (Core Values audit)
- `../knowledge/eos-core-focus.md`
- `../knowledge/eos-ten-year-target.md`
- `../knowledge/eos-marketing-strategy.md`
- `../knowledge/eos-three-year-picture.md`
- `../knowledge/eos-ninety-day-world.md`
- `../knowledge/eos-meeting-pulse.md`
- `../knowledge/eos-six-components.md` (annual is the natural
  time to assess all Six Key Components™ at once)

Assessment loaded:

- `../assessment/organizational-checkup.md` — the 20-question
  checkup, re-run annually

Templates used:

- `../templates/annual-planning-agenda.md` — the 2-day agenda

## Flow 1 — Prework (prep annual)

Runs 2-4 weeks before the off-site. Annual prep is substantial and
should not be crammed into the day before.

**Step 1 — Organizational Checkup re-run.** Walk the user through
a fresh Organizational Checkup using the 20 paraphrased statements
from `../assessment/organizational-checkup.md`. Compute the score.
Compare against `checkup_history` entries from past years:

- Score delta from prior year
- Which specific dimensions improved?
- Which specific dimensions regressed?
- Trajectory over multiple years if the data exists

Log the new checkup as a new entry in
`checkup_history` in `eos-state.md`. This is one of the most
valuable year-over-year artifacts the skill produces.

**Step 2 — Full-year Rock review.** Build a year-wide Rock report:

- Total company Rocks across 4 quarters: {N}
- Done: {percentage}%
- Quarters where Rock completion was strong vs. weak
- Pattern analysis: any owner who under-delivered across
  multiple quarters? Any Rock category (e.g. process work) that
  consistently slipped?

This is diagnostic, not judgmental — the team uses this data in
the session to inform next year's Rock strategy.

**Step 3 — Full-year Scorecard trend.** Pull every Scorecard
number and compute a year-over-year trajectory. Flag numbers that:

- Trended consistently up (healthy signal)
- Trended consistently down (problem signal)
- Were replaced or retired mid-year (Scorecard evolution)
- Never had clean data (measurement problem)

**Step 4 — Full Issues List review.** Open both the short-term
and long-term Issues Lists. Count items that have been open for
more than 6 months — these are likely candidates for the annual
IDS™ slot.

**Step 5 — Core Values audit.** Revisit each Core Value with
fresh eyes:

- Is it still operationalized (hire/fire/review/reward)?
- Has the team drifted from any of them?
- Are there new values that emerged during the year that deserve
  inclusion?

Prepare a short audit document as input to the session's Day 1
Core Values slot.

**Step 6 — 3-Year Picture and 1-Year Plan readiness.** The
Annual session is when these get rebuilt.

- Current 3-Year Picture — still valid, or time to refresh?
- Current 1-Year Plan — it's ending now, so the main work of the
  session will be building the NEXT 1-Year Plan

**Step 7 — Off-site logistics.** Offer to remind the user of:

- Venue booked? (off-site is non-negotiable — a meeting room at
  the office fails the intent)
- 2 full days blocked with no interruptions?
- Full leadership team confirmed attending?
- Meals, refreshments, breaks planned?
- Any pre-reading materials to send attendees beforehand?

**Step 8 — Draft the agenda.** Copy
`../templates/annual-planning-agenda.md` into a session file:
`{deliverables_path}/annual-sessions/{year}-agenda.md`. Pre-fill
with the outputs of Steps 1-6.

Update `eos-state.md`:
`cadences_active.annual_planning.last_prep: {timestamp}`.

## Flow 2 — Running the session (optional live mode)

The 2-day agenda (paraphrased from Wickman's Annual Pulse):

### Day 1 — Look Back

1. **Segue** (15 min) — personal and business best of the year
2. **Organizational Checkup review** (30 min) — walk the just-
   completed checkup, compare to prior year(s), discuss themes
3. **Full-year review** (90 min) — Rock completion, Scorecard
   trends, what worked and what didn't
4. **Issues List deep clean** (90 min) — process the long-form
   issues list with IDS, resolve what can be resolved, escalate
   what cannot
5. **Core Values audit** (60 min) — are the Core Values still
   alive? Any adjustments needed?
6. **Core Focus review** (30 min) — still accurate?
7. **10-Year Target review** (30 min) — still the right BHAG?
8. **Team health** (30 min) — People Analyzer™ calibration on
   the leadership team, GWC™ check on any seats in question
9. **Day 1 conclude** (15 min)

### Day 2 — Look Forward

1. **Segue** (10 min)
2. **Marketing Strategy refresh** (60 min) — Target Market, 3
   Uniques™, Proven Process™, Guarantee
3. **3-Year Picture refresh** (90 min) — future date, revenue,
   profit, measurables, "looks like" bullets
4. **1-Year Plan build** (3 hours) — the main forward-looking
   block of the session. Future date, revenue, profit,
   measurables, 3-7 SMART goals, budget support
5. **Q1 Rocks set** (90 min) — set the Rocks for the first
   quarter of the new year (3-7 company, 3-7 per person)
6. **Cascading messages** (30 min) — what does the workforce
   need to hear at the next State-of-the-Company meeting?
7. **Day 2 conclude** (15 min) — each person rates the session,
   commitments confirmed

Live mode for Annual is uncommon (most teams keep the off-site
free of laptops), but if the user does invoke "run annual":

- Walk through the agenda in order
- Accept dictation per block
- Timing is looser than Weekly L10 — warn on major overruns but
  don't enforce hard stops

## Flow 3 — Followup (annual followup)

Runs within 1-3 days after the off-site. The Annual followup is
the largest of any cadence because almost every EOS artifact gets
updated.

**Step 1 — Write the refreshed V/TO.** Update `vto.md` with all
the refreshed sections from the session:

- Core Values (if adjusted)
- Core Focus (if adjusted)
- 10-Year Target (rarely changes, but confirm)
- Marketing Strategy (Day 2 refresh)
- 3-Year Picture (new future date, new numbers)
- 1-Year Plan (brand new — this is the big one)
- Quarterly Rocks (set to the new Q1 Rocks from the session)
- Issues List (updated with session outputs)

Show the diff before writing. Run the full V/TO substance rubric
from `../assessment/substance-rubrics.md` Tool 5 after the write
— some checks may need re-validation (e.g. Core Values count, 3
Uniques still exactly 3).

**Step 2 — Write the new Q1 Rocks file.** Copy
`../templates/rocks-quarterly.md` into
`{deliverables_path}/rocks-q{new_year_q1}.md`. Populate with the
new Rocks. Remove any "pre-vision Rocks" marker — at Annual, the
V/TO is always in play.

**Step 3 — Close out the previous Q4 Rocks file.** Mark final
statuses on every Rock in `rocks-q{previous_q4}.md`.

**Step 4 — Update the Accountability Chart.** If the team
discussed any seat changes during Day 1's team health block,
update `accountability-chart.md`, `people-analyzer.md`, and
`gwc-assessments.md` accordingly. Re-run the Tool 1 substance
rubric after the update.

**Step 5 — Log the second Organizational Checkup.** Add the
checkup from Flow 1 Step 1 to `checkup_history` in `eos-state.md`
as a new entry with year and full answers:

```yaml
checkup_history:
  - year: {year}
    type: onboarding
    score: {first_score}
    answers: {...}
  - year: {year+1}
    type: annual
    score: {second_score}
    answers: {...}
    delta_from_prior: {second_score - first_score}
```

If this is the post-graduation Annual, mark it as the
`final_checkup` (for the graduation protocol) OR as a regular
annual checkup (if graduation hasn't happened yet).

**Step 6 — Update state.** Update `eos-state.md`:
- `cadences_active.annual_planning.last_run: {session_end_date}`
- `cadences_active.annual_planning.next_due: {session_end_date + 365 days}`
- `cadences_active.quarterly_planning.next_due: {~3 months out}` —
  the next quarterly session replaces the normal cycle because
  Annual already set Q1 Rocks; the next regular quarterly is Q2
- `cadences_active.quarterly_state_of_company.next_due: {~2 weeks out}` —
  the post-Annual State-of-Company is the biggest vision cascade
  of the year and should run within 2 weeks

**Step 7 — Trigger the post-Annual State-of-Company.** Offer the
user the State-of-Company prework flow immediately, because that
meeting becomes the public face of the refreshed V/TO — see
`quarterly-state-of-company.md`.

## Team-mode handling

Annual Planning is the most team-mode-strict cadence in the skill.
Solo execution of the session itself is meaningless — a "2-day
off-site alone with a notebook" is not an Annual. The agent runs
the team-mode clarification protocol from
`../rules/team-required-tools.md` at the start of any Flow 2 live
mode attempt.

Solo work is legitimate for:
- Flow 1 prework (prep)
- Flow 3 followup (writing up the session outputs on behalf of
  the team, as scribe)

Both of these treat the team as the authoring body and the user
as the preparer or scribe.

## Missed Annual Planning

Missing the Annual is serious. If `last_run` is more than 13
months old, the agent flags it prominently on the next session
start:

> "The last Annual Planning session was {N} months ago. Annual is
> the yearly reset — missing it means the V/TO ages without a
> deliberate refresh, the 1-Year Plan ends and is not replaced,
> and the Organizational Checkup misses its natural home. What
> happened, and when can we schedule the 2-day off-site?"

Log in `eos-state.md` under `missed_annuals`. More than one missed
Annual in a row is a capacity-vs-tempo red flag — the agent
reassesses tempo mode before continuing any other cadence work.

## Cross-tool integration checks triggered by this cadence

After followup completes, the agent re-runs these checks from
`../assessment/substance-rubrics.md`:

- Full Tool 5 (V/TO) rubric on the refreshed `vto.md`
- `rock_chart_alignment` — every new Q1 Rock owner is a seat on
  the Accountability Chart
- `rock_vto_alignment` — Rocks on the V/TO Traction page match
  the new `rocks-q{new_q1}.md`
- `scorecard_1yp_alignment` — Scorecard weekly goals tie to the
  new 1-Year Plan
- `l10_leadership_alignment` — if any seats changed during team
  health review, L10 attendance should be re-verified against
  the updated Accountability Chart

Any check failure is reported to the user and added to the short-
term Issues List for the next L10 to resolve.
