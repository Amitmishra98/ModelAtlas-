# Changelog — ModelAtlas: The Open-Source AI Model Atlas

All notable changes to this repository (README + registry + tooling). Format based on [Keep a Changelog](https://keepachangelog.com/); versioning follows the snapshot month (`YYYY.MM`).

## [2026.09 (refresh)] — 2026-09-09

### Fixed (bug & link audit)
- **HF links/IDs verified against the live Hugging Face API** (~40 checks). Corrected:
  - Qwen3.5 flagship → `Qwen/Qwen3.5-397B-A17B` (old bare `Qwen3.5` slug was dead)
  - Mistral Large 3 → `mistralai/Mistral-Large-3-675B-Instruct-2512-BF16`; **675B** (was mis-stated 703B)
  - Gemma 4 31B casing → `google/gemma-4-31B-it` (all lowercase-`b` variants removed)
  - Wan 2.2 → `Wan-AI/Wan2.2-T2V-A14B`; TRELLIS.2 → `microsoft/TRELLIS.2-4B`
  - LTX-2.5 → `Lightricks/LTX-2.5` (real id carries no `-22B-Dev` suffix; gated)
  - Qwen3-TTS → `Qwen/Qwen3-TTS-12Hz-1.7B-CustomVoice` (+ `-Base`, `0.6B-Base`)
  - Qwen3-Embedding trio → `Qwen3-Embedding-0.6B/4B/8B`
  - GLM-4-Voice → `zai-org/glm-4-voice-9b`; Step-Audio → `stepfun-ai/Step-Audio-Chat` (Apache 2.0); InternVL3 → `OpenGVLab/InternVL3-8B`; olmOCR → `allenai/olmOCR-7B-0225-preview`
  - Unverified/dead ids downgraded to canonical org links or removed (UI-TARS → GitHub; gemma-4 26B/E4B, UI-TARS, OLMo-2, SmolLM3, Sarvam, granite → org-level).
  - Hunyuan Hy3 deliberately carries **no HF id** (none exists — official Tencent release only).
- **Internal GitHub-anchor links repaired**: 47 headings normalized to stable slugs (no emoji/`&`/`—`), 56 old fragments remapped, 14 hard fragments rewritten; zero dead internal links remain (checked programmatically).
- **Non-breaking hyphens (U+2011) normalized** to plain `-` throughout the document (192 instances) so model names copy-paste and search cleanly.
- License corrections: MiniMax M2.5 = custom MiniMax license (was Apache); Qwen3.8-2.4T-A95B = custom/revenue terms (was "mostly ✅"); InternVL3 license varies by size (8B/14B/38B Apache, 78B `other`); Step-Audio Apache 2.0 (was MIT).
- Moonshot K2-family serving note added (community-documented >$20M-revenue authorization; K3 revenue-share terms).

### Added
- Models: **Kimi K2.7-Code** (Jun 2026), **Hunyuan Hy3** (295B/21B Apache 2.0, Jul 2026), **Seed-OSS-36B**, **Qwen3.5-9B/4B**, **Qwen3.6-35B-A3B**, **MiniCPM5-2B** (Sep 2026) — registry grew **88 → 101 models**.
- Specification fixes: Qwen3.5/3.6/3.8 open weights are **natively multimodal** (image+video); Kimi K2.6 image+video input.
- New sections: **Appendix C** Realtime voice/omni/speech-to-speech; **Appendix D** Document AI/OCR/PDF; **Appendix E** free & low-cost API tiers; **Appendix F** GPU & hardware buying guide; **Appendix G** changelog.
- New FAQ entries: free no-GPU testing tiers; native-multimodal open models; "what changed summer 2026".
- New arXiv references: DeepSeek V4 (`2606.19348`), GLM-5.x (`2602.15763`, `2603.12201`), Qwen3-TTS (`2601.15621`), Qwen3-Embedding (`2506.05176`), Gemma 4 (`2607.02770`), TRELLIS.2 (`2512.14692`).
- `data/models.json`/`.csv` + `llms.txt` regenerated for 101 models / 14 categories.
- New standalone `CHANGELOG.md` (this file).

## [2026.09 (initial)] — 2026-09-09

- Full ModelAtlas rebuilt: sections 1–24 + Appendices A–B (benchmarks methodology, repo engineering for search/AI), llms.txt manifest, structured JSON/CSV registry, weekly refresh workflow, LICENSE, CONTRIBUTING, SECURITY, CODE_OF_CONDUCT, repo map (`docs/README.md`).
