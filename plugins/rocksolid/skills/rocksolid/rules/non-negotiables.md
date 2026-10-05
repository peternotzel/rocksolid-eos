# Non-Negotiable Rules

These are the hard rules the EOS(R) Implementer skill refuses to silently
bypass. Each rule corresponds to a `non-negotiable` check in
`assessment/substance-rubrics.md` but is reformatted here with the
reason and the downstream consequence so the bypass-challenge protocol
has what it needs.

If the user attempts to skip a non-negotiable, the skill issues a
two-round challenge before accepting an override. Every override is
logged in `bypass_history` in `eos-state.md`.

## Round 1 challenge format

State the rule, then state the reason (paraphrased Wickman reasoning).
Ask: "Are you sure you want to bypass this?"

## Round 2 challenge format (if the user insists)

State the downstream consequence — what specifically breaks later if
this is bypassed. Ask again: "Still want to bypass?"

If the user insists again, record the override in `bypass_history` with
the rule id, the user's stated reason, and a timestamp.

---

## The rules

### Accountability Chart(TM)

- **rule_id:** ac-integrator-required
- **rule:** Exactly one Integrator seat must exist on the front line
- **reason:** Without a single integrating role, major functions operate in silos and friction between them destroys the company
- **downstream_consequence:** Rock ownership becomes diffused, L10(TM) has no one chairing, IDS(TM) solutions never get enforced consistently

- **rule_id:** ac-single-integrator
- **rule:** The Integrator seat is held by exactly one person, never shared
- **reason:** Shared integrating roles produce diffuse accountability — each holder assumes the other will carry hard decisions
- **downstream_consequence:** Tie-breaking decisions stall, L10 loses its chair, integration between functions degrades

- **rule_id:** ac-major-functions-count
- **rule:** 3 to 10 major functions on the front line, minimum 3 core (Sales/Marketing, Operations, Finance/Admin)
- **reason:** Fewer than 3 means core accountabilities are missing; more than 10 usually means some entries are really sub-functions
- **downstream_consequence:** Rocks(TM) and Scorecard(TM) numbers cannot be cleanly assigned because no seat owns the outcome

- **rule_id:** ac-five-roles-per-seat
- **rule:** Every seat has exactly 5 major roles
- **reason:** Fewer than 5 under-specifies responsibilities; more than 5 overloads the seat and nothing is truly core
- **downstream_consequence:** GWC(TM) tests become subjective, People Analyzer(TM) has no clear frame, accountability conversations become political

- **rule_id:** ac-structure-before-names
- **rule:** Structure is completed before names are placed into seats
- **reason:** Starting with people sculpts the chart around existing compromises and locks them in
- **downstream_consequence:** The chart encodes the current org's limitations as structural truth and re-structuring later is politically expensive

- **rule_id:** ac-gwc-all-yes
- **rule:** Every person placed in a seat has Yes on Get it, Want it, and Capacity
- **reason:** Two out of three on GWC is a fail, not a partial pass — the missing axis compounds over time
- **downstream_consequence:** Rock delivery stalls, Scorecard misses become persistent, the seat eventually blocks the whole function

- **rule_id:** ac-people-analyzer-bar-met
- **rule:** Every leadership team member meets or exceeds the team's agreed People Analyzer bar on core values
- **reason:** Someone operating below the bar teaches the rest of the team that the values are negotiable
- **downstream_consequence:** Core values erode, hiring and firing decisions become inconsistent, the culture drifts

### Rocks(TM)

- **rule_id:** rocks-company-count
- **rule:** Between 3 and 7 company Rocks per quarter
- **reason:** Fewer than 3 means no focus; more than 7 means nothing is actually a priority
- **downstream_consequence:** Leadership bandwidth gets scattered, delivery rate drops, end-of-quarter review becomes demoralizing

- **rule_id:** rocks-individual-per-leader
- **rule:** Each leadership team member has 3 to 7 individual Rocks total (inclusive of any company Rocks they own)
- **reason:** The individual cap is inclusive of company Rocks, not on top of them — loading beyond it systematically under-delivers
- **downstream_consequence:** Leaders miss their individual Rocks AND miss their company Rocks; both show red at quarter end

- **rule_id:** rocks-employee-count
- **rule:** Each non-leadership employee has 1 to 3 Rocks
- **reason:** Below leadership, 1 to 3 is the attention ceiling; more overwhelms
- **downstream_consequence:** Employees disengage from Rocks entirely because the list feels performative

- **rule_id:** rocks-smart
- **rule:** Each Rock is specific, measurable, and attainable in 90 days
- **reason:** Without SMART framing, "done" becomes subjective at quarter end
- **downstream_consequence:** Quarter-end reviews turn into negotiation about what counted, not execution against plan

