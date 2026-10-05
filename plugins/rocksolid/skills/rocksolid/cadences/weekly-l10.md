# Weekly L10™ Cadence

**Cadence type:** Weekly recurring meeting
**Unlocked when:** Phase 1 Step 3 (Meeting Pulse™) completes and the
first real L10™ has been run
**Frequency:** Weekly, same day, same time — every week
**Duration:** 90 minutes, hard stop
**Team:** Leadership team (or cascaded department-level team after
Phase 3)

This is the heartbeat cadence of the entire EOS™ Operating System.
Once unlocked it runs indefinitely — through Phase 2, Phase 3, and on
into Pure Operating Mode after graduation. Missing one is an exception
that the skill logs and asks about.

## Trigger phrases

The agent routes into this cadence on any of the following:

- "prep l10" / "prepare this week's l10" / "l10 prep"
- "l10 notes" (after the meeting, for followup)
- "run l10" (live note-taking mode during the meeting itself)
- "update scorecard with this week's numbers"
- "l10 followup" / "post l10"
- "l10" alone — ambiguous. The agent should detect day-of-week
  context (is today the scheduled L10 day? is it before or after
  the scheduled time?) and offer Prep, Run, or Followup
  accordingly. If context is unclear, offer all three as options.

## Dependencies on state and deliverables

Before starting any L10 flow the agent loads:

- `eos-state.md` — reads `cadences_active.weekly_l10.schedule` for
  the configured slot (`day`, `time`, `participants`; set during
  onboarding Step F or at Phase 1 Step 3), `current_phase`,
  and the list of active open items from the last run
- `eos-workspace-setup.md` — reads `deliverables_path` and any
  external data sources the user registered (e.g. Monday, Notion,
  Google Sheets) so the agent can offer to pull scorecard numbers
  from those sources
- `{deliverables_path}/scorecard.md`
- `{deliverables_path}/rocks-q{current_quarter}.md`
- `{deliverables_path}/issues-list.md`
- `{deliverables_path}/l10-notes/` (folder) — to find the most
  recent notes file for to-do carryforward
- `{deliverables_path}/l10-agenda.md` — the fixed agenda format

Knowledge blocks loaded for this cadence:

- `../knowledge/eos-level-10-meeting.md` (the 7-item agenda and
  timing)
- `../knowledge/eos-ids-track.md` (Identify / Discuss / Solve
  protocol for the IDS™ slot)
- `../knowledge/eos-meeting-pulse.md` (why the cadence exists at
  all and how it connects to Quarterly and Annual)

Templates used:

- `../templates/l10-agenda.md` (the fixed agenda skeleton)
- `../templates/l10-notes-template.md` (the per-meeting notes
  skeleton)

## Flow 1 — Prework (prep l10)

Runs before the meeting. Typical timing: the day before, or the
morning of, the L10.

**Step 1 — Check the scorecard.** Open `scorecard.md` and identify:

- Which weekly numbers are missing values for this week?
- Which numbers are red (below goal)?
- Which numbers have been trending red for multiple weeks?

List the gaps to the user. For each missing value, ask: "Who owns
this number? Should we ping them to fill it before the meeting, or
will they bring it live?" Offer to pull the number from an external
source if one is registered in `eos-workspace-setup.md`.

**Step 2 — Check the rocks.** Open `rocks-q{current_quarter}.md` and
for each Rock:

- Current status (on-track / off-track / done)
- Last status update date — flag any Rock not updated since the
  previous L10
- Owner

Build a list of Rocks that need a status update before the meeting.

**Step 3 — Check the issues list.** Open `issues-list.md`, count
total open items, and identify the top 3 priorities. If the list
doesn't already have priorities marked, ask the user to rank them or
offer to infer from context (entry age, explicit urgency markers).

**Step 4 — Carry forward open to-dos.** Read the most recent file
in `l10-notes/`. Extract any to-dos that were not marked done. These
carry forward into the new week's To-Do Review.

**Step 5 — Create the new L10 notes file.** Copy
`../templates/l10-notes-template.md` into
`{deliverables_path}/l10-notes/{next_meeting_date}.md` and pre-fill
it with:

- Meeting date, time, attendees from state
- Segue prompt placeholder
- Scorecard section — current week's numbers with gaps and red
  flags highlighted
- Rock Review section — current Rock statuses with last-updated
  markers
- Headlines section — empty, to be filled live
- To-Do Review section — carried-forward to-dos from last week
- IDS section — top 3 priority issues from the issues list,
  pre-listed
- Conclude section — empty, to be filled live

