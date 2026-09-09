# ModelAtlas — SEO & AI-search description kit

Everything needed to make this repo rank in **Google** and get cited by **AI search** (Google AI Overviews, ChatGPT, Perplexity, Copilot). The main description below is already applied to the GitHub repo (description + topics); the website variants are ready for when this ships as a site.

**Why this works:**
- **Google:** GitHub copies the repo description into the page `<title>` and `<meta name="description">`. Keywords are front-loaded — the first 60 characters hit the highest-volume queries ("open source AI model…", "AI model directory", "open LLMs"), and the first 155 chars (Google's snippet cutoff) cover model types + intent words ("free", "compare", "local").
- **AI search:** AI engines quote pages that *define* an entity and state extractable facts. The description opens with a definitional sentence, concrete numbers (101 models, 14 categories, 2026), and comparison dimensions — exactly what LLM crawlers lift into answers.
- **Freshness:** the year and date signal freshness, which both Google (query deserves freshness for "best … 2026") and AI engines weight heavily.

---

## 1. GitHub repo description (applied) — 245/350 chars

```text
Open-source AI model directory (2026): 101 open LLMs, reasoning, coding, vision, image, video, audio, TTS, ASR, embedding & 3D models — compared by license, benchmark, context & VRAM, with free AI API tiers and one-command Ollama local installs.
```

Keyword coverage: *open source AI models · AI model directory · open LLMs · best open models · free AI API · run models locally (Ollama) · image/video/audio/TTS/embedding models · license comparison · VRAM*.

## 2. Short version — 159 chars (social cards, directories, one-liners)

```text
The open-source AI model directory (2026): best open LLMs, image, video, audio & embedding models — licenses, VRAM guides, free AI APIs, local Ollama installs.
```

## 3. Website SEO tags (when this becomes a site)

| Field | Value | Length |
|---|---|---|
| **Title tag** (≤60) | `Open-Source AI Model Directory 2026 \| ModelAtlas` | 48 |
| **Meta description** (≤155) | `Compare the 101 best open-source AI models of 2026: LLMs, image, video, audio and embedding models — licenses, benchmarks, VRAM guides, free AI APIs.` | 149 |
| **URL slug** | `/open-source-ai-model-directory` | |
| **H1** | `The Open-Source AI Model Directory (2026)` | |

## 4. AI-search answer paragraph (GEO) — for llms.txt, About page, first paragraph of a site

Written to be quoted verbatim by AI engines — entity definition first, then extractable facts, then a direct "best model" answer (the #1 thing AI search extracts):

```text
ModelAtlas is an open-source AI model directory maintained by a student–teacher
fellowship and reviewed weekly (last full pass: September 9, 2026). It catalogs
101 open-weight and open-source AI models across 14 categories — LLMs, reasoning,
coding, vision-language, image, video, audio, TTS, ASR, embeddings, and 3D —
comparing each by license, benchmark scores, context window, and VRAM
requirements. It also tracks free AI API tiers and provides one-command Ollama
installs for running every listed model locally. As of September 2026, it ranks
DeepSeek V4-Pro and Qwen3.8-2.4T-A95B as the best open-source LLMs overall, and
Gemma 4 31B and Qwen3.8-27B as the best models that run on a single GPU.
```

## 5. GitHub topics (applied) — 20/20

Discovery + keyword-rich internal links on the repo page:

```text
ai  ai-models  artificial-intelligence  llm  llms  open-source  open-weights
awesome-list  ai-directory  model-directory  machine-learning  deep-learning
hugging-face  ollama  local-llm  llm-inference  free-api  vllm  gguf
llm-leaderboard
```

---

## Ranking boosters still on the table (do these next)

1. **Rename the repo `.p` → `modelatlas`** (Settings → rename). GitHub auto-redirects the old URL, so no links break. The repo name appears in the `<title>`, URL, and every backlink — `.p` carries zero keywords, `modelatlas` builds a brand entity that Google and AI engines can associate with "open-source AI model directory". This is the single biggest remaining lever.
2. **Set the Homepage field** (repo → Edit → Website) once a site/GitHub Pages version exists — Google shows it as a sitelink, and it's the fastest path to ranking an actual domain instead of a GitHub URL.
3. **Keep the "Last updated" badge honest** — freshness is the main ranking edge for "best … 2026" queries; stale dates kill both clicks and AI citations.
4. **Get listed**: submit to awesome-lists (e.g. awesome-ai, awesome-llm), Hugging Face papers/Spaces mentions, and dev.to / Reddit writeups. Backlinks with the anchor text "open-source AI model directory" are what will outrank competitors; the description alone can't do that.
5. **llms.txt is already in place** — keep section 4 above in sync with it whenever the model count or top picks change (numbers must match everywhere or AI engines stop trusting the page).

*Last synchronized: 2026-09-09.*