- **rule_id:** rocks-single-owner
- **rule:** Each Rock has exactly one named owner
- **reason:** Shared ownership is diffuse ownership — each owner assumes the other will carry the ball
- **downstream_consequence:** Rocks with multiple owners systematically miss because nobody is the single person whose reputation is on the line

- **rule_id:** rocks-due-date
- **rule:** Each Rock has an explicit due date, normally the last day of the quarter
- **reason:** A Rock without a date cannot be scored on time
- **downstream_consequence:** Rock Review segment in the L10 becomes a status update instead of a binary done/not-done

- **rule_id:** rocks-binary-scorable
- **rule:** Each Rock is worded so it can be scored done/not-done with no partial credit
- **reason:** Partial-credit wording lets the team rationalize misses
- **downstream_consequence:** Quarterly completion rate cannot be measured honestly, so the forecasting signal Rocks exist to produce is lost

- **rule_id:** rocks-single-sheet
- **rule:** A single Rock Sheet artifact covers company Rocks plus all leadership individual Rocks
- **reason:** The weekly Rock Review needs one document to walk top to bottom
- **downstream_consequence:** Split documents produce mismatched versions and the weekly review degrades into document-hunting

- **rule_id:** rocks-no-mid-quarter-add
- **rule:** No Rocks are added to the list mid-quarter; new items go to the V/TO(TM) Issues List instead
- **reason:** Mid-quarter additions dilute focus
- **downstream_consequence:** The quarter's actual priorities become unclear, end-of-quarter rate drops, and the 90-day planning discipline breaks

### Meeting Pulse(TM) / Level 10 Meeting(TM)

- **rule_id:** l10-agenda-seven-items
- **rule:** The L10 agenda contains all 7 items in order (Segue, Scorecard, Rock Review, Headlines, To-Do Review, IDS, Conclude)
- **reason:** Removing any item collapses a specific feedback loop the meeting exists to run
- **downstream_consequence:** Issues stop surfacing, Rocks stop being reviewed weekly, the meeting drifts into status updates

- **rule_id:** l10-time-allocation
- **rule:** Time allocations match 5/5/5/5/5/60/5 (total 90 minutes)
- **reason:** IDS needs 60 minutes — it's the segment where real work happens
- **downstream_consequence:** Without protected IDS time, issues get raised but never resolved, and the L10 becomes reporting theater

- **rule_id:** l10-same-day-same-time
- **rule:** L10 runs on the same day and at the same time each week
- **reason:** The rhythm depends on the meeting becoming a reflex the team stops scheduling around
- **downstream_consequence:** Attendance drifts, the meeting gets rescheduled around other priorities, and the weekly cadence dies

- **rule_id:** l10-four-weeks-notes
- **rule:** At least 4 weeks of L10 notes with real content exist before the Phase 1 gate opens
- **reason:** Four weeks is the minimum to confirm the rhythm is actually running, not just calendared
- **downstream_consequence:** Moving to Phase 2 without a proven weekly rhythm means Phase 2 will stall as soon as complexity goes up

- **rule_id:** l10-ids-visible
- **rule:** Each L10 shows Identify/Discuss/Solve structure against named issues
- **reason:** An IDS segment that is really open discussion means nothing gets resolved
- **downstream_consequence:** Same issues resurface week after week and team trust in the meeting collapses

- **rule_id:** l10-quarterly-full-day-offsite
- **rule:** The quarterly session is a full day (~8 hours) and held off-site
- **reason:** Office distractions and half-day compression both kill the depth quarterly planning needs
- **downstream_consequence:** Rocks for the next quarter are half-baked and 1-Year Plan updates get skipped

- **rule_id:** l10-annual-two-days-offsite
- **rule:** The annual session is two full days and held off-site
- **reason:** The V/TO rebuild and team-health work both need uninterrupted time
- **downstream_consequence:** V/TO becomes stale, core values drift, and the following year's 1-Year Plan inherits the staleness

### Scorecard(TM)

- **rule_id:** scorecard-numbers-count
- **rule:** 5 to 15 weekly numbers on the Scorecard
- **reason:** Fewer than 5 is missing leading indicators; more than 15 makes the review segment noise
- **downstream_consequence:** Scorecard review in L10 either skips critical metrics or drags on past its 5 minutes

- **rule_id:** scorecard-activity-based
- **rule:** Each number is activity-based (a leading indicator), not a trailing P&L figure
- **reason:** The Scorecard exists to predict what's about to happen while there's still time to act
- **downstream_consequence:** The team sees bad news too late to do anything about it, and the Scorecard becomes a rearview mirror

