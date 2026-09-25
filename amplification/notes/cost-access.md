# Cost, Access and the Limits/Economics of Defence — Working Notes

**Analyst working notes for a defensive threat-assessment brief.**
**Date of research: 25 September 2026.** All prices USD unless stated.
**Scope: cost of generation and personas; cost and friction of platform access; evidence on audience resilience.**

> **Analytic-only note.** These notes are a capability and economics assessment for defenders. They record
> *what things cost* and *what the evidence shows*. They deliberately contain no operational guidance, no
> prompts, no provider recommendations for running influence activity, and no evasion techniques. Grey-market
> prices are recorded only as published by journalists, academics and regulators, in aggregate ranges.

---

## 0. Evidence grades and verification policy

| Grade | Meaning |
|---|---|
| **A** | Primary / official: the provider's or regulator's own live pricing page, API docs, policy page or report. |
| **B** | Peer-reviewed or strong published analysis (journal article, established research institute). |
| **C** | Reputable journalism or industry report. |
| **D** | Weak, inferred, single-source or unverifiable (grey-market prices are structurally in this band). |
| **E** | Vendor or advocacy source — note the commercial or political interest. |

**Verification flag legend** used on every price below:

- `[VERIFIED-LIVE]` — I loaded the page or API endpoint in this session on 25 Sep 2026 and read the number off it.
- `[CROSS-CHECKED]` — verified live, *and* independently corroborated by a second live source.
- `[INFERRED]` — my own arithmetic, conversion or estimate from verified inputs. The inputs are given.
- `[UNVERIFIED]` — could not load a live source; recalled or second-hand. Treated as a lead, not a fact.

**A structural caveat that matters for the whole brief:** several standard evidence-access routes
(OpenAlex, Semantic Scholar, arXiv, the `r.jina.ai` reader proxy) returned HTTP 429 rate-limit errors during
this session because parallel research threads shared one IP, and several publishers and `bls.gov` block
automated retrieval outright. Only Crossref, Europe PMC and direct publisher fetches remained reliable.
This is itself a small illustration of §2.3: **access to evidence is rate-limited and the limit is per-IP,
not per-user.**

---

## 0b. The twelve numbers that matter most

| # | Number | What it means | Grade |
|---|---|---|---|
| 1 | **$0.00038** | Generation cost of one 500-word post (OpenAI gpt-6-luna) | A (input) |
| 2 | **$0.015 / $0.200** | X API cost per post / per post **with a URL** — a 13.3x link penalty | A |
| 3 | **$0.08–$1.02** | SMS-verified account, Meta/X/Instagram → WhatsApp (Cambridge COTSI, *Science*) | A/B |
| 4 | **+12–15%** | Telegram/WhatsApp account price rise in the 30 days before 61 national elections | B |
| 5 | **13x/year** | Capability-adjusted fall in cost of AI performance since 2023 (Epoch, Sep 2026) | B |
| 6 | **75x/yr vs 4.7x/yr** | Same decline at SOTA debut vs two years later — the frontier/mature split | B |
| 7 | **~0x/yr** | Frontier *per-token* price change (o1 = GPT-3's $60/1M output) | B/E |
| 8 | **+~40%** | Rented H100 price change Mar 2026 — the 2026 reversal | C (second-hand) |
| 9 | **1.8x in 16 years** | CAPTCHA-solving price decline — the defensive cost that did NOT collapse | B (preprint) |
| 10 | **$3.00–4.80/hr vs <$2.00/hr** | Cloned-voice agent vs Philippine human agent — **AI loses** | A/C |
| 11 | **g = 0.02** | Pooled LLM-vs-human persuasiveness — but I² = 75.97% | B |
| 12 | **d = 1.15, no decay at 2 months** | Costello 2024 AI dialogue effect on conspiracy belief | B |

**Companion research files** (full detail, per-claim grading, retrieval provenance):
- `amplification/research/compute-costs.md` — GPU rental, self-hosting, cost curves, electricity
- `amplification/research/media-human-costs.md` — image/video/voice pricing, human labour baselines
- `amplification/research/access-integrity-economics.md` — account markets, platform APIs, integrity economics
- `amplification/research/persuasion-evidence.md` — the full effect-size review with CIs and DOIs

---

## TOPIC 1 — Cost of generation and of personas in 2026

### 1.1 Verified frontier and cheap model prices, 25 September 2026

The 2026 market is **not** the 2024 market. Notable: OpenAI's current flagship line is **GPT-6
(Astra/Sol/Luna)**, released ~22 Sep 2026 with a stated ~50% API price cut; Anthropic's line is
Fable/Mythos/Opus/Sonnet/Haiku 5-generation; Google's is Gemini 3.x/3.5; xAI's is Grok 4.5–4.7;
DeepSeek's is V4.1-Flash / V4-Pro.

#### OpenAI — `gpt-6-*` (per 1M tokens, Standard, short context) `[VERIFIED-LIVE]`
Source: <https://platform.openai.com/docs/pricing> (fetched 25 Sep 2026).

| Model | Input | Cached input | Cache write | Output |
|---|---|---|---|---|
| gpt-6-astra | $10.00 | $1.00 | $12.50 | $50.00 |
| gpt-6-sol | $2.00 | $0.20 | $2.50 | $10.00 |
| gpt-6-luna | $0.10 | $0.01 | $0.125 | $0.50 |

- Long-context (≥ threshold) rates are **2x** the short-context rates: Astra $20/$75, Sol $4/$15, Luna $0.20/$0.75.
- **Batch and Flex are 50% off** Standard. Fast mode is **2x** Standard.
- `gpt-5.6-sol` (Daybreak/cyber line) sits at $4.00/$20.00.
- Regional/data-residency endpoints carry a **10% uplift**; FedRAMP endpoints **10% uplift**.
- Promotional pricing noted for GPT-5.6 Sol "available at least through November 21, 2026".

**CROSS-CHECKED** against the aggregator OpenRouter's live model API
(`curl https://openrouter.ai/api/v1/models`, 25 Sep 2026), which independently reports
`openai/gpt-6-sol` $2/$10, `openai/gpt-6-luna` $0.10/$0.50, and batch `openai/gpt-6-astra` $5/$25
(= 50% of $10/$50). The two sources agree exactly.

#### Anthropic Claude (per 1M tokens) `[VERIFIED-LIVE]`
Source: <https://docs.claude.com/en/docs/about-claude/pricing> (fetched 25 Sep 2026).

| Model | Input | Output | 5m cache write | 1h cache write | Cache hit/refresh |
|---|---|---|---|---|---|
| Claude Fable 5.1 | $10 | $50 | $12.50 | $20 | $0.25 |
| Claude Mythos 5.1 | $10 | $50 | $12.50 | $20 | $0.25 |
| Claude Opus 5.5 | $4 | $20 | $5 | $8 | $0.20 |
| Claude Sonnet 5 | $2 | $10 | $2.50 | $4 | $0.20 |
| Claude Haiku 4.5 | $1 | $5 | $1.25 | $2 | $0.10 |
| Claude Opus 5 / 4.8 / 4.7 / 4.6 / 4.5 | $5 | $25 | $6.25 | $10 | $0.50 |
| Claude Sonnet 4.6 / 4.5 / 4 | $3 | $15 | $3.75 | $6 | $0.30 |
| Claude Haiku 3.5 | $0.80 | $4 | $1 | $1.60 | $0.08 |

**CROSS-CHECKED**: OpenRouter independently reports `anthropic/claude-sonnet-5` $2/$10,
`anthropic/claude-haiku-4.5` $1/$5, and `anthropic/claude-opus-5.5:batch` $2/$10 (50% of $4/$20). Exact match.

#### Google Gemini (per 1M tokens) `[VERIFIED-LIVE]`
Source: <https://cloud.google.com/vertex-ai/generative-ai/pricing> (fetched 25 Sep 2026).
**Note:** the Gemini-API pricing page at `ai.google.dev/gemini-api/docs/pricing` now redirects into an
**OAuth sign-in loop** and returns no price content to an unauthenticated client — see §2.2.

| Model | Input (≤200K) | Input (>200K) | Output (≤200K) | Output (>200K) |
|---|---|---|---|---|
| Gemini 3.1 Pro Preview | $2.00 | $4.00 | $12.00 | $18.00 |
| Gemini 3 Pro Image (Nano Banana Pro) | $2.00 | $4.00 | $12.00 (text) / **$120.00 (image)** | $18.00 / $120.00 |
| Gemini 3.5 Flash | $1.50 | $1.65 | $9.00 | $9.90 |
| Gemini 3.8 Flash (to 31 Dec 2026) | $0.75 | $0.825 | $3.75 | $4.125 |
| Gemini 3.8 Flash (from 1 Jan 2027) | $1.50 | $1.65 | $7.50 | $8.25 |
| Gemini 3.1 Flash-Lite | $0.25 | $0.275 | $1.50 | $1.65 |
| Gemini 3.5 Flash-Lite | $0.30 | $0.33 | $2.50 | $2.75 |
| Gemini 2.5 Pro | $1.25 | $2.50 | $10.00 | $15.00 |
| Gemini 2.5 Flash | $0.30 | — | $2.50 | — |
| Gemini 2.5 Flash-Lite | $0.10 | — | $0.40 | — |

Gemini 2.5 Flash Live API: text in $0.50, video/image in $3.00, audio in $3.00, text out $2.00,
**audio out $12.00 / 1M tokens**. Gemini 3.1 Flash-Lite audio input $0.50.

#### xAI Grok (per 1M tokens) `[VERIFIED-LIVE]`
Source: <https://docs.x.ai/docs/pricing.md> (fetched 25 Sep 2026). Appending `.md` to xAI docs URLs
returns a clean markdown table — this worked when the marketing page `x.ai/api` returned a **Cloudflare 403**.

| Model | Input (<200K) | Cached input | Output (<200K) | Input (≥200K) | Output (≥200K) |
|---|---|---|---|---|---|
| grok-4.7 | $2.00 | $0.50 | $6.00 | $4.00 | $12.00 |
| grok-4.6 | $2.00 | $0.50 | $6.00 | $4.00 | $12.00 |
| grok-4.5 | $2.00 | $0.30 | $6.00 | $4.00 | $12.00 |
| grok-4.3 | $1.25 | $0.20 | $2.50 | $2.50 | $5.00 |
| grok-build-0.1 | $1.00 | $0.20 | $2.00 | $2.00 | $4.00 |

#### DeepSeek (per 1M tokens) `[VERIFIED-LIVE]`
Source: <https://api-docs.deepseek.com/quick_start/pricing> (fetched 25 Sep 2026).

| Model | Cache-miss input (off-peak / peak) | Cache-hit input (off-peak / peak) | Output (off-peak / peak) |
|---|---|---|---|
| deepseek-flash (DeepSeek-V4.1-Flash) | $0.15 / $0.30 | $0.003 / $0.006 | $0.60 / $1.20 |
| deepseek-v4-pro (V4-Pro-0813) | $0.66 / $1.32 | $0.022 / $0.044 | $1.98 / $3.96 |

Off-peak = half of peak. Peak hours are 01:00–04:00 and 06:00–10:00 UTC Mon–Fri (excluding Chinese public
holidays); **all other hours, including weekends, are off-peak.** Concurrency limits 2,500 (flash) / 500 (pro).

> ⚠️ **Discrepancy worth flagging.** OpenRouter's live table lists `deepseek/deepseek-v4-flash` at
> $0.049/$0.098 and `deepseek/deepseek-v4-flash-0731` at $0.030/$0.320 `[VERIFIED-LIVE]` — materially
> cheaper than DeepSeek's own published page. I could not reconcile these in-session. Treat the
> **official DeepSeek page as authoritative** and the aggregator figure as a possible stale or
> third-party-hosted variant. This is a good reminder that aggregator prices drift.

#### Open-weight models via third-party providers (per 1M tokens) `[VERIFIED-LIVE via OpenRouter API]`
Source: `curl https://openrouter.ai/api/v1/models` (25 Sep 2026), 460 models returned.
These are *third-party hosting* prices, not vendor prices — Meta Llama, Alibaba Qwen and Mistral are
open-weight and have no first-party API price.

| Model | Input | Output |
|---|---|---|
| qwen/qwen3.7-flash | $0.03 | $0.13 |
| openai/gpt-oss-20b | $0.018 | $0.09 |
| meta-llama/llama-3.1-8b-instruct | $0.05 | $0.08 |
| meta-llama/llama-3.3-70b-instruct | $0.10 | $0.32 |
| meta-llama/llama-4-scout | $0.10 | $0.30 |
| meta-llama/llama-4-maverick | $0.1875 | $0.6525 |
| mistralai/mistral-nemo | $0.019 | $0.030 |
| mistralai/mistral-small-2603 | $0.15 | $0.60 |
| z-ai/glm-5.3-flash | $0.045 | $0.140 |
| moonshotai/kimi-k2.5 | $0.45 | $2.25 |
| moonshotai/kimi-k3 | $3.00 | $15.00 |
| amazon/nova-micro-v1 | $0.035 | $0.140 |
| Several models (Gemma 4, Nemotron 3, GLM 5.2, Qwen3.8-27B) | **$0.00** | **$0.00** (free tiers) |

**The floor is now zero.** Multiple capable open-weight models are served at $0.00 on free tiers.

### 1.2 Derived unit economics — what this actually means

All figures below are `[INFERRED]` arithmetic from the `[VERIFIED-LIVE]` prices in §1.1, using the
stated token assumptions. Show your inputs when you cite these.

**(a) One 500-word social post.** Assumed 320 input tokens (instruction + persona) and 700 output tokens
(≈500 words at ~1.4 tokens/word).

| Model | $/post | $/1,000 posts |
|---|---|---|
| Qwen3.7-Flash | $0.00010 | $0.10 |
| meta-llama/llama-3.3-70b | $0.00026 | $0.26 |
| **gpt-6-luna** | **$0.00038** | **$0.38** |
| DeepSeek-V4.1-Flash (off-peak) | $0.00047 | $0.47 |
| Mistral Small 2603 | $0.00047 | $0.47 |
| Gemini 2.5 Flash-Lite | $0.00066 | $0.66 |
| Gemini 3.1 Flash-Lite | $0.00113 | $1.13 |
| grok-4.3 | $0.00215 | $2.15 |
| Claude Haiku 4.5 | $0.00382 | $3.82 |
| grok-4.7 | $0.00484 | $4.84 |
| Gemini 3.5 Flash | $0.00678 | $6.78 |
| **gpt-6-sol** / Claude Sonnet 5 | **$0.00764** | **$7.64** |
| Claude Opus 5.5 | $0.01528 | $15.28 |
| **gpt-6-astra** | **$0.03820** | **$38.20** |

With a 4x larger prompt (1,300 input tokens — a persona card plus retrieved context), costs rise only
modestly because output dominates: gpt-6-luna → $0.48/1,000; gpt-6-sol → $9.60/1,000; gpt-6-astra → $48.00/1,000.

**(b) / (c) One conversational persona: 50 messages/day for 30 days = 1,500 turns.**
Assumed 4,000 average input tokens/turn (persona + accumulated history) and 150 output tokens/turn.

| Model | $/turn | **$/month** | $/month *with* prompt caching |
|---|---|---|---|
| Qwen3.7-Flash | $0.00014 | $0.21 | — |
| meta-llama/llama-3.3-70b | $0.00045 | $0.67 | — |
| **gpt-6-luna** | $0.000475 | **$0.71** | **$0.17** |
| DeepSeek-V4.1-Flash (off-peak) | $0.00069 | $1.03 | — |
| Gemini 3.1 Flash-Lite | $0.001225 | $1.84 | — |
| Claude Haiku 4.5 | $0.00475 | $7.12 | $1.72 |
| grok-4.3 | $0.005375 | $8.06 | — |
| Gemini 3.5 Flash | $0.00735 | $11.03 | — |
| grok-4.7 | $0.0089 | $13.35 | — |
| **gpt-6-sol** / Claude Sonnet 5 | $0.0095 | **$14.25** | **$3.45** |
| Gemini 3.1 Pro | $0.0098 | $14.70 | — |
| Claude Opus 5.5 | $0.019 | $28.50 | $6.90 |
| **gpt-6-astra** | $0.0475 | **$71.25** | **$17.25** |

**Headline: a full conversational persona, run daily for a month, costs between 21 cents and $71 in
inference depending on model tier — and under $4/month at frontier quality with prompt caching.**

### 1.3 Open-weight inference: GPU cloud rental, 2026

**RunPod, on-demand per-hour** `[VERIFIED-LIVE]` — <https://www.runpod.io/pricing> (page states
"Updated September 13, 2026"). Figures are the Community Cloud column.

