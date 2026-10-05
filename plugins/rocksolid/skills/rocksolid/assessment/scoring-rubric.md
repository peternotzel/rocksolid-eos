# Scoring Rubric — Organizational Checkup

How the EOS(R) Implementer skill computes and interprets the
Organizational Checkup score. This file is the canonical reference for
both the onboarding flow and the mid-year and graduation re-runs.

## Computation

1. Ask the 20 statements in `organizational-checkup.md`, one at a time.
2. Each answer is an integer 1 through 5:
   - 1 = not true / weak
   - 2 = partially true, rarely applied
   - 3 = true some of the time
   - 4 = mostly true
   - 5 = strong / consistently true
3. **Total score** = sum of all 20 integers. Range: 20 to 100.
4. **Percentage** = total score / 100. Because the maximum is exactly
   100, the raw total IS the percentage. No further scaling.

## Categories

| Percentage | Label                                  |
|------------|----------------------------------------|
| 20-34      | Foundational                           |
| 35-49      | Typical                                |
| 50-64      | Above the middle, with real gaps       |
| 65-79      | Substantially better than most         |
| 80-100     | Target state                           |

The category is the first thing shown to the user after scoring, paired
with the one-line description from `organizational-checkup.md`.

## Using the score in tempo recommendation

The score is one of several inputs to tempo recommendation (the others:
team size, weekly hours, priority, parallel initiatives, locations).
The score by itself does not decide tempo, but it creates a default
lean:

- **20-34 (Foundational):** default lean toward **Deep**. Almost
  everything is missing; installing in order produces big gains but
  takes time.
- **35-49 (Typical):** default lean toward **Standard**. Normal install
  pace.
- **50-64 (Above the middle):** default lean toward **Standard**, with
  targeted sharpening of the weakest dimensions.
- **65-79 (Substantially better):** default lean toward **Fast Track**.
  Tools exist; the work is tightening.
- **80-100 (Target state):** the skill should challenge whether a full
  implementation is even the right product. Offer a diagnostic-only
  engagement instead.

Team size, weekly hours, and parallel initiatives can pull the
recommendation up or down by one band. The final call is the user's —
the skill recommends, confirms, then writes.

## Tracking progress over time

Append every run to `checkup_history` in `eos-state.md`:

```yaml
checkup_history:
  - date: YYYY-MM-DD
    context: baseline | mid-year | graduation
    total_score: <int>
    percentage: <int>
    category: <label>
    team_mode: team | solo
    per_statement: [<20 integers in order>]
```

Scheduled re-runs:

- **Mid-year (week 13 Fast Track / 26 Standard / 39 Deep,
  pause-adjusted):** always offered. Compare against baseline. If the
  delta is small (<10 points), surface it as an explicit discussion in
  the next quarterly session. Full flow: `SKILL.md` → "Mid-Year
  Checkup".
- **Graduation:** run when the skill hands off to normal EOS cadence.
  The graduation score should be in the 65+ band before handoff is
  recommended; below 65 the skill offers to extend Phase 3.

## Reading the delta

- **+20 points or more:** strong progress. Expected after a full Phase
  1 plus Phase 2 when starting from the Foundational or Typical bands.
- **+10 to +19 points:** normal progress. Most implementations land
  here by week 26.
- **+1 to +9 points:** weak progress. Surface this to the user —
  usually a sign that one or two tools were installed on paper but not
  adopted in practice.
- **0 or negative:** a red flag. Treat as a diagnostic moment and
  ask the team what actually happened since the baseline.
