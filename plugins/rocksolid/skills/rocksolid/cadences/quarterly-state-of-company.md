# Quarterly State-of-the-Company Meeting Cadence

**Cadence type:** Quarterly vision cascade — full-workforce meeting
**Unlocked when:** Phase 2 Vision-side draft is complete (Core
Values, Core Focus™, 10-Year Target™, Marketing Strategy, 3-Year
Picture™ are on the V/TO™ and team-validated)
**Frequency:** Quarterly, typically 1-2 weeks after the Quarterly
Planning session
**Duration:** 45 minutes or less, hard cap
**Audience:** The entire organization (full workforce, not just
leadership)
**Presenters:** Leadership team

This is the vision cascade. Every quarter, the leadership team
stands in front of the full organization for under 45 minutes and
answers: Where are we going? How did we do last quarter? What are
we focused on next quarter? It is the public face of the EOS™
Operating System and the mechanism that keeps vision alive for
people who aren't in the leadership team's weekly L10™.

Wickman's constraint, paraphrased: keep it short and keep it
consistent. Long meetings dilute the signal; skipped meetings let
the workforce drift out of vision alignment.

## Trigger phrases

The agent routes into this cadence on any of the following:

- "state of company" / "state of the company meeting"
- "vision cascade"
- "share rocks with team" / "share vision with team"
- "all hands" (in an EOS context — the agent should confirm this
  is the EOS State-of-Company, not an unrelated all-hands)
- "quarterly update" / "quarterly communication"
- "prep state of company" / "state of company followup"

The agent should proactively offer this cadence when
`cadences_active.quarterly_state_of_company.next_due` is within 1
week of current date, especially right after a Quarterly Planning
session has completed.

## Dependencies on state and deliverables

Before starting any State-of-Company flow the agent loads:

- `eos-state.md` — `cadences_active.quarterly_state_of_company`
  for next due date, last run date, and the Vision-side-complete
  flag from Phase 2
- `{deliverables_path}/vto.md` — the canonical vision source
- `{deliverables_path}/rocks-q{current}.md` — the new quarter's
  Rocks that will be shared
- `{deliverables_path}/rocks-q{previous}.md` — last quarter's
  Rocks and their final status for the "how did we do" section
- `{deliverables_path}/scorecard.md` — trend summary

Knowledge blocks loaded for this cadence:

- `../knowledge/eos-vto.md`
- `../knowledge/eos-meeting-pulse.md` (for the cascade rationale)
- `../knowledge/eos-ninety-day-world.md`
- `../knowledge/eos-six-components.md` (for framing "we are
  aligned on the Six Key Components™")

Templates used:

- `../templates/state-of-company-meeting.md` — the fixed
  45-minute agenda

## Flow 1 — Prework (prep state of company)

Runs 1-2 days before the meeting. Typical timing: right after the
Quarterly Planning session's followup has completed, so the new
Rocks and any V/TO refresh are already committed to files.

**Step 1 — Pull the vision summary.** Read `vto.md` and extract:

- Core Values — the final 3-7 list, as phrased on the V/TO
- Core Focus — Purpose/Cause/Passion and Niche
- 10-Year Target — the single BHAG with number and date
- Marketing Strategy — Target Market, 3 Uniques™, Proven Process™
  (name only, not the 3-7 step detail — too much for a workforce
  meeting)
- 3-Year Picture — future date, revenue target, 3-5 "looks like"
  bullets (pick the most resonant, not all 10-20)

Format as slide-ready bullet points — the user will typically
present from slides or a single shared screen. The agent does not
generate slides, but produces a structured markdown section the
user can paste into any slide tool.

**Step 2 — Prepare the "how we did last quarter" slide.** From
`rocks-q{previous}.md`, build:

- Total company Rocks: {N}
- Done: {percentage}%
- One or two concrete examples of what was accomplished (the user
  picks which stories to tell — the agent suggests the highest-
  impact completed Rocks)

Keep this short. The goal is honest reporting, not a sales pitch.

**Step 3 — Prepare the "what we're focused on next quarter"
slide.** From `rocks-q{current}.md`, build:

- The 3-7 company Rocks for the new quarter, each in one clear
  sentence
- Owner per Rock (the workforce knows who to ask about each)
- Due date (end of quarter)

**Step 4 — Assemble the agenda.** Copy
`../templates/state-of-company-meeting.md` into a session file:
`{deliverables_path}/state-of-company/{quarter}-meeting.md`.
Pre-fill with the content from Steps 1-3.

The standard 45-minute structure, paraphrased:

1. **Vision recap** (15 min) — Core Values, Core Focus, 10-Year
   Target, the snapshot from the V/TO
2. **Last quarter review** (10 min) — Rock completion and
   headlines
3. **This quarter Rocks** (10 min) — new Rocks by name and owner
4. **Open Q&A** (10 min) — workforce questions, leadership team
   answers honestly

**Step 5 — Logistics reminders.** Offer to check with the user:
- Is the meeting on the calendar for the whole workforce?
- Will it be recorded for people who can't attend?
- Who from the leadership team is presenting which section?
- Is there a rehearsal slot?

Update `eos-state.md`:
`cadences_active.quarterly_state_of_company.last_prep: {timestamp}`.

## Flow 2 — Running the meeting (optional live mode)

Live mode is rarely useful for State-of-Company because the meeting
is intentionally short (45 minutes hard cap) and presenter-driven.
If the user does invoke "run state of company":

1. Open the prepared session file from Flow 1
2. Walk the user through the 4 sections with timing prompts
3. In the Q&A section, accept quick notes on questions asked and
   answers given — these become the main artifact of the meeting
4. Enforce the 45-minute hard cap strictly — if the Q&A is running
   long, suggest moving additional questions to an offline
   followup

## Flow 3 — Followup (state of company followup)

Runs right after the meeting. Typically 5-10 minutes of cleanup.

**Step 1 — Capture Q&A.** Parse any notes the user pastes or
describes. List the questions asked, with short answers given.
Identify any question that the leadership team could not answer
fully on the spot — those become entries on the Issues List for
the next L10.

**Step 2 — Capture themes.** Ask the user: were there any signals
from the workforce (excitement, concern, confusion) that the
leadership team should act on? Capture these as issues or as
notes on the V/TO long-term Issues List.

**Step 3 — Update state.** Update `eos-state.md`:
- `cadences_active.quarterly_state_of_company.last_run: {date}`
- `cadences_active.quarterly_state_of_company.next_due: {date + 90 days}`
- Increment the State-of-Company run count

**Step 4 — Archive the session file.** The session file in
`state-of-company/` is kept as historical record — useful for
year-over-year comparison and for onboarding new employees (they
can read back the last N State-of-Company meetings to catch up on
vision history).

## Team-mode handling

The State-of-Company meeting is the one cadence that involves the
ENTIRE workforce, not just the leadership team. Prework and
followup can be done by the user solo with the agent (the user is
typically the Integrator or Visionary who owns the cadence).
Running the meeting itself is a workforce event — the agent's
role is preparation and post-event capture, not facilitation.

The agent does NOT need to run the team-mode clarification
protocol for this cadence in the same strict way as V/TO or
Quarterly Planning, because the deliverable (the meeting itself)
is public. Substance here is about consistency (it happened) and
honesty (real numbers, real status), not authorship.

## Missed State-of-Company meetings

If the user skips a State-of-Company for a quarter, the agent
flags it:

> "No State-of-the-Company meeting logged for this quarter. The
> workforce loses vision alignment fast without this cadence — a
> single missed quarter is recoverable, two in a row starts to
> dissolve trust in the vision. What happened, and when can it
> run?"

Log in `eos-state.md` under `missed_state_of_company` with date
and reason. Unlike Weekly L10 misses, a single missed State-of-
Company is a recommendation-level warning, not a non-negotiable
escalation. Two consecutive misses escalate to the same serious
reassessment as missed quarterly sessions.

## Relationship to other cadences

- **Runs AFTER Quarterly Planning** — typically 1-2 weeks later,
  so the new Rocks and any V/TO refresh are committed before the
  workforce hears them. Running State-of-Company BEFORE Quarterly
  Planning defeats the purpose — nothing new to say.
- **Does NOT replace Weekly L10** — L10 is leadership team weekly
  execution; State-of-Company is workforce quarterly vision. They
  run on different rhythms and different audiences.
- **Complements Annual Planning** — annual planning (see
  `annual-planning.md`) produces a refreshed V/TO every year. The
  first quarterly State-of-Company after annual planning carries
  the heaviest vision update of the year — the agent should
  recognize this and flag it in the prework as "this is the
  post-annual State-of-Company — more vision content than usual."
