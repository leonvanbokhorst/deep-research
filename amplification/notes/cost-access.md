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

**A structural caveat that matters for the whole brief:** three of the standard academic APIs
(OpenAlex, Semantic Scholar, arXiv) returned HTTP 429 rate-limit errors partway through this session
because several parallel research threads shared one IP. Only Crossref and direct publisher fetches
remained reliable. This is itself a small illustration of §2.3: **access to evidence is rate-limited and
the limit is per-IP, not per-user.**

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

> ⚠️ **Unit ambiguity, unresolved:** Google prices Veo "per 1 count". I could **not** verify in-session
> whether one "count" equals one ~8-second clip or one second. If a count is an 8-second clip, Veo 3.1
> video+audio is **$0.05/second**; if a count is one second, it is $0.40/second — an 8x difference. **Do not
> quote a Veo $/second figure without resolving this.** Mark as `[INFERRED]` either way.

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
- 1,000 images: **$20** (Grok Imagine base) / **$40** (Imagen 4) / **$60** (Imagen 4 Ultra).
- 1 hour of generated video at Grok's $0.050/sec = **$180**; at $0.080/sec = **$288**.
- 1 hour of cloned-voice real-time speech at $0.08/min = **$4.80**.
- 1 hour of output at OpenAI gpt-live-1 ($0.05/min) = **$3.00**.

> **Gap:** the entry price of a *voice clone* (ElevenLabs / OpenAI voice tiers) and current Midjourney,
> Runway, Sora and Kling subscription-to-unit conversions were assigned to a parallel thread and are **not
> yet in these notes**; see §4 for status.

### 1.6 The human baseline

**Contact-centre labour (offshore) — the strongest human anchor available.** `[GRADE C — headline verified, body blocked]`
**EL PAÍS English, 14 March 2026: "Philippines, the call-center capital: Taking a deluge of calls for under
$2 an hour."** The headline figure is **under $2/hour** for Philippines contact-centre work — the classic
offshore destination. I could not load the article body (the guessed URL 404'd and `english.elpais.com`
returns **HTTP 403** to automated clients), so the number is verified only as the publication's own headline
claim. **Even so, the comparison is stark: one hour of offshore human call-centre labour (~$2) costs about
the same as 33–2,800 full months of frontier-model persona inference (§1.2), depending on tier.**
`[INFERRED arithmetic]`
Corroborating lead: **Fortune, 29 Aug 2026, "The AI boom hasn't stopped U.S. companies from hiring cheap
offshore workers."** `[GRADE C headline]`

**Freelance writing rates, 2026.** Lead: **Mediabistro, 6 March 2026, "Freelance Writing Jobs & AI in 2026:
Real Data"** — likely to carry per-word rates and the AI impact on them. `[NOT RETRIEVED — URL guess 404'd]`
Related lead: **DemandSage, "19 Freelance Statistics 2026"** (3 Apr 2026). `[NOT RETRIEVED]`

**Content-farm article rates.** Leads not yet converted to numbers:
- **Futurism, 17 Sep 2026:** "How Three Brothers Built an AI Slop Empire by Buying Legitimate News Sites
  and Turning Them Into Zombie Content Farms That They Say Get **50 Million Page Views per Month**." — a
  large-scale content-farm operation of the exact type the brief is concerned with, with a self-reported
  traffic figure. `[GRADE C headline]`
- **The Washington Post, 1 March 2026:** "An Ohio newspaper has a new star writer. It isn't human."
  `[GRADE C headline]`
- **Vocal, 10 Feb 2026:** "For Freelance Writers, Content Farms Aren't a Thing of the Past." `[GRADE C headline]`
- **The Guardian, 27 Dec 2025:** "More than **20% of videos shown to new YouTube users are 'AI slop'**,
  study finds." `[GRADE C headline — useful exposure/volume datapoint]`
- **OpenAI, 1 Feb 2026:** "Operation 'Fish Food': Russia-origin content farm activity" — a platform
  takedown report; worth mining for account counts and any cost figures. `[GRADE A source, not yet read]`

