# EOS Implementer — Onboarding

Onboarding is a **gate**. The EOS™ Implementation Program cannot start
until onboarding is complete, the Organizational Checkup™ has been
administered, the workspace has been scanned, tempo inputs have been
gathered, a tempo recommendation has been agreed, and the user has
explicitly accepted the derived plan.

This is a standalone, self-contained onboarding flow. Entering Phase 1
Step 1 is a separate user decision after onboarding closes.

## Total time

~15-20 minutes for a team lead working alone, longer if the full
leadership team is in the room answering the checkup together (which is
the ideal).

## The 8 onboarding steps

### Step A — Announce & Explain

Tell the user what will happen and set expectations. Keep it short —
this is the moment where a skeptical user decides whether to invest the
next 20 minutes.

Example opening:

> "Before we start installing the EOS tools, I'll run you through four
> things: Wickman's 20-question Organizational Checkup to establish a
> baseline, a quick scan of your workspace to see what EOS artifacts
> already exist, a handful of questions about team size and available
> time to pick the right tempo (Fast Track / Standard / Deep), and then
> I'll show you the personalized plan and ask you to agree to it before
> anything else happens. Plan on 15-20 minutes. Ready?"

Wait for acknowledgement. If the user says "just start", push back
gently — the onboarding is the whole point of the gate. Skipping it
produces a plan that doesn't fit the company.

### Step B — Organizational Checkup

Run the 20-question assessment from
`assessment/organizational-checkup.md`. Rules from that file:

- Ask the statements **one at a time**, never as a batch or form.
- After each answer, briefly acknowledge and move to the next.
- Do not pre-explain what a "good" answer would be — that biases the
  self-rating.
