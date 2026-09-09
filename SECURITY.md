# Security Policy

## Scope

This repository is **documentation and data** (README, markdown guides, `llms.txt`, JSON/CSV registries) plus small utility
scripts. It contains **no model weights, no user data, and no network-facing service**.

## Reporting a vulnerability

Two classes of issues matter here:

1. **Content integrity** — a malicious or broken link, an incorrect license recommendation that could get someone in legal
   trouble, or a prompt-injection risk in a code sample. Open an issue or PR normally (see CONTRIBUTING.md).
2. **Code/script security** — a vulnerability in `scripts/` or the GitHub Actions workflow (e.g., a script that would execute
   untrusted content). Do **not** open a public issue; report privately:

   - GitHub private vulnerability reporting: use the repo's *Security → Report a vulnerability* tab, or
   - Open an issue with `[SECURITY]` prefix if private reporting is unavailable.

## What we promise

- Security-relevant reports get a first response within **7 days**.
- Malicious/untrusted code in data files (e.g., a model card link pointing to a typosquatted domain) is treated as a content
  integrity issue and fixed on detection.

## Dependency note

The scripts use only the Python standard library. If you vendor anything new, keep it minimal and reviewed.