| GPU | VRAM | $/hr |
|---|---|---|
| B300 | 288 GB HBM3e | $7.89 |
| B200 | 180 GB | $6.79 |
| H200 | 141 GB | $4.59 |
| H100 SXM | 80 GB | $3.49 |
| H100 NVL | 94 GB | $3.19 |
| H100 PCIe | 80 GB | $2.89 |
| RTX Pro 6000 | 96 GB | $2.09 |
| A100 PCIe / SXM | 80 GB | $1.59 |
| L40S | 48 GB | $1.09 |
| RTX 5090 | 32 GB | $0.99 |
| RTX 6000 Ada | 48 GB | $0.84 |
| RTX 4090 | 24 GB | $0.74 |
| A40 / L4 | 48 / 24 GB | $0.49 |
| RTX A5000 | 24 GB | $0.27 |

**Lambda, on-demand and reserved** `[VERIFIED-LIVE]` — <https://lambda.ai/pricing> (fetched 25 Sep 2026).

- *On-demand instances:* B200 SXM6 $6.69–$6.99/GPU/hr; H100 SXM $3.99–$4.29; H100 PCIe $3.29;
  A100 SXM 80 GB $2.79; A100 40 GB $1.99; GH200 $2.29; A6000 $1.09; A10 $1.29; V100 $0.79.
- *1-Click Clusters (2 weeks–1 year committed):* B200 $9.86 (16 GPUs) → $9.36 (64) → $8.87 (256+);
  H100 $6.16 (16) → $5.85 (64) → $5.54 (256). Prices exclude tax.

**CoreWeave and Modal** `[VERIFIED-LIVE]` (per-GPU figures are `[INFERRED]` = node ÷ 8, and CoreWeave's
own single-GPU column independently validates the ÷8):

| Provider | H100 | B200 | H200 | A100 |
|---|---|---|---|---|
| **CoreWeave** (on-demand, per node ÷ 8) | **$6.16** | $8.60 | $6.31 | $2.70 |
| CoreWeave (spot) | $2.46 | $4.26 | $2.62 | $1.21 |
| **Modal** (serverless, per-second × 3600) | $4.54 | $7.10 | $6.25 | $3.03 (80 GB) |
| **AWS p5.48xlarge** (Vantage, live) | ~$6.88 | — | — | — |

- CoreWeave H100 on-demand at $6.16 is ~1.5x Lambda's and ~1.8x RunPod's for the **same silicon on the
  same day**. That spread is the key framing fact: "GPU cost" is not one number.
- Unresolved discrepancy: a trade survey also quotes the AWS p5.48xlarge **node** at $98.32/hr
  (= $12.29/GPU), which conflicts with Vantage's live $55.04/hr ($6.88/GPU). The survey appears to blend
  an older node list price with a newer per-GPU figure. **Use $6.88/GPU-hr with a caveat.**
- AWS spot H100 reported at $1.95–$2.50/GPU-hr; GCP spot $2.10–$2.80.

#### ⚠️ The 2026 reversal — GPU-hour prices did NOT keep falling

**This contradicts the brief's framing assumption and should be stated plainly.**

