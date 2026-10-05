# Graduation

Runtime protocol of the RockSolid skill. Loaded from `SKILL.md` → "Graduation".


When the Phase 3 gate opens, run the Graduation protocol:

1. **Second Organizational Checkup.** Run the full 20-question
   checkup from `assessment/organizational-checkup.md` again. This is
   the graduation baseline.
2. **Calculate the delta** against `checkup_history[0]` from
   onboarding. Report both scores and the delta to the user.
3. **Celebrate with before/after.** This is the end of the
   implementation program and a real milestone. Spend the time on it.
4. **Update state.**
   ```yaml
   gates.phase_3.status: passed
   current_phase: graduated
   graduated_at: <today>
   final_checkup_score: <score>
   checkup_history: [<baseline>, <mid-year, if run>, <graduation>]
   ```
5. **Switch greeting to Pure Operating Mode.** From this point
   forward, the session greeting no longer offers "next implementation
   step". It offers active cadences (Weekly L10™, Quarterly Planning,
   State-of-the-Company, Annual Planning) and periodic health checks
   (re-checkups, quarterly vision reviews, V/TO annual rebuilds). The
   implementation program is complete. The operating system keeps
   running.
