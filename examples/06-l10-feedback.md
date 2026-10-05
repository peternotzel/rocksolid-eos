# L10 feedback: "Honest feedback, how did we do?"

Week 11. The team ran its L10 (moved to 14:00 that day) and wrote quick notes. RockSolid runs its **L10 Health Check**: time, lanes, IDS, priority, to-dos, rating, cascade. It returns one thing that worked and at most three fixes.

_Real, unedited output of the RockSolid skill (v1.1.0) run headless with `claude -p` on 2026-10-05. Company, people and numbers are fictional._

## Input: the team's meeting notes

```markdown
# L10 — 2026-10-05 (moved to 14:00)
Attendees: Maya, Jonas, Priya, Leo, Sam · Start 14:12 · End 16:05

## Segue
Done. Sam: Kessler plant 3 went live Friday.

## Scorecard
Sales conv. 10 · proposals 3 · loads 388 · on-time 91.9% · uncovered shifts 3 · claims >10d 6 · Kessler plants 3 · cash 455k · invoices >60d 47k
Long discussion about on-time % (~20 min) — Jonas thinks weekend shifts are the cause, Priya thinks it's carrier no-shows.

## Rock review
C3 Ops lead hire: off track. We talked about which recruiters to try, maybe LinkedIn ads (~15 min).
Leo collections: off track. Rest on track.

## Headlines
Kessler plant 3 live. Dispatcher Tom resigned (last day Oct 30).

## To-Do review (from Sep 28)
- Jonas: brief second recruiter — not done
- Leo: call Fischer + Nordtex — not done
- Sam: list claims >10 days with root cause — done
- Jonas: on-call rota draft — not done

## IDS
1. Weekend dispatcher coverage — discussed again. Jonas will think about options.
(ran out of time, #2 Ops lead pipeline and #3 late payers not reached)

## New To-Dos
- look into recruiter options
- Leo: call Fischer + Nordtex (again)

## Rating
Maya 6 · Jonas 7 · Priya 5 · Leo 7 · Sam 6
```

---

### 🧑‍💼 Leadership team

> We just had our L10. Notes are in eos-deliverables/l10-notes/2026-10-05.md. Honest feedback: how did we do?

### 🪨 RockSolid

This was a weak L10. The average rating fell from 7.6 to 6.2, and it's the first one where the process slipped instead of improving.

**What worked:** All five of you came, even after moving the meeting for Kessler. Sam finished the claims list, and every Scorecard number and Rock was reported.

**Three things to fix, biggest first:**

1. **You problem-solved outside IDS™.** You spent about 20 minutes on on-time % during the Scorecard and about 15 on recruiters during Rocks. Those are your Issues #2 and #1. You discussed both without solving either, and the time went with them. You started 12 minutes late, ran 23 minutes over, and never reached #2 or #3. **Next week:** each Scorecard and Rock item gets one sentence of status. If it's red or off track, it goes on the Issues List and gets talked about only in IDS.

2. **Weekend coverage went backwards.** On Sep 28 it was solved: Jonas would draft an on-call rota. That didn't happen. This week it became "Jonas will think about options," and the rota isn't on the new To-Do list at all. With Tom leaving on Oct 30, the weekend problem gets worse. **Next week:** put it first in IDS and don't close it without an owner, a date and a decision.

3. **To-Dos aren't sticking.** Only 1 of 4 was done (25%; the target is 90% or more). The new "look into recruiter options" has no owner and no date. Two of the three misses are Jonas's, and he's covering two seats right now. That's worth an IDS conversation of its own.

You also didn't note why anyone rated below 8, and you recorded no messages to pass on to the rest of the company.

I saved this check to `eos-state.md` under `health_history`. I haven't changed the Scorecard, Rocks or Issues List yet. Want me to do that and build these fixes into next Monday's prep?
