# Gap Analysis Report Templates

Templates the EOS(R) Implementer skill uses during onboarding and phase
gates to present findings to the user. Each template includes a blank
version the agent populates and a filled example showing what the user
sees.

---

## Template 1 — Checkup Result Summary

Shown immediately after the 20 Organizational Checkup questions are
answered. Compact — designed to fit on one screen.

### Blank

```
## Organizational Checkup — Result

- **Total score:** {total}/100
- **Percentage:** {pct}%
- **Category:** {category_label}

### By dimension group
- **Vision ({q1-q7 avg}):** {one-sentence comment}
- **People ({q8-q11 avg}):** {one-sentence comment}
- **Data ({q18-q19 avg}):** {one-sentence comment}
- **Issues ({q15 avg}):** {one-sentence comment}
- **Process ({q7, q16 avg}):** {one-sentence comment}
- **Traction ({q12-q14, q20 avg}):** {one-sentence comment}

**Three lowest-scored statements:** {list of 3 statement numbers and dimensions}
```

### Filled example

```
## Organizational Checkup — Result

- **Total score:** 54/100
- **Percentage:** 54%
- **Category:** Above the middle, with real gaps

### By dimension group
- **Vision (3.1):** Written artifact exists but the team can't state it the same way.
- **People (2.8):** Right people, wrong seats in several cases — GWC(TM) has not been applied.
- **Data (2.0):** No weekly Scorecard(TM); financials only.
- **Issues (3.0):** IDS(TM) is used sometimes but not consistently named.
- **Process (1.5):** Core processes are not documented.
- **Traction (3.3):** Weekly rhythm exists but meetings drift on time and agenda.

**Three lowest-scored statements:** 16 (processes documented), 18 (weekly Scorecard), 19 (everyone has a number)
```

---

## Template 2 — Workspace Scan Result

Shown after the 2-pass scan (see `workspace-scan-checklist.md`), grouped
by tool.

### Blank

```
## Workspace Scan — Result

### {Tool name}
- {file_path} — {status} ({reason})
- {file_path} — {status} ({reason})

### {Tool name}
- (none found)

**Summary:**
- done: {n} tool(s)
- needs-sharpening: {n} tool(s)
- empty: {n} tool(s)
- not-found: {n} tool(s)
```

### Filled example

```
## Workspace Scan — Result

### V/TO(TM)
- docs/strategy/vto.md — needs-sharpening (5 of 8 questions answered, missing 3-Year Picture, 1-Year Plan, Issues List)

### Accountability Chart(TM)
- (none found)

### Rocks(TM)
- planning/q2-rocks.md — done (5 company Rocks with owners and due dates)

### L10(TM)
- meetings/l10-agenda.md — done (all 7 segments, 5/5/5/5/5/60/5 times)
- meetings/l10-notes/ — needs-sharpening (3 weeks, need 4 to pass gate)

### Scorecard
- (none found)

### Issues List
- (none found)

### Core Processes
- (none found)

### Measurables (Everyone Has a Number)
- (none found)

**Summary:**
- done: 1 tool (Rocks)
- needs-sharpening: 2 tools (V/TO, L10)
- empty: 0 tools
- not-found: 5 tools
```

---

## Template 3 — Discrepancy Check

Shown when the Organizational Checkup self-rating and the workspace scan
disagree. This surface is important — it catches both over-confident
self-rating and over-conservative self-rating.

### Blank

```
## Discrepancy Check

The checkup score and the workspace reality don't fully agree on the
following dimensions. These are not gotchas — they usually mean the tool
exists informally in the team's head but isn't captured as an artifact.

- **{dimension}:** rated {score}/5 but {observation}.
- **{dimension}:** rated {score}/5 but {observation}.
```

### Filled example

```
## Discrepancy Check

The checkup score and the workspace reality don't fully agree on the
following dimensions. These are not gotchas — they usually mean the tool
exists informally in the team's head but isn't captured as an artifact.

- **Vision documented and shared (Q1):** rated 4/5 but no V/TO(TM) file was
  found in the workspace. The vision may be agreed inside the leadership
  team but not written down — Phase 2 will lock that.
- **Weekly Scorecard (Q18):** rated 2/5 but a file at `metrics/weekly-kpis.md`
  exists with 8 numbers. The tool may already be closer to `done` than
  you think — worth reviewing together.
- **Everyone Has a Number (Q19):** rated 3/5 but no directory exists. Most
  people in the company probably do NOT have an owned weekly number yet.
```

---

## Template 4 — Tempo Recommendation

Final output of onboarding. Shows all inputs and the recommended mode
with full reasoning so the user can challenge the logic.

### Blank

```
## Recommended Tempo: {Fast Track | Standard | Deep}

### Inputs
- Checkup score: {score}/100 ({category})
- Team size: {size}
- Weekly hours available: {hours}
- Priority in the company: {high | medium | low}
- Parallel initiatives: {list}
- Locations: {single | multi}
- Existing assets: {workspace scan summary}

### Reasoning
{Two to five sentences explaining why this mode fits these inputs.}

### What {mode} means in practice
- {key cadence}
- {key cadence}
- {key cadence}

### Confirm or adjust
Does this match your situation, or should we lean toward {alternate mode}?
```

### Filled example

```
## Recommended Tempo: Standard

### Inputs
- Checkup score: 54/100 (Above the middle, with real gaps)
- Team size: 18 people, 4 on leadership team
- Weekly hours available: 6 to 8
- Priority in the company: high
- Parallel initiatives: Series A fundraise (closing in ~90 days)
- Locations: single office
- Existing assets: Rocks done, L10 needs one more week, no Scorecard, no V/TO

### Reasoning
Your checkup sits squarely in the middle band — the tools you do have
are partially working, which means Deep mode would re-teach things
you've already installed. Your weekly bandwidth supports the Standard
pace. The Series A closes in 90 days, so we should hold off on the
2-day annual session and instead schedule it for week 14 after the
round is closed.

### What Standard means in practice
- Phase 1 (weeks 1-6): Accountability Chart, Rocks sharpening, L10 to 4+ weeks, Scorecard build
- Phase 2 (weeks 7-16): V/TO in one off-site session, 1-Year Plan, first Rock alignment check
- Phase 3 (weeks 17-26): Core Processes, Everyone Has a Number, mid-year checkup

### Confirm or adjust
Does this match your situation, or should we lean toward Fast Track
(condense into 4 months) or Deep (add weekly coaching and stretch
Phase 2)?
```

---

## Usage notes

- Templates use `{placeholder}` syntax so the agent can do
  search-and-replace fills.
- Always show the filled version to the user, not the blank.
- Always end with an explicit confirmation question before writing
  state changes — the user has the final word on which mode gets
  locked in.
