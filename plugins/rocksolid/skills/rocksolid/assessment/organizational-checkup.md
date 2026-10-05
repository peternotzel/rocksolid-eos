# Organizational Checkup

Runtime file used by the EOS Implementer skill to establish a baseline of
how well the company is currently operating against the 20 dimensions
measured by Wickman's EOS(R) Organizational Checkup.

## Purpose

The checkup is the skill's first diagnostic. It runs in three places:

1. **Onboarding Step B** — baseline score that feeds the tempo
   recommendation (Fast Track / Standard / Deep) and surfaces the worst
   dimensions as likely starting points.
2. **Mid-year (week 13 / 26 / 39 by tempo)** — re-run to measure
   progress and re-plan the back half of the program. Flow:
   `SKILL.md` → "Mid-Year Checkup".
3. **Graduation** — final run to confirm target-state is reached before
   the skill hands off to normal quarterly cadence.

Results are stored in `eos-state.md` under `checkup_history` so progress
can be tracked across runs.

## How to administer

- Ask the 20 statements **one at a time**, never as a batch or a form.
- After each answer, briefly acknowledge and move to the next.
- Do not offer explanations of what a "good" answer would be — that
  biases the self-rating.
- If the user asks what a statement means, paraphrase the dimension
  (e.g., "this is about whether your weekly Scorecard(TM) exists, not
  whether it's perfect").
- **Team coverage:** the ideal is that the full leadership team
  participates (one score per statement, agreed by the team). Solo is
  acceptable as a first-pass baseline, but record `team_mode: solo` on
  the checkup record in state so the mid-year re-run can be upgraded to
  team-mode.

## The 1-5 scale

- **1** — not true for us / weak
- **2** — partially true, rarely applied
- **3** — true some of the time
- **4** — mostly true
- **5** — strong / consistently true

## The 20 statements

1. Our organizational vision exists as a written artifact, and every
   member of the leadership team can state it the same way to the rest
   of the company.
2. The cultural principles that define our company are explicit, and we
   actively use them when we bring people on, let people go, run
   performance conversations, and decide how to recognize or reward
   good work.
3. We are clear on what the heart of our business really is, and the
   tools, workflows, and day-to-day systems we rely on are built around
   that center.
4. We have named a concrete ten-year ambition for the company, and
   everyone on the payroll could tell you what it is.
5. We have pinpointed the specific kind of customer we are built to
   serve, and every marketing and selling activity we fund is aimed
   squarely at that group.
6. We know what genuinely sets us apart from competitors, and those
   distinctions show up consistently in every message our sales and
   marketing efforts send into the world.
7. We have a repeatable way of working with customers that has been
   given a name, drawn out visually, and is followed by everyone who
   interacts with clients.
8. Every person currently employed at our company belongs here from a
   cultural and character standpoint.
9. We maintain a living chart of the functions and accountabilities in
   our business, it reflects how the company is actually structured
   today, and it is revised whenever reality changes.
10. Each of our people is positioned in a role that genuinely fits
    their abilities and what they want to be doing.
11. Conversations inside the leadership team are candid, direct, and
    built on a deep level of mutual trust.
12. Each member of the team is working against a short, focused set of
    quarterly priorities — somewhere between three and seven at any
    given time.
13. Every part of the organization takes part in a consistent weekly
    meeting rhythm.
14. Our recurring meetings land on a fixed day and hour, follow the
    same written agenda each time, begin punctually, and finish by the
    stated end time.
15. When problems come up, our teams name them clearly, work through
    them honestly, and resolve them in a way that serves the whole
    company over the long haul.
16. The workflows that run our business are written down, stripped to
    what actually matters, and followed by everyone who touches them.
17. We have reliable channels for hearing from both customers and
    employees, and as a result we know how satisfied each group
    actually is at any given moment.
18. We run a weekly tracking tool that shows the handful of leading
    metrics that indicate how the business is really performing.
19. Every person in the company, from the leadership team down to the
    newest hire, owns at least one measurable number.
20. We build a budget and review actual results against it on a routine
    cycle (monthly or at least quarterly).

## Scoring

- Each answer contributes an integer from 1 to 5.
- Total score = sum of all 20 answers (range 20-100).
- The raw total IS the percentage (maximum possible = 100).
- Place the percentage into one of the five categories below.

## Categories

- **20-34 percent — Foundational.** Company runs on intuition and
  heroics rather than a shared operating system. Installing the tools
  in order will produce disproportionately large changes fast.
- **35-49 percent — Typical.** Company runs about as well as most
  organizations its size. This is the median, not the goal.
- **50-64 percent — Above the middle, with real gaps.** Some
  components are working, others are not, and the inconsistency between
  them drives most of the daily frustration.
- **65-79 percent — Substantially better than most.** The operating
  system is mostly in place. Remaining work is tightening weak
  components and increasing discipline.
- **80-100 percent — Target state.** This is where a mature
  implementation ends up. This is the band the skill is helping the
  company reach.

## What to do with the result

1. **Store in state.** Append a record to `checkup_history` in
   `eos-state.md`:
   ```yaml
   - date: YYYY-MM-DD
     context: baseline | mid-year | graduation
     total_score: <int>
     percentage: <int>
     category: <label>
     team_mode: team | solo
     per_statement: [<20 integers in order>]
   ```
2. **Feed tempo recommendation.** Pass the score to the tempo logic in
   `onboarding.md` Step D. Lower categories generally push toward Deep
   mode; higher categories toward Fast Track.
3. **Surface worst dimensions.** The three lowest-scored statements are
   candidate starting points — report them in the onboarding summary.
4. **Re-run at mid-year and graduation.** The mid-year run is due at
   the tempo's mid-point (week 13 / 26 / 39); the graduation run when
   the Phase 3 gate opens. Compare against the baseline. See `SKILL.md`
   → "Mid-Year Checkup" and "Graduation".
