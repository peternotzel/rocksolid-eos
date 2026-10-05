# Onboarding: from "start eos" to a written plan

A brand-new workspace for the fictional company Brightline Freight (34 employees, 5-person leadership team). The whole leadership team is "in the room". Watch for: the skill reading `docs/team.md` instead of asking, catching a numbering mix-up in the checkup answers, questioning the "6 hours" estimate, and refusing to write anything until the team agrees to the plan.

_Real, unedited output of the RockSolid skill run headless with `claude -p` on 2026-10-05. Company, people and numbers are fictional._

---

### 🧑‍💼 Leadership team

> start eos

### 🪨 RockSolid

No EOS™ state files exist in this project yet, so we start with onboarding. I can see this is the **Brightline Freight** workspace: 5-person leadership team, 34 employees, Hamburg plus remote dispatchers. I'll use that context so I don't ask you for things the files already say.

Phase 1 can't start until onboarding is done. Here's what we'll do, in about 15–20 minutes:

1. **Organizational Checkup™.** 20 short statements, one at a time. You rate each 1–5, and that gives us your baseline score.
2. **Workspace scan.** I check this folder for existing EOS documents. So far I've found `docs/team.md` and an informal `docs/q3-priorities.md`.
3. **Discrepancy check.** I compare your ratings with what's actually written down. This is often the most useful part.
4. **Tempo and setup questions.** Hours per week, priority, parallel initiatives, where to save documents, and your L10™ and quarter calendar.
5. **Your plan.** I recommend a tempo (Fast Track / Standard / Deep) with reasons and show you the plan. Nothing is written to disk until you agree to it.

One question first: **are you answering the checkup alone, or with the leadership team in the room?** Doing it with the team is ideal. Doing it alone is fine as a first baseline, and we'd repeat it as a team at the mid-year checkup.

Ready to start?

---

### 🧑‍💼 Leadership team

> With the team. All five of us are in the room right now. Let's go.

### 🪨 RockSolid

Having all five of you there makes this a proper team baseline (`team_mode: team`). For each statement, agree on one score as a team. If you disagree, talk it through briefly and settle on a number. Where the team splits, that gap is useful to know.

**Scale:** 1 = not true for us · 2 = partially true, rarely applied · 3 = true some of the time · 4 = mostly true · 5 = consistently true

---

**Statement 1 of 20**

> Our organizational vision exists as a written artifact, and every member of the leadership team can state it the same way to the rest of the company.

What's the team's score, 1–5?

---

### 🧑‍💼 Leadership team

> We actually printed the 20 statements last week and scored them together at our offsite, so here are the agreed team scores in order: 2, 2, 3, 1, 3, 2, 2, 3, 1, 2, 2, 3, 2, 1, 3, 2, 2, 1, 1, 3. Statement 9 (Rocks) and 14 (Scorecard) caused the biggest argument — Priya rated them a 3, everyone else a 1.

### 🪨 RockSolid

Using the scores from your offsite is fine. You agreed them as a team, which is what the checkup needs, so I'll record this as a **team-mode baseline**.

## Organizational Checkup™: Result

- **Total score:** 41/100
- **Percentage:** 41%
- **Category:** Typical. Brightline runs about as well as most companies its size. That's the median, not the goal.

### By dimension group
- **Vision (2.1):** Nothing is written down yet. The 10-Year Target™ (Q4) is missing completely, and target market and differentiators (Q5, Q6) are only partly clear.
- **People (2.0):** You're fairly confident in the people you have (Q8 = 3), but there's no current structure chart (Q9 = 1) and seat fit is uncertain (Q10 = 2).
- **Data (1.0):** No weekly Scorecard™ and nobody owns a number. This is your weakest area.
- **Issues (3.0):** You solve problems some of the time, but without a consistent method.
- **Process (2.0):** Neither the customer process nor the core workflows are written down.
- **Traction (2.3):** You have quarterly priorities and a budget (3 each), but meetings have no fixed day, time or agenda (Q14 = 1).

