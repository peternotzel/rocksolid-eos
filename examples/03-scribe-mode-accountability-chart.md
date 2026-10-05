# Scribe mode: turning a whiteboard photo into an Accountability Chart

The team pastes a whiteboard transcription. The skill strips the names (structure before people), finds the open Integrator seat and the handover dispute, proposes options, and writes `eos-deliverables/accountability-chart.md` after the team decides.

_Real, unedited output of the RockSolid skill run headless with `claude -p` on 2026-10-05. Company, people and numbers are fictional._

---

### 🧑‍💼 Leadership team

> Fair. No bypass — let's do the chart. We actually did a whiteboard session on structure last Friday, all five of us. Here's the photo transcription:
>
> VISIONARY: Maya — big ideas, key customer relationships, culture, R&D of new services (e.g. cold-chain), industry network
> INTEGRATOR: ??? (Maya or Jonas? left open)
> SALES/MARKETING (Priya): pipeline + quota, marketing, pricing proposals, account mgmt for top 10, sales team (3 reps)
> OPERATIONS (Jonas): dispatch, carrier network, handover from sales, on-time delivery, dispatcher team (14)
> CUSTOMER SUCCESS (Sam): onboarding new accounts, claims/damage handling, renewals, NPS
> FINANCE/ADMIN (Leo): budget, billing + collections, payroll, HR admin, IT/tools, contracts
> Note: 'handover sales->ops' appears under both Priya and Jonas. Big argument.

### 🪨 RockSolid

No bypass. That's the right call, and the whiteboard session saves us most of the work. All five of you are in the room, so this counts as a team session. I'll treat last Friday's whiteboard as team input and record it as team-authored. Nothing is saved yet: I'll show you the content first and write it once you confirm.

## Step 1: Accountability Chart™

**What the whiteboard already gets right:**
- **Functions:** four front-line functions, covering all three core ones (Sales/Marketing, Operations, Finance/Admin) plus Customer Success. That's within the recommended 3–7.
- **Visionary:** this seat has exactly 5 roles, and they're the right level: accountabilities, not tasks.
- **The two open questions:** the Integrator and the handover argument are the two issues a chart is meant to surface.

**One rule we have to apply first: structure before names.** Every box on the whiteboard was built around a person: Priya's seat, Jonas's seat, and so on. That isn't a disaster, since the functions are fairly standard. But the "maybe a second ops lead?" question shows what can go wrong. If Operations is defined as "whatever Jonas does", nobody asks whether it should be one seat or two. So I've removed the names. We'll settle the structure first and place people afterwards.

### Structure without names

| Seat | Roles from the whiteboard | Count | Status |
|---|---|---|---|
| **Visionary** | big ideas · key customer relationships · culture · R&D of new services (e.g. cold-chain) · industry network | 5 | ✅ |
| **Integrator** | *(none)* | 0 | ❌ needs 5 roles |
| **Sales/Marketing** | pipeline + quota · marketing · pricing proposals · account management for the top 10 · leads the sales team | 5 | ⚠️ the handover is disputed (see below) |
| **Operations** | dispatch · carrier network · *handover from sales* · on-time delivery · leads the dispatcher team | 5 | ⚠️ the handover is disputed |
| **Customer Success** | onboarding new accounts · claims/damage handling · renewals · NPS | 4 | ❌ needs a 5th role |
| **Finance/Admin** | budget · billing + collections · payroll · HR admin · IT/tools · contracts | 6 | ❌ one role too many |

### Four decisions for the team now

**1. The Integrator's 5 roles.** Here's a starting point based on how EOS defines the seat. Edit it freely:
1. Leads, manages and holds the leadership team accountable, and chairs the weekly L10™
2. Accountable for the P&L and business results
3. Turns the plan and Rocks™ into day-to-day execution
4. Connects the functions and resolves disputes between them
5. Runs cross-functional special projects (for example, Kessler-sized onboardings)