**Step 6 — Walk the user through the pre-filled file.** Show the
diff, confirm the prep is what the user expected, note any gaps the
user needs to close before the meeting (e.g. "you still need to
ping Jane for the pipeline number"). Update `eos-state.md`:
`cadences_active.weekly_l10.last_prep: {timestamp}`.

## Flow 2 — Running the meeting (optional live mode)

Runs during the meeting itself, if the user wants the agent as a
live note-taker. This flow is entirely optional — most users will
run the meeting offline and come back afterward with notes.

When the user says "run l10":

1. Open the current week's file from `l10-notes/{this_meeting_date}.md`
2. Walk through the 7 agenda items in order, with timing prompts:
   - **Segue** (5 min) — personal/business best from each attendee
   - **Scorecard review** (5 min) — read the numbers, flag red
     cells, move red cells into the Issues List, do NOT discuss
     them yet
   - **Rock Review** (5 min) — on-track / off-track per Rock, move
     off-track Rocks into the Issues List
   - **Customer/Employee Headlines** (5 min) — good and bad
     headlines, short
   - **To-Do List review** (5 min) — last week's to-dos, done / not
     done, not-done items stay or get re-prioritized
   - **IDS** (60 min) — Identify / Discuss / Solve on the top
     issues, in priority order, working from the Issues List. For
     each issue, record Identify (root cause), Discuss (one pass),
     Solve (To-Do, new Rock, or escalated decision)
   - **Conclude** (5 min) — to-do recap, cascading messages,
     rating
3. Accept user dictation or direct input per agenda item — write
   into the appropriate section of the notes file in near-real-time
4. Watch the 90-minute clock. At 80 minutes, warn the user. At 90
   minutes, hard stop: whatever is not finished rolls forward.

## Flow 3 — Followup (l10 notes)

Runs after the meeting. The user returns with either a transcript, a
set of handwritten-style notes, or the live mode file already filled
in.

**Step 1 — Parse the input.** Read transcript / pasted notes /
completed file. Extract:

- Which issues were solved? (move to resolved in issues-list)
- Which Rock statuses changed? (update rocks-q{current})
- What new to-dos were created? (carry forward into NEXT week's
  notes file stub)
- Were any new rocks or escalated decisions created?

**Step 2 — Show the diff.** Before writing anything, show the user
all proposed changes to `issues-list.md`, `rocks-q{current}.md`, and
the next week's notes file. User confirms or corrects.

**Step 3 — Write the changes.** Atomic writes, one file at a time.
After each write, the agent notes it to the user.

**Step 4 — Update state.** Update `eos-state.md`:
- `cadences_active.weekly_l10.last_run: {meeting_date}`
- `cadences_active.weekly_l10.next_due: {meeting_date + 7 days}`
- Increment the L10 run count

**Step 5 — Check rubric progress.** If this is an early L10 (during
Phase 1 Step 3 installation), count the populated notes files in
`l10-notes/`. Once 4 exist with real content, the Tool 3 substance
check for "L10 has actually been run" passes and the agent reports
this to the user.

## Substance check contribution

The Weekly L10 Cadence is also how Phase 1 Step 3 (Meeting Pulse)
reaches substance-passed state. Two relevant checks in
`../assessment/substance-rubrics.md` Tool 3:

- At least 4 L10 notes files exist with real (non-empty) content
- Each L10 notes file has documented IDS items (Identify / Discuss
  / Solve visible)

This cadence's output IS the substance check for that step — the
check cannot pass just by reading the agenda file, it requires the
behavioral evidence of 4 real meetings.

## Missed L10s

If the user skips a week, at the next session the agent notices
(`cadences_active.weekly_l10.last_run` is more than 7 days old on a
non-scheduled day) and flags it gently:

> "The last L10 was on {date} — that's {N} days ago and no run was
> logged for this week. Wickman's rule, paraphrased: only miss an
> L10 for vacation or a genuine emergency. What happened this week?"

Log the result in `eos-state.md`:

```yaml
missed_l10s:
  - date: {missed_date}
    reason: {user_reason}
    pattern_flag: {true if 2+ consecutive or 3+ in 8 weeks}
```

If a pattern emerges (two consecutive misses, or three in eight
weeks), the agent escalates to a non-negotiable challenge: the
weekly cadence is the keystone practice; losing it dissolves the
operating system. The user is asked explicitly what needs to change
— the meeting time, attendees, duration, or commitment level — for
the cadence to resume sustainably.

## Department L10 cascades (post-Phase 3)

After Phase 3 completes, the same cadence can be cascaded to
department-level leadership teams. Each department runs its own L10
on the same 7-item format, with the department's own Scorecard
slice, Rocks slice, and Issues List. The skill allows multiple
parallel L10 entries in state:

```yaml
cadences_active:
  weekly_l10:
    leadership:
      day: Monday
      time: "09:00"
      last_run: ...
    sales_team:
      day: Tuesday
      time: "11:00"
      last_run: ...
    ops_team:
      day: Wednesday
      time: "10:00"
      last_run: ...
```

The Prep / Run / Followup flow works identically for each. The agent
asks which L10 the user means when a cascaded setup exists.