- **rule_id:** scorecard-single-owner
- **rule:** Each number has exactly one named owner from the Accountability Chart
- **reason:** A number without a single named owner is a number nobody actually drives
- **downstream_consequence:** Numbers drift red, nobody escalates, IDS is never triggered

- **rule_id:** scorecard-weekly-goal
- **rule:** Each number has an explicit weekly goal, not only an actual
- **reason:** Without a goal there is nothing to flag red against
- **downstream_consequence:** The Scorecard review becomes a status report instead of a trigger for action

- **rule_id:** scorecard-two-weeks-actuals
- **rule:** At least 2 weeks of actual data entered before the tool is considered meaningful
- **reason:** One data point is noise
- **downstream_consequence:** Early decisions are made on a single-week reading and the team learns to distrust the tool

- **rule_id:** scorecard-goals-tied-to-plan
- **rule:** Phase 2+ weekly goals tie to 1-Year Plan targets; Phase 1 goals tie to a recorded pragmatic target
- **reason:** Goals pulled from nowhere drift
- **downstream_consequence:** The Scorecard and the 1-Year Plan move in different directions and the vision cascade breaks

- **rule_id:** scorecard-red-flag
- **rule:** Visible red-flag mechanism for misses (shading, marker, or equivalent)
- **reason:** Without a visual marker, the eye slides past bad numbers during review
- **downstream_consequence:** Misses don't drop to IDS and the Scorecard becomes read-only

- **rule_id:** scorecard-used-in-l10
- **rule:** The Scorecard is actively referenced in the L10 Scorecard Review segment
- **reason:** A Scorecard nobody opens is just a spreadsheet
- **downstream_consequence:** The tool becomes shelf-ware and the weekly data discipline collapses

- **rule_id:** scorecard-rolling-13
- **rule:** Rolling 13-week format with dated week-ending columns
- **reason:** 13 weeks is the right context window for trend detection — three off-weeks is a signal, one is noise
- **downstream_consequence:** Without the 13-week view, single-week misses get over-reacted to and multi-week drift goes unnoticed

### V/TO(TM) / Vision/Traction Organizer(TM)

- **rule_id:** vto-eight-questions
- **rule:** All 8 V/TO questions are answered
- **reason:** Each skipped question leaves a gap that downstream tools inherit
- **downstream_consequence:** Rocks misalign with vision, Scorecard misaligns with 1-Year Plan, Core Processes misalign with Core Focus(TM)

- **rule_id:** vto-core-values-count
- **rule:** Between 3 and 7 core values
- **reason:** Below 3 under-specifies the culture; above 7 dilutes it to the point where nothing is actually a filter
- **downstream_consequence:** Hiring and firing become inconsistent and the People Analyzer has too many or too few axes

- **rule_id:** vto-core-values-concrete
- **rule:** Core values are phrased concretely enough to decide hire/fire on, not generic one-word abstractions
- **reason:** Two reviewers must be able to look at the same employee's behavior and agree whether it was lived or violated
- **downstream_consequence:** People Analyzer scoring becomes political, and the values lose their role as a filter

- **rule_id:** vto-core-focus-both-parts
- **rule:** Core Focus has both Purpose/Cause/Passion and Niche, each in a few words
- **reason:** A Core Focus with one half is not a sweet spot
- **downstream_consequence:** Strategic decisions drift because there is no shared answer to "why us" or "what is our lane"

- **rule_id:** vto-ten-year-target
- **rule:** 10-Year Target(TM) is a single goal with a date and a measurable number
- **reason:** Vague targets produce vague strategic decisions
- **downstream_consequence:** The 3-Year Picture(TM) and 1-Year Plan cannot back-chain from it coherently

- **rule_id:** vto-target-market-filterable
- **rule:** Target Market is specific enough that a real prospect list could be built from it
- **reason:** A vague target market turns marketing into spray-and-pray
- **downstream_consequence:** Marketing spend is inefficient, sales pipelines are inconsistent, and the Proven Process(TM) cannot be tuned to an actual buyer

- **rule_id:** vto-three-uniques
- **rule:** Exactly three Three Uniques(TM), and no single competitor can honestly claim all three
- **reason:** Fewer than three is generic; more than three is unfocused
- **downstream_consequence:** Marketing messages do not differentiate and sales conversations lose the hook

- **rule_id:** vto-proven-process
- **rule:** Proven Process is named, visually illustrated, and has 3 to 7 major steps
- **reason:** An unnamed or un-illustrated process cannot be used in sales conversations
- **downstream_consequence:** Sales loses a key tool and buyers perceive the offering as generic