**2. The handover from Sales to Operations: exactly one seat owns it.** It can't sit in two boxes. Options:
- **(a) Operations owns it.** Operations defines what it needs from a closed deal, and Sales delivers to that standard.
- **(b) Sales owns it.** A deal isn't "closed" until the handover is clean.
- **(c) Customer Success owns it.** Fold it into "onboarding new accounts". That also gives CS a clear role and takes it off both Priya's and Jonas's lists.

**I'd lean towards (c).** For a new account, the handover and the onboarding are the same journey. Kessler is happening right now and it's exactly this case. It's still the team's decision.

Side question: does "dispatch handover chaos" in your Q3 list mean this Sales → Operations handover, or the shift handover between dispatchers? If it's the shift handover, that's a separate role within Operations.

**3. Customer Success needs a 5th role.** If you choose (c), the handover replaces or expands "onboarding new accounts", so you still need a fifth. Candidates:
- Leading a CS team, if Sam has one
- Watching account health and preventing churn
- Bringing customer feedback back to the leadership team

**4. Finance/Admin is one role over.** My suggestion is to merge "payroll" and "HR admin" into "HR and payroll administration".

**One overlap to watch:** customer relationships appear three times: the Visionary's "key customer relationships", Sales's "top 10 accounts" and CS's "renewals". You don't need to fix it today. But decide who leads with each of the top 10 accounts, or it will come up again in Rock ownership.

**Names come after these four decisions.** That includes the Maya-or-Jonas question for the Integrator. Once the Integrator's five roles are written down, it's usually much clearer who fits them. The People Analyzer™ and GWC™ check come after that.

What did the team decide on 1–4?

---

### 🧑‍💼 Leadership team

> Decisions: 1) Integrator roles accepted as proposed. 2) (c) — Customer Success owns the handover, folded into 'new account onboarding & sales handover'. Our 'chaos' was this one, not shifts. 3) CS 5th role: account health & churn prevention. 4) Merge payroll + HR admin. Names: Jonas is Integrator, Maya Visionary, rest as on the whiteboard; Jonas keeps Operations for now until we hire. Top-10 accounts: Priya leads. Write it.

### 🪨 RockSolid

I've saved the chart to `eos-deliverables/accountability-chart.md` (v1, as of today). It records your decisions, the seat assignments, and that all five of you agreed it in a live session.

**Your decisions also left Operations with only 4 roles.** The handover moved to Customer Success, so Operations is down to dispatch, carrier network, on-time delivery and leading the dispatcher team. I've marked the fifth role as **OPEN**, and the chart won't pass its check until it's filled. Possible candidates:
- Ops planning and capacity: forecasting load and staffing for dispatchers
- Carrier cost and margin per shipment
- Safety, compliance and claims prevention: preventing problems, while CS handles the claims themselves
- Ops tools and process improvement

**One wording change for you to confirm.** Because Priya now leads the top-10 accounts, I changed Maya's role 2 from "key customer relationships" to "key strategic relationships (industry-level)". That avoids the same accounts appearing in two seats. Does Maya agree with that wording?

**A note on Jonas holding two seats.** That's allowed in EOS™, and it's normal while you're hiring. But the GWC™ check will ask whether he has capacity for both, especially while Kessler is running. I've added that to the chart's open questions.

**What's still needed for Step 1:**
1. The fifth role for Operations
2. **The People Analyzer™**, which rates each leader against the company's core values. You don't have written core values yet; you'll define them in Phase 2. So we'll agree on a temporary set of 3–5 values today and revisit them when you build the V/TO™.
3. **The GWC check**: for each person in each seat, do they get it, want it, and have the capacity to do it?

Do you want to settle the Operations role and the temporary values now, while all five of you are still in the room, or stop here for today?

---

**Status:** I saved the chart and updated `eos-state.md` (team-validated, seat holders) and `eos-plan.md`. You're at Phase 1, Step 1, which is in progress. Next: the fifth Operations role, then the People Analyzer and GWC.

---
