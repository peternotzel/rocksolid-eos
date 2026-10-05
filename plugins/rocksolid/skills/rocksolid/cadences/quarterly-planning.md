# Quarterly Planning Cadence — 90-Day Rocks™ Cycle

**Cadence type:** Quarterly full-day leadership team session
**Unlocked when:** Phase 1 Step 2 (Rocks™) completes — the first
Rocks set is in place
**Frequency:** Every 90 days (once per quarter)
**Duration:** One full day, typically 8 hours
**Team:** Full leadership team, off-site or focused on-site

This is the 90-day reset cadence. Every quarter, the leadership team
steps back from the week-to-week Level 10 Meeting™ rhythm and runs a
focused session to review the previous quarter, refresh parts of the
V/TO™ (once it exists from Phase 2), set new Rocks for the next 90
days, and hand forward carry-over issues.

The Quarterly Planning cadence is what keeps the 90-day world from
drifting into a 180-day world. Skipping it is not a neutral act — it
lets Rocks expire without replacement and breaks the rhythm that
every other EOS™ tool depends on.

## Trigger phrases

The agent routes into this cadence on any of the following:

- "quarterly planning"
- "quarterly session"
- "rock review" (if quarter-end is near)
- "set new rocks" / "set next quarter rocks"
- "q2 planning" / "q3 planning" / "q{N} planning"
- "prep quarterly" / "quarterly prep"
- "quarterly followup" / "after quarterly"

The agent should also proactively offer this cadence when
`cadences_active.quarterly_planning.next_due` is within 2 weeks of
the current date, even if the user just said "eos" or "hey eos" with
no specific intent.

## Dependencies on state and deliverables

Before starting any Quarterly flow the agent loads:

- `eos-state.md` — `cadences_active.quarterly_planning` for next
  due date, last run date, `current_phase`, and any open
  commitments from the last quarterly session