- If the user asks what a statement means, paraphrase the dimension
  (e.g., "this is about whether a weekly Scorecard™ exists at all,
  not whether it's perfect").

**Team coverage.** The ideal is that the full leadership team
participates in the checkup and answers each statement as a team. Solo
is acceptable as a first-pass baseline — if you're solo, record
`team_mode: solo` on the checkup record so the mid-year re-run can be
upgraded to team-mode.

After all 20 answers:

1. Compute the total score (sum of the 20 integers, range 20-100).
2. The raw total IS the percentage (max = 100).
3. Place the percentage into one of the 5 categories per the scoring
   rubric (Foundational / Typical / Above the middle / Substantially
   better / Target state).
4. Identify the three lowest-scored statements — these are the worst
   dimensions and become candidate focus areas in the gap report.
5. Store the full record to `checkup_history[0]` in `eos-state.md`
   (write happens at Step H, not now).

Present the result using the `Checkup Result Summary` template in
`assessment/gap-templates.md` → Template 1. Compact, one-screen.

### Step C — Workspace Scan

Run the two-pass scan from `assessment/workspace-scan-checklist.md`.

**Pass 1 — Filename glob patterns.** Use the tool-by-tool glob
patterns in the checklist. Every match becomes a **suspect** handed to
Pass 2. Skip the directories listed in the checklist
(`.git/`, `node_modules/`, `build/`, `dist/`, `.venv/`, etc.) and do
not descend into unrelated output folders.

**Pass 2 — Light verification.** For each suspect from Pass 1, read
the first 50-100 lines and classify against the heuristics in the
checklist. Tag each suspect as `done`, `needs-sharpening`, or `empty`.
Do not read more than 50-100 lines per file. Do not process more than
20 suspects. If Pass 1 returns hundreds of matches, the glob is almost
certainly a false positive — narrow the scope and ask the user which
tools to prioritize.

Present findings using the `Workspace Scan Result` template in
`assessment/gap-templates.md` → Template 2. Group by tool. For tools
with nothing found, still show the row with "(none found)" — the user
needs to see that the absence was checked.

### Step D — Discrepancy Check

This is the pedagogical moment of onboarding — where "feels real"
meets "is documented". Compare the checkup answers (Step B) against
the workspace scan findings (Step C). Flag any discrepancies and ask
the user about each one.

Example discrepancies:

- User rated Statement 1 (written vision) a 4/5, but no V/TO-shaped
  artifact was found in the scan. → "You rated your vision clarity a
  4, but I didn't find a V/TO or a vision document. Is it living
  somewhere else — a Notion page, a Google Doc, a slide deck — or is
  it more 'in everyone's head' than 'written down'?"
- User rated Statement 18 (weekly Scorecard) a 2, but the scan found
  a scorecard.md with 13 weeks of entries. → "You rated your
  Scorecard discipline a 2, but I see a file with 13 weeks of
  numbers. Is the file abandoned, or is it actually running?"
- User rated Statement 13 (weekly meeting rhythm) a 5, but no l10
  notes folder was found. → "Where do your weekly meeting notes
  live?"

For each flagged discrepancy, record the user's answer in a short
`discrepancy_notes` block so the later plan derivation knows whether
to treat the missing artifact as "existing elsewhere" or as a real
gap.

### Step E — Tempo Inputs

Gather the five inputs that feed the tempo recommendation. Ask them in
order, one at a time — not as a form:

1. **Team size** — "How many people are on the leadership team today?
   And how many total employees in the company?"
2. **Locations** — "Is the company in one location or multiple?
   If multiple, how many?"
3. **Weekly hours available** — "Realistically, how many hours per
   week can the leadership team put into EOS work — meetings,
   documents, team sessions? Be honest; overcommitting now produces a
   tempo you can't actually hold."
4. **EOS priority** — "Where does EOS implementation sit in the
   company's top priorities right now? Top priority? Top 3?
   Competing with a couple of other major initiatives? Or a background
   thing you're hoping will happen?"
5. **Parallel major initiatives** — "Are there any other major change
   initiatives running right now — a reorg, a funding round, an ERP
   migration, a major product launch? If yes, briefly describe each."

Acknowledge each answer and move on. Do not pre-explain what the
answer means for tempo — that happens at Step G.

### Step F — Workspace Setup

Ask the collaboration questions that feed `eos-workspace-setup.md`:

1. **Deliverables path** — "Where should I write your EOS
   deliverables (V/TO, Rocks, Scorecard, L10 notes, etc.)? Default:
   `./eos-deliverables/`. OK, or a different path?"
2. **Existing EOS documents elsewhere** — "Are any of your EOS
   documents living outside this workspace — in Notion, Google Docs,
   Monday, an EOS platform tool, somewhere else? If yes, name them so
   I can reference them rather than assume they don't exist."
3. **External data sources** — "Any tools I should know about for
   pulling Scorecard data or meeting notes later — Monday, Notion,
   Google Sheets, HubSpot, something else? I won't auto-connect to
   anything; I'll just remember what's available and ask when it's
   relevant."
4. **Calendar anchors** — the time-based routing in `SKILL.md`
   ("Smart Routing") depends on these. Ask one at a time:
   - **Fiscal year start** — "Which month does your fiscal year start
     in? (Default: January.)" Quarter ends are derived from this.
   - **L10 slot** — "Which weekday and time will the weekly L10 run,
     and who attends? If it isn't decided yet, that's fine — we'll
     set it at Phase 1 Step 3." Record `null` if undecided.
   - **Quarterly session timing** — "When do you want to hold the
     quarterly planning session — e.g. the last week of the quarter,
     or the first week of the new one?" (Default: last 2 weeks of the
     quarter.)
   - **Annual planning window** — "When in the year should annual
     planning happen? Usually the last 4-6 weeks before fiscal year
     end." (Default: the last month of the fiscal year.)
5. **Document language** — "Which language should I write your EOS
   documents in? (Default: English. EOS terms like Rocks or V/TO stay
   in English either way.)" Record as `language` in
   `eos-workspace-setup.md`.
