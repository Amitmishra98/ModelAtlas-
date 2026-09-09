# Repo map

```
.
├── README.md                      ← THE document (single-file ModelAtlas, 24 sections + appendices)
├── llms.txt                       ← AI-crawler manifest (llmstxt.org convention)
├── LICENSE                        ← CC BY 4.0 (docs) + MIT (scripts); models keep own licenses
├── SECURITY.md
├── CONTRIBUTING.md
├── CODE_OF_CONDUCT.md
├── data/
│   ├── models.json                ← structured model registry (88 models, Sept 2026)
│   └── models.csv                 ← same registry as CSV (generated)
├── scripts/
│   ├── generate_registry.py       ← EDIT THIS to add/update registry rows, then run it
│   └── bump-date.sh               ← bumps snapshot dates (used by CI)
├── docs/
│   └── README.md                  ← this file
└── .github/workflows/
    └── refresh.yml                ← weekly "Last updated" auto-refresh
```

## Editing workflow

| Task | Do |
|---|---|
| Add / update a model in the tables | Edit README.md (right section table) |
| Add / update the machine-readable registry | Edit `scripts/generate_registry.py` → `python3 scripts/generate_registry.py` |
| Refresh the date | `bash scripts/bump-date.sh` (or let the weekly workflow do it) |
| Fix a link / typo | Edit README.md directly; keep heading text stable (anchors!) |

## Anchors contract

FAQ links, TOC links, and `llms.txt` point at GitHub auto-generated heading anchors.
If you rename a heading in README.md, update every link to it (TOC, FAQ, llms.txt).

## Rendering

GitHub renders README.md automatically — no build step. JSON/CSV are for agents, scripts, and dashboards.
