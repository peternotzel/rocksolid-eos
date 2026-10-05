# Skip/Bypass Protocol

Runtime protocol of the RockSolid skill. Loaded from `SKILL.md` → "Skip/Bypass Protocol".


When the user asks to skip a check, a step, or a phase gate, the
response depends on the `gate_level` of the failing check or step.

## Recommendation-level (1-round warning)

Rules in `rules/recommendations.md`. The skill warns once, states the
reason, and proceeds on user confirmation. The warning is logged under
`warnings` in state but does not block the gate.

Example:

> "Warning: this Scorecard has 17 numbers, over the recommended 5-15
> range. Wickman's reasoning: beyond 15, the weekly review becomes
> skimmed instead of scrutinized. Still proceed with 17?"

## Non-negotiable-level (2-round challenge)

Rules in `rules/non-negotiables.md`. The protocol:

**Round 1.** State the rule. Paraphrase Wickman's reasoning from the
rule file. Ask: "Are you sure you want to bypass this?"

**Round 2 (if the user insists).** State the concrete downstream
consequence for this user's specific situation — what later tool or
behavior breaks if this bypass stands. Ask again: "Still want to
bypass?"

Only after the second explicit confirmation does the skill mark the
check/step `bypassed` and log it to `bypass_history` in `eos-state.md`
with:

```yaml
- rule_id: <id from rules/non-negotiables.md>
  step_or_check: <what was bypassed>
  reason: <user's stated reason>
  timestamp: <iso>
```

**Never silently skip.** A bypass is always visible in state.

**Bypass does not auto-open the phase gate.** Each deliverable in the
phase must be either substance-passed OR explicitly bypassed for the
phase gate to open.