**Lowest-scored statements:** five statements tied at 1, so you get all five:
- Q4: 10-Year Target
- Q9: Accountability Chart™
- Q14: Meeting discipline
- Q18: Weekly Scorecard
- Q19: Everyone Has a Number

---

### Before we continue: which two statements were you arguing about?

The numbering doesn't match the topics you named:

| You said | In this checkup | Team score |
|---|---|---|
| "9 (Rocks)" | **Q9** is the **Accountability Chart** (a current chart of functions and roles). Rocks™ are **Q12**. | Q9 = 1 · Q12 = 3 |
| "14 (Scorecard)" | **Q14** is **meeting discipline** (fixed day and time, same agenda, on time). The Scorecard is **Q18**. | Q14 = 1 · Q18 = 1 |

Your printed list may have been numbered differently, or the topics just got mixed up during the discussion. It matters because Priya's 3 against everyone else's 1 is exactly the kind of gap I'll look at in the discrepancy check. **So which statements was Priya scoring higher: the chart and meetings (Q9, Q14), or Rocks and the Scorecard (Q12, Q18)?** And if the printed order was different, please check that the 20 scores line up with the order above.

The total of 41% stays the same whichever answer you give. After that I'll scan the workspace.

---

### 🧑‍💼 Leadership team

> Good catch — our printout was a different order. Priya scored Rocks (Q12) and Scorecard (Q18) higher. The 20 scores are in your order, so keep them. Go ahead with the scan.

### 🪨 RockSolid

The two files that aren't docs, `t01.json` and `err.txt`, are tool logs, so I skipped them. The scan ignores the skill folder. That leaves three real documents, `README.md` and the two files in `docs/`.

## Workspace Scan: Result

### V/TO™
- (none found)

### Accountability Chart™
- (none found). `docs/team.md` lists 5 names and job titles. That's useful input for Step 1, but it's not a chart: it has no functions, no roles per seat, and no Integrator seat.

### Rocks™
- `docs/q3-priorities.md`: **needs sharpening**. It has 8 items (the limit is 3–7), with no owners and no due dates. Two of them are open-ended ("Maybe hire a second ops lead?", "Weekly numbers dashboard (someday)"). Some are outcomes, like "close 3 new accounts", and some are ongoing themes, like "figure out pricing".

### Level 10 Meeting™ / L10™
- (none found)

### Scorecard™
- (none found). The Q3 list even calls the dashboard "someday".

### Issues List
- (none found)

### Core Processes
- (none found). "Onboarding docs for dispatchers" is on the Q3 list but not written yet.

### Everyone Has a Number
- (none found)

**Summary:** done 0 · needs sharpening 1 (Rocks) · empty 0 · not found 7

---

## Discrepancy Check

Your scores mostly match what's written down. The 1s for the Accountability Chart, Scorecard and meetings line up with what's missing. Four scores need a closer look:

1. **Rocks (Q12), rated 3/5.** The only written list has 8 items, no owners, no dates, and includes "maybe" and "someday". Does each leader have their own short list with deadlines somewhere else, like Notion, a spreadsheet or a whiteboard? Or is the 3 more Priya's view of Sales than a company-wide reality?
2. **Scorecard (Q18), team 1/5, Priya 3/5.** My guess is that Sales tracks pipeline numbers weekly in the CRM and nobody else tracks anything. Is that right? If so, Sales gives us a head start on Step 4.
3. **Solving issues (Q15), rated 3/5.** There's no issues list here. Where do problems like "dispatch handover chaos" get raised and tracked today: Slack, a meeting, someone's notebook?
4. **Budget (Q20), rated 3/5.** I didn't find a budget in this workspace, which isn't surprising since it's probably Leo's. Where does it live, and do you compare actuals to it monthly, quarterly, or only now and then?

For each one, just tell me where it lives or that it's really a gap. Short answers are fine. I'll record each one as "exists elsewhere" or "real gap", and then we'll move on to the tempo questions.

---

### 🧑‍💼 Leadership team