- **rule_id:** vto-three-year-picture
- **rule:** 3-Year Picture has future date, revenue, profit, measurables, and 10 to 20 "looks like" bullets
- **reason:** Vague pictures produce vague plans
- **downstream_consequence:** The 1-Year Plan cannot back-chain from it and the leadership team has no shared image of the destination

- **rule_id:** vto-one-year-plan
- **rule:** 1-Year Plan has date, revenue, profit, measurables, 3 to 7 SMART goals, and budget support
- **reason:** Teams that load 12+ annual goals systematically under-deliver
- **downstream_consequence:** Rocks lose their anchor and the Scorecard has nothing to tie weekly goals to

- **rule_id:** vto-rocks-match-sheet
- **rule:** Quarterly Rocks on the V/TO Traction page match the current Rock Sheet
- **reason:** The V/TO is the canonical statement of what this quarter is about
- **downstream_consequence:** Two documents diverge, leadership team members reference different priorities, and alignment breaks

- **rule_id:** vto-team-authored
- **rule:** The V/TO is produced in a leadership team session, not by a solo drafter
- **reason:** A founder alone cannot produce a V/TO that the team will actually execute against
- **downstream_consequence:** The team treats the document as the founder's document and Phase 2 execution stalls

### Core Processes

- **rule_id:** cp-list-count
- **rule:** Named list of core processes with 5 to 15 entries
- **reason:** Below 5 and important processes are being lumped; above 15 and sub-processes are being documented as if they were core
- **downstream_consequence:** Documentation effort is either incomplete or unmanageable, and neither state supports enforcement

- **rule_id:** cp-naming-consensus
- **rule:** Leadership team has explicitly reached 100 percent consensus on process names and count
- **reason:** Skipping the Identify stage produces incoherent documentation
- **downstream_consequence:** Seat owners document different conceptual slices and the Compile stage produces a binder that contradicts itself

- **rule_id:** cp-owner-on-chart
- **rule:** Each process has an owner who is a seat on the Accountability Chart
- **reason:** Ownership must trace to a chart seat — otherwise there is no accountable party
- **downstream_consequence:** Processes drift with nobody noticing, and the "followed by all" condition silently fails

- **rule_id:** cp-length-in-range
- **rule:** Each documented process is between 2 and 10 pages
- **reason:** Under 2 doesn't transfer real knowledge; over 10 becomes a binder nobody reads
- **downstream_consequence:** Either new hires learn the process wrong or the documentation is never referenced after writing

- **rule_id:** cp-format
- **rule:** Each process follows the major-numbered-steps-with-bullet-sub-steps format
- **reason:** No flowcharts, no keystroke instructions — the format is numbered steps with a few bullets each
- **downstream_consequence:** Inconsistent formatting across the library makes it unusable as a system

- **rule_id:** cp-compiled
- **rule:** All core processes are compiled into a single accessible package and distributed
- **reason:** Scattered documentation cannot be enforced
- **downstream_consequence:** Nobody can find the current version, versions fork, and "followed by all" becomes fiction

### Everyone Has a Number

- **rule_id:** ehan-every-person
- **rule:** Every person in the organization has at least one weekly activity-based number
- **reason:** The discipline extends Scorecard ownership all the way down
- **downstream_consequence:** The uncovered half of the company learns that the measurables discipline is optional

- **rule_id:** ehan-number-fields
- **rule:** Each number has a named owner, a target, a weekly frequency, and a data source
- **reason:** All four fields are required — missing any one breaks the tool's use
- **downstream_consequence:** Numbers without sources cannot be trusted, numbers without targets cannot be red-flagged

- **rule_id:** ehan-rolls-up
- **rule:** Each number traces upward through the Accountability Chart to a leadership Scorecard number
- **reason:** Individual numbers must feed the leadership Scorecard, otherwise they're floating
- **downstream_consequence:** The Scorecard is disconnected from actual operational activity and the data component degrades

- **rule_id:** ehan-anchored-to-process
- **rule:** Each number is anchored to one of the documented core processes
- **reason:** Without a process anchor, the number measures an outcome in isolation and cannot be improved systematically
- **downstream_consequence:** Red numbers cannot be debugged because there is no underlying process to examine

- **rule_id:** ehan-directory-complete
- **rule:** A centralized directory lists every person in the organization with their number(s) and targets
- **reason:** Coverage must be complete — partial coverage teaches the uncovered half that the discipline is optional
- **downstream_consequence:** The two-tier culture undermines the Data component and the whole system feels unevenly applied
