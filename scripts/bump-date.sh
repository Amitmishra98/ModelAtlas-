#!/usr/bin/env bash
# Bump the "Last updated" / version dates in README.md and llms.txt to today.
# Used by .github/workflows/refresh.yml so the repo never goes stale.
set -euo pipefail

TODAY=$(date +%F)
# Version like 2026.09 from year.month
VER=$(date +%Y.%m)

cd "$(dirname "$0")/.."

# README header badge
sed -i -E "s|Last%20updated-[0-9]{4}-[0-9]{2}-[0-9]{2}|Last%20updated-$TODAY|" README.md
# "last updated **YYYY-MM-DD**" and "updated 2026‑09‑09" texts (incl. narrow no-break variants handled via plain date)
sed -i -E "s|last updated \*\*[0-9]{4}-[0-9]{2}-[0-9]{2}\*\*|last updated **$TODAY**|g" README.md
sed -i -E "s|\(last updated \*\*[0-9]{4}-[0-9]{2}-[0-9]{2}\*\*\)|(last updated **$TODAY**)|g" README.md
sed -i -E "s|Version-2026\.[0-9]{2}|Version-$VER|" README.md
sed -i -E "s|version 2026\.[0-9]{2}|version $VER|" README.md
sed -i -E "s|Version 2026\.09|Version $VER|" README.md
sed -i -E "s|Last verified [0-9]{4}-[0-9]{2}-[0-9]{2}|Last verified $TODAY|" README.md

# llms.txt snapshot date
sed -i -E "s|Snapshot date: [0-9]{4}-[0-9]{2}-[0-9]{2}|Snapshot date: $TODAY|" llms.txt
sed -i -E "s|updated [0-9]{4}-[0-9]{2}-[0-9]{2}|updated $TODAY|g" llms.txt

# data/models.json generated stamp
sed -i -E "s|\"generated\": \"[0-9]{4}-[0-9]{2}-[0-9]{2}\"|\"generated\": \"$TODAY\"|" data/models.json 2>/dev/null || true

echo "Dates bumped to $TODAY (version $VER)"
