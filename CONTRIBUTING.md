# Contributing to ModelAtlas

Thank you for helping keep this the most complete, accurate directory of open-source AI. This is a living document —
the landscape changes monthly, and every contributor makes it better.

## What we accept

1. **New models** (missing family or new release) — add to `README.md` **and** `data/`.
2. **Corrections** — wrong params, context, license, links, or release dates (with a source link).
3. **Better guidance** — clearer tables, decision guides, hardware advice, code samples.
4. **Quality improvements** — links to canonical sources, new peer-reviewed references, benchmark methodology notes.

We do **not** accept: promotional edits, unverifiable benchmark claims, duplicate entries, or opinion pieces without data.

## The single source of truth

The editorial source of the registry is the Python list in [`scripts/generate_registry.py`](scripts/generate_registry.py).
Run it after editing:

```bash
python3 scripts/generate_registry.py   # regenerates data/models.json + data/models.csv
```

## Steps for a model edit

1. **Fork** this repository.
2. **Edit the README table(s)** for the model's category (§2 snapshot table, §4 family table, or the modality section).
   - Keep columns consistent with the neighboring rows.
   - Prefer the format `vendor-reported` / `v.r.` for any figure you did not independently verify.
3. **Add a row in `scripts/generate_registry.py`** with fields:
   `id, name, org, category, params_total, params_active, architecture, context, modality, license, release, ollama tag, hf id, github, api, notes, commercial`.
4. **Regenerate**: `python3 scripts/generate_registry.py`.
5. **Cite the source** in your PR description (canonical link: Hugging Face model card, GitHub release, vendor blog, or arXiv).
6. Open a **pull request** against the default branch. A maintainer will review within a few days.

## Content rules

- **Links must be canonical** — Hugging Face/GitHub/arXiv/vendor docs. No aggregator-only citations for facts.
- **Numbers**: label vendor-reported figures (`(v.r.)`); prefer independent aggregators (Artificial Analysis, Arena Elo, MTEB) when they exist. Never invent numbers.
- **Licenses**: name the exact license of the exact weights (variants differ). Link the model card.
- **Don't break anchors** — section headings in `README.md` are linked from the FAQ and from `llms.txt`; GitHub auto-generates anchors from heading text. Renaming a heading requires updating `llms.txt` too.
- **Freshness**: when you update facts, bump the date in the README header (`Last updated YYYY-MM-DD`) and in `llms.txt` (`Snapshot date:`).

## Review & merge

- Maintainers check: source link present · registry regenerated · README renders on GitHub · license facts match the model card.
- CI (`.github/workflows/refresh.yml` / validate) may run on PRs — keep `python3 scripts/generate_registry.py` deterministic.

## Code of conduct

Be respectful, evidence-driven, and constructive. See [CODE_OF_CONDUCT.md](CODE_OF_CONDUCT.md).