> 1) Rocks: honestly that's Priya's view — Sales has quarterly targets per rep, nobody else does. Real gap company-wide. 2) Yes exactly, Sales tracks pipeline weekly in HubSpot, nobody else. 3) Slack and hallway conversations. Real gap. 4) Leo has the budget in Google Sheets, we look at actuals quarterly.

### 🪨 RockSolid

All four noted for the plan:

- **Rocks:** real gap company-wide. Sales has per-rep quarterly targets that we can build from.
- **Scorecard:** Sales tracks pipeline weekly in HubSpot. That's a seed for Step 4, not a finished Scorecard.
- **Issues:** handled in Slack and hallway conversations. Real gap.
- **Budget:** in Leo's Google Sheet, with actuals reviewed quarterly. It exists elsewhere, so the 3 is fair.

So Priya's higher scores were accurate for Sales. The gap is that nothing comparable exists in Operations, Customer Success or Finance.

---

## Tempo inputs

I already have two of the five from `docs/team.md`, so please just confirm them:
- **Team size:** 5 on the leadership team (Maya, Jonas, Priya, Leo, Sam), 34 employees in total.
- **Locations:** one office in Hamburg, plus remote dispatchers. I'll treat that as **one location**, since the leadership team and management are in one place. Tell me if the remote dispatchers work as a separate team with their own lead.

Next question:

**How many hours per week can the five of you realistically put into EOS work combined?** That includes the weekly meeting, building documents and team sessions. Be honest: if you commit too much now, you'll get a pace you can't keep up.

---

### 🧑‍💼 Leadership team

> Confirmed on team size and one location. Hours: about 6 hours a week combined, realistically. EOS is top-3 priority, competing with a big new customer onboarding (Kessler Industrial) that runs until end of November. No other major initiatives.

### 🪨 RockSolid

Noted:
- **Priority:** top 3.
- **Parallel initiative:** Kessler Industrial onboarding, running until end of November (about 8 weeks from today).
- **Other initiatives:** none.

**One check on the 6 hours.** The weekly L10 meeting alone is 90 minutes with all five of you, which is already 7.5 person-hours. So which do you mean?
- **(a)** 6 hours a week of **team time**, i.e. hours when all five of you are working on EOS together, or
- **(b)** 6 person-hours **in total**, about 70 minutes each?

With (b), the weekly meeting alone would use up the whole budget once we install it in Step 3. That affects the tempo I'll recommend, so I'd rather ask now.

---

## Workspace setup

Here's what I'm taking from your answers so far. Please confirm or correct:

- **Deliverables path:** `./eos-deliverables/` (default)
- **EOS-related material outside this workspace:** sales targets and pipeline in HubSpot, budget in Leo's Google Sheet, issues in Slack. I'll refer to these and won't assume they're missing. I won't connect to any of them automatically.
- **Document language:** English (default)

And one calendar question: **which month does your fiscal year start?** (Default: January.) Your quarter-ends and the annual planning window are worked out from it.

---

### 🧑‍💼 Leadership team

> Good point — (a), 6 hours of team time per week, so roughly 30 person-hours. Workspace setup all confirmed. Fiscal year starts in January. L10 will be Mondays 9:00, all five of us. Quarterly session in the last two weeks of the quarter, annual planning in the first two weeks of December.

### 🪨 RockSolid

All inputs are in. Here's my recommendation.

## Recommended Tempo: Standard (~52 weeks)

### Inputs
- **Checkup score:** 41/100 (Typical)
- **Team:** 5 on the leadership team, 34 employees
- **Locations:** one (Hamburg, with remote dispatchers reporting into it)
- **Weekly time:** 6 hours of team time (about 30 person-hours)
- **Priority:** top 3
- **Parallel initiatives:** Kessler Industrial onboarding until end of November
- **Existing assets:** none finished. There's a rough Q3 priorities list and three things outside this workspace: Sales targets and pipeline in HubSpot, and the budget in Google Sheets.