- **SemiAnalysis launched an H100 1-year rental price index on 1 April 2026** ("The Great GPU Shortage –
  Rental Capacity"). `[SECOND-HAND]` — the article body was 404/paywalled; title and date verified via
  Google News RSS.
- **Seeking Alpha, 2 Apr 2026: "Nvidia's H100 GPU rental prices surge nearly 40% in 6 months:
  SemiAnalysis."** `[GRADE C]` headline verified; figures second-hand.
- **Blended H100 rental: ~$8/hr at 2023 launch → ~$1.70/hr by mid-2025 (−64%) → ~$2.35/hr by March 2026
  (+40%) and still climbing.** `[SECOND-HAND via tech-insider.org citing SemiAnalysis/Compux]`
- **AWS raised GPU prices in 2026:** EC2 Capacity Blocks up ~20% (Jan 2026 report; a further ~20% rise on
  1 July 2026). Nebius reportedly raised AI cloud prices 21%. `[GRADE C headlines verified; bodies not loaded]`
- **The hardware market signals it even more strongly: the NVIDIA B200's residual value is reported at
  158% of launch price ~a year after release** — a datacenter accelerator *appreciating*. DDR4 commodity
  spot rose from $12.18 (Nov 2025) to $42.50 (Aug 2026), **+249%**. `[GRADE C tracker data, relayed]`
- **Consumer capex is broken by the memory crunch:** RTX 5090 MSRP $1,999 (Jan 2025) vs **~$5,000 street**
  (Sept 2026); RTX PRO 6000 96 GB MSRP $8,565 vs **~$16,000** on NVIDIA's own marketplace.
- **September 2026 headlines conflict directly** — "H100 Rental Prices Halve to $3.38/Hr" (5 Sep) and
  "Nvidia H100 rental price rises 22% to $3.28 an hour" (22 Sep) appeared in the same fortnight. Neither
  body could be loaded. Plausible reconciliation: a marketplace *spot floor* being compared with a 1-year
  *index* or a hyperscaler *list* rate — but that is **inference, not sourcing. Treat as unresolved.**

> **So: the cheap floor keeps falling; the frontier hour is getting more expensive.** A defender who
> assumes "compute only ever gets cheaper" will mis-model 2026 capability-acquisition costs. Equally, the
> reversal applies to Hopper/Blackwell-class **rental**, not to cheap-tier inference APIs — see §1.4.

**Self-hosting cost per million tokens.** There is no single authoritative figure; it depends on
throughput, batch size, quantisation and utilisation. Verified anchors:

- **NVIDIA (vendor, Grade E — interest: sells Blackwell), 12 Feb 2026:** reports DeepInfra cut cost per
  million tokens **20¢ on Hopper → 10¢ on Blackwell → 5¢ with NVFP4 quantisation** (4x) on a large MoE
  model; Together/Blackwell cut Decagon's cost per query 6x; **GB200 NVL72 "10x reduction in cost per
  token."** Corroborated by StorageReview (Grade C) the same day. `[VERIFIED-LIVE]`
- **Epoch AI, 22 Sep 2026**, validated its rented-hardware cost model against five models that also had
  commercial APIs and found **direct costs within 30% of API prices** — a useful warrant that
  rented-GPU cost is a reasonable proxy for API price. `[GRADE B]`
- **RunPod managed endpoint, live:** a 32B-class open model at **$10.00 per 1M tokens**. `[VERIFIED-LIVE]`

**Electricity** `[VERIFIED-LIVE]` — U.S. EIA *Electric Power Monthly* Table 5.3, released **24 Sep 2026**,
data for **July 2026** (cents/kWh): **residential 18.31 · commercial 14.53 · industrial 9.77**.
Planning numbers for a self-hosted rig: industrial ~9–10¢, commercial ~14–15¢, home ~18¢.

### 1.4 The cost-curve collapse, 2023–2026

**Epoch AI, March 2025** `[VERIFIED-LIVE]` `[GRADE B]`
"LLM inference prices have fallen rapidly but unequally across tasks", Ben Cottier, Ben Snodin, David Owen,
Tom Adamczewski, 12 March 2025. <https://epoch.ai/data-insights/llm-inference-price-trends> (accessed 25 Sep 2026).

- Measured across six benchmarks (MMLU, GPQA Diamond, MATH-500, MATH 5, HumanEval, LMSys Arena ELO).
- **Decline of 9x to 900x per year depending on the performance milestone; median 50x per year.**
- **"The price to achieve GPT-4's performance on a set of PhD-level science questions fell by 40x per year."**
- Restricting to data from Jan 2024 onward raised the median from **50x/year to 200x/year** — the fastest
  declines are recent.
- Concrete anchor: the MMLU GPT-3 threshold went from **$60.00/1M (GPT-3, 2021) → $0.07/1M
  (Gemini-1.5-Flash-8B, Oct 2024)**.
- Important qualifier, quoted: **"The fastest price drops in that range have occurred in the past year, so
  it's less clear that those will persist."**

**Epoch AI, September 2026 — "The plunging price of thought"** `[VERIFIED-LIVE]` `[GRADE B]`
<https://epoch.ai/publications/the-plunging-price-of-thought> (22 Sep 2026). **The current best figure.**
This measures the *actual cost to achieve a given level of performance*, not the per-token price of models
that clear a bar — a more careful method than either a16z or the earlier Epoch piece.

- **Headline: the cost of a given level of AI performance has fallen ~47% per quarter since 2023 — about
  **13x per year**.** Ranged 42.9%–58.0% depending on averaging choices.
- **4x faster than DNA sequencing, 6x faster than compute, 18x faster than lithium-ion batteries,
  54x faster than electricity.**
- **⭐ The frontier-vs-mature split, quantified:** averaged across five benchmarks, cost falls
  **66% per quarter — 75x per year — for performance at the moment it debuts as state-of-the-art**; but
  **two years later the same performance level is falling at only 32%/quarter — 4.7x per year.**
  Near-SOTA capability therefore becomes cheap ~16x faster than mature capability does.
- **Concrete illustration:** OpenAI **o3 (31 Jan 2025)** scored 75% on GPQA Diamond at **$0.30 per
  question**; **GPT-5.6 Luna** scored the same **under 18 months later at $0.0004 per question — a ~725x
  drop.**
- Per-benchmark quarterly declines: AIME 47.1%, Chess Puzzles 43.0%, FrontierMath tiers 1–3 53.1%,
  GPQA Diamond 47.0%, Mystery Game Puzzles 44.0% — **average 47.0%**.
- Epoch's own stated limitations: possible "benchmaxxing" (partly mitigated by withholding a benchmark);
  benchmarks are an imperfect proxy for useful work; **"essentially no user stays permanently on the cost
  frontier"**; and three years is a short window.

**a16z ("LLMflation")** `[VERIFIED-LIVE]` `[GRADE B/E — research institute but a VC with an interest in AI adoption]`
Guido Appenzeller, "Welcome to LLMflation — LLM inference cost is going down fast", 12 November 2024.
<https://a16z.com/llmflation-llm-inference-cost/>

- **"For an LLM of equivalent performance, the cost is decreasing by 10x every year."**
- GPT-3 (Nov 2021, MMLU 42) at **$60 per 1M tokens** → the cheapest equivalent-performance model at time of
  writing, Llama 3.2 3B via Together.ai, at **$0.06 per 1M tokens**. **"The cost of LLM inference has dropped
  by a factor of 1,000 in 3 years."**
- At the higher MMLU 83 bar (GPT-4-class, from Mar 2023), price fell **~62x**.
- Methodology stated: MMLU scores, historical prices from the Internet Archive, input/output averaged,
  limited to OpenAI/Anthropic/Meta-Llama models. Authors concede MMLU contamination is a weakness.
- **⭐ The caveat that carries the whole argument: OpenAI's then-flagship o1 had the same cost per output
  token as GPT-3 at launch ($60/1M). The FRONTIER per-token price did not fall at all — only the
  fixed-capability price did.**

#### The methodology split — the single most important framing in these notes

These three analyses are **not interchangeable**. Mixing them produces a wrong brief.

| Metric | Decline | Source |
|---|---|---|
| Fixed-capability per-token price | ~10x/yr (1,000x in 3 yr at MMLU>=42) | a16z, Nov 2024 |
| Fixed-capability, by milestone | 9x–900x/yr (median 50x; 200x post-2024) | Epoch, Mar 2025 |
| **Capability-adjusted cost** | **13x/yr (47%/qtr) since 2023** | **Epoch, Sep 2026** |
| Same, at SOTA debut | **75x/yr** | Epoch, Sep 2026 |
| Same, 2 yrs after debut | **4.7x/yr** | Epoch, Sep 2026 |
| **Frontier per-token price** | **~0x/yr** (o1 = GPT-3's $60/1M output) | a16z, Nov 2024 |
| **Rented H100 hour, 2025→2026** | **REVERSED: +40%** | SemiAnalysis via Compux, 2026 |

**Implication for defence planning** `[INFERRED]`: assume that **last-generation frontier capability will be
permanently available at near-zero cost**, and that this will remain true regardless of what happens to
frontier prices. Do *not* assume the cost of the *newest* capability, or of *rented frontier GPU hours*,
keeps falling on the same schedule — in 2026 both went the other way. The realistic 2027–2030 planning
assumption is **"expensive frontier, permanently cheap floor."**

### 1.5 Image, video, audio and voice generation

**Google (Vertex AI)** `[VERIFIED-LIVE]` — <https://cloud.google.com/vertex-ai/generative-ai/pricing>

| Model | Unit | Price |
|---|---|---|
| Imagen 4 | per image | $0.04 |
| Imagen 4 Fast | per image | $0.02 |
| Imagen 4 Ultra | per image | $0.06 |
| Imagen 3 | per image | $0.04 |
| Veo 3.1 (video + audio) | per generation | $0.40 (720p/1080p); $0.60 (4K) |
| Veo 3.1 (video only) | per generation | $0.20 (720p/1080p); $0.40 (4K) |
| Veo 3.1 Fast (video + audio) | per generation | $0.10 (720p); $0.12 (1080p); $0.30 (4K) |
| Veo 3.1 Lite (video + audio) | per generation | $0.05 (720p); $0.08 (1080p) |
| Veo 3.1 Lite (video only) | per generation | $0.03 (720p); $0.05 (1080p) |
| Veo 3 | per generation | $0.40 (video + audio); $0.20 (video) |
| Veo 2 | per generation | $0.50 |
| Lyria 3 Pro | full song | $0.08 |
| Lyria 3 | 30-second clip | $0.04 |
| Gemini 3 Pro Image | image output | $120.00 / 1M tokens |

> ⚠️ **Unit conversion — an assumption, not a fact.** Google prices Veo **"per 1 count."** The
> **per-generation price is Grade A (verified live)**. The conversion to $/second **assumes one count ≈ one
> 8-second clip** (Veo 3/3.1 default) and is therefore **Grade D**. Under that assumption: Veo 3.1
> video+audio = **$0.05/second**; Veo 3.1 Lite 720p = **$0.00625/second**. **If one count were one second
> instead, these rise 8x.** Quote the per-generation price, or state the 8-second assumption.

**Cheapest verified image, video and voice floor, September 2026** `[VERIFIED-LIVE]`
(consolidated from a dedicated media-pricing thread; sources: Luma, Recraft, Black Forest Labs, Runway, Pika,
ElevenLabs, OpenAI, Google, xAI)

| Item | Cheapest verified | Mainstream |
|---|---|---|
| **Image** | **$0.003** (Seedream 1K via Luma) | **$0.007** Recraft V4.1 Flash · $0.014 FLUX.2 klein 4B · $0.02 Imagen 4 Fast · $0.04 Imagen 4 · $0.06 Imagen 4 Ultra. OpenAI GPT Image 2: **$0.006 low / $0.053 med / $0.211 high** |
| **1,000 images** | **$3** | $7–$60 |
| **Video w/ audio, $/sec** | **$0.00625** (Veo 3.1 Lite 720p, 8s assumption) | $0.05/s Veo 3.1 · $0.084/s Minimax H3 · $0.147/s Kling 3.0 1080p+audio · $0.17/s FLUX 3 HD · $0.288–$0.096/s Runway Gen-4.5 |
| **60-second clip** | **$0.38** | $3.00 (Veo 3.1) → $34 (Seedance 2.5 1080p at $0.573/s) |
| **Cloned-voice agent, $/hr** | **$3.00** (OpenAI gpt-live-1, $0.05/min) | $4.80/hr xAI speech-to-speech ($0.08/min); ElevenLabs Agents $0.08/min. Excludes telephony/orchestration |
| **Voice cloning, entry** | **$6/month** | $22/month (professional grade) |

**TTS, per 1M characters** `[VERIFIED-LIVE]`: xAI **$15**; Google Cloud — Standard $4, Chirp 3 HD $30,
**Instant custom voice $60**, Studio $160; ElevenLabs API list **$50–$100**, but an effective subscription
rate of **$181.82–$200**. *Note the inversion: ElevenLabs' subscription tier is ~2–4x its own API list price
per character — headlines quote the cheap entry point.*

> **⚠️ Sora has NO verifiable current price.** OpenAI's own September 2026 pricing and docs list **no video
> model at all**, and third-party headlines report Sora's withdrawal (Decrypt, 1 Apr 2026, "OpenAI's Sora
> Exits the Market"; a trade report dates a Sora 2 shutdown to 24 Sep 2026). **Do not quote a Sora $/second
> figure.** None could be verified.

**Not verified despite attempts**: Midjourney (403), Stability AI (client-side SPA, no server-rendered
prices), Adobe Firefly (403), Ideogram (JS), fal.ai/Replicate (JS), Kling and MiniMax first-party (JS —
only Luma *resale* comparables obtained), Azure TTS (renders `$-` placeholders; retail-prices API returned
zero items), PlayHT (blocked), Speechify (JS). Note also that **Luma's resale price for Veo 3.1 ($0.42/s
silent) is ~8.4x Google's own direct price** — resale carries a large markup.

**xAI Grok Imagine** `[VERIFIED-LIVE]` — <https://docs.x.ai/docs/pricing.md>

| Item | Price |
|---|---|
| grok-imagine-image | $0.02 / image |
| grok-imagine-image-2.0 | $0.04 / image |
| grok-imagine-image-quality | $0.05 / image |
| grok-imagine-video | **$0.050 / second** |
| grok-imagine-video-1.5 | **$0.080 / second** |

**OpenAI image and voice** `[VERIFIED-LIVE]` — <https://platform.openai.com/docs/pricing>

| Item | Price |
|---|---|
| gpt-image-2.5-sunburst / -flare (image output) | $30.00 / 1M tokens |
| gpt-image-2.5 (text input) | $5.00 / 1M tokens |
| gpt-image-2 (batch, image output) | $15.00 / 1M tokens |
| **gpt-live-1 voice sessions** | **$0.05 / minute** |
| gpt-realtime-2.1 (audio in / out) | $32.00 / $64.00 per 1M tokens |
| gpt-realtime-2.1-mini (audio in / out) | $10.00 / $20.00 per 1M tokens |
| gpt-transcribe | $0.0045 / minute |
| gpt-4o-mini-transcribe | $0.003 / minute |
| Web search tool | $10.00 / 1,000 calls |
| File search tool | $2.50 / 1,000 calls |
| File storage | $0.10 / GB per day |
| Hosted container (1 GB / 64 GB) | $0.03 / $1.92 per 20-min session |

**xAI voice** `[VERIFIED-LIVE]`: text-to-speech **$15.00 / 1M characters**; speech-to-speech
`grok-voice-think-fast-2.0` **$0.08/min ($4.80/hr)** plus $0.004 text input; speech-to-text $0.10/hr (REST),
$0.20/hr (streaming).

**ElevenLabs voice and voice cloning** `[VERIFIED-LIVE]` — <https://elevenlabs.io/pricing> (fetched 25 Sep 2026).
Source is the vendor's own pricing page, so grade **A for the price** but note the vendor interest (**E** for framing).

| Plan | $/month | Credits/month | Voice cloning included |
|---|---|---|---|
| Free | $0 | 10,000 | — |
| Starter | $6 | 30,000 | **Instant Voice Cloning** |
| Creator | $22 ($11 first month) | 121,000 | **Professional Voice Cloning** |
| Pro | $99 | 600,000 | Professional |
| Scale | $299 | 1,800,000 (3 seats) | 3 Professional Voice Clones |
| Business | $990 | 6,000,000 (10 seats) | 10 Professional Voice Clones |
| Enterprise | Custom | Custom | Custom |

Effective TTS rate by tier: **~$0.36 / 1,000 characters** (Starter) falling to **~$0.17 / 1,000 characters**
(Scale/Business). Business tier advertises "Low-latency TTS **as low as 5c/minute**".

> **Headline for the brief: a usable voice clone costs $6 per month; a professional-grade one costs $22 per
> month.** Synthetic voice identity is no longer a capability barrier. Compare with OpenAI gpt-live-1 at
> $0.05/min and xAI speech-to-speech at $0.08/min ($4.80/hr).

**Derived media costs** `[INFERRED]`:
- 1,000 images: **$3** at the verified floor (Seedream via Luma) / **$7** (Recraft) / $20 (Grok Imagine
  base) / $40 (Imagen 4) / $60 (Imagen 4 Ultra).
- 1 hour of generated video: **$22.50** at the verified floor (Veo 3.1 Lite 720p, $0.00625/s) / **$180** at
  Grok's $0.050/s / **$288** at $0.080/s / up to **$2,063** at Seedance 2.5's $0.573/s.
- 1 hour of cloned-voice real-time speech: **$3.00** (OpenAI gpt-live-1, $0.05/min) / **$4.80**
  (xAI speech-to-speech, $0.08/min).
- **1M characters of synthetic speech**: xAI **$15** / Google Instant custom voice **$60** /
  ElevenLabs API list **$50–$100** / ElevenLabs subscription-implied **$181.82–$200**.

> **The media floor is now so low that media is not a cost constraint.** Generating 1,000 images costs
> **$3–$60** and an hour of synthetic video with audio costs **$22.50–$288** — against a verified
> generation floor for text of **$0.00038** per post. **Distribution and identity remain the binding
> constraints (§2).**

### 1.6 The human baseline — and a cost inversion that matters more than the headline

#### Official US wage anchors `[VERIFIED-LIVE, GRADE A]`
Source: **O*NET / BLS Occupational Employment and Wage Statistics, 2025** (live pages; `bls.gov` itself
blocks automated access with HTTP 403, but O*NET republishes the same series and loaded cleanly).

| Occupation | Median hourly | Median annual |
|---|---|---|
| **Writers and Authors** (27-3043.00) | **$36.98** | $76,910 |
| **Public Relations Specialists** (27-3031.00) | **$35.94** | $74,750 |
| **Customer Service Representatives** (43-4051.00) | **$21.53** | $44,770 |

**Fully-loaded adjustment** `[GRADE A wage / GRADE D loading ratio]`: I could not verify the current BLS
Employer Costs for Employee Compensation benefits ratio live. Using the commonly cited ECEC structure
(benefits ≈ 29.6% of total compensation, so fully-loaded ≈ wage × 1.42): **customer-service agent ≈
$30.57/hour** (~$63,600/yr at 2,080 hrs) and **PR specialist ≈ $51.04/hr ≈ $8,845/month**. The only
live-verified aggregate anchor is that private-industry total compensation averaged **$46.89/hour worked**
in June 2026 (BLS, 17 Sep 2026 headline) — a $30.57 figure for a below-average-wage occupation is consistent
with it, but **the ×1.42 derivation is mine and the ratio is recalled.**

#### Offshore labour — the decisive comparison `[GRADE C]`
- **Philippines contact-centre work: under $2.00/hour.** EL PAÍS English, 14 Mar 2026: *"Philippines, the
  call-center capital: Taking a deluge of calls for under $2 an hour."* Headline verified via Google News
  RSS; **the article body was not retrievable** (guessed URL 404; publisher returns 403).
- **Philippines contract knowledge work: $874/month ≈ $5.04/hour.** *Rest of World*, 2025, "The Philippines
  is betting on automation and AI to keep its outsourcing edge" `[VERIFIED-LIVE]` — a remote contractor paid
  *"$874 per month — about 30% less than the American minimum wage for full-time work."* `[INFERRED: $874 ÷
  173.3 hrs]` Same article: building AI agent systems costs *"$10,000 for a basic chatbot to $300,000 for an
  enterprise-level autonomous system"* — a contractor's estimate quoted in journalism. `[GRADE C/E]`

#### ⭐ THE COST INVERSION — the most decision-relevant finding in this section

| Option | Cost per conversational hour |
|---|---|
| **Cloned-voice AI agent** (model/runtime only) | **$3.00–$4.80** |
| **US human agent** (fully loaded) | **$30.57** |
| **Philippines human agent** | **under $2.00** |

**Synthetic voice agents beat US labour by ~6–10x but currently LOSE to Philippine labour by 1.5–2.4x.**
`[INFERRED from the sources above]` The naive framing "AI makes influence cheap" is therefore
**wrong in an important specific way**: for the conversational-labour component, the binding benchmark is
**offshore human labour, not US labour**, and on that benchmark AI is not yet cheaper. Any brief that
compares AI costs to US salaries will overstate the cost advantage. **The correct comparators are Philippine
and Kenyan contractors.**

#### Written content — the ratio is four to five orders of magnitude
- Against the BLS Writers and Authors median, one hour of human writing costs **$36.98** (median) or
  **~$52.51** fully loaded — versus **$0.00038** for a 500-word post on gpt-6-luna (§1.2).
  **Ratio: ~4–5 orders of magnitude on generation cost alone.** `[INFERRED]`
- **Content-farm writer headcount collapse — the clearest documented labour-substitution case.**
  **Futurism, 17 September 2026** `[VERIFIED-LIVE, GRADE C]`: *Brown Brothers Media* AI-slop empire —
  **60+ active writers (Dec 2023) → ~40 (May 2024) → ~20 (Aug 2024) → 12 (Dec 2024), with all 12 said to be
  using AI.** Only 3 of the original 60 writers plus one editor remained involved. Writers were **"mostly
  Filipinos"** with **no formal contracts**; **50+ fake writer personas**; **50M+ page views/month claimed**
  (Similarweb: 64.7M visits/month). **No per-article rate was disclosed.**
- **⚠ The "$1–$20 per article" human content-farm rate widely quoted in this brief could NOT be traced to
  primary reporting.** Treat the specific range as `[UNVERIFIED]`. What *is* documented is the headcount
  collapse above and the exposure volume (below).

#### PR agency retainers `[GRADE E — vendor advertorial]`
**$5,000–$10,000+/month** for traditional PR agencies serving small business (6–12-month lock-ins);
**$7,500–$15,000/month minimum** for a startup engaging a full-service agency (5WPR, Edelman).
Source is a **promotional placement for FameHero**, a vendor explicitly positioned as replacing retainers —
so the ranges are **vendor-framed advocacy, not neutral survey data**. Independent corroboration by
arithmetic: one fully-loaded US PR specialist = **$8,845/month**, so the claimed range corresponds to
roughly **0.85–1.7 FTE** of fully-loaded staff. **Internally consistent, which raises confidence despite the
Grade E source.** `[INFERRED corroboration]`

#### Exposure and volume context `[GRADE C]`
- **The Guardian, 27 Dec 2025**: *"More than 20% of videos shown to new YouTube users are 'AI slop', study
  finds."* A useful volume datapoint even without the effect size.
- **The Washington Post, 1 Mar 2026**: *"An Ohio newspaper has a new star writer. It isn't human."*
- **Vocal, 10 Feb 2026**: *"For Freelance Writers, Content Farms Aren't a Thing of the Past."*

> **Gap, stated plainly.** The **freelance per-word rate on Upwork/Fiverr** and the **UK contact-centre
> loaded hourly cost** were **not obtainable**: `upwork.com`, `fiverr.com`, `ziprecruiter.com` and
> `glassdoor.com` all return **HTTP 403** to automated clients, ContactBabel was unreachable, and the Tow
> Center / CJR pink-slime reporting returned **404**. **These need a human-browsed session.** The US BLS
> series (via O*NET) and the two offshore figures above are the solid anchors.

---

## TOPIC 2 — Cost and friction of accessing platforms at scale

### 2.1 Grey-market account, SMS, proxy and CAPTCHA prices

#### ⭐ The best available source: the Cambridge Online Trust and Safety Index (COTSI)

**Primary source (Grade A/B):** Cambridge Social Decision-Making Lab — **Roozenbeek, Dek & van der Linden**
— *Cambridge Online Trust and Safety Index (COTSI)*, launched **11 December 2025**, with the analysis
**published in *Science***. Live source: <https://www.cam.ac.uk/stories/price-bot-army-global-index>
(loaded 25 Sep 2026). Data window **25 July 2024 – 27 July 2025**. The press-release URL
`cam.ac.uk/research/news/price-of-a-bot-army-...` is a **404**; use the `/stories/` path.
This is the single best-verified quantified price list for synthetic-account acquisition and supersedes
vendor-page guesswork.

**Average SMS-verification price per fake account, by country:**

| Country | Price per verified account |
|---|---|
| Japan | **$4.93** |
| Australia | $3.24 |
| United States | $0.26 |
| United Kingdom | **$0.10** |
| Russia | $0.08 |

**Global average SMS-verification price per account, by platform:**

| Platform | Price |
|---|---|
| Meta / Grindr / Shopify | **$0.08** |
| X / Twitter and Instagram | **$0.10** |
| TikTok and LinkedIn | $0.11 |
| Amazon | $0.12 |
| **Telegram** | **$0.89** |
| **WhatsApp** | **$1.02** |

**The election-demand finding — the most analytically important result in this index.** In the **30 days
before 61 national elections**, Telegram account prices rose **+12%** and WhatsApp **+15%**. There was **no
price–election relationship for Facebook or Instagram**. `[GRADE B]` This is direct market evidence that
demand for *harder-to-fake, more private* verified accounts spikes around elections, while the cheap
mass-platform supply is elastic and unaffected.

**Friction and enforcement detail from the same index:**
- 17 vendors tracked; the top 10 are used; 4 are in the index at a time.
- **Verification success rate varies from 21% (one large provider) to over 90% (another)** — attributed to
  virtual vs physical SIM. **This is a crucial caveat on all "per-account" pricing: a $0.08 account may
  fail 4 times in 5.**
- An earlier **Dek et al. study (2022)** found **~€10 buys ~90,000 fake views or 200 fake comments**.
- **UK made SIM farms illegal in April 2025.** **Russia banned third-party account registration**, and
  vendors suspended Russia-registered SMS verification in **September 2025**. `[GRADE A/B]`
- Corroborating journalism lead: *"How the global grey market in SIM cards powers fraud and influence"*,
  **SCMP, 12 Dec 2025** — adjacent to the same research.

> **Read the price ladder, not the average.** The cheapest verified account is **$0.08–$0.10** (Meta, X,
> Instagram, UK numbers). The most expensive is **$1.02** (WhatsApp). Japan and Australia cost **30–60x**
> more than Russia and the UK. **The pricing signal says the scarce commodity is not a social account —
> it is a trustworthy identity on an encrypted, phone-number-anchored platform.**

#### Residential proxies — Grade A vendor list prices `[VERIFIED-LIVE]`

| Vendor | Price |
|---|---|
| Bright Data | $8.00 → **$4.00 / GB** (headline list) |
| Smartproxy | $3.75/GB (3 GB) → **$2.75/GB** (100 GB); enterprise $2.50 → $2.00/GB; PAYG $4/GB |
| IPRoyal | $7.00/GB down to **$1.75/GB** at 10 TB |
| Oxylabs | 5 GB $30 · 20 GB $100 · 125 GB $500 (= **$4.00–$6.00/GB**) |

**Derived:** at **$1.75–$4.00 per GB**, running a modest operation — say 100 accounts at 1 GB/month each —
costs **$175–$400/month in proxies alone**. `[INFERRED]` Note this already exceeds the *entire inference
cost* of those same accounts by one to two orders of magnitude (§1.2).

#### CAPTCHA-solving — Grade B (peer-reviewed-style panel study)

Source: **Boon Chuan Lim, "Entry, Not Decay: A Sixteen-Year Panel of CAPTCHA-Solving Prices, 2010–2026"**,
SSRN preprint, 2026, DOI `10.2139/ssrn.6786540`. `[GRADE B — preprint, not yet peer-reviewed; a preprint
DOI of this form is unusual and should be re-checked before heavy reliance]`

- **514 monthly price observations across six providers, January 2010 – May 2026.**
- **Median text-distortion price fell only 1.8x, from $1.75 to $1.00 per 1,000 puzzles.**
- **The minimum price fell 10x, from $1.00 to $0.10 per 1,000.**
- Providers founded pre-2010 charge **138% more** than later entrants.

> **The CAPTCHA result is a genuinely important counter-current.** Unlike inference, whose cost fell
> 1,000x, **CAPTCHA-solving has barely deflated — a 1.8x median fall in sixteen years.** The paper's own
> framing ("Entry, Not Decay") is that new entrants, not incumbents' efficiency, drove the price floor down.
> **Human-verification friction is one of the few defensive costs that has NOT collapsed.** That makes
> identity verification the highest-leverage defensive investment identified anywhere in these notes.

#### Structural caveat applying to all of §2.1

Grey-market prices are quoted by anonymous vendors, are unverifiable at the point of sale, and vary by an
order of magnitude between reporters — **except where an academic index such as COTSI has systematically
scraped and normalised them**. Treat everything in this section other than COTSI, the proxy vendor list
prices and the CAPTCHA panel as **Grade D**. The verification-success caveat above (21% vs >90%) means
**any per-account price should be divided by its success rate** before being used in a cost model —
a $0.10 account succeeding 21% of the time is effectively a **$0.48** account. `[INFERRED]`

### 2.2 Official platform API cost and rules — the *legitimate* friction

This is the strongest and most surprising finding of this research thread, and it is `[VERIFIED-LIVE]`
from the platform's own documentation.

**X / Twitter API — now pure pay-per-usage** `[VERIFIED-LIVE]`
Sources: <https://docs.x.com/x-api/getting-started/pricing.md> and
<https://docs.x.com/x-api/fundamentals/post-cap.md> (fetched 25 Sep 2026).

Headline from the docs: *"The X API uses **pay-per-usage** pricing. No subscriptions—pay only for what you use."*
There are no longer Free/Basic/Pro tiers in the old sense: credits are purchased upfront in the Developer Console.

**Write operations (charged per request):**

| Action | Unit cost |
|---|---|
| **Post: Create** | **$0.015** |
| **Post: Create (with URL)** | **$0.200** |
| Post: Create (summoned) | $0.010 |
| DM Interaction: Create | $0.015 |
| User Interaction: Create | $0.015 |
| Interaction: Delete | $0.010 |
| Content: Manage | $0.005 |
| List: Create / Manage | $0.010 / $0.005 |
| Bookmark | $0.005 |
| Media Metadata | $0.005 |
| Privacy: Update | $0.010 |
| Mute: Delete | $0.005 |
| Counts: Recent / All | $0.005 / $0.010 |
| Trends | $0.010 |

**Read operations (charged per resource returned):**

| Resource | Unit cost |
|---|---|
| Posts: Read | $0.005 each |
| User: Read | $0.010 each |
| DM Event: Read | $0.010 each |
| Following/Followers: Read | $0.010 each |
| List / Space / Community / Note: Read | $0.005 each |
| Like / Mute / Block: Read | $0.001 each |
| Profile Update: Read | $0.005 each |

**Hard caps and limits:**
- **Pay-per-usage plans are capped at 3,000,000 Post reads per monthly billing cycle**; beyond that requires
  an Enterprise plan.
- Daily **deduplication**: the same post returned by multiple queries in one day is charged once; again
  the next day is charged again.
- Rate limits: `POST /2/tweets` = **10,000 per 24 hours per app, 100 per 15 minutes per user**.
  `GET /2/tweets` = 3,500/15min per app, 5,000/15min per user. Recent search = 450/15min app, 300/15min user.
  Full-archive search = 1/sec. Filtered stream = 1 connection, 1,000 rules, **250 posts/sec**.
- Incentive noted in the docs: purchasing X API credits earns up to **20% back in free xAI API credits** —
  i.e. the social platform and the model provider are now the same corporate family.

#### ⭐ The single most important number in this brief

**A post containing a link costs $0.200 to publish via the official API — 13.3x the $0.015 cost of a post
without a link, and 20x the $0.010 "summoned" rate.** Compare with generation:

| Scenario (1,000 posts) | Cost |
|---|---|
| Generation on gpt-6-luna | **$0.38** |
| Generation on gpt-6-sol | $7.64 |
| Generation on gpt-6-astra | $38.20 |
| **Official X API fee, no link** | **$15.00** |
| **Official X API fee, with link** | **$200.00** |

**Distribution costs 40x–524x more than generation.** Even on the most expensive frontier model, the
platform fee for link-bearing posts is 5.2x the generation cost. **The binding constraint on influence at
scale is no longer model capability or model price — it is access: accounts, verification, proxies and
platform fees.** That is where defensive attention and defensive spending should concentrate.

**Corroborating context** `[GRADE C]`: this change was reported as a deliberate anti-link measure. The
$0.010 → $0.200 jump was covered as **"1,900% more expensive to post links"** by **The Verge / TechCrunch,
21–22 April 2026**. The older **fixed $200 and $5,000 monthly tiers were retired in February 2026**.
`[Reported; I verified the current price table live from X's own docs, and the direction of the change is
consistent with the press framing — but I did not load the Verge/TechCrunch bodies, so treat the
"1,900%" characterisation and the retirement date as second-hand.]`

*Note on the percentage:* using the $0.010 "summoned" rate as the base gives a 1,900% increase; using the
$0.015 standard rate gives **+1,233%**. Both are correct against their respective baselines; quote which
baseline you use. `[INFERRED arithmetic from verified prices]`

**Other platform APIs and the *non-price* friction** `[all VERIFIED-LIVE unless noted]`:
- **TikTok** — Content Posting API (Direct Post) docs live, last updated **4 August 2026**; requires app
  review and a `video.publish` scope. **No per-post fee is published — the friction is *approval*, not
  price.** Access is gated by **approval plus domain verification**. <https://developers.tiktok.com/doc/content-posting-api-get-started>
- **YouTube Data API** — `search.list` and `videos.insert` are **each capped at 100 calls/day**. For a
  defender or researcher this is a severe ceiling: **100 posts/day of publish capacity, or 100 searches/day.**
- **Reddit** — the **Developer Terms require a separate agreement for commercial use or use above the rate
  limit, and cap liability at $100.** The numeric commercial rate could not be loaded (Cloudflare 403), so
  **the widely quoted $0.24 per 1,000 calls figure is recorded here as RECALLED and UNVERIFIED for 2026.**
- **Meta** — the **Inauthentic Behaviour / Coordinated Inauthentic Behaviour policy text was retrieved
  verbatim** from `transparency.meta.com` (requires the `/en-gb/` path and a Googlebot user-agent), so the
  prohibition is documented as primary. **Meta's Graph rate-limit documentation returned HTTP 400 on every
  developer path attempted** — the numeric limits are a gap.
- **X / Twitter** — the **automation policy page returned 403**; the pricing and rate-limit docs did load
  (above). The **read cap of 3,000,000 posts/month equates to ~$15,000/month at $0.005 per post read.**
  `[INFERRED arithmetic]`
- **EU DSA** — the **transparency database operates a statements-of-reasons regime behind an onboarding
  gate**; aggregate figures are not openly machine-readable without registration. `[VERIFIED-LIVE observation]`
- **Google** — the Gemini API pricing page forces an **OAuth sign-in redirect loop**
  (`ai.google.dev/gemini-api/docs/pricing` → `oauth2authorize` → `accounts.google.com` → back). A machine
  client cannot read Google's own Gemini prices without authenticating. `[VERIFIED-LIVE observation]`
- **LinkedIn API** — not retrieved. `[FAILED]`

> **The pattern across platforms:** for defenders and researchers, the friction is increasingly **identity,
> approval and registration gating** rather than price. TikTok gates on approval, YouTube on a 100-call/day
> quota, the EU DSA on onboarding, Reddit on a separate commercial agreement, and Google on OAuth. **This is
> a genuine and underexamined asymmetry: the same gates that inconvenience a defender also inconvenience an
> adversary, but the adversary can substitute account acquisition — at $0.08–$0.10 per account — for the
> access a defender cannot buy.**

### 2.3 The economics of defence and the cost asymmetry

#### The direction of travel: platform integrity capacity is CONTRACTING, 2025–2026

The most consistent and decision-relevant finding in this section is not a budget number — it is a
**direction**. Across every major platform, human moderation is being cut and replaced with AI or
outsourced labour. All items below are `[GRADE C — headline verified via Google News RSS, article bodies
blocked by Cloudflare/404]`. **I verified that these outlets published these headlines on these dates;
I did not read the bodies, so the specifics inside them are not verified.**

| Date | Source | Headline claim |
|---|---|---|
| 10 Aug 2025 | The Guardian | "TikTok to replace trust and safety team in **Germany** with AI and outsourced labor" |
| 19 Mar 2026 | CNBC | "**Meta** to cut back on third-party vendors in favor of **AI** for content enforcement" |
| 2 Jul 2026 | scoop.my | "TikTok to cut **300 Dublin jobs** as AI-driven overhaul accelerates" |
| 3 Jul 2026 | Cybernews | "TikTok plans to axe **hundreds of human content moderators** across the globe" |
| 3 Jul 2026 | The Business Times | "TikTok slashes content moderation teams globally; **Singapore** among markets affected" |
| 23 Apr 2026 | Platformer | "The week that **Meta employees became training data**" (AI replacing internal review) |

**Analytic reading** `[INFERRED]`: while the cost of *producing* synthetic content fell by roughly three
orders of magnitude (§1.4) and the cost of *acquiring* an account fell to **$0.08–$0.10** (§2.1), the major
platforms spent 2025–2026 **cutting** the human capacity to detect coordinated inauthentic behaviour.
The defender's cost curve and the attacker's cost curve are moving in opposite directions. **This is the
sharpest formulation of the "defender's dilemma" available in this session's evidence**, and it rests on
the direction of published corporate decisions rather than on a single contested budget figure.

#### Volume context: detection is happening at enormous scale

- **Surfshark, 3 March 2026:** "two major social media platforms remove **more fake accounts than they
  have active users**." `[GRADE C headline]` Even allowing for definitional looseness, this indicates
  takedown volumes in the hundreds of millions to billions per platform per period — i.e. **detection is
  operating at industrial scale, yet the accounts are still being created faster than they are removed.**
- **OpenAI, 1 Feb 2026: "Operation 'Fish Food': Russia-origin content farm activity"** — a first-party
  platform takedown report on a Russia-origin content farm. `[GRADE A source, body not yet read — a strong
  candidate for account counts and infrastructure cost detail.]`
- **Open Measures, 14 July 2026: "Inside the Telegram Ecosystem Selling Compromised and Fake Accounts"**
  `[GRADE C headline]` — corroborates the COTSI finding that Telegram is the expensive, election-sensitive
  end of the account market.

#### Hard numbers on integrity contraction and regulatory cost

- **⭐ 439 UK trust-and-safety redundancies at TikTok**, announced **October 2025**, while TikTok's
  **UK/Europe revenue grew 40%** — with **AI plus Kenya/Philippines offshoring** named in the signatories'
  letter. Source: **The Guardian, 13 October 2025** `[VERIFIED-LIVE, GRADE C]`. **This is the single
  best-documented instance of integrity capacity being cut while the platform grew** — it is the concrete
  case behind the "direction of travel" table above.
- **EU fined X €120m (~$140m) on 5 December 2025** over the "deceptive" blue checkmark.
  `[METADATA-ONLY, triply sourced — GRADE C]` Note the ratio: a **€120m regulatory fine** against a platform
  where a link-bearing post costs **$0.20** and an account costs **$0.10**. The fine is a rounding error
  against operating at scale, and lands on the platform, not the operator.
- **Global disinformation cost estimates are soft — do not use them as anchors.** The circulating
  **"$78 billion"** figure could **not be traced to any primary source** and should be treated as
  unattributable. The best-located alternative is a **$417bn** estimate from **Sopra Steria**, graded
  **E (vendor interest — a consultancy selling counter-disinformation services)**. **Both are soft; neither
  should appear in the brief without that caveat.**
- **⚠️ NO cost-per-takedown figure exists** in any source reachable in this session. This is Part C's single
  largest gap. Deriving it would require the **DSA Transparency Database's onboarding-gated aggregates** —
  i.e. the number is *computable in principle but not publicly available*. **State this as a gap rather than
  estimating it.**

> **Gap — headcount and budget totals.** Reliable 2024–2026 **global integrity headcount and budget**
> figures for Meta / Google / TikTok / X were **not retrieved**. Meta Graph rate-limit docs returned HTTP 400
> on every path; X's automation policy returned 403. **Do not quote an integrity-budget total from these
> notes.** The direction of travel (contraction) is well-supported; the absolute level is not.

#### One empirical asymmetry observed first-hand in this session

During this research, **six independent evidence-access routes were rate-limited or blocked by IP address**:
OpenAlex (HTTP 429, ~14h retry), Semantic Scholar (429), arXiv (429), the `r.jina.ai` reader proxy (429),
the US Bureau of Labor Statistics (403, explicit anti-bot policy), and four Cloudflare-protected publishers
(SitePoint, CACM, getdeploying.com, citybiz). Meanwhile the generation cost of the content being studied is
**$0.00038 per post**.

**The cost of producing content is near zero and unmetered. The cost of retrieving and verifying evidence is
metered, per-IP, shared, and actively defended.** Any defender doing open-source analysis at even modest
scale will meet an access wall before an adversary meets a cost wall. This is a concrete, reproducible
observation rather than a rhetorical claim — it is a small instance of exactly the asymmetry the brief is
about, and it points at a specific policy ask: **public-interest research access quotas, not just
content-removal obligations.**

---

## TOPIC 3 — Are audiences more resilient than assumed?

**Sourcing note.** This section was built by a dedicated literature thread that retrieved **full text or
publisher PDFs** for the eight most important papers and abstract-level records for the rest, working
around session-wide 429 rate-limiting on OpenAlex, Semantic Scholar and arXiv by using **Crossref, Europe
PMC full-text XML and publisher PDFs**. Where an effect size could not be retrieved, that is stated
explicitly rather than estimated. All grades are **B** unless noted.

### ⚠️ FOUR CORRECTIONS TO THE COMMON CITATION PRACTICE — propagate these

1. **"On the Conversational Persuasiveness of Large Language Models" is SALVI et al., not Hackenburg &
   Margetts.** Hackenburg & Margetts wrote the *microtargeting* PNAS paper (a *null* on targeting).
   These are distinct studies with **opposite** findings on targeting.
2. **There is NO separate Costello/Pennycook/Rand conspiracy RCT in *Science Advances* or *JEP:General*.**
   Only the *Science* 2024 paper (`10.1126/science.adq1814`) and its PsyArXiv preprint exist. **Do not cite
   one.**
3. **Eady et al. 2023 is an explicit NULL with equivalence bounds — not "a small but detectable
   association."** Characterising it as a small positive effect **misrepresents the paper**.
4. **Salvi et al. 2025 carries an Author Correction** in *Nature Human Behaviour*, **3 Sep 2026**
   (`10.1038/s41562-026-02588-0`). The DOI was confirmed but **the correction's content could not be
   retrieved** — verify before treating the 64.4% / +81.2% figures as settled.

### 3.1 The null / minimal-effects evidence — real and, unusually, well-bounded

**Bail et al. 2020, PNAS** — `[VERIFIED: Europe PMC full text PMC6955293 + Crossref]`
*PNAS* **117**(1):243–250. DOI `10.1073/pnas.1906420116` (online 25 Nov 2019; issue 7 Jan 2020).
- **Design:** longitudinal attitudes (two surveys, Oct–Nov 2017, ~1-month window) for **N = 1,239**
  Republican and Democratic Twitter users, merged with non-public Twitter IRA data; Bayesian regression
  tree / Bayesian Causal Forest models. The estimand is the effect of **interacting with** IRA accounts,
  not mere exposure.
- **Finding (verbatim):** *"we find no evidence that interaction with IRA accounts substantially impacted
  6 distinctive measures of political attitudes and behaviors over a 1-mo period."* The Fig. 2 caption
  states interaction "has no significant effect on all 6 outcomes" at 95% credible intervals.
- **Numeric ATTs and CIs: NOT retrieved.** Do not quote a Bail effect size.
- **Who was exposed:** strong ideological homophily, high political interest, high Twitter frequency.
- **Authors' interpretation:** *"Russian trolls might have failed to sow discord because they mostly
  interacted with those who were already highly polarized."*
- **Stated limitation:** cannot determine whether IRA accounts influenced the **2016 election** (panel is late 2017).

**Eady et al. 2023, *Nature Communications*** — `[VERIFIED: publisher PDF, 868 lines]`
*Nature Communications* **14**:62. DOI `10.1038/s41467-022-35576-9`, 9 Jan 2023. **N = 1,496** US
respondents (YouGov three-wave panel) linked to Twitter timelines; **786,634** foreign-influence posts identified.

*Reach and concentration:*
- **70% of respondents (n=1,042) were exposed to ≥1 foreign-influence post** (Apr–Nov 2016).
- **Only 1% of users accounted for 70% of exposures**; 10% of respondents account for 98% of exposures to
  IRA posts; **1% of Russian accounts produced 89%** of that content in timelines.
- Russian accounts = **86%** of all foreign-influence exposures (rest: China, Iran, Venezuela).
- **Exposure was incidental** — mostly retweets by ordinary accounts the respondent followed.
- **Strong Republicans were exposed to ~9x as many** Russian-account posts as Democrats/Independents.
- Absolute reach: **≥32 million US Twitter users potentially exposed** in 8 months pre-election.
  Facebook estimated **126 million** users over 2 years; Twitter reported **288 million views**
  (1 Sep–15 Nov 2016) and **1.4 million direct interactions**.

*The decisive comparator:*
- Respondents saw **~4 Russian-account posts/day** in the final month vs **~106 posts/day from national
  news media** — news media dominated by **~25x**; politicians by **~9x**.
- The paper: foreign-influence exposure *"was eclipsed — by at least an order of magnitude — by content
  from ordinary domestic political news media and US political candidates."*

*Effect estimates — the null:*
- **0.05 SD** for changes in issue positions; **0.06 SD** for changes in perceived polarization.
- **Equivalence testing (TOST): for 17 of 18 outcomes the relationship is demonstrably NOT >0.2 SD.**
  This is why the null is informative rather than merely underpowered.
- Only **2 of 18** coefficients were significant (6% — chance level) and **neither favoured Trump**.
- **Vote for Trump: −0.18 pp (90% CI −1.15, 0.78)**; −0.4 pp on other measures.
- **Predicted vote change <0.7 pp in 95% of simulations** — against the closest 2016 margin, **Wisconsin
  at 0.77 pp.**

**Coppock, Hill & Vavreck 2020, *Science Advances*** — `[VERIFIED: Europe PMC PMC7467695]`
*Science Advances* **6**(36):eabc4046. DOI `10.1126/sciadv.abc4046`, 4 Sep 2020.
- **49 political advertisements, 59 unique real-time experiments, N ≈ 34,000**, 2016 campaign.
- **Favourability: 0.05 scale points** on a 5-point scale (SD across experiments 0.07).
- **Vote choice: 0.7 pp (SD 2 pp) — NOT statistically significant.**
- "the distribution of advertising effects in our experiments excludes large persuasive effects."

**Kalla & Broockman 2018, *APSR*** — `[VERIFIED: abstract only]`
*APSR* **112**(1):148–166. DOI `10.1017/S0003055417000363`. **40 field experiments** meta-analysed + **9
original experiments**. *"the best estimate of the effects of campaign contact and advertising on
Americans' candidate choices in general elections is zero."* **Numeric pooled estimate and CI NOT retrieved.**

**Microtargeting nulls — a striking three-way convergence** `[VERIFIED: abstracts; Hackenburg & Margetts published figures]`
- **Hackenburg & Margetts 2024, *PNAS* 121(24):e2403116121** (`10.1073/pnas.2403116121`), preregistered
  **n = 8,587**. GPT-4 messages were persuasive (**up to 12 pp**), but **microtargeted messages were NOT
  more persuasive than non-targeted: 4.83 vs 6.20 pp, P = 0.226.** Authors: LLM influence *"may reside not
  in their ability to tailor messages to individuals, but rather in the persuasiveness of their generic,
  non-targeted messages."*
  **⚠ The 2023 OSF preprint figures (5.68 vs 7.32, P=0.082, "nearly 50%") are SUPERSEDED by the published
  PNAS values (4.83 vs 6.20 pp, P=0.226). Cite the published ones.**
- **Hackenburg, Ibrahim, Tappin & Tsakiris 2025, *AI & Society*** (`10.1007/s00146-025-02464-x`),
  **n = 4,955.** GPT-4 "partisan role-play" was **not** more persuasive than non-role-play — but GPT-4
  **rivalled and on some issues exceeded human persuasion experts.**
- **Tappin et al. 2023, *PNAS* 120(25):e2216261120.** Microtargeting outperformed alternatives by **≥70%**
  in Study 1 — but **no additional gain from targeting more than one covariate**, only one of two issues,
  and limited in Study 2. **CI not retrieved.**

**Reach as a share of diet**
- **Grinberg et al. 2019, *Science* 363(6425):374–378** (`10.1126/science.aau2706`): fake news was
  **~6% of all news consumption**; **1% of users were exposed to 80%** of it; **0.1% of users shared 80%**.
- **Guess, Nyhan & Reifler 2020, *Nature Human Behaviour* 4:472–480** (`10.1038/s41562-020-0833-x`):
  untrustworthy sites were a small share of diets; *"widespread speculation about the prevalence of
  exposure to untrustworthy websites has been overstated."*
- **Moore, Dahlke & Hancock 2023, *NHB* 7:1050–1060**: exposure fell from **44.3% (2016) → 26.2% (2020)**
  of Americans.
- **Dahlke, Moore & Hancock 2026** (PsyArXiv, 11 Feb 2026, `10.31234/osf.io/qtdmg_v1`): **N = 1,069, ~6M
  visits.** Share visiting untrustworthy sites **continued to decline** by 2024, but those exposed visited
  **more frequently**. **AI-generated untrustworthy sites reached more people in 2024 but remained a small
  fraction of exposure.** `[PREPRINT — GRADE D]`

### 3.2 The counter-evidence — real, measurable, and concentrated in DIALOGUE

**Costello, Pennycook & Rand 2024, *Science*** — `[VERIFIED: OSF preprint PDF, 2,118 lines + Crossref]`
*Science* **385**(6714):eadq1814. DOI `10.1126/science.adq1814`, 13 Sep 2024. Preprint `10.31234/osf.io/xcwdn`.
- **N = 2,190** conspiracy believers; **3-round dialogue with GPT-4 Turbo** vs a control on a banal topic.
- **Study 1: −16.8 points vs control, 95% CI [13.8, 19.7], p < .001, d = 1.15** — a **21.43%** decrease
  (control 1.04%). **27.4%** of treated became uncertain vs **2.4%** of control.
- **Study 2: −12.3 points, 95% CI [10.07, 14.72], p < .001, d = 0.79** — **19.41%** decrease.
- **Durability: NO decay at 2 months — b = 0.03, 95% CI [−2.24, 2.31], p = .98.** (At 10 days: b = 0.63,
  CI [−2.72, 1.46], p = .56.) Robust to assuming all 14% lost to follow-up returned to baseline
  (b = 12.70, CI [9.47, 15.93], p < .001).
- **Spillover:** reduced belief in **unrelated** conspiracies; general conspiracy thinking fell **8.2%**
  vs a **1.64-point increase** in control (**d = 0.21**).
- **Boundary condition:** effect was **non-significant for "false conspiracies" rooted in true events**
  (b = 6.51, CI [−39.42, 52.45], p = .76) and significantly different from other conspiracies
  (bΔ = −20.57, CI [−33.14, −8.00], p = .001).
- **Calibration:** prior correction attempts meta-analysed at **g = 0.16 across 273 effect sizes** — so
  this is roughly **7x** the historical average.
- **Mechanism (preprint, N = 1,297, 8 arms):** the effect survived telling participants the AI *intended*
  to persuade, asking them to debate, giving facts without persuasion, and brevity. **The only null arm was
  prompting the AI to persuade WITHOUT presenting counterevidence.** Reasoning-based tactics were the sole
  significant mediator. `[GRADE B for Science; GRADE D for the preprint mechanism work]`

**Boissin, Costello, Spinoza-Martín, Rand & Pennycook 2025, *PNAS Nexus*** — `[VERIFIED: PMC12578366]`
`10.1093/pnasnexus/pgaf325`. **N = 955**, preregistered. Randomised whether the debunking LLM was framed as
an **AI tool or a human expert**, and whether tone was human-like.
- Conversation reduced belief in all conditions (**all ps < 0.018**), with **no significant differences
  across conditions**. *"AI persuasion is not reliant on the messenger being an AI model: it succeeds by
  generating compelling messages."*
- Greater for conspiracy sharers (**10 points, 11.81%**) than general weak beliefs (**5 points, 5.96%**);
  **b = 5.11, 95% CI [2.75, 7.48], P < 0.001**.
- **Defensive implication: source-labelling ("this was written by a human") is a weak mitigation.**

**Salvi, Horta Ribeiro, Gallotti & West 2025, *Nature Human Behaviour*** — `[VERIFIED: abstract]`
`10.1038/s41562-025-02194-6`, 19 May 2025. Preprint `10.21203/rs.3.rs-4429707/v1`. **N = 900**,
preregistered 2x2x3, human vs GPT-4 opponent, with/without sociodemographic data.
- Where AI and humans were not equally persuasive, **personalised GPT-4 was more persuasive 64.4% of the
  time** — a **+81.2% relative increase in the odds of higher post-debate agreement, 95% CI [+26.0%,
  +160.7%], P < 0.01.**
- **Crucial conditional: WITHOUT personalisation the effect was smaller and NOT significant (p = 0.30).**
- ⚠ **Author Correction issued 3 Sep 2026** (`10.1038/s41562-026-02588-0`) — content not retrieved.

**Goldstein et al. 2024, *PNAS Nexus*** — `[VERIFIED: PMC10878360]` `10.1093/pnasnexus/pgae034`.
Preregistered, **N = 8,221**. Real foreign covert propaganda vs **GPT-3 davinci** output.
- Control agreement **24.4%**; **human propaganda 47.4% (+23 pp)**; **GPT-3 43.5% (+19.1 pp)** — GPT-3 a
  **3.9 pp** gap, i.e. slightly less compelling.
- **After editing the prompt: 46.4% vs 47.4% — "small and not statistically significant."**
- **"We did not find substantial heterogeneity in treatment effects"** across demographics, partisanship,
  news consumption or social-media time.

**Bai et al. 2025, *Nature Communications* 16** — `[VERIFIED: publisher PDF]` `10.1038/s41467-025-61345-5`.
**Three preregistered experiments, total N = 4,829**, on polarised policies.
- LLM > control: Study 1 **b = 3.62, CI [1.67, 5.05], p < 0.001**; Study 2 **b = 2.35, CI [1.23, …], p < 0.001.**
- **LLM vs human-authored: NO significant difference** — Study 1 **b = 0.56, CI [−0.94, 2.06], p = 0.466,
  BF01 = 24.57**; Study 2 **b = −0.52, CI [−1.74, 0.70], p = 0.403, BF01 = 22.74.**
- **Authors' own characterisation: "Effect sizes were consistently small."**

**Kalla & Broockman 2020, *APSR*** — the mechanism parallel `[VERIFIED: abstract]`
**230 canvassers, 6,869 voters, 7 locations, 3 preregistered field experiments.**
- **Arguments alone: NO effects** on exclusionary immigration attitudes.
- **Identical conversations + non-judgmental narrative exchange: durable reduction, d = 0.08**, persisting
  ≥4 months (transphobia replications: ds = 0.08 and 0.04).
- **The mechanism matches Costello et al.: the active ingredient is narrative/evidence exchange, not
  argument volume.** It also shows a *field-experimental* effect of a fraction of a standard deviation is
  achievable and durable — an important calibration for what "small but real" means.

### 3.3 The meta-analysis that settles — and then complicates — the "AI vs human" question

**Hölbling, Maier & Feuerriegel 2025, *Scientific Reports*** — `[VERIFIED: publisher PDF, 873 lines]`
DOI `10.1038/s41598-025-30783-y`, 12 Dec 2025. **7 studies, N = 17,422, 12 effect estimates.**

- **Pooled LLM vs human: g = 0.02, 95% CI [−0.048, 0.093], p = .530** — *"very small and non-significant."*
- **But heterogeneity is substantial: I² = 75.97%**; combined moderator model **R² = 81.93%**.
- Publication bias: Egger's test **p = .018**, but trim-and-fill imputed **no** missing studies.
- **⭐ The moderators, which are the real finding:**
  - **GPT-3.x < GPT-4.x: b = −0.236, 95% CI [−0.406, −0.065], p = .007.**
  - **One-shot < interactive: b = −0.494, 95% CI [−0.768, −0.220], p < .001.**
  - GPT-4.x in interactive contexts: **b = 0.219, 95% CI [0.017, 0.420], p = .033.**
- **Defensive read: the "no better than humans" headline is an average across heterogeneous designs. The
  pooled g = 0.02 is a poor forecast for current-generation, conversational systems — which is exactly
  what Costello and Salvi test. Averaging is the wrong estimator for a fast-moving capability.**

### 3.4 Conviction, dosage and asymmetry

**Dahlke & Hancock 2025, *Journal of Online Trust and Safety* 3(1)** — `[VERIFIED: abstract]`
DOI `10.54501/jots.v3i1.250`, 12 Sep 2025. Two-wave panel + browsing behaviour (**N = 21M visits**),
**1,194 US adults**, 2020 election.
- Raw association: exposed respondents **17.3% more likely** to believe the certified winner did not win.
- **After propensity-based control for selective exposure: 4.2%.**
- **Asymmetric: conservatives +12.6%, liberals −0.2%.**
- Dose–response: each additional exposure increases the association.
- **This is the cleanest demonstration that the statistical model, not the data, drives whether one reports
  17.3% or 4.2%. Distrust any single-number disinformation effect claim.**

**Serafino et al. 2024, *EPJ Data Science* 13:28** — `[VERIFIED: Crossref abstract]`
DOI `10.1140/epjds/s13688-024-00464-3`, 10 Apr 2024. A group of suspended accounts **outnumbering the IRA
group by a factor of 60** *"significantly influenced individuals categorized as undecided or weak
supporters … as indicated by Granger causality."*
- **⚠ GRADE B for publication but GRADE D for the causal claim** — Granger causality is a weak
  identification strategy. Note the useful contrast: the persuadable target is the **undecided/weak
  supporter**, *not* the already-polarised partisan that Bail found IRA accounts actually reached.

**White, Allen, Caviola, Costello & Rand 2026** — `[PREPRINT — GRADE D]`
PsyArXiv, v3 6 May 2026, DOI `10.31234/osf.io/6cyn4`. Preregistered, **N = 1,949**. LLM **dialogue**
increased effective donations by **45.9%**; a **static** LLM message by **28.7%**. Notable because
**static messages DO work here**, qualifying the Hölbling "interactivity" finding.
20 Apr 2026. Argues AI propaganda's force lies in **circulation, repetition and algorithmic visibility**
rather than message content. `[GRADE D — conceptual, no effect sizes]`

**Garrett, Bond & Nisbet 2025, *Political Communication*** — `[GRADE B for publication; effect sizes NOT retrieved]`
DOI `10.1080/10584609.2025.2532584`, 22 Jul 2025. Directly targets the validity of **self-reported
exposure** measures (expressive responding and motivated reasoning).

### 3.5 Where the nulls come from — five methodological mechanisms

1. **"Potential exposure" ≠ attention.** Eady et al. state they observe *potential* exposures only and
   "cannot know which tweets in their timelines users actually saw." Measurement error attenuates estimates
   toward zero.
2. **Extreme concentration destroys effective sample size.** When **1% of users account for 70% of
   exposures**, the estimate is identified off a small tail *"arguably least likely to need influencing."*
   Eady et al. concede: *"Were exposure distributed differently, among another set of users, the estimated
   relationship could well be different."* A null in a maximally-opinionated sample is **not** evidence
   that a differently-targeted campaign would fail.
3. **Self-report vs observed behaviour** (Garrett et al. 2025).
4. **Absence of evidence mishandled as evidence of absence.** Eady et al. used **TOST equivalence testing**
   precisely because non-significance ≠ negligible — and got real bounds (<0.2 SD on 17/18 outcomes).
   **Few other null papers do this**, which is why Eady is the strongest null available.
5. **Model-choice sensitivity** (Dahlke & Hancock: 17.3% or 4.2% from the same data).

### 3.6 Attitudes vs behaviour, and individual vs systemic

- **Attitudes move where behaviour does not.** Bai et al. found small significant attitude change; Coppock
  et al. found a small significant **favourability** effect (0.05 points) but a **non-significant 0.7 pp**
  effect on **vote choice**. Costello shifted belief ~20% and *behavioural intentions* — not behaviour.
- **The behavioural outcome that genuinely moves is sharing/engagement, not voting** (Grinberg: 0.1% of
  users generating 80% of fake-news sharing).
- **"No vote switch" and "no effect" are not the same claim**, and most of the null literature measures the former.

**Where the real harm is argued to sit — the systemic pathway.** Eady et al., retrieved verbatim: campaigns
*"may also succeed through **second-order effects**: those effects that are achieved by provoking a domestic
reaction to the intervention itself,"* and **"Russia's foreign influence campaign on social media may have
had its largest effects by convincing Americans that its campaign was successful."** Bail et al. likewise
close on "faith in American electoral integrity." Douek (2021, *Defending Democracies*) argues removal
regimes rest on "a militarized discourse that paints such interference as highly effective" when
*"evidence of such campaigns' effectiveness is limited."* Levin (2021) reviews medium- and long-term effects
on "the quality of its democracy." `[GRADE B for the reviews; the effectiveness claim is asserted, not measured]`

> **⭐ The most important honest statement in these notes.** The individual-level nulls and the
> systemic-harm argument are **not in contradiction** — they measure different things. The strongest
> surviving claim is that **influence operations are weak at changing votes and comparatively strong at
> degrading the perceived legitimacy of the process, including among people who were never exposed to the
> content.** And that second pathway is **essentially unquantified**: **no RCT was found that isolates the
> causal effect of foreign-interference *revelation* on institutional trust.** This is a concrete
> commissioned-research gap, not an unresolved literature.

### 3.7 The "small effects at scale" trap — mandatory caveat

Götz, Gosling & Rentfrow (2022, *Perspectives on Psychological Science* 17(1),
`10.1177/1745691620984483`) is widely invoked to argue that r ≈ 0.05 effects matter "at scale."
**Primbs, Pennington, Lakens et al. (2022, PsyArXiv, `10.31234/osf.io/6s8bj`) rebut this**, and the rebuttal
is the more defensible position for a defensive brief: the claim that a small effect is consequential at
scale must be **empirically demonstrated or falsifiable**, otherwise it becomes *"a blanket justification
for the importance of any and all 'small' effects."*

- A **0.05 SD** effect (Eady) times 32 million exposed users is not automatically large — **influence
  requires a margin to be moved**, and Eady's own simulation shows vote change <0.7 pp in 95% of runs
  against a **0.77 pp** Wisconsin margin.
- Conversely **d = 1.15** (Costello) is large by any standard and is *not* a small-effects-at-scale
  argument.
- **Practical rule: grade effects by whether they were measured on the outcome the defender cares about,
  not by whether they are "significant."**

### 3.8 A missing systematic review — a finding, not a search gap

**No dedicated 2025–2026 systematic review or meta-analysis of the *effectiveness of foreign influence
operations / coordinated inauthentic behaviour* was found to exist.** What exists instead:
- Hölbling et al. 2025 — meta-analysis of **LLM vs human** persuasion (not influence operations).
- **Murray, Albert, Bates & Pfeifer 2026**, "Hacking elections: A quantitative analysis of cyber-enabled
  foreign election interference", APSA preprint, 10 Mar 2026, `10.33774/apsa-2026-wlcqm` — **85 attacks, 34
  countries, 2014–2020**, but it models **country vulnerability, not intervention effectiveness**. `[GRADE D]`
- A CVE-focused systematic review (`10.1177/18911803261459099`) — adjacent but not the same question; the
  article itself was not retrieved.

---

## 4. Verification ledger and outstanding gaps

### Verified live in this session, 25 September 2026

| # | Source | What it establishes | Grade |
|---|---|---|---|
| 1 | platform.openai.com/docs/pricing | Full GPT-6 and image/audio/tool price tables | A |
| 2 | docs.claude.com/.../pricing | All Claude model tiers | A |
| 3 | cloud.google.com/vertex-ai/.../pricing | Gemini, Imagen, Veo, Lyria prices | A |
| 4 | docs.x.ai/docs/pricing.md | All Grok text/image/video/voice prices | A |
| 5 | api-docs.deepseek.com/quick_start/pricing | DeepSeek V4.1-Flash / V4-Pro prices, peak/off-peak | A |
| 6 | openrouter.ai/api/v1/models | 460 live third-party model prices; cross-check for 1/2/3 | A- (aggregator) |
| 7 | docs.x.com/x-api/getting-started/pricing.md | **X API pay-per-usage: $0.015/post, $0.200/post-with-URL** | A |
| 8 | docs.x.com/x-api/fundamentals/post-cap.md, rate-limits.md | 3M post-read cap, per-endpoint rate limits | A |
| 9 | runpod.io/pricing (upd. 13 Sep 2026) | 16 GPU classes, $/hr | A |
| 10 | lambda.ai/pricing | On-demand + committed GPU $/hr | A |
| 11 | epoch.ai/data-insights/llm-inference-price-trends | 9x–900x/yr, 40x/yr GPQA | B |
| 12 | a16z.com/llmflation-llm-inference-cost | 10x/yr; 1,000x in 3 yr; $60→$0.06/M | B/E |
| 13 | Crossref: 10.1073/pnas.1906420116 | Bail 2020 full abstract, N=1,239 | B |
| 14 | Crossref: 10.1038/s41467-022-35576-9 | Eady 2023 full abstract, 1%/70% | B |
| 15 | Crossref: 10.1126/science.adq1814 | Costello 2024, N=2,190, ~20% reduction | B |
| 16 | Crossref: 10.1140/epjds/s13688-024-00464-3 | 60x wider network counter-evidence | B |
| 17 | developers.tiktok.com Content Posting API | Live, updated 4 Aug 2026; approval-based friction | A |
| 18 | coreweave.com/pricing; modal.com/pricing; instances.vantage.sh p5.48xlarge | H100/B200/A100 $/GPU-hr across providers | A |
| 19 | eia.gov Electric Power Monthly Table 5.3 (rel. 24 Sep 2026) | Industrial 9.77¢, commercial 14.53¢, residential 18.31¢/kWh | A |
| 20 | epoch.ai/publications/the-plunging-price-of-thought (22 Sep 2026) | 47%/qtr = 13x/yr; 75x/yr SOTA vs 4.7x/yr mature; o3→Luna 725x | B |
| 21 | cam.ac.uk/stories/price-bot-army-global-index (11 Dec 2025) | **COTSI**: SMS-verification prices by country/platform | A/B |
| 22 | elevenlabs.io/pricing | Voice-clone entry price $6/mo (instant), $22/mo (professional) | A (price) / E (framing) |
| 23 | Bright Data / Smartproxy / IPRoyal / Oxylabs public price pages | Residential proxy $1.75–$6.00 per GB | A |
| 24 | O*NET/BLS OEWS 2025 (writers 27-3043, PR 27-3031, CSR 43-4051) | $36.98 / $35.94 / $21.53 per hour medians | A |
| 25 | Rest of World (2025), Philippines offshoring | $874/month ≈ $5.04/hr contractor rate | C |
| 26 | theguardian.com, 13 Oct 2025 | **439 UK TikTok trust-and-safety redundancies while UK/EU revenue +40%** | C |
| 27 | transparency.meta.com (needs /en-gb/ + Googlebot UA) | Meta Inauthentic Behaviour / CIB policy text, verbatim | A |
| 28 | YouTube Data API docs | `search.list` and `videos.insert` each capped at 100 calls/day | A |
| 29 | Reddit Developer Terms | Separate agreement required for commercial/above-rate-limit use; liability capped at $100 | A |
| 30 | futurism.com, 17 Sep 2026 | Brown Brothers Media: 60+ writers → 12, all using AI; 50+ fake personas | C |
| 31 | Europe PMC + publisher PDFs (PMC6955293, PMC7467695, PMC10878360, PMC12578366) | Bail, Coppock, Goldstein, Boissin full texts | B |
| 32 | Scientific Reports PDF (10.1038/s41598-025-30783-y) | Hölbling 2025 meta-analysis: g = 0.02, I² = 75.97%, moderator b's | B |
| 33 | luma / recraft / bfl / runway / pika pricing pages | Image $0.003–$0.06; video $0.00625–$0.573/sec | A |

### Explicitly NOT verified — do not cite as fact without checking

- **Veo "per count" → per-second conversion (§1.5).** The *per-generation* price is Grade A; the 8-second
  assumption is **Grade D** and gives an 8x swing. Quote per-generation or state the assumption.
- **Sora has no verifiable current price at all** — OpenAI's own Sep 2026 pages list no video model, and
  headline reports indicate withdrawal. Do not quote a Sora figure.
- The **SemiAnalysis H100 rental index value itself**, and the ~+40% March 2026 reversal figure — relayed
  via Seeking Alpha, Compux and tech-insider.org. `[SECOND-HAND]` The *direction* is corroborated by
  multiple independent headlines (AWS price rises, B200 residual at 158%, Nebius +21%); the *magnitude* is not.
- The two conflicting September 2026 H100 headlines ("halve to $3.38" vs "rises 22% to $3.28") — unresolved.
- **Reddit API 2026 pricing** — the $0.24/1,000-calls figure is a **2023** number and is recorded as recalled.
- **Meta Graph API rate limits and tiers** — every developer path returned HTTP 400.
- **X automation-policy wording** — returned 403.
- **Global integrity headcount and budget totals**, and **any cost-per-takedown figure — which does not
  appear to exist in public sources.** The DSA Transparency Database is onboarding-gated.
- **Global disinformation cost estimates** — the "$78bn" figure is untraceable; the $417bn Sopra Steria
  figure is Grade E (vendor). Treat both as soft.
- **Midjourney, Stability, Adobe Firefly, Ideogram, fal.ai, Replicate, Kling/MiniMax first-party, Azure TTS,
  PlayHT, Speechify** pricing — JS-rendered, 403, or placeholder-only. Note Sora is listed here too.
- **Freelance per-word rates (Upwork/Fiverr/ZipRecruiter/Glassdoor all HTTP 403)** and **UK contact-centre
  costs** (ContactBabel unreachable). US BLS series were reached via O*NET instead.
- **The "$1–$20 per human content-farm article" range** — could not be traced to primary reporting.
- **Bail 2020 numeric ATTs/CIs**; **Kalla & Broockman 2018 pooled estimate/CI**; **content of the 3 Sep 2026
  Author Correction to Salvi et al. 2025** (DOI confirmed, content not retrieved).
- **A dedicated 2025–26 systematic review of foreign-influence-operation *effectiveness* does not appear to
  exist** — this is a finding, not a search failure.
- The **2025–26 AI-propaganda preprint literature is under-sampled** because arXiv was rate-limited throughout.
  Treat §3.4 as a floor, not a ceiling.
- Self-hosted $/1M-token figures beyond the vendor-supplied NVIDIA and RunPod anchors.
- The **CAPTCHA panel study is a preprint** (SSRN); treat its effect sizes as provisional.
- The **FameHero PR-retainer source is a vendor advertorial (Grade E)**; the range is corroborated only by
  the author's own FTE arithmetic.

### FAILED SEARCHES / blocked resources (25 Sep 2026)

| Target | Result |
|---|---|
| `web_search` tool | Broken session-wide by instruction; not attempted. |
| `ai.google.dev/gemini-api/docs/pricing` | **OAuth redirect loop**; no prices to unauthenticated client. Used Vertex AI instead. |
| `x.ai/api` | **Cloudflare 403** ("Attention Required"). Worked around via `docs.x.ai/...md`. |
| `openai.com/api/pricing/` | **HTTP 403**. Worked around via `platform.openai.com/docs/pricing`. |
| `docs.x.com/.../*.md` | **Worked** — the `.md` suffix on docs URLs returns clean markdown tables. Best single discovery of the session. |
| `cam.ac.uk/research/news/price-of-a-bot-army-...` | **HTTP 404**. Correct path is `/stories/price-bot-army-global-index`. |
| `eurekalert.org/search?keywords=bot+army` | HTTP 200 but empty body (194 bytes). |
| `developers.facebook.com/docs/graph-api/.../rate-limiting/` | **HTTP 400** "Sorry, something went wrong". |
| `support.reddithelp.com/.../Reddit-Data-API-Wiki` | **HTTP 403**. |
| `www.reddit.com/r/redditdev/wiki/api` | HTTP 200 but empty content body. |
| `developers.reddit.com/docs/rate-limits` | **HTTP 404**. |
| `www.bls.gov/oes/current/oes434051.htm` | **HTTP 403** — BLS explicitly blocks automated retrieval. |
| `epoch.ai/data/llm-inference-price-trends` | HTTP 404; correct path is `/data-insights/llm-inference-price-trends`. |
| `api.openalex.org` | **HTTP 429**, retry-after ~14h (session-wide). |
| `api.semanticscholar.org` | **HTTP 429** "Too Many Requests". |
| `export.arxiv.org/api/query` | **HTTP 429**; also 301 on `http://` (must use https). |
| `r.jina.ai` reader proxy | **HTTP 429** "Per IP rate limit exceeded" — the same proxy the workspace search tools depend on. |
| `semianalysis.com` 2026 articles | **HTTP 404**; WordPress feed frozen at Sep 2025 posts. |
| `sitepoint.com`, `cacm.acm.org`, `getdeploying.com`, `citybiz.co` | **HTTP 403** (Cloudflare) — self-hosted-TCO and on-prem-LLM cost analyses unreachable. |
| `groq.com` pricing, `deepinfra.com` pricing | JS-rendered (no table) / fetch failed. |
| `together.ai`, `fireworks.ai` pricing | Loaded but model↔price label mapping lost in text extraction — **numbers withheld rather than guessed**. |
| `www.europeanbusinessreview.com` PR-agency pricing | **HTTP 000** (connection failed). |
| `tools/ddg.sh`, Bing-backed `tools/wsearch.sh` | Returned nothing / unrelated spam respectively. |
| Google News RSS article URLs | Now use a **JS redirect**; the destination URL is not present in the fetched HTML, so publisher pages must be found independently. |
| `upwork.com`, `fiverr.com`, `ziprecruiter.com`, `glassdoor.com` | **HTTP 403** — freelance rate baselines unobtainable. Used O*NET/BLS instead. |
| `english.elpais.com` (call-centre article) | **HTTP 403**; the guessed article URL 404'd. Headline figure retained as Grade C. |
| `midjourney.com`, `adobe.com/firefly`, `play.ht` | **HTTP 403**. |
| `stability.ai` pricing | HTTP 200 but a **client-side React SPA** — no server-rendered prices. |
| `ideogram.ai`, `fal.ai`, `replicate.com`, `speechify.com`, Kling/MiniMax first-party | **JS-rendered** — no extractable price tables. |
| Azure TTS pricing | Page renders **`$-` placeholders**; the retail-prices API returned **0 items**. |
| `cam.ac.uk/research/news?page=1`, `/news` archives | Loaded but the bot-army study is not in the paginated listing; only `/stories/` works. |
| `semanticscholar.org` 429 throughout | So the persuasion review ran on **Crossref + Europe PMC + publisher PDFs** instead. |
| PNAS / Science Advances / PNAS Nexus direct PDFs | Returned **HTML stubs**, not PDFs. Worked around via **Europe PMC**. |
| `bsky`/DDG CAPTCHA, Bing localised/empty, `tools/s.sh` | All search engines except Google News RSS were unusable; **Google News RSS `site:` queries** were the most productive discovery route. |

> **A defensive-relevant meta-finding.** Across this session, **six independent evidence-access routes were
> rate-limited or blocked by IP**: OpenAlex, Semantic Scholar, arXiv, r.jina.ai, BLS, and four
> Cloudflare-protected publishers. The cost of *producing* content is near zero and unmetered; the cost of
> *retrieving and verifying* evidence is metered, per-IP and shared. **A small defensive analysis team will
> hit an access wall long before an adversary hits a cost wall.**

---

## 5. Bottom line (≈250 words)

**Generation is free; access is not — and in 2026 compute stopped getting cheaper.**

A competent 500-word post costs **$0.00038** to generate on OpenAI's gpt-6-luna and **$0.038** on the
frontier gpt-6-astra; a thousand cost **38¢ to $38**. A persona run at 50 messages a day for a month costs
**$0.71–$71**, under **$4** at frontier quality with caching. Several capable open-weight models are served
at **$0.00**. Epoch AI measures **9x–900x/year** declines to a fixed capability bar and, in its September
2026 update, **~47%/quarter (13x/year)** capability-adjusted — but **75x/year at SOTA debut versus only
4.7x/year two years later**. a16z's decisive caveat: **the frontier per-token price never fell at all**
(o1 cost the same as GPT-3, $60/1M output). And **rented H100 hours reversed in 2026, rising ~40%** on
shortage, with AWS up ~20% and the B200 holding **158% of launch price**. The structure is now
**expensive frontier, permanently cheap floor.**

**The bottleneck is distribution and identity — and the AI cost advantage is smaller than it looks.**
X charges **$0.015 per post but $0.200 with a URL** — a deliberate 13x link penalty, and **40x–524x** the
generation cost. Cambridge's COTSI index (*Science*, Dec 2025) prices an SMS-verified account at
**$0.08–$0.10** on X/Instagram/Meta, **$0.89–$1.02** on Telegram/WhatsApp, rising **+12–15%** in the 30 days
before 61 national elections. Proxies run **$1.75–$4.00/GB**. **CAPTCHA-solving barely deflated in sixteen
years (1.8x median)** — the one defensive cost that has *not* collapsed, and therefore the highest-leverage
place to invest. **But note the inversion:** a cloned-voice agent costs **$3.00–$4.80/hour** against a
**$30.57/hour** fully-loaded US agent — yet **loses to Philippine labour at under $2.00/hour.** The correct
comparator is offshore labour, not US salaries; against offshore labour, AI is **1.5–2.4x more expensive**
today. Meanwhile platforms are **cutting** integrity capacity: **439 UK TikTok trust-and-safety
redundancies** in Oct 2025 while UK/Europe revenue grew 40%.

**Audiences are resilient — but only to the right mechanism.** Bail (2020, N=1,239) and Eady (2023,
N=1,496, with equivalence bounds rejecting effects >0.2 SD on 17/18 outcomes) find **no meaningful effect**
of IRA exposure on attitudes, polarisation or voting; Eady shows **1% of users absorbed 70% of exposures**,
eclipsed by domestic media **~25x**. Then Costello (2024, N=2,190) shows AI dialogue cutting conspiracy
belief by **~20% (d = 1.15)** with **no decay at two months**, and Salvi (2025, N=900) shows personalised
GPT-4 beating humans by **+81.2% odds**. The pooled LLM-vs-human average (**g = 0.02**) conceals this —
its own moderators show **interactivity (b = −0.494)** and **model generation (b = −0.236)** drive the
variance. **Broadcast exposure is weak; interactive dialogue is not. Averaging is the wrong estimator for a
fast-moving capability — and the harm that survives the nulls (eroded institutional trust) is unquantified.**
