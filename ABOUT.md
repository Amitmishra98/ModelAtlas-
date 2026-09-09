# About ModelAtlas

## What this is, in one paragraph

ModelAtlas is a public, living directory of open-weight and open-source AI models. It answers three questions that we — students — kept asking each other and could never answer from one place: *What open models exist? Which one should I use for my task? And how do I actually run it?* So we built the answer as a single, readable document, and we keep it updated with a teacher's review before anything is published.

The whole directory is one big [README](../README.md) plus plain-data copies ([`data/models.json`](../data/models.json), [`data/models.csv`](../data/models.csv)) and an [`llms.txt`](../llms.txt) manifest, so humans and programs can read the same content.

## Why we built it

The project started in a student reading group in mid-2026. Every week somebody would bring a "best open-source model" blog post, and every week the numbers disagreed — different context windows, different licenses, different benchmark harnesses, and links that were already dead. Our teachers suggested we stop complaining and write our own reference, with two rules:

1. every model links back to its original source (model card, repo, or paper), and
2. anything a vendor claims that we have not re-measured ourselves gets marked *(v.r.)* — vendor-reported.

That became ModelAtlas. The first public edition went up in September 2026.

## Who we are

We are a small **student–teacher research fellowship** — no company, no lab budget, no sponsors. A rotating pair of student editors runs each weekly review pass; a teacher (or a senior student, once they pass review) checks the work before it is published. Several of us run the models we write about on a shared GPU box and on our own laptops, which is where the VRAM tables and GGUF notes come from.

We deliberately keep the contributor list in [`CONTRIBUTING.md`](CONTRIBUTING.md) rather than on this page — some of us are minors or prefer not to be named publicly — but every merge is done by a human who can be reached through the issue tracker.

## How we work

- **Weekly review pass.** New releases, license changes, and dead links are checked every week (the repo has a [refresh workflow](../.github/workflows/refresh.yml) that reminds us; the changelog records what changed).
- **Two-person rule.** Nothing gets merged by the same person who wrote it. Student editors draft; a mentor reviews; a different student spot-checks links and numbers.
- **Corrections are the fastest way in.** If a table is wrong, an issue beats an email. See [CONTRIBUTING.md](CONTRIBUTING.md).

## What we are not

- We are **not affiliated** with Hugging Face, any model lab, or any cloud provider.
- We do **not** take payment, sponsorships, or affiliate fees for listing a model. There is no "featured" row — ever.
- We are **not** a news site. We curate, we do not break news; the "Last updated" date at the top of the README is honest about how fresh we are.

## How to reach us

- **Corrections & suggestions:** open an issue in this repository.
- **Contributing:** read [CONTRIBUTING.md](../CONTRIBUTING.md) — the bar is low and the review is kind.
- **Security matters:** see [SECURITY.md](../SECURITY.md).
- **License:** the document text is CC-BY-4.0 (see [LICENSE](../LICENSE)); every model keeps its own license.

*— The ModelAtlas fellowship*