### Reasoning
- **What points to Standard:** your team size, single location, top-3 priority and 6 hours of team time.
- **What points to Deep:** your score of 41% is in the low-middle band. Normally a parallel initiative would also slow you down one tier.
- **Why I'm still recommending Standard:** Kessler ends in about 8 weeks. Those weeks cover Steps 1–2, which are mainly a few team sessions, not weekly work.
- **What Deep would cost you:** your first L10™ would move to early December, and the V/TO™ to late spring. That's a long time to keep up commitment without seeing results.
- **The time budget works:** the L10 takes 1.5 of your 6 hours, which leaves about 4.5 team hours a week for building the tools.
- **If Kessler takes more time than planned:** I'll notice when you fall behind and suggest a pause or a slower tempo then.

### What Standard means for you (week 1 = this week, Oct 5)

| Phase / step | Target weeks | Dates |
|---|---|---|
| **Phase 1: Structure & Traction** | | |
| 1. Accountability Chart™ + People Analyzer™/GWC™ | 2–5 | Oct 12 – Nov 8 |
| 2. First Rocks™ | 5–6 | Nov 2 – Nov 15 |
| 3. Weekly L10 (Mondays 9:00) + Issues List | 6–9 | from about Nov 9, at least 4 meetings by early Dec |
| 4. Scorecard™, starting from the HubSpot pipeline numbers | 9–12 | Nov 30 – early Jan |
| **Phase 2: Vision** | | |
| 5. V/TO | 14–22 | Jan – early Mar 2027 |
| **Phase 3: Systemization** | | |
| 6. Core Processes (starting with dispatch handover) | 24–44 | Mar – Aug 2027 |
| 7. Everyone Has a Number | 44–52 | Aug – early Oct 2027 |
| **Mid-year checkup** | 26 | ~ end of Mar 2027 |

### Two calendar issues to flag
1. **The first Rocks will only cover a short period.** Set in early November, they'd cover only about 7 weeks of Q4. I'd treat that round as a practice cycle; Kessler is an obvious first Rock. Your first full 90-day Rocks would then be Q1 2027.
2. **December is crowded.** Annual planning (Dec 1–14) comes before you have a V/TO, so this year it would be a lighter version: 2027 goals, the budget with Leo, and Q1 Rocks. Your quarterly session window is the last two weeks of the quarter (Dec 18–31), which runs into the holidays. My suggestion is that the December annual session also sets Q1 Rocks, so you don't need a separate session in late December. Does that work for you?

### Before I write anything
1. **Standard**, or would you rather go **Deep**?
2. **Fixed habits**: anything I should plan around, like a Christmas break, summer holidays or Kessler go-live dates?
3. **Do you agree with this plan?** If you do, I'll write `eos-plan.md`, `eos-state.md` and `eos-workspace-setup.md`. Until then nothing gets saved.

---

### 🧑‍💼 Leadership team

> Standard. Yes, merge Q1 Rocks into the December annual session. Office is closed Dec 23 to Jan 2. We agree with the plan — write it.

### 🪨 RockSolid

Onboarding is finished and I've saved all three files:

- **`eos-plan.md`**: your Standard-tempo plan with all 7 steps and their dates. Each step includes what we found about Brightline, e.g. the HubSpot pipeline as the starting point for the Scorecard™ and Kessler as a first Rock™.
- **`eos-state.md`**: your baseline of 41% (Typical, scored as a team), Priya's dissent on Q12 and Q18, the four discrepancy notes, and the calendar. That covers L10™ on Mondays at 9:00, annual planning Dec 1–14 including Q1 Rocks, and the office closure Dec 23 – Jan 2.
- **`eos-workspace-setup.md`**: the deliverables folder `./eos-deliverables/`, the three places where material lives outside this workspace (HubSpot, Google Sheets, Slack), and your working habits.

You're now at **Phase 1, Step 1: Accountability Chart™**. It's planned for Oct 12 – Nov 8, so you're slightly ahead of schedule.

**Do you want to start Step 1 now, or in a separate session?** All five of you are in the room, and the chart needs the whole team, so now is a good time. The first part maps your structure: major functions and about 5 roles per seat, before we put any names in. It takes 60–90 minutes. If you've had enough for today, we can start fresh next session.

---
