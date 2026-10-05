---
deliverable_type: measurables-directory
status: empty_template
team_required: false
source_chapter: 5
source_pages: "~131-150"
last_updated: null
---

# Measurables Directory — "Everyone Has a Number"

> **Status:** empty_template — built after the Scorecard™, the Core
> Processes, and the Accountability Chart™ are in place
> **Team-required:** no (the leadership team defines the discipline;
> each seat owner drafts their own number with their manager)
> **Source:** Wickman, *Traction*, Chapter 5 — The Data Component
> (Everyone Has a Number section)

## How to use this file

"Everyone Has a Number" extends the Scorecard discipline downward
from the leadership team to **every person in the organization**.
Every seat on the Accountability Chart — not just leadership seats —
owns at least one weekly, activity-based number they can answer the
same question about in any given week: *what's my number, and did I
hit it?*

This is Tool 7 in Wickman's implementation order, and it is the
last tool for a reason: it depends on the previous tools already
being solid. Without the Accountability Chart each person's role is
unclear, without the Scorecard there is no model of weekly
activity-based measurement, without documented Core Processes
individual numbers have no coherent source, and without the L10™
cadence nothing actually gets tracked and discussed. Push numbers
out before the foundations exist and you get spreadsheet theater
and resentment, not accountability.

## Rules (from the substance rubric)

- **Every person has at least one weekly number** — coverage must
  be complete. Partial coverage teaches the uncovered half that the
  discipline is optional.
- **Every number has four fields:** named **owner**, explicit
  **target** (goal), **weekly** frequency, and a **data source**
  (which Core Process the number comes from).
- **Every number rolls up to a Scorecard row.** A person's number
  feeds their manager's number, which eventually feeds a leadership
  Scorecard number. Numbers that don't roll up are floating, not
  hierarchical.
- **Every number is anchored in a documented Core Process.** The
  number measures an outcome or a step from one of the processes
  in `core-processes/`. Without a process anchor, the number
  measures in isolation and cannot be improved systematically.
- **Activity-based, not trailing.** Same leading-indicator
  discipline as the Scorecard — the number must move *before* the
  outcome it predicts moves.
- **Weekly frequency.** Not monthly, not quarterly — the review
  cadence is weekly.

## The cascade (how numbers roll up)

```
  Leadership Scorecard™ number         (5 to 15 rows total)
                 ↑
       rolls up to by aggregation
                 ↑
  Department / function number          (middle tier)
                 ↑
       rolls up to by aggregation
                 ↑
  Individual seat number                (every person, every week)
                 ↑
       anchored in
                 ↑
  Step of a documented Core Process
```

At full implementation, any number on the leadership Scorecard can
be traced downward through this cascade to the individual seats
that drive it, and any individual seat's number can be traced
upward to the leadership row it feeds. The directory below is the
flat index that makes the traversal possible.

## Rollout strategy

Do not try to push numbers onto everyone in week one. Start with
the leadership team's direct reports, stabilize there, and cascade
downward tier by tier. A full-company rollout typically takes a
year or more depending on company size and number of layers. Record
which tier each row was added at, so the rollout progress is
visible.

---

## Directory

> **Column definitions:**
> - **Person** — the individual's name
> - **Seat** — the seat from the Accountability Chart
> - **Measurable** — the one weekly, activity-based number they own
> - **Target** — the weekly goal
> - **Frequency** — always `weekly` for this tool; if it isn't, the
>   row is not valid
> - **Source Process** — which Core Process this number measures a
>   step or outcome of
> - **Rolls up to** — the Scorecard row (and/or intermediate seat)
>   this number aggregates into
> - **Tier added** — leadership / direct-reports / tier 3 / tier 4
>   (rollout tracking)

| Person | Seat | Measurable | Target | Frequency | Source Process | Rolls up to | Tier added |
|--------|------|------------|--------|-----------|----------------|-------------|------------|
|        |      |            |        | weekly    |                |             |            |
|        |      |            |        | weekly    |                |             |            |
|        |      |            |        | weekly    |                |             |            |
|        |      |            |        | weekly    |                |             |            |
|        |      |            |        | weekly    |                |             |            |
|        |      |            |        | weekly    |                |             |            |
|        |      |            |        | weekly    |                |             |            |
|        |      |            |        | weekly    |                |             |            |
|        |      |            |        | weekly    |                |             |            |
|        |      |            |        | weekly    |                |             |            |

> Duplicate the row template as many times as needed. Every seat
> on the Accountability Chart should appear at least once.

---

## Coverage check

- **Total seats on the Accountability Chart:**
- **Seats with at least one entry above:**
- **Coverage percentage:** _(target: 100%)_
- **Uncovered seats (list names):**

> If coverage is under 100%, the gate blocks. The point of "Everyone
> Has a Number" is that nobody is exempt — partial coverage sends
> the opposite message.

## Rollout log

| Tier | Date added | Seats in tier | Notes |
|------|------------|---------------|-------|
| Leadership team (Scorecard rows) |  |  | baseline |
| Direct reports of leadership     |  |  |          |
| Tier 3                           |  |  |          |
| Tier 4 and below                 |  |  |          |

---

## Notes

### Where individual numbers come from

The Accountability Chart is the best starting point. Each seat has
roughly 5 major roles; typically one, two, or three of those roles
can be turned into a weekly number. The drafting conversation is:
*look at this seat's 5 major roles — which of them can we measure
weekly, in an activity-based way, tied to a step of a documented
process the seat holder actually runs?*

### What makes a number valid

- The seat holder can answer *this week* without waiting for a
  monthly close.
- It is genuinely controlled by the person who owns it — not
  dependent on three other seats doing their work first.
- It measures activity the seat holder actually performs, not an
  outcome they merely influence.
- It has a goal to red-flag against during the weekly review.

### Anti-patterns

- **Same number for two people.** If two people own the same
  number, neither owns it. Split the number or pick a different
  one for one of them.
- **P&L disguised as activity.** "Weekly revenue contribution"
  from a role that does not close deals is a trailing number
  wearing an activity-number hat.
- **Aspirational goal with no baseline.** A target set before the
  team has any sense of what normal looks like is a guess. Collect
  two or three weeks of actuals first, then set the target.

## Related files

- `accountability-chart.md` — every seat in the directory above
  must exist here.
- `scorecard.md` — the leadership-level grid the cascade rolls up
  to.
- `core-processes/index.md` — the list of Core Processes each
  number must anchor to.
- `hr-process-example.md` — illustrative example of how a Core
  Process connects to a measurable (see the "Measurable tie-in"
  section of that file).
