# Team-Required Tools

Several EOS(R) tools are genuinely team deliverables — they cannot be
validly produced by a founder alone and still serve their purpose. This
file lists which tools are team-required, which are solo-ok, and the
protocol the skill uses when a team-required tool is started in a solo
session.

## Team-required tools

A tool is **team-required** when the artifact's correctness depends on
the leadership team's shared authorship or explicit validation. The
skill refuses to mark these tools `done` in state until team validation
is recorded.

- **V/TO(TM) creation and annual rebuild** — requires the full
  leadership team in a dedicated off-site session
- **Core Values Discovery** — requires the leadership team to vote and
  agree on the final 3 to 7 values
- **Accountability Chart(TM)** — requires the leadership team to agree
  on structure first, then placement of people
- **Rocks(TM) quarterly planning** — the 3 to 7 company Rocks are set
  by the leadership team at the quarterly session
- **Core Processes — Identify stage** — the leadership team must reach
  100 percent consensus on names and count before documentation begins
- **Scorecard(TM) creation** — leadership team defines which numbers
  live on the Scorecard and assigns owners
- **IDS(TM) live sessions** — the method is by definition a team
  practice; solo "IDS" is just thinking
- **Quarterly planning session** — a full day off-site with the full
  leadership team
- **Annual planning session** — two full days off-site with the full
  leadership team
- **State-of-the-Company meeting** — requires the full workforce as the
  audience and the leadership team as the presenters

## Solo-OK tools

These are activities that can legitimately be done by a single seat
owner between team sessions. The skill allows them in solo mode without
a clarification step.

- **Scorecard weekly updates** — the owner of each number enters the
  week's actuals alone
- **Rock progress updates** — each Rock owner updates their Rock status
  alone between L10(TM) meetings
- **Issues List adds** — anyone can add an item to the Issues List
  between meetings
- **L10 meeting notes (post-meeting cleanup)** — a scribe finalizes the
  notes alone after the meeting
- **Process documentation drafts by seat owner** — once the leadership
  team has identified and named a process (Identify stage, team), the
  seat owner drafts the 2-10 page document alone (Document stage, solo)
- **People Analyzer(TM) self-review** — a leader can privately score
  themselves before a team calibration

## Team-Mode Clarification Protocol

When the user starts a team-required tool and the skill detects that
the session is solo (only one participant in context), the skill runs
this protocol before any content is written.

### Step 1 — Detect and clarify

The skill says something like:

> "{Tool name} is a team-required tool. The full leadership team should
> be in the session for this to be valid. Since we're in a solo session
> right now, which of these three paths fits your situation?
>
> 1. **Facilitator** — you're running this session and your team will
>    join for the actual working session. I'll prep materials and hand
>    off to the team.
> 2. **Scribe** — the team has already discussed this and you're
>    capturing the agreed output on their behalf. I'll treat your
>    input as the team's agreed answer.
> 3. **Draft-Mode** — you want to draft a starting point alone, and
>    the team will validate it later. I'll write it as a draft and
>    block the phase gate until the team validates."

### Step 2 — Record the answer in state

The skill writes the user's answer to `eos-state.md` under the current
tool's entry:

```yaml
tool_N:
  name: <tool name>
  team_mode: facilitator | scribe | draft_solo
  team_validated: false
  team_validated_at: null
```

- **facilitator:** The skill prepares materials now but does NOT count
  the deliverable as authored until the team session happens. The
  phase gate remains blocked.
- **scribe:** The skill treats the captured output as team-authored.
  `team_validated` is set to true, but the entry is tagged as
  scribe-captured so the source of validation is traceable.
- **draft_solo:** The skill writes the deliverable as a draft. The
  phase gate is **blocked** until the user later says "team reviewed
  and agreed" or equivalent.

### Step 3 — Draft-solo gate block

When `team_mode: draft_solo`, the skill adds a line to the deliverable
file itself:

```markdown
> **Draft (solo-authored).** This file was drafted alone and is
> pending leadership team validation. Phase gate is blocked until
> the team reviews and approves.
```

The skill refuses to open the phase gate with draft_solo deliverables
even if every substance check passes. The only way forward is to
upgrade to team-validated.

### Step 4 — Recording team validation later

When the user returns and says something like "the team reviewed the
V/TO and agreed" (or any clear equivalent), the skill:

1. Asks for confirmation: "To be precise — was this a live session
   with the full leadership team, and does everyone agree on the
   current contents?"
2. On yes, updates state:
   ```yaml
   tool_N:
     team_mode: <unchanged>
     team_validated: true
     team_validated_at: <timestamp>
     team_validated_by: <user name or team identifier>
   ```
3. Removes the draft warning line from the deliverable.
4. Re-runs the substance rubric (some checks that depend on team
   authorship may now pass).
5. Reports to the user that the tool is now eligible for the phase
   gate, assuming non-negotiables pass.

## Why this matters

Solo-drafted team-required tools look the same as team-authored tools
in a file listing, but they behave completely differently in practice.
The V/TO a founder writes alone on a Sunday afternoon is an artifact
the founder understands; the V/TO a leadership team produces in a
two-day off-site is an artifact the team has agreed to execute. This
skill refuses to pretend those are the same thing, which is why the
phase gate blocks draft-solo deliverables regardless of how well
written they are.