- `eos-workspace-setup.md` — deliverables path, external data
  sources, any special habits (e.g. "quarterly session is always
  the first Friday of the new quarter")
- `{deliverables_path}/rocks-q{current}.md` — the quarter that's
  ending
- `{deliverables_path}/rocks-q{previous}.md` — prior history for
  trend review
- `{deliverables_path}/vto.md` — if it exists (Phase 2 onward)
- `{deliverables_path}/scorecard.md` — quarterly trend view
- `{deliverables_path}/issues-list.md` — long-term issues that may
  deserve attention at quarterly
- `{deliverables_path}/accountability-chart.md` — ownership of
  proposed new Rocks

Knowledge blocks loaded for this cadence:

- `../knowledge/eos-rocks.md`
- `../knowledge/eos-ninety-day-world.md`
- `../knowledge/eos-meeting-pulse.md` (for the Rocks-V/TO-Quarterly
  connection)
- `../knowledge/eos-ids-track.md` (IDS™ still runs on big issues at
  quarterly)

Templates used:

- `../templates/quarterly-planning-agenda.md` — the full-day
  session agenda
- `../templates/rocks-quarterly.md` — the new quarter's Rocks
  skeleton

## Flow 1 — Prework (prep quarterly)

Runs 1-2 weeks before the session. The goal is to walk into the
full-day session with all the backward-looking work already done so
the day itself can focus on forward-looking decisions.

**Step 1 — Previous quarter Rock scorecard.** Open the ending
quarter's `rocks-q{current}.md` and compute:

- Total company Rocks: {count}
- Done: {count} ({percentage}%)
- Not done: {count} — list them with owner and last status
- Individual Rocks per leadership member: done / not done

Flag the percentage. Wickman's rule of thumb, paraphrased: 80%
completion is healthy; below 50% is a signal that either Rocks are
too ambitious, ownership is unclear, or the weekly rhythm isn't
holding them accountable. The agent surfaces this pattern but does
not diagnose it — the team does that in the session.

**Step 2 — Prepare V/TO refresh candidates (Phase 2+ only).** If
`vto.md` exists, read:

- Core Values — any drift? (recommendation review)
- Core Focus™ — still accurate?
- 10-Year Target™ — any change in confidence?
- Marketing Strategy — any new Uniques™ or competitive shifts?
- 3-Year Picture™ — still resonant?
- 1-Year Plan — are we on track for this year's goals?

Prepare a short "V/TO review pack" — a list of each V/TO section
with a status prompt for the team. Most quarters nothing changes.
Some quarters one or two things need adjustment.

**Step 3 — Prepare the long-form Issues List.** Open
`issues-list.md` and also the V/TO long-term Issues List (if
present). Pull out:

- Long-term issues that have been on the list for 3+ months
- Strategic issues that are bigger than a single L10 IDS slot can
  handle
- Any issue explicitly marked "for quarterly"

Build a prioritized pre-session list — typically 5-10 items — for
the IDS slot of the quarterly session.

**Step 4 — Scorecard trend review.** Compute quarter-over-quarter
trends on the Scorecard numbers. Flag any number that has been red
for multiple weeks in the last quarter. This feeds into the team's
diagnosis of execution gaps.

**Step 5 — Draft the agenda.** Copy
`../templates/quarterly-planning-agenda.md` into a session agenda
file for the user's review:
`{deliverables_path}/quarterly-sessions/{quarter}-agenda.md`.
Pre-fill with the data from Steps 1-4.

**Step 6 — Logistics reminders.** Offer to remind the user of:
- Off-site or focused on-site location decided?
- All leadership team members confirmed?
- Enough food and water (half-day breaks matter)?
- Time-boxing — a full day is 8 hours, not 6

Update `eos-state.md`:
`cadences_active.quarterly_planning.last_prep: {timestamp}`.

## Flow 2 — Running the session (optional live mode)

The full-day agenda (paraphrased from Wickman's Quarterly Pulse):

1. **Segue** (15 min) — best personal and best business from each
2. **Review prior quarter** (60 min) — Rock scorecard, trends,
   lessons, what the data said
3. **Refresh V/TO** (60 min) — walk each section, update anything
   that drifted (Phase 2+)
4. **Set new quarter Rocks** (3 hours) — the heart of the day.
   Brainstorm candidates → narrow to 3-7 company Rocks → assign
   owners → confirm 3-7 individual Rocks per leadership member
5. **IDS on strategic issues** (2 hours) — Identify / Discuss /
   Solve on the long-form issues list built during prework
6. **Next steps and cascade** (30 min) — To-Do list, cascading
   messages to the rest of the organization, schedule the
   State-of-the-Company meeting (see
   `quarterly-state-of-company.md`)
7. **Conclude** (15 min) — each person rates the session 1-10,
   feedback

The agent as live note-taker: same pattern as the Weekly L10
cadence. Walk through agenda items in order, accept dictation, keep
timing. Quarterly is more loosely timed than L10 — a 3-hour block
for Rock-setting can flex. The agent should warn if any block
significantly overruns but does not enforce a hard stop.

## Flow 3 — Followup (quarterly followup)

Runs within 1-2 days after the session. This is where the session's
decisions turn into committed, written artifacts.

**Step 1 — Write the new Rocks file.** Copy
`../templates/rocks-quarterly.md` into
`{deliverables_path}/rocks-q{next_quarter}.md`. Populate with:

- 3-7 company Rocks (title, owner, due date, done/not-done
  criterion)
- 3-7 individual Rocks per leadership member
- Any pre-existing template header notes removed (this file is no
  longer a "pre-vision Rocks" file — V/TO exists by now if the
  user has completed Phase 2)

**Step 2 — Update the V/TO.** If any V/TO section was refreshed in
the session, update `vto.md` accordingly. Show the diff before
writing. Run the relevant substance rubric checks from
`../assessment/substance-rubrics.md` Tool 5 to catch any regression
(e.g. Core Values count dropped below 3).

**Step 3 — Update the V/TO Traction page Rocks.** The current-
quarter Rocks on the V/TO Traction page must match the new
`rocks-q{next_quarter}.md` — cross-tool integration check
`rock_vto_alignment`. Update both in sync.

**Step 4 — Close out the previous quarter.** In
`rocks-q{previous}.md`, mark final statuses on every Rock. This
file becomes the historical record.

**Step 5 — Process long-form issues.** For each issue IDS'd during
the session, update `issues-list.md` or the V/TO long-term Issues
List: move solved items to resolved, note the solution, and add
any new issues that surfaced.

**Step 6 — Schedule the State-of-the-Company meeting.** Typically
within 1-2 weeks after the Quarterly Planning session. Add the
schedule to `cadences_active.quarterly_state_of_company.next_due`
in state, and offer the user the State-of-the-Company cadence flow
— see `quarterly-state-of-company.md`.

**Step 7 — Update state.** Update `eos-state.md`:
- `cadences_active.quarterly_planning.last_run: {session_date}`
- `cadences_active.quarterly_planning.next_due: {session_date + 90 days}`
- Increment the quarterly session count

## Team-mode handling

Quarterly Planning is a team-required cadence by definition. Solo
execution is not valid — the whole point is that the leadership
team is together. However, solo sessions with the agent ARE valid
for the prework phase (Flow 1): the user can prep the session
alone, walk into the team meeting prepared, and bring the team's
output back for followup (Flow 3). The session itself (Flow 2) is
team only — live mode with the agent assumes the team is present.

If the user attempts to generate new Rocks in solo mode without a
team session, the agent invokes the team-mode clarification
protocol from `../rules/team-required-tools.md` and treats the
output as draft-only until team validation is recorded.

## Missed quarterly sessions

If the user skips a quarterly session (`last_run` more than 100
days old), the agent flags it on the next session start:

> "The last quarterly session was {N} days ago. The 90-day world
> loses its shape if quarterly planning slides past 100 days. What
> happened this quarter, and when can we run the session?"

Log in `eos-state.md` under `missed_quarterlies` with date and
reason. Missing two quarterly sessions in a row is a serious
signal — the agent escalates to a capacity-vs-tempo reassessment
(see `eos-state.md` tempo handling).

## Cross-tool integration checks triggered by this cadence

After followup completes, the agent re-runs these checks from
`../assessment/substance-rubrics.md`:

- `rock_chart_alignment` — every new Rock owner is a seat on the
  Accountability Chart
- `rock_vto_alignment` — Rocks on the V/TO Traction page match
  `rocks-q{current}.md`
- `scorecard_1yp_alignment` — Scorecard goals still tie to the
  1-Year Plan (in case the V/TO was refreshed)

Any check failure is reported to the user and added to the short-
term Issues List for the next L10.