> **Gap, stated plainly.** The **freelance per-word rate, the PR agency monthly retainer, the US
> contact-centre loaded hourly cost and the per-article content-farm rate are NOT established in these
> notes.** `www.bls.gov` blocks automated retrieval (HTTP 403), and EL PAÍS, citybiz and the European
> Business Review all refused automated fetches. **Anyone completing this brief must source these from a
> human-browsed session.** The one solid anchor is the EL PAÍS headline figure of **under $2/hour** for
> offshore contact-centre labour.
>
> **However, the comparison that matters most is already computable from verified material**, and it does
> not depend on the human baseline at all: the *platform access* cost in §2.2 ($0.015–$0.200 per post)
> exceeds the *generation* cost ($0.00038–$0.038) by **5x to 524x**. Generation is not the expensive part
> of an influence campaign; distribution, identity and verification are.

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

**Other platform APIs:**
- **TikTok** — Content Posting API (Direct Post) documentation live, last updated **4 August 2026**;
  requires app review and a `video.publish` scope; no per-post fee published, i.e. the friction is
  *approval*, not price. `[VERIFIED-LIVE]` <https://developers.tiktok.com/doc/content-posting-api-get-started>
- **Meta Graph API** — the rate-limiting documentation page returned **HTTP 400** ("Sorry, something went
  wrong") on fetch. `[FAILED]`
- **Reddit API** — the dev API documentation page loads, but I did not extract the current commercial
  price. The historically reported figure is **$0.24 per 1,000 API calls** (2023). `[UNVERIFIED for 2026]`
- **Google** — the Gemini API pricing page now forces an **OAuth sign-in redirect loop**
  (`ai.google.dev/gemini-api/docs/pricing` → `oauth2authorize` → `accounts.google.com` → back). A machine
  client cannot read Google's own Gemini prices without authenticating. `[VERIFIED-LIVE observation]`

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

#### Published integrity headcount and budget figures

> **Gap — not established.** Reliable 2024–2026 integrity **headcount and budget** figures for
> Meta / Google / TikTok / X, and the EU DSA transparency-database numbers, were **not retrieved** in this
> session. A parallel thread was working on them and had not reported by the time of writing. **Do not
> quote an integrity-budget figure from these notes.** The DSA transparency reporting obligation is the
> right place to look, and the Commission's own findings are the authoritative source.

#### One empirical asymmetry observed first-hand in this session

During this research, **six independent evidence-access routes were rate-limited or blocked by IP address**:
OpenAlex (HTTP 429, ~14h retry), Semantic Scholar (429), arXiv (429), the `r.jina.ai` reader proxy (429),
the US Bureau of Labor Statistics (403, explicit anti-bot policy), and four Cloudflare-protected publishers
(SitePoint, CACM, getdeploying.com, citybiz). Meanwhile the generation cost of the content being studied is
**$0.00038 per post**.

**The cost of producing content is near zero and unmetered. The cost of retrieving and verifying evidence is
metered, per-IP, shared, and actively defended.** Any defender doing open-source analysis at even modest
scale will meet an access wall before an adversary meets a cost wall. This is worth stating in the brief as
a concrete, reproducible observation rather than a rhetorical claim — it is a small instance of exactly the
asymmetry the brief is about, and it points at a specific policy ask: **public-interest research access
quotas, not just content-removal obligations.**

---

## TOPIC 3 — Are audiences more resilient than assumed?

All items below are `[GRADE B]` and were verified this session by retrieving the abstract from the
publisher record via Crossref. Where I could not obtain a confidence interval, I say so explicitly rather
than estimating one.

### 3.1 The null / minimal-effects evidence

**Bail et al. 2020, PNAS** — `[VERIFIED-LIVE abstract]`
"Assessing the Russian Internet Research Agency's impact on the political attitudes and behaviors of
American Twitter users in late 2017." *PNAS* **117**(1):243–250. DOI `10.1073/pnas.1906420116`
(online 25 Nov 2019; issue 2020). Eight authors.

- **Design:** longitudinal data on the attitudes and online behaviour of **N = 1,239 Republican and
  Democratic Twitter users in late 2017**, merged with non-public Twitter data about the IRA; analysed with
  Bayesian regression tree models.
- **Finding:** *"we find no evidence that interaction with IRA accounts substantially impacted 6
  distinctive measures of political attitudes and behaviors over a 1-mo period."*
- **Who was exposed:** interaction with IRA accounts was *most common among respondents with strong
  ideological homophily within their Twitter network, high interest in politics, and high frequency of
  Twitter usage.*
- **Authors' own interpretation:** *"Russian trolls might have failed to sow discord because they mostly
  interacted with those who were already highly polarized."*
- **Stated limitation (important for honest use):** *"our inability to determine whether IRA accounts
  influenced the 2016 presidential election."*
- *Effect size / CI: not retrieved — the paper reports Bayesian model results rather than a single
  headline d.*

**Eady et al. 2023, Nature Communications** — `[VERIFIED-LIVE abstract]`
"Exposure to the Russian Internet Research Agency foreign influence campaign on Twitter in the 2016 US
election and its relationship to attitudes and voting behavior." *Nature Communications*, 9 January 2023.
DOI `10.1038/s41467-022-35576-9`.

Four findings, quoted:
1. **Concentration of exposure: "only 1% of users accounted for 70% of exposures."**
2. Exposure was concentrated among users who **strongly identified as Republicans**.
3. Exposure **"was eclipsed by content from domestic news media and politicians."**
4. **"we find no evidence of a meaningful relationship between exposure to the Russian foreign influence
   campaign and changes in attitudes, polarization, or voting behavior."**

The authors' framing: *"The results have implications for understanding the limits of election interference
campaigns on social media."* *Effect size / CI: not retrieved — "no evidence of a meaningful relationship".*

**The reach arithmetic that follows from these two papers** `[INFERRED]`: if 1% of users absorb 70% of
exposures, and that 1% is heavily self-selected for pre-existing strong partisanship, then a foreign
influence campaign is largely **preaching to an already-converted, already-polarised micro-audience**, and
its exposure is orders of magnitude smaller than ordinary domestic political media within the same feed.
This is the strongest available quantitative case for audience resilience.

### 3.2 The counter-evidence — real, measurable effects

**Costello, Pennycook & Rand 2024, *Science*** — `[VERIFIED-LIVE abstract]`
"Durably reducing conspiracy beliefs through dialogues with AI." *Science*, 13 September 2024. Vol. 385.
DOI `10.1126/science.adq1814`. (Preprint DOI `10.31234/osf.io/xcwdn`, 3 April 2024.)

- **Design:** **N = 2,190 conspiracy believers** engaged in personalised, evidence-based dialogues with
  **GPT-4 Turbo**.
- **Effect: "The intervention reduced conspiracy belief by ~20%."**
- **Durability: "The effect remained 2 months later, generalized across a wide range of conspiracy
  theories, and occurred even among participants with deeply entrenched beliefs."**
- **Spillover: "the dialogues focused on a single conspiracy, they nonetheless diminished belief in
  unrelated conspiracies and shifted conspiracy-related behavioral intentions."**
- *CI not retrieved from the abstract; the ~20% figure is the headline. This is the single strongest
  published demonstration that a targeted, personalised, interactive AI intervention can move entrenched
  beliefs — and it is a **defensive** result as much as an offensive one.*

> **The analytic tension to state plainly.** Bail 2020 and Eady 2023 find no meaningful effect from
> *passive exposure* to broadcast-style influence content. Costello 2024 finds a large, durable effect from
> *interactive, personalised, one-to-one* AI dialogue. These are not contradictory — they measure different
> mechanisms. **The resilience evidence is about broadcast exposure; the vulnerability evidence is about
> tailored interaction.** A 2026 threat assessment should not generalise from the null broadcast results to
> conclude that interactive AI personas are also harmless.

**Counter-evidence on the IRA specifically** — `[VERIFIED-LIVE abstract]`
"Suspended accounts align with the Internet Research Agency misinformation campaign to influence the 2016 US
election." *EPJ Data Science*, 10 April 2024. DOI `10.1140/epjds/s13688-024-00464-3`.

- Finds a group of suspended accounts **outnumbering the IRA user group by a factor of 60**, aligned with
  IRA ideology, which **"significantly influenced individuals categorized as undecided or weak supporters,
  potentially with the aim of swaying their opinions, as indicated by Granger causality."**
- Relevance: it suggests the IRA-only null findings may understate the effect of the *wider* coordinated
  inauthentic ecosystem, and that the persuadable target is the **undecided/weak supporter**, not the
  already-polarised partisan that Bail 2020 found IRA accounts actually reached.

> **Gap — pending.** Still required for completeness: Hackenburg & Margetts on conversational
> persuasiveness (and its human-persuader comparison); Salvi et al. on personalised AI persuasion;
> 2025–2026 RCTs on AI-generated propaganda; meta-analyses of average persuasion effect sizes with
> confidence intervals (the "small effects" debate, Kalla & Broockman, Götz et al.); and the literature
> arguing the real harm is to **institutional trust at the systemic level** rather than individual vote
> choice. Assigned to a parallel thread; see §4.

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

### Explicitly NOT verified — do not cite as fact without checking

- **Veo "per count" → per-second conversion (§1.5). 8x uncertainty — resolve before quoting a Veo $/second.**
- The **SemiAnalysis H100 rental index value itself**, and the ~+40% March 2026 reversal figure — relayed
  via Seeking Alpha, Compux and tech-insider.org. `[SECOND-HAND]` The *direction* is corroborated by
  multiple independent headlines (AWS price rises, B200 residual at 158%, Nebius +21%); the *magnitude* is not.
- The two conflicting September 2026 H100 headlines ("halve to $3.38" vs "rises 22% to $3.28") — unresolved.
- Reddit API 2026 pricing; the $0.24/1,000-calls figure is a **2023** number.
- Meta Graph API rate limits and tiers (page returned HTTP 400).
- All integrity headcount/budget and DSA transparency figures (§2.3) — pending.
- Midjourney / Runway / Sora / Kling unit costs, and OpenAI voice-tier specifics (§1.5).
- All human-baseline figures (§1.6): freelance per-word, PR retainer, contact-centre $/hr, content-farm
  $/article. **The BLS Occupational Employment and Wage Statistics pages actively block automated retrieval
  (HTTP 403), so US wage baselines need an alternative route.**
- The remainder of the persuasion literature in §3.2 (Hackenburg & Margetts; Salvi et al.; 2025–26
  AI-propaganda RCTs; meta-analytic average effect sizes; the systemic-trust argument).
- Self-hosted $/1M-token figures beyond the vendor-supplied NVIDIA and RunPod anchors.
- The CAPTCHA panel study is a **preprint** (SSRN); treat its effect sizes as provisional.

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

**The bottleneck is distribution and identity.** X charges **$0.015 per post but $0.200 with a URL** — a
deliberate 13x anti-link penalty, and **40x–524x** the generation cost. Cambridge's COTSI index
(*Science*, Dec 2025) prices an SMS-verified account at **$0.08–$0.10** on X/Instagram/Meta, **$0.89–$1.02**
on Telegram/WhatsApp, rising **+12–15%** in the 30 days before 61 national elections. Proxies run
**$1.75–$4.00/GB**. **CAPTCHA-solving barely deflated in sixteen years (1.8x median)** — the one defensive
cost that has *not* collapsed, and therefore the highest-leverage place to invest.

**Audiences are resilient — but only to the right mechanism.** Bail (2020, N=1,239) and Eady (2023) find
**no meaningful effect** of IRA exposure on attitudes, polarisation or voting; Eady shows **1% of users
absorbed 70% of exposures**, eclipsed by domestic media. Costello (2024, N=2,190) then shows personalised
AI dialogue cutting conspiracy belief by **~20%**, durable at two months. **Broadcast exposure is weak;
tailored interaction is not.**