6. **Working habits** — "Any other fixed habits I should remember —
   for example, 'no EOS work in August', 'leadership team only meets
   in person on Tuesdays'?"

Write the answers to `eos-workspace-setup.md` and `eos-state.md` in
Step H (together with the plan). Show the collected answers back to
the user for confirmation before the write.

### Step G — Tempo Recommendation & Plan Derivation

Combine the Organizational Checkup score (Step B), the workspace scan
(Step C), the discrepancy notes (Step D), and the tempo inputs
(Step E) into a concrete tempo recommendation with reasoning.

Use the following logic as a guide (not a strict formula):

- **Checkup score**
  - 20-49% (Foundational / Typical) → lean Deep or Standard
  - 50-64% (Above the middle) → Standard is the default
  - 65-79% (Substantially better) → Fast Track is possible
  - 80-100% (Target state) → the user may not need this program at
    all; discuss before recommending
- **Team size**
  - >70 → Deep
  - 20-70 → Standard
  - <20 → Fast Track is possible
- **Locations**
  - Multiple → one tier slower (Standard becomes Deep, Fast Track
    becomes Standard)
- **Weekly hours**
  - <3 → Deep (or warning)
  - 3-6 → Standard
  - 6-10 → Standard or Fast Track
  - 10+ → Fast Track is possible
- **EOS priority**
  - Top priority → Fast Track or Standard
  - Top 3 → Standard
  - Competing → Deep
  - Background → push back and ask whether the timing is right at all
- **Parallel initiatives**
  - Any → one tier slower
  - Two or more → Deep or push back on starting now

Blend these into one recommendation. **Show your reasoning** — the
user should be able to see WHY the recommendation came out the way it
did and override it if they disagree. The recommendation is a
suggestion, not a decision. The user picks.

Present the recommendation with the format:

> "Based on the checkup (54%, Above the middle), a leadership team of
> 6 in one location, 5 weekly hours committed, EOS as a top-3
> priority, and one parallel initiative (new hire onboarding), I
> recommend **Standard tempo** (~52 weeks). Reasoning: the checkup is
> in the middle band, team size and location are simple, weekly hours
> are Standard-compatible, and the parallel initiative is one tier
> down so I'm not pushing you to Deep. Does Standard work for you, or
> do you want to go Fast Track, Deep, or something in between?"

On agreement (or override), derive the personalized plan:

1. Read `action-plan.md` as the master template
2. Copy all 7 step entries into an in-memory plan structure
3. For each step, attach tempo-scaled week targets (Fast Track ÷ 2,
   Deep × 1.5 from the Standard numbers)
4. For each step, set `status: pending` initially
5. If the workspace scan in Step C identified any tool as `done` with
   high confidence AND the substance rubric verifiably passes against
   it, set that step's status to `done` (rare — most users start with
   `pending` across the board)
6. Hold the plan in memory, ready for Step H to write

Show the user a short summary of the plan:

> "Here's your plan: 7 steps across 3 phases. Phase 1 (Structure &
> Traction) runs weeks 2-13 in your Standard tempo. Phase 2 (Vision)
> runs weeks 14-22. Phase 3 (Systemization) runs weeks 24-52. Your
> starting point is Step 1 (Accountability Chart). Ready to write the
> plan and state files, or do you want to adjust anything first?"

### Step H — Write State & Plan Files

**Only on explicit user agreement** to the plan from Step G, write
the three files to the project root:

1. **`eos-plan.md`** — the personalized plan derived in Step G, with
   YAML frontmatter for tempo and team context, then all 7 steps with
   their metadata and initial status.
