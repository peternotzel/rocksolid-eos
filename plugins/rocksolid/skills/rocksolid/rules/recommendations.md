# Recommendations

These are the soft rules for the EOS(R) Implementer skill. Each rule
corresponds to a `recommendation` check in
`assessment/substance-rubrics.md`. The skill warns when they are
violated but does not block a phase gate. The user may intentionally
deviate based on company context — that is within EOS practice.

## Warning format

When a recommendation fails, the skill says:

> "Note: {rule}. Wickman's reasoning: {reason}. You can proceed, but
> I'll log this as a warning in `eos-state.md` so it can be revisited
> in a later cycle."

No two-round challenge, no bypass history — just a logged warning
under `warnings` in state.

---

## The recommendations

### Accountability Chart(TM)

- **rule_id:** ac-visionary-optional
- **recommendation:** A Visionary seat is either present with exactly one holder or absent
- **reason:** Roughly half of companies don't have a Visionary seat. Its absence is an intentional structural choice, not a defect

- **rule_id:** ac-function-count-sweet-spot
- **recommendation:** Front-line functions sit in the 3 to 7 sweet spot
- **reason:** Beyond 7 often signals that some of these are really sub-functions that could live under a parent — consolidating clarifies ownership

- **rule_id:** ac-chart-revision-cadence
- **recommendation:** The Accountability Chart has been revised within the last 90 days OR the business has not materially changed
- **reason:** A healthy rhythm is roughly every 90 days as the business evolves. Chart staleness usually lags reality by weeks to months and causes low-grade friction

### Rocks(TM)

- **rule_id:** rocks-state-of-company
- **recommendation:** Company Rocks are shared with the full organization within the quarter (State-of-the-Company meeting)
- **reason:** Without the company-wide share, the quarterly priorities stay trapped inside the leadership team and the vision cascade breaks. The broadcast is capped at roughly 45 minutes, not a full day

### Meeting Pulse(TM) / Level 10 Meeting(TM)

- **rule_id:** l10-issues-list-between
- **recommendation:** The Issues List has items added between meetings, not only at the meeting itself
- **reason:** The list should live between meetings — anything that surfaces during the week should land on it immediately, not wait for the next L10(TM) slot. Batch-adding at the meeting means items were held in people's heads and some were forgotten

- **rule_id:** l10-missed-logged
- **recommendation:** Any missed L10 has a logged reason (vacation, emergency)
- **reason:** Missing the L10 should be an exception, not a pattern. If the skips become routine without reasons, the meeting is probably not load-bearing and IDS(TM) is not actually happening

- **rule_id:** l10-state-of-company-capped
- **recommendation:** State-of-the-Company meeting has been run at least once with the entire workforce invited, within 45 minutes
- **reason:** The quarterly 45-minute broadcast is how the vision and Rocks actually reach everyone outside the leadership team. Going longer turns it into a town hall and weakens the focus; skipping it entirely breaks the cascade

### Scorecard(TM)

- **rule_id:** scorecard-who-column-first
- **recommendation:** Leftmost column is WHO (owner elevated, not hidden)
- **reason:** Structurally elevating WHO is what makes ownership unavoidable at a glance. Owner-in-a-middle-column works mechanically but costs a small amount of accountability pressure every time the Scorecard is read

### V/TO(TM) / Vision/Traction Organizer(TM)

- **rule_id:** vto-guarantee-present-or-justified
- **recommendation:** A concrete Guarantee exists OR a justified decision not to have one is recorded
- **reason:** Roughly half of clients don't carry a Guarantee, which is fine. But the decision should be explicit — a blank is ambiguous. Record the reasoning so the next annual review can revisit it

- **rule_id:** vto-issues-list-has-entries
- **recommendation:** The long-term Issues List on the V/TO has entries
- **reason:** An empty long-term Issues List usually means the team isn't surfacing strategic concerns, not that there aren't any. Every leadership team has long-term issues — the question is whether they're being captured

### Core Processes

- **rule_id:** cp-sanity-read-by-other
- **recommendation:** Each process has been sanity-read by someone other than the author
- **reason:** A single-author process risks encoding how one person thinks about it, not how work actually happens. A second reader catches gaps the author's blind spots miss
