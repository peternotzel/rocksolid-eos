# Contributing to RockSolid

Thanks for helping make RockSolid better. EOS practitioners, implementers
and founders running EOS are especially welcome.

## Ground rules

- **Paraphrase only.** Never paste text from *Traction* or other EOS
  material. Facts and structural rules ("3–7 Core Values", "90-minute
  L10") are fine; prose, examples and case studies are not. See
  [NOTICE.md](plugins/rocksolid/skills/rocksolid/NOTICE.md).
- **Trademark symbols** on first mention per file (EOS™, V/TO™, Rocks™, …).
- **Keep `SKILL.md` under ~500 lines.** Put detail in `protocols/`,
  `phases/`, `cadences/` or `knowledge/` and reference it by path.
- **Every referenced path must exist.** Run the checks below.

## Where things live

| Change | File(s) |
|---|---|
| Runtime behavior, routing, done criteria | `SKILL.md` |
| A step's guidance / metadata | `phases/0N-*.md` |
| What "done" means for a tool | `assessment/substance-rubrics.md` |
| Skip rules | `rules/non-negotiables.md`, `rules/recommendations.md` |
| Recurring meetings | `cadences/*.md` |
| Concept explanations | `knowledge/*.md` + a line in `index.jsonl` |

## Checks before a PR

```bash
claude plugin validate .
```

```bash
cd plugins/rocksolid/skills/rocksolid && grep -rhoE '(knowledge|templates|assessment|rules|cadences|phases|protocols)/[a-z0-9_-]+\.md' . | sort -u | while read f; do [ -f "$f" ] || echo "MISSING: $f"; done
```

```bash
./scripts/package.sh && unzip -l dist/rocksolid.zip | head
```

Then try your change for real: install the skill locally
(`cp -R plugins/rocksolid/skills/rocksolid ~/.claude/skills/`) and run the
flow you touched in a scratch folder.

## Releasing

Bump `version` in `plugins/rocksolid/.claude-plugin/plugin.json`, add a
`CHANGELOG.md` entry, then tag:

```bash
git tag v1.0.1 && git push --tags
```

The release workflow builds `rocksolid.zip` and attaches it to the GitHub
release, which is what the README's download link points to.
