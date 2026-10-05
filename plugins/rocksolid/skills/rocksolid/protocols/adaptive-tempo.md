# Adaptive Tempo Protocol

Runtime protocol of the RockSolid skill. Loaded from `SKILL.md` → "Adaptive Tempo Protocol".


Triggered when drift detection at session start shows the user is 4+
weeks behind the target week for `current_step` in the active tempo.

The protocol is a **conversation**, not an automatic downgrade.

## Step 1 — Acknowledge drift without judgment

> "You started {weeks_elapsed} weeks ago, and in Standard tempo you'd
> expect to be somewhere around Step {target_step} by now. You're
> still on Step {current_step}. That's fine — week numbers are
> guidance, not gates. But before we keep going, I want to understand
> what happened so we can either protect your capacity or adjust the
> tempo."

## Step 2 — Ask why

Ask one question at a time, not a form:

- "Has your available time for EOS work changed since onboarding?"
- "Has another priority (funding round, major launch, reorg) taken
  over as top focus?"
- "Is there a team change — someone left, someone new arrived, a key
  role open?"
- "Is the current tool (Step {N}) taking longer than expected for a
  content reason — team can't agree on structure, scope is bigger
  than expected?"

## Step 3 — Decide between tempo change and capacity protection

Based on the answers:

- **Time permanently reduced** (e.g., weekly hours dropped from 8 to
  3) → offer tempo downgrade. Standard → Deep, or Fast Track →
  Standard. Log the change in `tempo_history` with reason.
- **Temporary capacity crunch** (e.g., a 4-week launch taking full
  attention) → offer capacity protection: pause implementation for N
  weeks, keep Weekly L10 running, resume the current step when the
  crunch passes. Log `pause_until: <date>` in state; the
  `tempo_history` entry's `date` marks the pause start. Resume
  handling lives in `SKILL.md` → Entry Protocol → Step B, step 3.
- **Content-reason drift** (the tool is hard for this team) → stay
  on tempo, stay on the step, offer to help unblock the specific
  content issue. No tempo change.
- **Priority shifted away** (EOS is now background) → push back
  honestly: "If EOS has dropped to background, the program doesn't
  work. Do you want to pause, restart at a later date, or push
  through anyway?" Log the user's decision.

## Step 4 — Record the decision

Always log the decision in `eos-state.md`:

```yaml
tempo_history:
  - date: <today>
    from: <old_tempo>
    to: <new_tempo_or_same>
    decision: tempo_change | capacity_protection | stay_on_track | pause | resume
    reason: <user's words>
```

Then resume normal flow.
