# Mid-Year Checkup

Runtime protocol of the RockSolid skill. Loaded from `SKILL.md` → "Mid-Year Checkup".


The second of three Organizational Checkup™ runs (baseline →
mid-year → graduation). Its job is to show whether the installed
tools are actually adopted, not just documented, while there is still
time to correct course.

## When it is due

Due when `weeks_elapsed` (pause-adjusted, see Entry Protocol) reaches
the tempo's mid-point AND `checkup_history` has no record with
`context: mid-year`:

| Tempo | Due at week |
|---|---|
| Fast Track | 13 |
| Standard | 26 |
| Deep | 39 |

Skip it if the user has already graduated — the graduation checkup
replaces it. If `mid_year_checkup_deferred_until` is set and today is
before it, don't offer it yet.

## Flow

1. **Offer, don't force.** Offer the checkup as a prominent option in
   the greeting. If the user declines, this is recommendation-level:
   warn once ("Without the mid-year run, the graduation delta won't
   show where progress stalled"), then set
   `mid_year_checkup_deferred_until` to today + 2 weeks. Re-offer at
   most twice; after the second decline, log it under `warnings` and
   stop offering.
2. **Team-mode upgrade.** If the baseline record has
   `team_mode: solo`, push for a team run now: "Your baseline was
   solo. This time the leadership team should score it together —
   one agreed score per statement. Can you run it in your next L10
   or a 15-minute slot after it?" A solo run is still allowed, but
   record it as `team_mode: solo`.
3. **Administer.** Run the 20 statements from
   `assessment/organizational-checkup.md` exactly as in onboarding:
   one at a time, no hints about what a good answer is, and **do not
   show the baseline scores while asking**.
4. **Score and compare.** Compute total and category per
   `assessment/scoring-rubric.md`. Then report:
   - Baseline vs. mid-year total, category, and delta
   - Interpretation from "Reading the delta" in
     `assessment/scoring-rubric.md`
   - The 3 statements with the biggest gains, and every statement
     that stayed flat or dropped
   - If `team_mode` differs between baseline and mid-year, say so
     explicitly — part of the delta may be the change in who scored,
     not real change
5. **Turn weak spots into work.** For each flat or dropped statement,
   name the EOS tool it measures. If that tool's step is already
   `substance_passed`, the tool exists on paper but isn't adopted:
   add an entry to `{deliverables_path}/issues-list.md` tagged
   `[mid-year checkup]` so the next L10 or quarterly session IDSs it.
   If the step isn't reached yet, just note it — the plan will get
   there.
6. **Small-delta escalation.** If the total delta is under 10 points,
   add a `[mid-year checkup]` issue "Low progress since baseline —
   discuss at next quarterly session" and check whether the Adaptive
   Tempo Protocol should run.
7. **Write state.** Append the record to `checkup_history` with
   `context: mid-year` (schema in `assessment/scoring-rubric.md`),
   clear `mid_year_checkup_deferred_until`, and close with the
   Session End Protocol.

The mid-year checkup does NOT change `current_phase` or
`current_step`, and it never opens or blocks a phase gate.