2. **`eos-state.md`** — the dynamic state file with:
   - `started: <today>`
   - `session_count: 1`
   - `current_phase: 1`
   - `current_step: 1` (or the earliest non-done step)
   - `tempo: <agreed tempo>`
   - `tempo_history: [{ date, tempo, reason: "onboarding" }]`
   - `team_size`, `locations`, `weekly_hours_committed`,
     `eos_priority`, `parallel_initiatives`
   - `checkup_history: [<full record from Step B>]`
   - `gates: { phase_1: open, phase_2: pending, phase_3: pending }`
   - `bypass_history: []`
   - `cadences_active: { weekly_l10: { active: false, unlock_at: "Step 3", schedule: { day: <weekday|null>, time: <HH:MM|null>, participants: [<names>] } }, quarterly_planning: { active: false, unlock_at: "Step 2" }, quarterly_state_of_company: { active: false, unlock_at: "Phase 2 Vision-side draft" }, annual_planning: { active: false, unlock_at: "Phase 1 Step 3 (minimum)" } }`
   - `calendar:` (from Step F calendar anchors)
     ```yaml
     calendar:
       fiscal_year_start_month: <1-12>       # default 1
       quarter_end_dates: [<4 dates, derived from fiscal_year_start_month>]
       quarterly_session_timing: <e.g. "last 2 weeks of quarter">
       annual_planning_window: { from: <MM-DD>, to: <MM-DD> }
     ```
   - `pause_until: null`
   - `paused_weeks_total: 0`
   - `discrepancy_notes: [<notes from Step D>]`
   - `session_focus: null`
3. **`eos-workspace-setup.md`** — the collaboration config with
   deliverables path, external sources, habits, and any existing-
   elsewhere document references from Step F.

Confirm the writes to the user:

> "Plan written to `eos-plan.md`. State tracked in `eos-state.md`.
> Workspace setup recorded in `eos-workspace-setup.md`. You're at
> Phase 1, Step 1 — Accountability Chart. Ready to start, or do you
> want to do this in a separate session?"

---

## Do NOT enter Phase 1 automatically

**Critical rule.** Onboarding ends at Step H. Entering the actual work
on Phase 1 Step 1 requires a **separate** user confirmation in the same
session OR a new session start. Respect the user's energy — some users
will want to stop after onboarding and start the real Accountability
Chart work in a fresh session tomorrow, ideally with their leadership
team in the room.

If the user says "yes, let's start right now", then proceed into Phase
1 Step 1 by loading `phases/01-structure-and-traction.md` and running
the team-mode clarification protocol from
`rules/team-required-tools.md`. If the user says "that's enough for
today" or "let's do it next session", close with the Session End
Protocol (see `SKILL.md`) and stop.

## Session start for existing users

If all three state files already exist on skill invocation (meaning
onboarding has been completed in a previous session):

1. Read all three files, increment `session_count`, update
   `last_session`
2. Calculate tempo drift using `journey-map.md` (weeks_elapsed vs.
   target weeks for `current_step`)
3. If drift > 4 weeks behind → flag for Adaptive Tempo conversation
4. Greet with context: phase, step, tempo, active cadences, time-
   based due items (next L10, quarter-end proximity, mid-year
   checkup eligibility, annual planning proximity)
5. Offer the logical next action — implementation continuation OR a
   cadence session OR the Adaptive Tempo conversation if drift is
   significant

Full routing logic lives in `SKILL.md` → "Entry Protocol" and
"Smart Routing". This file covers onboarding only.

---

## Critical rules

- **Never skip the checkup.** Even if the user says "just start", run
  the checkup. It takes 10 minutes and it is the baseline that makes
  the mid-year and graduation re-runs meaningful.
- **Never write state files before the user agrees to the plan.** The
  plan must be presented and the user must explicitly say yes. This is
  the whole point of the gate.
- **Never assume a workspace layout.** Ask about the deliverables path,
  ask about existing documents elsewhere. The user owns their project
  structure; the skill is a guest.
- **Never launch Phase 1 in the same breath as finishing onboarding.**
  Ask separately. Two decisions, not one.
- **Team coverage is a soft preference, not a hard block.** Solo
  onboarding is acceptable; the skill notes it in state and upgrades to
  team-mode at the mid-year re-run.
