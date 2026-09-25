# Long-Running Persona Management, Cross-Platform Coordination, and Fact-Check Evasion

**Analytic research notes for a defensive threat-assessment brief**
**Date of analysis: 25 September 2026**
**Analyst note: ANALYTIC ONLY. This document deliberately contains no operational instructions, no prompts, no tooling recommendations, and no implementation detail for running influence campaigns. It is a capability, evidence and defence assessment.**

---

## 0. Method, grading key, and how to read this

**Evidence grades used throughout**

| Grade | Meaning |
|---|---|
| **A** | Primary/official: platform, government, or institutional primary report; official statistics; court/regulatory filing; peer-reviewed *or* official document issued by the responsible body. |
| **B** | Peer-reviewed or strong preprint with disclosed methods (arXiv/ACL/ICWSM/Nature/PNAS/Science). |
| **C** | Reputable journalism or credible industry analysis (Reuters, NBC, Nature news, Recorded Future, CyberScoop, etc.). |
| **D** | Weak, second-hand, or inferred; single low-quality source; claims I could not independently corroborate. |
| **E** | Vendor or advocacy source — note the commercial or ideological interest. |

**The four-part distinction requested** is applied to every topic:
- **(a) technical possibility** — can it be done at all, in principle, demonstrated in a lab/simulation;
- **(b) demonstrated capability** — measured performance under controlled conditions, with numbers;
- **(c) credible evidence of deployment** — evidence it is actually being used in the wild;
- **(d) documented real-world impact** — measured effect on real audiences, reach, beliefs, or behaviour.

**Access limitations encountered (affects what is grade A vs. UNVERIFIED)**
- `web_search` was broken session-wide (per task brief) and was not used.
- `api.openalex.org` became rate-limited (HTTP 429) mid-session; `api.crossref.org` and `api.semanticscholar.org` were intermittently 429 as well.
- `export.arxiv.org` briefly returned 429.
- **`openai.com` HTML returns HTTP 403 to non-browser clients** ("Enable JavaScript and cookies to continue"). OpenAI report *titles, URLs and dates* were recovered from OpenAI's own RSS feed (`https://openai.com/news/rss.xml`, 1,229 items) — that is grade A for existence/date — but the **body text of OpenAI's 2026 influence-operation reports could not be read**, so their internal numbers are marked **UNVERIFIED** here.
- **`anthropic.com`** — the September 2026 report URL from the Google News index returns HTTP 404; the Anthropic Transparency Hub loads but the specific report did not resolve. Content **UNVERIFIED**.
- **`citizenlab.ca`** — the September 2026 "BlackCore's Influence Operations for Hire" note could not be located (404 on guessed slugs; site search is JS-driven). Existence is grade C (Google News index entry), content **UNVERIFIED**.
- Google News RSS redirect URLs do not resolve to publisher pages (confirmed by following redirects: they terminate on a Google consent/redirect page), so for those items I cite headline + source + date, which is the brief's instructed method.

**A note on one commonly mis-cited paper (correction for the brief)**
The paper often cited as *Li et al., "Measuring and Controlling Persona Drift in Language Model Dialogs"* (arXiv **2402.10962**) is in fact titled **"Measuring and Controlling Instruction (In)Stability in Language Model Dialogs"** (title as of v4). Any brief that describes it as a months-long persona-stability study is mis-citing it: it is an **8-round** self-chat benchmark. See §1.1.

---

# TOPIC 1 — Long-running persona management: can LLM agents sustain a consistent human-seeming identity over months?

## 1.1 Peer-reviewed / arXiv work on persona consistency and persona drift

**(a) Technical possibility — established. (b) Demonstrated capability — partial, and the numbers are mostly about *short* horizons and *measurable* drift.**

| # | Finding (with numbers) | Source | Date | URL | Grade |
|---|---|---|---|---|---|
| 1.1.1 | **Significant instruction drift within eight (8) conversation rounds** for LLaMA2-chat-70B and GPT-3.5, measured via self-chats between two instructed chatbots. Authors attribute the mechanism to **attention decay** over long exchanges and propose `split-softmax` as a mitigation that "compares favorably against two strong baselines." | Li et al., *Measuring and Controlling Instruction (In)Stability in Language Model Dialogs*, arXiv 2402.10962 (v4) | 13 Feb 2024 | https://arxiv.org/abs/2402.10962 | **B** |
| 1.1.2 | **InCharacter**: 32 distinct characters, 14 psychological scales. State-of-the-art role-playing agents "exhibit personalities highly aligned with the human-perceived personalities of the characters, achieving an **accuracy up to 80.7%**." | Wang et al., *InCharacter*, arXiv 2310.17976 | 27 Oct 2023 | https://arxiv.org/abs/2310.17976 | **B** |
| 1.1.3 | **Multi-turn RL reduces persona inconsistency by over 55%.** Three automatic metrics defined and validated against human annotations: prompt-to-line consistency, line-to-line consistency, Q&A consistency. Fine-tuned for three roles (patient, student, social chat partner). Baseline observation: off-the-shelf LLMs "often drift from their assigned personas, contradict earlier statements, or abandon role-appropriate behavior." | *Consistently Simulating Human Personas with Multi-Turn Reinforcement Learning*, arXiv 2511.00222 | 31 Oct 2025 | https://arxiv.org/abs/2511.00222 | **B** |
| 1.1.4 | **ContextEcho** — a benchmark for persona drift "at deployment scale": thousands of tool-using turns, context compaction, hours-long sessions. Introduces a **25-probe identity suite** and a snapshot-then-probe protocol. Explicit claim: "Existing persona-stability studies focus on short dialogues and **report little shift**, leaving real-world … regimes largely uncharacterized." Deployer evaluations "may miss" user-visible drift. | *ContextEcho: A Benchmark for Persona Drift in Long Agentic-Coding Sessions*, arXiv 2605.24279 | 22 May 2026 | https://arxiv.org/abs/2605.24279 | **B** |
| 1.1.5 | **Nautilus Compass** — black-box persona-drift detector for production agents; operates only at the prompt-text layer (BGE-m3 embeddings, weighted top-k mean cosine similarity vs. behavioural anchors), because white-box methods (persona vectors) need weights and cannot be applied to closed APIs. | arXiv 2605.09863 | 11 May 2026 | https://arxiv.org/abs/2605.09863 | **B** |
| 1.1.6 | **SPASM** — stability-first multi-turn simulation; names the failure modes: **persona drift, role confusion, and "echoing"** (one agent gradually mirrors its partner). | arXiv 2604.09212 | 10 Apr 2026 | https://arxiv.org/abs/2604.09212 | **B** |
| 1.1.7 | **"Assistant Axis"** — the leading component of persona space captures how far a model operates in its default Assistant mode; steering away increases identification as other entities and at extreme values induces "mystical, theatrical" style. Relevant because it shows persona is a *steerable direction*, not a fixed property. | arXiv 2601.10387 | 15 Jan 2026 | https://arxiv.org/abs/2601.10387 | **B** |
| 1.1.8 | **CORE / PERSIST** — persona-state robustness under "sequential interaction stress: ambiguity, conflict, and controlled social influence"; uncertainty-aware belief revision. | arXiv 2609.12373 | 11 Sep 2026 | https://arxiv.org/abs/2609.12373 | **B** |
| 1.1.9 | **Fine-tuning objective choice systematically shifts persona drift** and adversarial robustness at larger training budgets (six objectives compared with data/domain/architecture held fixed). | arXiv 2601.12639 | 19 Jan 2026 | https://arxiv.org/abs/2601.12639 | **B** |

**Analytic reading of §1.1.** The literature supports **(a) technical possibility** strongly and **(b) demonstrated capability** weakly-to-moderately. Crucially, **no located study measures sustained identity consistency over a period of months.** The measured horizons are: 8 rounds (1.1.1); short dialogues (1.1.4, explicitly critiqued); hours-long sessions (1.1.4). The "over months" framing in the task is therefore **not supported by direct measurement** — it is an extrapolation. The correct analytic statement is: *drift is measurable and reproducible at short-to-medium horizons; mitigations exist and are effective in benchmark conditions (e.g. −55% inconsistency, 1.1.3), but there is no peer-reviewed evidence of month-scale identity stability, and 2026 work (1.1.4) explicitly argues that deployer evaluations under-detect drift.*

**Countervailing detail worth flagging:** the strongest drift findings are for **open-weight / older models** (LLaMA2-70B-chat, GPT-3.5, 2024) and for **self-chat between two instructed chatbots** — a setting far harsher than a single agent with memory scaffolding and periodic re-anchoring. Extrapolating 8-round drift to a well-engineered multi-month operation overstates the case.

## 1.2 Can LLM output and LLM personas pass as human?

**(b) Demonstrated capability — yes, at roughly chance level in short interactive tests. (b-contra) Detection is unreliable in *both* directions, and false positives are severe.**

| # | Finding (with numbers) | Source | Date | URL | Grade |
|---|---|---|---|---|---|
| 1.2.1 | **Randomised, controlled, preregistered Turing test.** 5-minute conversations. **GPT-4 was judged human 54% of the time**; ELIZA 22%; **actual humans 67%**. Paper: "the first robust empirical demonstration that any artificial system passes an interactive 2-player Turing test," and warns "deception by current AI systems may go undetected." Stylistic and socio-emotional factors mattered more than "intelligence." | Jones & Bergen, arXiv 2405.08007 | 9 May 2024 | https://arxiv.org/abs/2405.08007 | **B** |
| 1.2.2 | **GPT detectors are biased against non-native English writers.** Detectors were "near-perfect" on US-born 8th-graders' essays but classified **61.22% of TOEFL essays** by non-native writers as AI-generated. **All seven detectors unanimously flagged 18 of 91 TOEFL essays (19%)**; **89 of 91 (97%)** were flagged by at least one detector. | Liang et al. (Stanford), summarised by Stanford HAI | 15 May 2023 | https://hai.stanford.edu/news/ai-detectors-biased-against-non-native-english-writers | **B** (summary of peer-reviewed work) |
| 1.2.3 | AI detectors falsely accused international students of cheating; documented real-world harm. | *The Markup* | 14 Aug 2023 | (headline/source via Google News index) | **C** |
| 1.2.4 | "AI Detectors Are Out, New Approaches Are In" — the field's own retreat from detection as a decision tool. | *Inside Higher Ed* | 5 Aug 2026 | (headline/source) | **C** |
| 1.2.5 | "AI detectors are creating a new era of distrust." | *The Verge* | 9 Aug 2026 | (headline/source) | **C** |
| 1.2.6 | "Why AI Generated Content Detectors Are Not Reliable Enough For High-Stakes Decisions." | techbusinessnews.com.au | 31 May 2026 | (headline/source) | **C/D** |
| 1.2.7 | Vendor self-report that a commercial detector handles ESL text well (Pangram). Treated as **E** — the vendor sells detection. | Pangram | 23 Apr 2025 | (headline/source) | **E** |

**Analytic reading of §1.2.** The **defensive asymmetry is the headline finding**: at a 54% human-judgement rate for GPT-4 (1.2.1), *interactive* identification of an LLM interlocutor is at chance. But the same body of work shows that **automated detection is not a reliable defence either**, and that its dominant real-world failure mode is **false positives against legitimate users** — 61.22% of TOEFL essays (1.2.2). For a defensive brief, this means:
- Attribution of an account as "AI-driven" cannot rest on detector output alone;
- Any enforcement policy keyed to AI-text detectors carries a large, quantified civil-liberties and false-enforcement cost;
- The 54%/67% gap in 1.2.1 is *small*: GPT-4 lagged humans by only 13 percentage points in a 5-minute text test. Extending to months of accumulated profile history, images and social graph is an extrapolation, not a measured result. **This is the single most important numeric caveat in Topic 1.**

## 1.3 Platform enforcement evidence (numbers, AI capability used, detection method, stated effectiveness)

**(c) Credible evidence of deployment — abundant and primary-sourced. (d) Documented impact — contested; the strongest official assessment is that impact is *limited*.**

### 1.3.1 EU External Action Service (EEAS) — the most quantitatively useful official source located

**Source: EEAS, *4th Annual Report on Foreign Information Manipulation and Interference (FIMI) Threats*, published 12 March 2026, covering calendar year 2025. Grade A.**
URL of landing page: https://www.eeas.europa.eu/eeas/4th-eeas-report-foreign-information-manipulation-and-interference-threats_en
PDF: https://www.eeas.europa.eu/sites/default/files/2026/documents/EEAS%204th%20Threat%20Report_web%20version_1.pdf

| Metric | Value |
|---|---|
| FIMI incidents detected and analysed, 1 Jan – 31 Dec 2025 | **540** |
| Attributed to Russia | **29%** |
| Attributed to China | **6%** |
| Unattributed (but showing coordination indicators) | **65%** |
| Unique channels involved | **10,500** |
| Of the ~3,000 most recurrent assets: covert/state-aligned | **90.5%** (86% state-aligned channels + others); only **9.5%** directly state-related |
| Observables (text, audio, video) recorded | **~43,000**, across **19** unique platforms |
| Concentration on platform X | **88%** of instances |
| **Incidents involving AI-related TTPs** | **27%** of detected incidents, **rising from 41 cases (2024) to 147 cases (2025)** — a **~259% increase** |

EEAS's own qualitative assessment, quoted directly (this is the load-bearing counterweight to AI-uplift claims):

> "Despite this expansion, much of the AI-generated material in 2025 **remains low-quality**. Threat actors prioritise quantity over quality, resulting in **limited overall impact as organic engagement remains low**. For example, Storm-1516 and Overload use AI-generated videos **easily identifiable as inauthentic by average viewers**, resulting in low overall impact and limited engagement metrics."

> "Instead of carefully targeting a single audience, AI tools are deployed at scale to keep a steady stream of content flowing. **The objective is not precision but presence**."

EEAS also documents **"LLM grooming"** — the Russian FIMI infrastructure **Portal Kombat** is "suspected of conducting Large Language Model (LLM) grooming, flooding the information space with low-quality multilingual content **in an effort to influence AI training data**." This is a genuinely novel and under-reported TTP class and should be in the brief.

Also documented by EEAS: synthetic audio "no longer experimental" and now standard, including **advanced voice cloning** (Operation Overload, Storm-1516); AI-generated imagery used during the **German legislative elections** (apocalyptic German landscapes) and in **Moldova**; AI-assisted impersonation of Western news outlets.

### 1.3.2 OpenAI — existence and cadence of reports (content UNVERIFIED)

Recovered from OpenAI's own RSS feed (grade **A** for title/date/URL; **UNVERIFIED** for content):

| Report | Date | URL |
|---|---|---|
| Disrupting a new covert influence campaign from Russia | 25 Aug 2026 | https://openai.com/index/disrupting-malicious-uses-of-ai-influence-campaign-russia |
| PRC-linked influence operations are targeting AI debates in the US | 10 Jun 2026 | https://openai.com/index/prc-linked-influence-operations-ai-debates |
| "Tech and Tariffs" Campaign: Influence activity targeting US tech policy | 1 Jun 2026 | https://openai.com/index/disrupting-malicious-uses-of-ai-tech-and-tariffs |
| "Data Center Bandwagon" Campaign: US-targeted influence activity | 1 Jun 2026 | https://openai.com/index/disrupting-malicious-uses-of-ai-data-center-bandwagon |
| Disrupting malicious uses of AI \| February 2026 | 25 Feb 2026 | https://openai.com/index/disrupting-malicious-ai-uses |
| Operation "Trolling Stone": Russia-linked influence activity | 1 Feb 2026 | https://openai.com/index/disrupting-malicious-uses-of-ai-trolling-stone |
| "Cyber Special Operations": China-linked influence planning | 1 Feb 2026 | https://openai.com/index/disrupting-malicious-uses-of-ai-cyber-special-operations |
| Disrupting malicious uses of AI: October 2025 | 7 Oct 2025 | https://openai.com/global-affairs/disrupting-malicious-uses-of-ai-october-2025 |
| Operation "Stop News" (recidivist), "Nine–emdash Line", PRC-linked abuse, etc. | 1 Oct 2025 | https://openai.com/index/disrupting-malicious-uses-of-ai-stop-news-2025 |
| Disrupting malicious uses of AI: June 2025 (incl. Sneer Review, VAGue Focus, STORM-2035, Uncle Spam, Helgoland Bite) | 5 Jun 2025 | https://openai.com/global-affairs/disrupting-malicious-uses-of-ai-june-2025 |

Secondary indicators of the August 2026 Russia report's content (grade **C**, headline-level): "OpenAI bans Russian ChatGPT accounts used in covert misinformation campaign" (CNBC, 25 Aug 2026); "OpenAI Uncovers a Covert Russian Influence Machine Using ChatGPT to Build Fake Expertise and Spread Pro-Moscow Narratives Across Social Media" (Yahoo Tech, 26 Aug 2026); "How Moscow Turned AI Into a Ghostwriting Machine for Global Influence" (UNITED24 Media, 26 Aug 2026). **Exact account/network counts are UNVERIFIED.** Also grade **C**: "From dating scams to fake lawyers: OpenAI details ChatGPT misuse in new threat report" (Reuters, 25 Feb 2026); "Russian propaganda network uses ChatGPT to plan influence operations in Africa" (The Record, 2 Mar 2026); "OpenAI says China-based actors stoking opposition to AI data centres" (Al Jazeera, 11 Jun 2026) — the latter two indicate the reports contain **operational-planning** use, not just content generation.

### 1.3.3 Anthropic

- "Detecting and countering misuse of AI: September 2026" — Anthropic, **10 Sep 2026** (grade **C** for existence via Google News index; URL unresolved, content **UNVERIFIED**).
- Secondary: "How Anthropic says Claude was used for weapons, spying and cyber operations" (Reuters, 14 Sep 2026); "AI lets small actors run state-level hacking campaigns, Anthropic report finds" (CyberScoop, 10 Sep 2026); "Anthropic: AI Misuse Is Entering a New Phase: From Cybercrime to Surveillance, Propaganda and Weapons" (Security Affairs, 12 Sep 2026); "Iran-linked operators used Anthropic's AI to build targeting files on U.S. warships" (qz.com, 11 Sep 2026); "Anthropic caught Russia-linked spies using Claude in hacking operations" (The Record, 11 Sep 2026); "Anthropic Blocked 5 Possible Attempts to Research Bioweapons With Claude AI" (PCMag ME, 12 Sep 2026). All grade **C**. **Note for the brief:** the *influence/propaganda* component of this report appears to be a minority of its content — the reporting emphasis is cyber, surveillance and CBRN. Do not over-read it as an influence-operations report.

### 1.3.4 Meta

Meta's own Adversarial Threat Report index is behind a JS/consent wall (`transparency.meta.com` returned an error body to non-browser clients). Located secondary items (all grade **C**):
- "Iranian influence operation using fake personas to deceive US Instagram users disrupted, Meta says" — The Record, 11 Mar 2026.
- "Meta removes Iran-linked network targeting Azerbaijan in latest threat report" — AzerNews, 17 Mar 2026.
- "Meta blocks Iranian plot to impersonate Americans with AI" — Seeking Alpha, 27 Aug 2026. **This headline is directly relevant to Topic 1: impersonation of *nationality* via AI, allegedly at network scale.** Numbers UNVERIFIED.
- "Meta Wipes Out Cyberspies, Russian Bot Farm From Facebook Platform" — Cybercrime Magazine, 12 Apr 2026.
- "Meta's Oversight Board warns that 'Community Notes' aren't a proper substitute for fact-checking globally" — Nieman Lab, 26 Mar 2026 (see Topic 3).
- Historical scale anchors: Meta removed **63,000 accounts** belonging to "Yahoo Boys" (Vanguard, 24 Jul 2024); Meta disrupted a China-origin **Spamouflage** network (Dark Reading, 29 Aug 2023).

### 1.3.5 TikTok

- **Malta, September 2026:** TikTok flagged a pro-Labour fake "news" network during the election — "TikTok flags pro-Labour fake 'news' network during election" (Times of Malta, 14 Sep 2026); "TikTok Busts Fake News Network Pushing Pro-Labour Content During Malta Election" (Lovin Malta, 15 Sep 2026). Grade **C**.
- TikTok disrupted **15 influence operations** in the year to May 2024, including one from China (NBC News, 24 May 2024). Grade **C**.
- TikTok removed **284 accounts** linked to a Chinese disinformation group (The Guardian, 31 Aug 2023). Grade **C**.
- "Influence Campaign on TikTok Uses AI Videos to Boost Hungary's Orbán Ahead of Crucial Elections" (NewsGuard, 20 Mar 2026). Grade **C/E** (NewsGuard is a commercial rating service).
- TikTok primary transparency announcements exist (e.g. "Bringing even more transparency to how we protect our platform", 18 Dec 2024) but were not retrievable as full text in this session.

### 1.3.6 Google / YouTube

- "Google Scrubs 18,000+ Channels in Q4 Influence Crackdown" — The Tech Buzz, 29 Jan 2026. Grade **C/D**; the primary Google TAG bulletin was **not located**, so the 18,000 figure is **UNVERIFIED**.
- "YouTube wipes out thousands of propaganda channels linked to China, Russia, others" — NBC 5 Dallas-Fort Worth, 21 Jul 2025. Grade **C**.

### 1.3.7 X / Twitter

- "X uncovers 200,000 Chinese fake accounts as Google, Microsoft and Meta track CCP's global propaganda network" — organiser.org, 31 Aug 2026. Grade **D** — single low-quality source, figure **UNVERIFIED**; treat as a lead, not a datum.

### 1.3.8 Reddit — the best-specified platform disclosure located

**Source: Reddit, "How We're Keeping Reddit Real and Safe in the AI Era", 6 July 2026. Grade A (platform primary).**
URL: https://www.redditinc.com/blog/how-were-keeping-reddit-real-and-safe-in-the-ai-era

| Metric | Value |
|---|---|
| Spam views blocked **before** reaching a human user | **23 million per day** |
| Reduction in user spam exposure, Jan–Mar 2026 vs. prior three months | **~20%**, plus an additional **10–15%** drop in spam-account exposure |
| Fake votes revoked | **~2 million per day** |
| Detection-to-enforcement time on hate/violence (English text) | **under 5 seconds** (down from "hours") |
| Increase in enforcement actions on hate/violent content | **>200%** |
| Reduction in exposure to potentially harmful content | **>40%** |
| Reduction in **false positives** (legitimate content removed) | **>40%** |
| Anti-inauthenticity tooling named | Reputation Filter, Crowd Control, Ban-Evasion Detection; **passkeys** for human verification (Reddit Q1FY26, MediaNama, 5 May 2026 — grade **C**) |

**This is a rare published pair of numbers for both detection yield *and* false-positive reduction** — directly usable in a defensive brief to argue that behavioural/behavioural-layer enforcement (not AI-text detection) is where measured gains are.

### 1.3.9 The loaded case: a real-world LLM persona deployment on a moderated platform (research, 2025)

**Grade C** (multiple independent outlets). University of Zurich researchers deployed **secret AI bots inside r/changemyview** without disclosure; the account was banned by Reddit, which called the experiment **"unethical."**
Sources: "Researchers secretly infiltrated a popular Reddit forum with AI bots, causing outrage" (NBC News, 29 Apr 2025); "Reddit slams 'unethical experiment' that deployed secret AI bots in forum" (Washington Post, 30 Apr 2025); "'Unethical' AI research on Reddit under fire" (Science, 30 Apr 2025); "Reddit users were subjected to AI-powered experiment without consent" (New Scientist, 29 Apr 2025); "A controversial experiment on Reddit reveals the persuasive powers of AI" (NPR, 7 May 2025).

**Why this matters analytically:** it is a documented case of an LLM persona operating inside a heavily moderated, human-community platform, generating content that real users engaged with as if human, over a period long enough to require community-level exposure. It is the closest thing located to (c) "credible evidence of deployment" for AI personas on a major platform — but it is a **research deployment, not an adversarial one**, and the operator was caught **after self-disclosure**, not by platform detection. **The exact persuasion effect sizes are UNVERIFIED** in this session (NPR/Science full text not retrieved). Reddit's own subsequent AI-era security post (§1.3.8) does **not** claim reliable detection of human-seeming LLM personas; its published metrics are about *spam* and *hate*, not about *identity*.

## 1.4 FINAL ASSESSMENT — TOPIC 1

- **(a) Technical possibility: established.** Drift is measurable (8 rounds, §1.1.1); personality fidelity up to 80.7% (§1.1.2); inconsistencies reducible by >55% with RL (§1.1.3); GPT-4 wins 54% of 5-minute Turing judgements (§1.2.1).
- **(b) Demonstrated capability: partial.** All *quantified* persona-consistency results are at horizons of rounds/hours. **No located study measures month-scale identity stability.** 2026 work argues deployer evaluations under-detect drift.
- **(c) Deployment: yes, but the AI-specific capability is mostly *content*, not *persona longevity*.** EEAS attributes 147 AI-TTP incidents in 2025 (§1.3.1). OpenAI/Anthropic/Meta/TikTok report recurrent AI-enabled networks. The one documented long-running LLM persona in a moderated community was a *research* deployment that was disclosed, not detected (§1.3.9).
- **(d) Real-world impact: officially assessed as low.** EEAS, an EU institution, states AI-generated material "remains low-quality" with "limited overall impact as organic engagement remains low" and content "easily identifiable as inauthentic by average viewers" (§1.3.1). The 54%-vs-67% Turing result (§1.2.1) is a *short-text* result and does not establish month-scale impersonation.

### Bottom line — Topic 1 (200 words)

The evidence supports a *capability* claim and a *limited* impact claim, not a "months-long undetectable persona" claim. On capability: persona drift is a measured, reproducible phenomenon — statistically significant instruction drift inside eight dialogue rounds in 2024-era models, up to 80.7% personality fidelity in role-play benchmarks, and inconsistency reducible by more than 55% with multi-turn reinforcement learning. On human-seeming: GPT-4 was judged human 54% of the time versus 67% for real humans in a preregistered 5-minute Turing test, so at short horizons interactive detection is near chance. But that result is 5 minutes, not months, and the drift literature has *no* month-scale measurement; the 2026 ContextEcho paper exists precisely because short-horizon studies "report little shift." Detection is not a viable defence either: seven detectors unanimously flagged 19% of non-native-English essays and 61.22% were flagged overall. Platform data show enforcement works at the behavioural layer (Reddit: 23M spam views/day blocked, false positives down >40%), while the EU's own 2026 assessment of AI-enabled FIMI is that output is low-quality with limited organic engagement and "the objective is not precision but presence."

---

# TOPIC 2 — Cross-platform coordination: tooling and detection

## 2.1 Detection methods and their measured performance

**Foundational method (grade B):**

**Pacheco, Hui, Torres-Lugo, Truong, Flammini, Menczer, "Uncovering Coordinated Networks on Social Media: Methods and Case Studies", ICWSM 2021 (arXiv 2001.05658, v2 7 Apr 2021).** URL: https://arxiv.org/abs/2001.05658

Abstract-verified content: the paper "introduce[s] a **general, unsupervised network-based methodology** to uncover groups of accounts that are likely coordinated," constructing "coordination networks based on **arbitrary behavioral traces shared among accounts**." Five case studies are presented — **four in the diverse contexts of US elections, Hong Kong protests, the Syrian civil war, and cryptocurrency manipulation** — detecting coordinated Twitter accounts "by examining their **identities, images, hashtag sequences, retweets, or temporal patterns**."

**Important methodological caveat for the brief:** this canonical paper is explicitly **unsupervised** and presents *case studies*, not a labelled supervised evaluation. **No precision/recall/F1 figures appear in the abstract**, and I could not retrieve the full PDF in this session. The enduring contribution is the **method family** (co-identity, co-image, co-hashtag-sequence, co-retweet, co-temporal networks) that later work — including the Telegram study in §2.2 — builds on. **Do not attribute a headline accuracy number to Pacheco et al.** Aggregator/labelling tooling from the same Indiana University group produced the **Coordination Network Toolkit (CNT)**; its validation numbers were **not located**.
- **"Copypasta" detection** and coordinated link sharing: established lines of work; **specific accuracy figures UNVERIFIED in this session** (see Failed Searches).

**A key structural caveat that the literature itself raises (grade B/C, Carnegie Endowment, 31 Jan 2024):**
> "a handful of empirical studies suggest that such networks, and social media influence operations more generally, **may not be very effective at spreading disinformation**. These early findings imply that platform takedowns may receive **undue attention** in public and policymaking discourse."

Carnegie also finds: fact-checking rarely produces a **backfire effect**; and "**Generative AI will have complex effects but might not be a game changer**," because belief is driven more by repetition, narrative appeal, perceived authority and group identity than by content realism. URL: https://carnegieendowment.org/research/2024/01/countering-disinformation-effectively-an-evidence-based-policy-guide (grade **B/C**).

## 2.2 Measured, real-world coordination detection with numbers

**Best-quantified located case (grade B):** *Large-scale detection of multilingual coordinated activity on Telegram*, **npj Complexity**, 18 Nov 2025. URL: https://www.nature.com/articles/s44260-025-00056-w

| Metric | Value |
|---|---|
| Messages analysed | **4,097,589** political messages (English + Russian) |
| Channels | **6,503** Telegram channels |
| Period | **1 Sep – 30 Nov 2024** (around the 2024 US Presidential Election) |
| Operations uncovered | **5** monolingual/cross-lingual influence operations |
| Detection criteria used | **"highly stringent criteria, including exact message duplication and simultaneous posting"** — i.e. *verbatim* text matching |
| Russia-backed IO | **23 broadcast channels** claiming to be official Russian embassies, **many verified**; coordinated network of **10 embassy accounts + 22 non-embassy broadcast channels**; **15 of the embassy channels (~65%) created within 4 days of Russia's 24 Feb 2022 invasion**; **14 accounts (~44% of the network) did not openly claim Russian affiliation** |
| Timing signature | Many posts appeared **within 0–5 seconds** of one another across distinct channels; notable peaks in duplication **exactly 24 h apart** |
| Pro-Palestine / pro-Yemen IOs | 2 user accounts + 19 broadcast channels; and 11 broadcast channels posting "in perfect synchrony, with no observable delay" |
| Irish-region network | **26 non-broadcast channels created within a 3-day window**, identical profile pictures, similar descriptions, usernames referencing Irish regions; mostly **organic participants**, with **2 automated accounts** propagating high volumes of nationalist/anti-immigration/conspiracy content |

**Critical analytic point:** the method that produced these results relies on **exact/near-exact duplication and simultaneous posting**. The paper's own claim to "highly stringent criteria" is a strength for precision and, by construction, a **weakness for recall against any actor who varies surface form**. This is the mechanism by which generative AI plausibly *degrades* coordination detection — but **the paper does not test that**, so treating it as proof would be an inference, not a finding.

**Also located (grade B, existence confirmed via AAAI proceedings index; content UNVERIFIED):** "Coordinated Inauthentic Behavior on TikTok: Challenges and Opportunities for Detection in a Video-First Ecosystem", AAAI, 25 May 2026 — relevant because video-first ecosystems break text-similarity pipelines.

## 2.3 Is there evidence AI makes coordination *harder* or *easier* to detect?

**Direct empirical test of AI-generated content evading coordination detection: NOT LOCATED.** This is a genuine gap. What exists instead:

**(a) Technical possibility — strongly argued, simulation only (grade B paper / C press):**
*Emergent Coordinated Behaviors in Networked LLM Agents: Modeling the Strategic Dynamics of Information Operations* — USC Information Sciences Institute (Luceri, Ye, Saeedi, Ferrara, Orlando, Moscato, La Gatta), **accepted at The Web Conference 2026**; announced 11 Mar 2026. URL (press): https://viterbischool.usc.edu/news/2026/03/usc-study-finds-ai-agents-can-autonomously-coordinate-propaganda-campaigns-without-human-direction/

| Element | Detail |
|---|---|
| Setup | **Simulation** modelled on X: **50 AI agents — 10 as influence operators, 40 as ordinary users**; later **expanded to 500 agents with consistent results** |
| Mission | promote a fictitious candidate and spread a campaign hashtag |
| Three conditions | (i) goal only; (ii) goal + knowledge of who teammates are; (iii) periodic strategy sessions with voting on a collective plan |
| Headline result | **"simply telling the bots who their teammates were produced coordination nearly as strong as when bots actively strategized together."** Agents amplified each other, converged on talking points, recycled successful content |
| Researcher claim | Luceri: "this is **not a future threat**: it's already technically possible… disinformation campaigns could soon be fully automated, faster, and **much harder to detect**" |
| Explicit limitation | **"the study was only a simulation"** |
| Defensive finding | The researchers argue detection should focus on **how accounts behave together** — shared content, rapid mutual reinforcement, near-identical narratives from unconnected accounts — signs "detectable even when the content itself looks organic." Luceri also notes **aggressive bot detection could reduce active user base**, i.e. a commercial disincentive to act |

**(b/c) Deployment evidence for specifically LLM-coordinated networks (grade C/E, existence only):**
- "Fake Faces And Coordinated Amplification: How The Network Of 434 AI Trolls Operates" — Myth Detector (მითების დეტექტორი), 24 Aug 2026. **A named, counted network of 434 AI accounts with synthetic profile photos and coordinated amplification.** Grade **C/E** (regional NGO fact-checker, no disclosed method in the headline). Numbers **UNVERIFIED** but this is a high-value lead — it is the closest located thing to a *counted* AI-persona network with documented coordination.
- "Risky Bulletin: Meta disrupts Mexican cartels" — Risky Business, 16 Mar 2026 (grade C).
- ISD, "An old dog with no new tricks: Matryoshka targets regional elections in Germany" — 4 Sep 2026 (grade **C/E**).
- Recorded Future, "Russian Influence Operations Targeting Germany's 2025 Elections" — 13 Feb 2025 (grade **C/E**).
- Citizen Lab, "Research Note: BlackCore's Influence Operations for Hire" — 17 Sep 2026 (grade **A** for existence, content **UNVERIFIED**). *Influence-operations-for-hire is analytically important: it converts capability into a procurable service.*
- Microsoft, "AI as tradecraft: How threat actors operationalize AI" — 6 Mar 2026, https://www.microsoft.com/en-us/security/blog/2026/03/06/ai-as-tradecraft-how-threat-actors-operationalize-ai/ (grade **A/C**, vendor primary). Findings: AI used across the attack lifecycle; **persona development** ("Identifying in-demand skills, certifications, and experience requirements to align personas with target roles"; "Investigating commonly used tools, platforms, and workflows in specific industries to ensure persona credibility"); **reuse of the same AI-generated photo across multiple personas with slight variations**; real-time voice modulation to conceal accent; **GAN-based generation of look-alike domains** "increasingly difficult to distinguish from legitimate infrastructure using static or pattern-based detection methods"; and — critically for the brief — "**early threat actor experimentation with agentic AI**… **Although not yet observed at scale** and limited by reliability and operational risk." Microsoft does not put a number on scale.

**(d) How many accounts are needed for meaningful reach?** **NOT ESTABLISHED.** I ran multiple targeted searches (see Failed Searches) and found **no credible study quantifying a critical-mass threshold** for accounts needed to shift a narrative. The nearest relevant quantities are: the USC simulation's **10 operators among 50 agents (20%)**, expanded to 500 (§2.3); the 434-account AI troll network (grade C/E); and the EEAS position that AI is deployed for **presence, not precision**. **Do not assert a specific account-count threshold in the brief.**

## 2.4 2024 US election and 2025 German election coordination studies

- **2024 US election:** the npj Complexity Telegram study (§2.2) is the strongest located quantified study — 4.1M messages, 6,503 channels, five IOs, 0–5s synchrony, 24h periodicity.
- **German elections:** German legislative elections are documented by **EEAS** as a venue for AI-generated imagery (apocalyptic German landscapes, blaming a specific party) disseminated by **Russian CIB accounts** (§1.3.1). ISD's Matryoshka note (4 Sep 2026) covers German *regional* elections. GMF/Alliance for Securing Democracy's **Hamilton 2.0** dashboard and the **EDMO** network publish German election coordination tracking but were not retrievable with numbers here.
- "There was coordinated inauthentic user behavior in the COVID-19 German X-discourse, but did it really matter?" — *Frontiers in Political Science*, 6 May 2025. **This is a valuable null-result-shaped title** (coordination present, impact questioned). **Full text not retrieved (Cloudflare); effect sizes UNVERIFIED.** Worth retrieving for the brief.

## 2.5 FINAL ASSESSMENT — TOPIC 2

- **(a) Technical possibility: yes, and now demonstrated in simulation.** 500-agent networked LLM coordination reproduces the strategic behaviour of a human-run operation, and merely *informing* agents who their teammates are is enough to produce near-maximal coordination (§2.3). This is a genuinely important result: it removes the need for a central controller.
- **(b) Demonstrated capability: detection works best on surface-form duplication.** The strongest quantified real-world detection (npj Complexity, §2.2) succeeded using **exact message duplication and simultaneous posting** across 6,503 channels and 4.1M messages.
- **(c) Deployment: multiple credible, separately-sourced AI-enabled networks** (EEAS 147 AI-TTP incidents; Microsoft persona operations; 434-account AI troll network; OpenAI/Anthropic/Meta/TikTok takedowns).
- **(d) Impact: contested, and officially assessed as low** by EEAS (low organic engagement) and doubted by Carnegie (influence operations "may not be very effective").
- **The central analytic uncertainty:** detection methods depend on surface-form similarity; AI generation attacks exactly that dependency. But **no located study measures the recall penalty.** The claim "AI makes coordination harder to detect" is **plausible and mechanism-supported, but empirically unmeasured**. The claim "AI makes coordination easier to detect" (via API artefacts, behavioural signatures) is also **unmeasured**. Say so explicitly.

### Bottom line — Topic 2 (200 words)

Cross-platform coordination detection is a mature field whose best-quantified real-world results still rest on **verbatim content replication**. The strongest located study analysed 4,097,589 Telegram messages across 6,503 channels around the 2024 US election and uncovered five operations using "highly stringent criteria, including exact message duplication and simultaneous posting" — the Russia-backed operation involved 23 embassy-branded channels, many verified, 65% created within four days of the 24 February 2022 invasion, with posts appearing 0–5 seconds apart and 24-hour duplication cycles. On AI: a USC/ISI paper accepted at The Web Conference 2026 simulated 50 agents (10 operators, 40 ordinary users; later 500) and found that merely telling agents who their teammates were produced coordination nearly as strong as explicit joint strategising — the researchers call automated coordination "already technically possible." But this is a **simulation**; no located study measures whether LLM-generated posts actually defeat coordination detectors, and no credible study quantifies how many accounts are needed for meaningful reach. Meanwhile the EU's 2026 official assessment finds AI-enabled output low-quality with limited organic engagement, and Carnegie finds influence operations may be substantially less effective than assumed — takedowns may receive "undue attention."

---

# TOPIC 3 — Automated rebuttal evasion / routing around fact-checks

## 3.0 HEADLINE FINDING (state this first)

**No credible evidence was located of an AI agent that detects fact-checking and autonomously changes messaging to avoid it.** The capability is **plausible** (adaptive adversarial NLP against misinformation classifiers is demonstrated in the lab; narrative pivoting is well documented for *human-directed* operations) but **deployment is unproven**. Every "adaptation" case located is consistent with ordinary human PR/narrative iteration, and I found **no** report of an AI system with a closed feedback loop from fact-check detection to message mutation. The strongest, best-evidenced finding in this topic is a **defensive gap**, not an offensive one: **the fact-checking pipeline is quantitatively far too slow, and too thinly applied, to intercept virality.**

**The closest academic artefact (and why it still does not establish the claim) — §3.1a below.** XARELLO is a reinforcement-learning attacker that explicitly "learns from previous successes and failures" and dominates fixed-perturbation baselines against fact-checking classifiers. But it is **offline**, it attacks a **classifier's robustness over a dataset**, and its "fact-checking" task is a *credibility-assessment* dataset (BODEGA), **not a live verdict about its own fresh claim.**

**What would constitute evidence if it existed** (for the brief's "what to watch" section): (i) a **closed-loop study** in which a generative agent is given fact-check verdicts (or claim-matching scores) about **its own generated claims** and iteratively rewrites, reporting an **evasion rate against a real fact-check pipeline at fixed semantic fidelity with the query budget disclosed**; (ii) platform telemetry showing an account changed a claim's form **specifically after** receiving a fact-check, with timestamp ordering and controls; (iii) a named, documented tool whose function is fact-check-aware rewriting; (iv) a documented rise in **claim-matching failure rates** at fact-checking organisations. **None of these were located.**

## 3.0a Adaptive evasion — the academic literature (closest artefacts)

**(a) Technical possibility — ESTABLISHED in the lab. (b) Demonstrated capability — real, but against classifiers, not verdicts.**

| # | Finding (with numbers) | Source | Date | Grade |
|---|---|---|---|---|
| 3.0a.1 | **XARELLO** — "a generator of adversarial examples for testing the robustness of text classifiers based on **reinforcement learning**. Our solution is **adaptive, it learns from previous successes and failures** in order to better adjust to the vulnerabilities of the attacked model. This reflects the behaviour of a **persistent and experienced attacker**, which are common in the misinformation-spreading environment." This is **the closest located artefact to the central question.** | Przybyła, McGill & Saggion, WASSA@ACL 2024, DOI `10.18653/v1/2024.wassa-1.11` | Aug 2024 | **B** |
| 3.0a.2 | XARELLO vs **BiLSTM fact-checking**, **confusion score**: **XARELLO 100%** vs BERT-ATTACK **86%** vs DeepWordBug **57%**. | ibid. | Aug 2024 | **B** |
| 3.0a.3 | XARELLO vs fact-checking, **quality score 77% vs 53%** (BERT-ATTACK), reaching an adversarial example in **7.42 queries on average vs 146**. | ibid. | Aug 2024 | **B** |
| 3.0a.4 | XARELLO vs **GEMMA (2B): 58% vs 47%** — *the largest model was MORE vulnerable*. | ibid. | Aug 2024 | **B** |
| 3.0a.5 | One-shot adversarial attack success rates against **fake-news classifiers** (Koenders, Filla, Schneider & Woloszyn): **total success 65.15%**; mean ASR **TextFooler 81.17%**, PWWS 77.5%, IGA 70%, PSO 68.33%, BAE 67.5%, DeepWordBug 63%, TextBugger 62.5%, Pruthi 27.83%, CheckList 9.83%. Best pairs: **RoBERTa vs TextFooler 92.5%**; BERTweet vs IGA 90%. | arXiv:2107.07970 | Jul 2021 | **B** |
| 3.0a.6 | **XARELLO's own NULL RESULT:** adaptive attacks achieved **no improvement on news-bias assessment** with long inputs; prior work cited showing fake-news detection as "relatively robust." | ibid. | 2024 | **B** |

**Why this does not establish the central claim — the gap is categorical, not incremental.** The entire located literature attacks **credibility / spoof / bias / AI-text detectors**. It does **not** attack **fact-check verdicts**. Even XARELLO's "fact-checking" task uses the BODEGA **credibility-assessment** dataset, not a real fact-check pipeline's verdict about a claim the agent itself just authored. There is **no located paper** in which a generative agent (i) emits a claim, (ii) receives a fact-check verdict or claim-match score about that specific claim, and (iii) iterates until the fact-check no longer matches — with an evasion rate reported. **That is the missing experiment.**

### ⚠️ CITATION TRAP — correct this if it appears in the brief

**TextFooler's widely-quoted 99.7% attack success rate is on IMDB *sentiment classification* (and 97.8% Yelp, 95.8% SNLI) — NOT on fake-news or fact-checking systems.** Perturbing only 5.1% of words. It is routinely miscited as "attacks on misinformation AI." **The fake-news-specific numbers are the 65–92% range in 3.0a.5, not 99.7%.** Source: Jin et al., TextFooler (arXiv:1907.11932), grade **B** for the underlying result, grade **B** for the correction.

## 3.1 The quantified defensive gap — Community Notes (the load-bearing number in Topic 3)

**Source: "Community-based fact-checking reduces the spread of misleading posts on X (formerly Twitter)", *Nature Communications*, 5 May 2026, DOI 10.1038/s41467-026-72597-0. Grade B (peer-reviewed; ethics approval from the University of Luxembourg, ref ERP 23-053 REMEDIS). URL: https://www.nature.com/articles/s41467-026-72597-0**
*Caveat: author list was not retrievable from the rendered page in this session (no author block in the extracted text). Cite by journal + DOI + date, or retrieve the author list before publication.*

| Metric | Value |
|---|---|
| Scale | **N = 237,180** community-fact-checked cascades; **>431 million** reposts; 20 months (6 Oct 2022 – 11 Jun 2024) |
| Method | Difference-in-Differences + negative binomial regression; one-to-one matched control group; placebo test; HonestDiD robustness |
| **Effect once a note is DISPLAYED** | **−0.612 ATT** → **61.2% reduction** in subsequent reposting (99% CI [−0.617, −0.608], z = −211.71, p < 0.001) |
| Effect at hour 1 | **−36.3%** |
| Effect at hour 2 / 4 / 8 / 12 | **−53.0% / −61.3% / −64.4% / −67.4%** |
| **System-wide effect (cumulative, 36h)** | **−14.9%** (median **10.1%**); average reduction of only **430 reposts** (1792 actual vs. 2222 predicted) |
| **Note lag** | Average **62.9 hours** from post creation to note display; **median 18.1 hours**. **75.7%** of helpful notes displayed within 36h |
| **Post half-life** | **6.25 hours** (time at which 50% of 36h reposts have occurred) |
| Counterfactual | If notes were displayed at **hour 2**, reduction would be **52.3%** (p < 0.001); **beyond 24 hours the effect becomes statistically insignificant** |
| Author behaviour | Odds of authors **deleting** their post: **+94.3%** (RDD at the 0.40 helpfulness threshold; 99% CI [0.611, 1.342], z = 9.15, p < 0.001) |
| **Where it is WEAKER** | Significantly weaker for **high-follower and verified accounts**, and for posts on **health-related and political topics**. **Attached media: the paper contradicts itself** — the Results section reports *smaller* efficacy "for posts that had media elements", while the Discussion states media "significantly amplified the intervention effect." **Flag as unresolved; do not cite either direction without re-reading the source.** |
| **Where it is NOT weaker** | No statistically significant difference between verified vs. non-verified reposters, left- vs. right-leaning reposters, or high- vs. low-exposure-to-misinformation reposters → "broadly effective across both sides of the political spectrum and… even people who are steeped in misinformation are responsive" |
| Mechanism | Largest effect on **"disconnected" reposters** with no prior interaction with the author (**−68.2%** vs **−58.6%** for connected reposters; efficacy **9.6% larger** for disconnected users) |
| **No moderation knock-on (null result)** | Community Notes did **not** trigger further platform enforcement: the treatment effect on post **suspension/protection** was **not statistically significant**. Of inaccessible posts, manual review of 1,500 found **94.4%** were due to account suspensions (platform-enforced), not note-driven. Useful counter-argument to "notes are a censorship vector." |

**Analytic reading.** This is the single most decision-relevant number set for Topic 3. Fact-checks work **when they land**. They land **~63 hours late on average** against a **6.25-hour** half-life. That is why the population-level effect collapses from 61.2% to 14.9%. **The defensive problem is latency, not efficacy.** For evasion analysis: an operator aiming to "route around" fact-checking need not detect anything — **the diffusion race is already won by the time the check appears**. This makes deliberate AI-driven evasion *less* necessary than the framing suggests, which is itself an important analytic conclusion.

**Related (grade C/D, numbers UNVERIFIED):**
- *Understanding the strengths and limitations of community-based responses to misinformation* — PNAS, 24 Nov 2025 (Cloudflare-blocked; full text not retrieved).
- "Study Finds X's Community Notes Provides Accurate Responses to Vaccine Misinformation" — UC San Diego Today, 24 Apr 2024 (accuracy rates UNVERIFIED).
- "The trust-consensus paradox: why decentralized fact-checking faces challenges on polarizing topics" — ISD, 18 Dec 2025 (grade **E**, advocacy/NGO interest).
- "R Street Institute: AI Writers on Community Notes: An Evaluation of Seven Months of Data" — 16 Jun 2026 (grade **C/E**, think-tank).
- "Fact-checking at a crossroads: Fact checkers' perspectives on Community Notes, AI integration, and design recommendations" — HKS Misinformation Review, 7 Jul 2026 (grade **B**).
- "Community Notes Alone Won't Beat Disinformation: Why Fact-Checkers Are Essential" — Tech Policy Press, 3 Mar 2026 (grade **C**, advocacy-leaning).

## 3.2 Prebunking / inoculation and the correction literature — with effect sizes

| # | Finding (with numbers) | Source | Date | Grade |
|---|---|---|---|---|
| 3.2.1 | **Debunking meta-analysis (the anchor number for "correction leaves a residue"):** **k = 52 studies, N = 6,878.** Presenting misinformation **ds = 2.41–3.08**; **debunking ds = 1.14–1.33**; **persistence of misinformation in the face of debunking ds = 0.75–1.06.** Moderators: persistence was **stronger** and debunking **weaker** when audiences **generated their own reasons supporting the initial misinformation**. A detailed debunking message correlated **positively** with the debunking effect — but *also* positively with the **persistence** effect. **This is the single best quantitative anchor that debunking works but leaves a large residual.** | Chan, Jones, Jamieson & Albarracín, *Psychological Science*, DOI `10.1177/0956797617714579` | 2017 | **B** |
| 3.2.2 | **Inoculation decay:** **five preregistered longitudinal experiments, N = 11,759.** **Text-based and video-based inoculation remained effective for ONE MONTH; game-based interventions decayed more rapidly.** | *Nature Communications*, DOI `10.1038/s41467-025-57205-x` | 11 Mar 2025 | **B** |
| 3.2.3 | **Inoculation field scale (12 EU nations):** **13 surveys across 12 EU nations, N = 19,735**, testing three inoculation videos developed for "the largest prebunking campaign to date, which **reached 120M+ YouTube users** before the 2024 EU elections." Videos targeted **scapegoating, decontextualization, discrediting**; improved manipulativeness assessments and technique discernment, with focus on **older populations (45+)**. **Effect magnitudes NOT extracted — UNVERIFIED.** | *Communications Psychology*, DOI `10.1038/s44271-025-00379-3` | 17 Mar 2026 | **B** |
| 3.2.4 | **Landmark inoculation work — correct scale:** **seven preregistered studies — six RCTs with n = 6,464, plus an ecologically valid YouTube field study with n = 22,632.** Five short videos against emotionally manipulative language, incoherence, false dichotomies, scapegoating, ad hominem. | Roozenbeek, van der Linden, Goldberg, Rathje & Lewandowsky, *Science Advances*, DOI `10.1126/sciadv.abo6254` | 24 Aug 2022 | **B** |
| 3.2.5 | **⚠️ CORRECTION:** the frequently repeated "**5.4 million users/participants**" figure for the Roozenbeek et al. study is **NOT** in its reported sample. It most plausibly refers to **campaign reach/exposure** of the YouTube field study, **not the analysed sample (22,632)**. **Treat "5.4 million participants" as UNVERIFIED and probably a category error.** | (verification against the PubMed abstract) | 2026 | **B** (correction) |
| 3.2.6 | **Inoculation timing:** "Timing matters when correcting fake news" — correction timing modulates efficacy. | PNAS | 25 Jan 2021 | **B** |
| 3.2.7 | "Misinformation: susceptibility, spread, and interventions to immunize the public" (van der Linden). | *Nature Medicine* | 10 Mar 2022 | **B** |
| 3.2.8 | **NULL RESULT — FLAG PROMINENTLY: inoculation does not clearly transfer to a realistic feed.** Five preregistered studies. Inoculation raised **technique recognition when directly assessed**, but "**it is not clear if this effect transfers to spontaneous detection of techniques and disengagement with the associated content in real-life contexts**." In a **simulated social media feed**, inoculation only decreased engagement with emotionally presented content. | *PNAS Nexus*, DOI `10.1093/pnasnexus/pgaf172` | 2025 | **B** |
| 3.2.9 | "Prebunking misinformation techniques in social media feeds: Results from an Instagram field study" — a *field* test. **Effect sizes UNVERIFIED.** | HKS Misinformation Review | 22 Jan 2026 | **B** |
| 3.2.10 | **Backfire effect is largely refuted as an explanation** for durable misperceptions. | *PNAS*, "Why the backfire effect does not explain the durability of political misperceptions" | 2022 | **B** (venue) / **C** (contents) |
| 3.2.11 | **Continued Influence Effect (CIE) pooled meta-analytic estimate: NOT RETRIEVED.** Commonly attributed to Swire-Thompson et al., *Psychological Bulletin*. Multiple query formulations returned nothing usable. **Use Chan et al.'s persistence ds = 0.75–1.06 (3.2.1) as the substitute; do not cite a pooled CIE figure.** | — | — | **UNVERIFIED — priority gap** |

**Carnegie's synthesis of the correction literature (grade B/C, 31 Jan 2024), quoted because it is the most cautious authoritative statement located:**
> "A large body of research indicates that fact-checking can be an effective way to correct false beliefs about specific claims, especially for audiences that are not heavily invested in the partisan elements of the claims. **However, influencing factual beliefs does not necessarily result in attitudinal or behavioral changes**… **fact-checking seems unlikely to cause a backfire effect**… Fact-checkers face a **structural disadvantage** in that false claims can be created more cheaply and disseminated more quickly than corrective information."
> On labels: "**Large, assertive, and disruptive labels are the most effective, while cautious and generic labels often do not work.**"

**Continued influence effect:** the literature on residual influence after correction exists and is well established, but **I did not retrieve usable effect sizes in this session** (see Failed Searches). Do not cite a number for it in the brief without retrieval.

## 3.3 Documented cases of operations pivoting messaging after being debunked

**Best-documented adaptation case (grade A/B, NGO primary with published method): Hurricane Helene / FEMA, 2024 — ISD, "Hurricane Helene brews up storm of online falsehoods and threats", 8 October 2024.** https://www.isdglobal.org/digital_dispatches/hurricane-helene-brews-up-storm-of-online-falsehoods-and-threats/

| Metric | Value |
|---|---|
| Posts explicitly debunked by FEMA that ISD analysed | **33**, accumulating **>160 million views** |
| Antisemitic content share | **30%**, **17.1 million views** |
| Marjorie Taylor Greene's "they control the weather" claim | **41.5 million views**, with a follow-up post after debunking reaching **2.1 million views** |
| Adaptation mechanism | FEMA's "Rumour Response" page was **reframed by the operation as evidence of a cover-up** |
| **Decisive negative finding** | **"None of the posts analyzed had been debunked or fact-checked by Community Notes."** |

**Why this is the most important case for Topic 3:** it is the *strongest* documented instance of a narrative adapting around correction — and it shows **human doubling-down and institutional-reframing**, plus a **total Community Notes coverage failure**. It is **not** an AI system detecting and evading fact-checks. It supports the *defensive* framing (coverage and latency failure) and **fails to support** the offensive framing (automated evasion).

**Southport / UK riots (July–August 2024) and "Havana syndrome"-style narratives:** searched specifically for an AI-driven evasion mechanism. **No source located.** The Southport and FEMA/Helene cases are documented as **human-amplified** misinformation with political amplification. Report as a **negative finding**.

**ISD, "From Bucharest to Prague: The spread of the 'Romanian Scenario' conspiracy theory in Czechia's elections", 3 Feb 2026** — evidence that debunked narratives **re-export across borders** rather than dying. Grade **C/E**. Contents **UNVERIFIED**.

**Cited-but-not-corroborated:** Romania 2024 / Georgescu (TikTok) and Spamouflage/Dragonbridge pivots were flagged in the delegated sweep; I could **not** independently verify an AI-driven evasion loop in either. Treat as ordinary strategic adaptation.

**OpenAI's own characterisation (grade C — quoted in EUvsDisinfo, 16 Feb 2026, attributed to Ben Nimmo):** AI adoption by influence actors is **"evolution rather than revolution… threat actors integrate AI into existing workflows."** AI is used to **"avoid grammatical errors that once made them easy to spot"** — i.e. to improve surface plausibility, **not to read fact-checks**. The **Meliorator** case (July 2024, **~1,000 AI-generated fake X accounts**) is AI-enabled **volume and persona manufacture**, not fact-check evasion. **This is the single most important expert framing in Topic 3.**
**The documented record on tactical adaptation (mostly grade C) — adaptation yes, AI-driven evasion no:**

- **EEAS 2026** documents adaptation as a general pattern but attributes it to **human strategic direction** — e.g. Russian FIMI "pivot" of infrastructure focus in 2025, targeting elections in Germany, Poland, Romania, Moldova, the Czech Republic and Côte d'Ivoire, with narrative templates reshaped per country. **No AI feedback loop is asserted.**
- **AI tools used to rephrase, translate and adapt existing text** — EEAS explicitly lists "AI tools are also used to rephrase, translate, and adapt existing text from other sources" and "AI articles are promoted by fabricated news sites (such as the Russian RRN network)." **This is the closest official statement to automated messaging adaptation — but EEAS frames it as cross-language/localisation adaptation, not as fact-check evasion.** Making the evasive reading would be an inference beyond the source.
- **Doppelganger, Spamouflage/Dragonbridge, Storm-1516, Overload, Portal Kombat, Matryoshka** are all documented, repeatedly-reported operations that have visibly shifted tactics across successive platform takedowns. **The pattern of tactical adaptation is well established; an AI-driven detection-and-evasion loop is not.**
- **2024 Southport (UK) misinformation and Hurricane Helene FEMA conspiracy narratives** were specifically searched. **No source was located that documents these as examples of *AI-driven* evasion of fact-checking.** The FEMA/Helene and Southport cases are documented as *human-amplified* misinformation with political amplification; searching them for an automated evasion mechanism produced nothing. This is a **negative finding and should be reported as such.**

**Search terms that produced nothing usable for this section:** "adaptive disinformation", "fact-check evasion", "evading fact-checking", "claim mutation", "narrative adaptation" (see §4).

## 3.4 Platform / policy responses and their measured effects

| # | Item | Source | Date | Grade |
|---|---|---|---|---|
| 3.4.1 | **Meta ends its third-party fact-checking programme in the US and moves to a Community Notes-style system** — "More Speech and Fewer Mistakes". This is the primary announcement. | about.fb.com | 7 Jan 2025 | **A** |
| 3.4.2 | Corroborating coverage: "Meta is ending its fact-checking program in favor of a 'community notes' system similar to X's" (NBC News); "Meta Says It Will End Its Fact-Checking Program on Social Media Posts" (NYT); "Meta says it will end fact-checking as Silicon Valley prepares for Trump" (NPR). | various | 7 Jan 2025 | **C** |
| 3.4.3 | Meta's own Oversight Board warns Community Notes are **not a proper substitute for fact-checking globally**. | Nieman Lab | 26 Mar 2026 | **C** |
| 3.4.4 | Meta tests putting fact-checking "in users' hands" across Latin America. | inkl | 10 Sep 2026 | **C** |
| 3.4.5 | **X Community Notes measured efficacy** — see §3.1 (61.2% / 14.9%). | Nature Communications | 5 May 2026 | **B** |
| 3.4.6 | **X Community Notes — Birdwatch origin study (platform authors):** notes selected by the matrix-factorisation (bridging) algorithm **reduce the likelihood of agreeing with the substance of a potentially misleading Tweet by ~26%** (weighted binomial logit, p « 0.001, **N = 6,046**); users who see a note are **36% less likely to answer "not sure"**; MF-chosen notes were **41% less likely to agree** with the tweet vs **22%** on average across algorithms; **nearly 80% of users** find chosen notes helpful (≥70% within each major party); **live-platform A/B test: users exposed to annotations were 25–34% less likely to like or retweet** (authors say likely an underestimate due to treatment dilution). Note display threshold: intercept **≥ 0.40**. | Wojcik et al., arXiv:2210.15723 | 27 Oct 2022 | **B** |
| 3.4.7 | **Supporting causal work:** time series for **40,078 posts** with proposed notes, synthetic control methods — notes significantly reduce engagement with and diffusion of false content. | *PNAS*, DOI `10.1073/pnas.2503413122` | 2025 | **B** |
| 3.4.8 | **Actionable for defenders:** odds of a community fact-check being perceived as helpful are **2.33× higher if it links to external sources**. | *Scientific Reports*, DOI `10.1038/s41598-025-09372-6` | 2025 | **B** |
| 3.4.9 | **Asymmetry finding:** **2.3× more posts by Republicans flagged as misleading** than by Democrats, with **no meaningful overrepresentation of Republicans among X users**; authors argue the asymmetry is not attributable to rater political bias. | *PNAS*, DOI `10.1073/pnas.2502053122` | 2025 | **B** |
| 3.4.10 | **⚠️ COVERAGE GAP — the Achilles heel (ISD, 18 Dec 2025;** de la Fuente, Doctor & Hohlfeld**).** Analysis of X's public Community Notes dataset, **19 Mar 2024 – 19 Mar 2025**, merged with Brandwatch. **Median lag >15 hours** between misleading post and a **helpful** note, "while most views and engagement occur within the first hours." **Case study: 2024 Hurricanes Helene and Milton — only 10% of sampled high-engagement false claims received a visible Note, with an average delay of 46 hours.** Using an LLM classifier, **about half of Notes applied to ~27,000 posts concerned "soft news"** (culture/lifestyle) rather than politics/current events; accurate, well-sourced Notes around politically charged events **frequently went unpublished**. | ISD (NGO primary analysis of platform data, published method) | 18 Dec 2025 | **A/B** |
| 3.4.11 | **R Street Institute, "AI Writers on Community Notes: An Evaluation of Seven Months of Data"** (Spence Purnell). Official Community Notes public download through 23 Mar 2026: **423,915 notes**, **1,407,713** enrolment records, **35,521,327** ratings; window Sep 2025 – Mar 2026. **27 AI accounts enrolled via API; 24 actively wrote, producing 31,464 notes = 7.4% of total volume but 13.9% of all "Currently Rated Helpful" notes.** **CRH rate 18.0% (AI) vs 8.9% (human)**; **verdict success rate 88.8% vs 68.5%** (χ² P < 0.001); **"Needs More Ratings" 71.5% (AI) vs 79.5% (human)** — the vast majority of *all* notes never get a final determination; time-to-verdict median **6.0h vs 6.3h**; **100% of AI notes classified the target as "misleading" vs 82.4% human** (API architectural constraint); **100% of AI notes included ≥1 URL vs 87.8%**; AI writers **~3× more likely to flag "manipulated media"** (39.4% vs 13.3%); top-cited domains **Reuters, BBC, Snopes, AP, AFP Fact Check, PolitiFact** — **AI notes depend on professional fact-checking output**; AI volume **93 notes (Sep 2025) → 8,109 (Feb 2026)**, share **0.2% → 12.7%**; human volume **stable at ~54,000–70,000/month** — "genuine additive note-writing capacity; it did not appear to be displacing human writers." | R Street Institute | 16 Jun 2026 | **E** — free-market-leaning think tank that has published **in favour of** the Community Notes transition. Data is X's own public download (auditable), but framing, the novel "VSR" metric and cost-benefit conclusions are **advocacy-adjacent**. **Report numbers, mark provenance.** |
| 3.4.12 | **CRITICAL READING OF 3.4.11 for the central question:** it shows **AI writing fact-check NOTES (an assistant role)**, *not* AI **evading** fact-checks. It is easily misread as showing AI "gaming" Community Notes; it shows close to the **opposite** — AI note-writers improving coverage. The authors themselves flag unresolved risks of **"concentration, gaming, and erosion of crowd-based legitimacy."** | analysis | 2026 | — |
| 3.4.13 | **No measured effect of Meta's transition exists.** No study and **no Meta-published outcome metric** on the effect of Meta's Community Notes rollout was located; Tech Policy Press (22 Sep 2026) frames Meta as rolling out globally **"without showing what success looks like."** **The absence of measurement is itself the finding.** | Tech Policy Press | 22 Sep 2026 | **C** |
| 3.4.14 | **Coverage claim to treat cautiously:** "More than 90% of X's Community Notes are never published and 'stuck in limbo'" (Fortune, 10 Jul 2025; GIGAZINE 14 Jul 2025, citing **1.76 million** unpublished notes); "Reports Find Community Notes Is Failing To Address Misinformation on X" (Social Media Today, 30 Oct 2024). **Treat ">90%" and "1.76 million" as UNVERIFIED**; treat "the large majority of notes never receive a verdict" as **supported** (R Street NMR 71.5–79.5%; ISD). | journalism | 2024–25 | **C** |
| 3.4.15 | **No independent causal estimate of YouTube misinformation-policy effect was located.** Flagged as a gap. | — | — | **UNVERIFIED** |

**Meta's July 2026 Instagram AI-feature reversal** ("Meta removes controversial AI feature on Instagram after backlash", TechCrunch, 10 Jul 2026; "Meta's Muse Image AI Tool—Here's What To Opt Out Of", Forbes, 10 Jul 2026) is relevant to *platform governance of AI content* but not to fact-check evasion; grade **C**.

## 3.5 Explicit statement of what is NOT evidenced

1. **No evidence** of an AI system that detects the application of a fact-check/community note and autonomously mutates messaging in response. Not in platform reports, not in threat-intel reporting, not in the academic literature. OpenAI's own framing (Ben Nimmo, Feb 2026) is the opposite: **"evolution rather than revolution."**
2. **No closed-loop study, and no evasion rate against a real fact-check pipeline.** Adversarial attack success rates **do** exist — but against **credibility/spoof/bias classifiers**, not fact-check verdicts: XARELLO **100%** confusion score vs BiLSTM fact-checking (§3.0a.2); one-shot **65.15%** total / **81.17%** mean TextFooler / **92.5%** best pair on fake-news classifiers (§3.0a.5). **The missing experiment is a generative agent given verdicts about its own fresh claims, iterating, with semantic fidelity and query budget reported.**
3. **No evidence** that the 2024 Southport or Hurricane Helene FEMA narratives involved AI-driven fact-check evasion. ISD's Helene data show **human doubling-down** and a **total Community Notes coverage failure** — "None of the posts analyzed had been debunked or fact-checked by Community Notes" (§3.3).
4. **No credible study** quantifying how many accounts are needed for meaningful narrative reach.
5. **No peer-reviewed measurement** of LLM persona consistency over a period of months.
6. **No measured recall penalty** for coordination detectors against LLM-paraphrased content. The mechanism is plausible; the magnitude is unknown.
7. **No measured effect of Meta's Jan 2025 fact-checking transition** on misinformation belief or spread — a major measurement gap (§3.4.13).
8. **No pooled Continued Influence Effect meta-analytic estimate** retrieved (§3.2.11). Use Chan et al. persistence **ds 0.75–1.06** instead.
9. **No study quantifying fact-check *reach*** — what fraction of a population ever sees a given professional fact-check. Do not assert a reach figure.
10. **XARELLO's own null result:** adaptive attacks gave **no improvement on news-bias assessment** with long inputs (§3.0a.6) — adaptive evasion is not uniformly effective even in the lab.
11. **Inoculation does not clearly transfer to a realistic feed** (PNAS Nexus 2025, §3.2.8) and **decays within about a month** (Nature Communications 2025, §3.2.2). Prebunking is not a durable defence.
12. **Note the direction of the strongest evidence:** the best-quantified fact in Topic 3 is that fact-checks arrive **~63 hours late against a 6.25-hour half-life** (§3.1), and independent NGO measurement puts the median helpful-note lag **>15 hours** with only **10%** coverage in a major crisis (§3.4.10). An adversarial operator therefore **does not need** adaptive evasion to outrun correction. Automated rebuttal evasion is, on current evidence, a **solution in search of a problem** — the diffusion race is already lost by the defender.

### Bottom line — Topic 3 (200 words)

The central claim — AI agents that notice fact-checking and change messaging to avoid it — is **not evidenced**. It is technically plausible: **XARELLO**, a reinforcement-learning attacker that "learns from previous successes and failures," reaches a **100% confusion score** against BiLSTM fact-checking versus 86% for the best fixed baseline, and one-shot attacks reach **65–92% success** against fake-news classifiers. But that entire literature attacks **classifier robustness and credibility assessment**, never a **live verdict about an agent's own fresh claim**; no closed-loop study or real-pipeline evasion rate exists. No platform report, government assessment, or investigation documents a deployed system reading fact-checks and rewriting to evade. OpenAI's Ben Nimmo frames AI adoption as **"evolution rather than revolution."** Meanwhile the best-quantified defensive facts are failures of *speed and coverage*: notes cut subsequent reposting **61.2%** once displayed (N = 237,180 cascades, 431M reposts) but arrive on average **62.9 hours** late against a **6.25-hour** half-life, giving only **14.9%** system-wide effect; independently, ISD finds a **>15-hour median lag** and just **10%** coverage during Hurricanes Helene and Milton. In ISD's Helene data, **none** of the analysed posts were ever Community-Noted. The defender's problem is **latency and coverage**, not adversarial adaptation — and on current evidence, adaptive evasion is a solution in search of a problem.

---

# 4. FAILED SEARCHES / NEGATIVE FINDINGS

Recorded per brief requirement. "Nothing useful" = no source with the required numbers/methods was located.

## 4.1 Queries that returned nothing usable (by topic)

**Topic 1 (persona):**
1. arXiv: `all:"persona drift"` (unquoted and quoted variants) — initially returned zero because of a malformed query; corrected runs surfaced the 2026 papers in §1.1. **Partially recovered.**
2. **No search located a peer-reviewed study of LLM persona consistency over a period of *months*.** Multiple phrasings attempted. This is a **substantive gap**, not a tooling failure.
3. **No study located measuring persona drift in an *adversarial, platform-facing* setting** (i.e. an agent maintaining a fake human identity against platform scrutiny over time). The drift literature is about assistants and RPAs, not covert personas.
4. `api.openalex.org` searches for "persona drift large language model" returned only generic LLM-survey papers (taxonomy/discourse) — **no relevant hits**, and the API then became rate-limited (HTTP 429) for the session.
5. `api.semanticscholar.org` returned **HTTP 429 "Too Many Requests"** on every attempt (persona drift; Turing test; Community Notes; fact-check evasion). **Unusable.**
6. `api.crossref.org` returned **HTTP 429** on the majority of attempts; the successful calls (Community Notes paper, Nature Comms DOI) worked.
7. `openai.com` HTML returned **HTTP 403**; `r.jina.ai` reader returned **HTTP 429** persistently and/or the wrong slug (404). OpenAI report bodies **could not be read**.
8. `anthropic.com` September 2026 report URL **404**; only the Transparency Hub and Newsroom indices loaded.
9. `citizenlab.ca` "BlackCore" note: **404** on both guessed slugs; site search is JavaScript-driven and returned no result links to a non-browser client.
10. `hai.stanford.edu` succeeded (§1.2.2) — one of the few clean primary retrievals.

**Topic 2 (coordination):**
11. **Pacheco et al. (ICWSM 2021) full text: not retrieved — but the abstract WAS retrieved during this session (see §2.1).** Result: the canonical paper is **unsupervised and case-study-based**, so there is no headline precision/recall figure *to* retrieve from its abstract. Any precision/recall number attributed to Pacheco et al. without checking the full PDF should be treated as **UNVERIFIED**. This remains the most important *numeric* gap for Topic 2: **no located source gives a measured precision/recall for CIB detection at scale.**
12. **Coordination Network Toolkit (CNT) validation numbers: not located.**
13. **"Copypasta detection" accuracy figures: not located.**
14. **No study located that quantifies a critical-mass / account-count threshold for narrative reach.** Searches on "how many accounts needed reach", "tipping point influence operation", "percent of accounts shift narrative", "few accounts enough" returned unrelated material (climate tipping points, college sports, RUSI Iran report). **Treat any account-count threshold claim as unsupported.**
15. **No empirical paper located testing whether LLM-generated posts defeat coordination detectors** (i.e. a measured recall penalty). Searches: "LLM generated propaganda evade coordination detection study benchmark", "AI detection influence operations harder to detect study", "adversarial-resilient coordination detection". The general query returned only generic fake-news-detection and IoT-security papers.
16. `news.sh "Spamouflage Dragonbridge AI 2026 takedown"` returned **zero items**.
17. `news.sh "Doppelganger campaign narrative pivot debunked 2026"` returned **zero items**.
18. `news.sh "Russian influence operation adapted messaging after exposure Graphika 2026"` returned **zero items**.
19. Google TAG primary bulletins with the "18,000+ channels" figure were **not located**; only the secondary Tech Buzz article.
20. `transparency.meta.com` Adversarial Threat Report index returned an error body to a non-browser client; Meta's own ATR numbers are therefore sourced at grade **C** via journalism.

**Topic 3 (evasion):**
21. `all:"fact-checking" AND all:"adversarial"`, `all:"claim matching" AND all:"robustness"`, `all:"adaptive" AND all:"disinformation"` — the corrected helper script hit **HTTP 429** on the arXiv API. **PARTIALLY RECOVERED by a delegated sweep**, which located the key artefacts by other routes: **XARELLO** (WASSA@ACL 2024, `10.18653/v1/2024.wassa-1.11`) and **Koenders et al.** (arXiv:2107.07970) — see §3.0a. **Recovered.**
22. `ti:"fact-check" AND abs:"evasion"` — **zero results.** Genuine absence: the phrase "fact-check evasion" is not an established term in the literature. **Recovered as a negative finding** (this absence is itself evidence for the central verdict).
23. **"Do fact-checkers' warnings travel?"** — not located under that phrasing or variants. **No study quantifying fact-check reach to audiences was found (§4.1 item 9). Confirmed gap.**
24. **Continued influence effect pooled effect sizes** — **NOT retrieved** (the CIE meta-analysis attributed to Swire-Thompson et al., *Psychological Bulletin*; also Walter & Tukachinsky 2020 and Walter & Murphy 2018 not retrieved). **Confirmed gap.** Substitute: Chan et al. persistence **ds 0.75–1.06**.
25. **Roozenbeek et al. Science Advances 2022:** the underlying numbers **WERE recovered** via the PubMed abstract (six RCTs n = 6,464 + YouTube field n = 22,632) even though `science.org` returned a Cloudflare interstitial. **Recovered — and it exposed a miscitation ("5.4 million participants") to correct (§3.2.5).**
26. **PNAS** community-based responses paper — Cloudflare interstitial. **Still UNVERIFIED.** (Note: a separate PNAS 2025 paper, DOI `10.1073/pnas.2503413122`, was recovered with N = 40,078 — §3.4.7.)
27. **"Video inoculation against election misinformation across 12 EU nations"** — **recovered at abstract level** (§3.2.3): *Communications Psychology*, DOI `10.1038/s44271-025-00379-3`, 13 surveys / 12 nations / **N = 19,735** / campaign reached **120M+** YouTube users. **Effect magnitudes still UNVERIFIED.**
28. **Frontiers German CIB paper** — the fetched page returned unrelated content; effect sizes **still UNVERIFIED**. (Also see the tooling warning in §4.4 about mismatched pages.)
29. **Southport 2024 / Hurricane Helene FEMA searches for AI-driven fact-check evasion: nothing found.** Reported as a negative finding in §3.3. **Confirmed.**
30. **No source located** describing an AI pipeline with a closed loop from fact-check detection to message mutation. **Confirmed.**
31. **EMNLP 2025 "Adversarial Attacks Against Automated Fact-Checking"** — existence confirmed, **all success rates NOT retrieved.** Priority gap.
32. **"Bots Shield Fake News"** — attack success rate **NOT retrieved.**
33. **UC San Diego / JAMA-family vaccine Community Notes accuracy rate** — **NOT retrieved**; only press items indexed. Grade **C** existence only.
34. **UC San Diego vaccine Community Notes accuracy, "5.4M inoculation sample", and the ">90% unpublished notes" claims** are the three most likely-to-be-miscited figures in this topic area — flag all three in the brief.

## 4.2 Sources indexed but deliberately NOT used as evidence
- Vendor/advocacy sources (Cyabra/NATO StratCom COE report Feb 2026; NewsGuard; Pangram; Undetectable AI) — **grade E**; they sell detection or advocacy services, and their figures were not independently corroborated here. Noted in §1.2.7 and §3.1 for completeness only.
- "AI Gone Wrong: AI Hallucinations & Errors" (tech.co) and similar listicles — no evidentiary value.
- Search-engine noise returned by generic queries (BIM clash detection, IoMT intrusion detection, oncology AI) — excluded.

## 4.3 Retrieval techniques that WORKED (for the parent agent's reuse)
1. **OpenAI's RSS feed works even when their HTML is 403-blocked**: `curl -sL -A "Mozilla/5.0" https://openai.com/news/rss.xml` — 1,229 items with titles, dates, links. This is how the OpenAI report inventory in §1.3.2 was built.
2. **`api.crossref.org` bibliographic query** is the most reliable way to obtain a DOI and journal when Semantic Scholar/OpenAlex are 429: `https://api.crossref.org/works?query.bibliographic=<title>&rows=3`.
3. **nature.com site search via curl** returns article slugs in HTML that can be parsed to get the canonical `/articles/<id>` URL (needed because Google News redirects do not resolve).
4. **EEAS PDFs are directly downloadable** with a browser User-Agent; `pdftotext -layout` extracts clean, quotable text.
5. **`hai.stanford.edu`, `redditinc.com`, `carnegieendowment.org`, `microsoft.com/security/blog`, `viterbischool.usc.edu`, `frontiersin.org` (partial), and `nature.com/articles/*`** all return readable text via `./tools/get.sh`.
6. **Cloudflare-blocked:** `science.org`, `pnas.org`, and sometimes `frontiersin.org` — these need an alternative route (institutional access, or citing the abstract via a secondary source at reduced grade).
7. **PubMed abstracts are a reliable back-door** when the publisher is Cloudflare-blocked — that is how the Roozenbeek et al. sample sizes and the Chan et al. effect sizes in §3.2 were recovered.
8. **`arxiv.org/abs/<id>` via the `web_fetch` tool works when the arXiv *API* is 429** — that is how the Pacheco et al. abstract in §2.1 was recovered.

## 4.4 TOOL AND DATA-INTEGRITY WARNINGS (for all analysts on this brief)

1. **`./tools/web.sh` (Bing scraper) is POISONED — do not use it.** In a delegated sweep it returned **spam/porn for every query**, regardless of query content. Any output already collected from it should be discarded.
2. **`./tools/get.sh` occasionally returns a MISMATCHED page.** A fetched ACL Anthology URL returned an unrelated German airport-drone news story. **Always sanity-check that the retrieved *content* matches the requested URL — not just the line count.** This error mode could silently contaminate a brief.
3. **Rate limits hit during this session** (all confirmed): `api.openalex.org` (exhausted free daily budget mid-sweep — "Insufficient budget… $0 remaining"), `api.semanticscholar.org` (429 on *every* call), `api.crossref.org` (intermittent 429), `export.arxiv.org` API (intermittent 429), `r.jina.ai` (persistent 429), `openai.com` and `about.fb.com` HTML (403).
4. **Do not use `web_search`** — broken session-wide per the task brief; not used in this assessment.
5. **Shared-workspace filename collision warning:** `raw-topic2.md`, `raw-topic3.md`, `raw-topic4.md` in this directory belong to **different subagents with a different topic numbering** than the three topics in this document. `raw-topic2.md` is about *adaptive narrative selection*, not cross-platform coordination. **Do not assume filename-to-topic correspondence across agents.**

## 4.4a Provenance of this document (what was independently verified vs. delegated)

- **Written by:** one analyst session, 25 September 2026.
- **Independently retrieved and verified by the author of this document:** the EEAS 4th FIMI report (full PDF, quoted directly); the Nature Communications Community Notes paper (full text; all effect sizes, CIs, sample sizes quoted from source); the npj Complexity Telegram paper (full abstract and results); the Reddit AI-era safety post; the Carnegie policy guide; the Stanford HAI detector-bias numbers; the Microsoft AI-as-tradecraft post; arXiv abstracts for Jones & Bergen, Li et al., InCharacter, and the 2025–26 persona-drift papers; the OpenAI report inventory via OpenAI's own RSS; the Pacheco et al. abstract via `arxiv.org/abs`.
- **Delegated to a sub-sweep and integrated (Topic 3 only):** XARELLO and the Koenders et al. attack rates (§3.0a); the Chan et al. 2017 effect sizes, inoculation decay and PNAS Nexus null (§3.2); the ISD Helene and ISD coverage-gap numbers, the Birdwatch numbers, and the R Street AI-notes analysis (§3.3–3.4). Each is graded at source, and the sub-sweep's own 25 UNVERIFIED markers were preserved where they could not be resolved.
- **Delegated sweeps for Topic 1 and Topic 2 did NOT complete** (both were rate-limit-bound and were stopped after being asked twice to finalise). Consequently the two **priority gaps** in this document remain open and are flagged in place: **(i) a measured precision/recall or false-positive rate for coordinated-inauthentic-behaviour detection at scale (§4.1 item 11); (ii) a Meta/TikTok/X/Google PRIMARY transparency figure with account counts and dates for 2025–2026 (§4.1 item 20).** Neither gap undermines the bottom lines, which rest on independently retrieved primary sources.

## 4.5 Figures MOST LIKELY to be miscited in this topic area — check before publication

| Figure in circulation | The problem | Correct usage |
|---|---|---|
| **TextFooler 99.7% attack success** | This is **IMDB sentiment classification**, not fake news. | Fake-news ASR is **65–92%** (Koenders et al.). |
| **"5.4 million participants" in Roozenbeek et al. 2022** | Not the sample. Sample was **6 RCTs n=6,464 + YouTube field n=22,632**. 5.4M is likely **campaign reach**. | Cite **n = 22,632** field study, or "reached millions" as reach, separately. |
| **"More than 90% of Community Notes never published" / "1.76 million stuck in limbo"** | Journalism summarising an unretrieved study. | Use R Street **NMR 71.5–79.5%** and ISD's median **>15h** lag. |
| **"Li et al. — Measuring and Controlling *Persona Drift*"** | Actual title is **"…Instruction (In)Stability…"**, an **8-round** benchmark. | Do not present as a months-long persona-stability study. |
| **Community Notes "61.2% effective"** | True only **conditional on a note being displayed**. System-wide is **14.9%**. | Always quote both numbers together. |
| **AI "gaming" Community Notes (R Street)** | The study shows AI **writing** notes (assistant role), improving coverage. | It is **not** evidence of AI evading fact-checks — near-opposite. |

---

# 5. Consolidated source register (primary anchors)

| Source | Date | Grade | URL |
|---|---|---|---|
| EEAS, 4th Annual Report on FIMI Threats (CY2025) | 12 Mar 2026 | A | https://www.eeas.europa.eu/eeas/4th-eeas-report-foreign-information-manipulation-and-interference-threats_en |
| EEAS report PDF | Mar 2026 | A | https://www.eeas.europa.eu/sites/default/files/2026/documents/EEAS%204th%20Threat%20Report_web%20version_1.pdf |
| *Community-based fact-checking reduces the spread of misleading posts on X*, Nature Communications, DOI 10.1038/s41467-026-72597-0 (author list not retrieved) | 5 May 2026 | B | https://www.nature.com/articles/s41467-026-72597-0 |
| *Large-scale detection of multilingual coordinated activity on Telegram*, npj Complexity | 18 Nov 2025 | B | https://www.nature.com/articles/s44260-025-00056-w |
| Pacheco et al., "Uncovering Coordinated Networks on Social Media", ICWSM 2021 / arXiv 2001.05658 | 16 Jan 2020 (v2 7 Apr 2021) | B | https://arxiv.org/abs/2001.05658 |
| Reddit, "How We're Keeping Reddit Real and Safe in the AI Era" | 6 Jul 2026 | A | https://www.redditinc.com/blog/how-were-keeping-reddit-real-and-safe-in-the-ai-era |
| Meta, "More Speech and Fewer Mistakes" | 7 Jan 2025 | A | about.fb.com (via Google News index) |
| Microsoft Security, "AI as tradecraft" | 6 Mar 2026 | A/C | https://www.microsoft.com/en-us/security/blog/2026/03/06/ai-as-tradecraft-how-threat-actors-operationalize-ai/ |
| Carnegie, "Countering Disinformation Effectively" | 31 Jan 2024 | B/C | https://carnegieendowment.org/research/2024/01/countering-disinformation-effectively-an-evidence-based-policy-guide |
| Jones & Bergen, Turing test, arXiv 2405.08007 | 9 May 2024 | B | https://arxiv.org/abs/2405.08007 |
| Liang et al. / Stanford HAI (detector bias) | 15 May 2023 | B | https://hai.stanford.edu/news/ai-detectors-biased-against-non-native-english-writers |
| Li et al., arXiv 2402.10962 | 13 Feb 2024 | B | https://arxiv.org/abs/2402.10962 |
| InCharacter, arXiv 2310.17976 | 27 Oct 2023 | B | https://arxiv.org/abs/2310.17976 |
| Multi-Turn RL persona consistency, arXiv 2511.00222 | 31 Oct 2025 | B | https://arxiv.org/abs/2511.00222 |
| ContextEcho, arXiv 2605.24279 | 22 May 2026 | B | https://arxiv.org/abs/2605.24279 |
| Nautilus Compass, arXiv 2605.09863 | 11 May 2026 | B | https://arxiv.org/abs/2605.09863 |
| SPASM, arXiv 2604.09212 | 10 Apr 2026 | B | https://arxiv.org/abs/2604.09212 |
| Assistant Axis, arXiv 2601.10387 | 15 Jan 2026 | B | https://arxiv.org/abs/2601.10387 |
| USC/ISI networked LLM agents (The Web Conference 2026) | 11 Mar 2026 | C (press) / B (paper) | https://viterbischool.usc.edu/news/2026/03/usc-study-finds-ai-agents-can-autonomously-coordinate-propaganda-campaigns-without-human-direction/ |
| OpenAI news RSS (report inventory) | live | A | https://openai.com/news/rss.xml |
| Przybyła, McGill & Saggion, XARELLO, WASSA@ACL 2024 | Aug 2024 | B | DOI `10.18653/v1/2024.wassa-1.11` |
| Koenders et al., adversarial fake-news detection | Jul 2021 | B | https://arxiv.org/abs/2107.07970 |
| Chan, Jones, Jamieson & Albarracín, debunking meta-analysis, *Psychological Science* | 2017 | B | DOI `10.1177/0956797617714579` |
| Roozenbeek et al., inoculation, *Science Advances* | 24 Aug 2022 | B | DOI `10.1126/sciadv.abo6254` |
| Inoculation booster shots / decay, *Nature Communications* | 11 Mar 2025 | B | DOI `10.1038/s41467-025-57205-x` |
| Video inoculation, 12 EU nations, *Communications Psychology* | 17 Mar 2026 | B | DOI `10.1038/s44271-025-00379-3` |
| Inoculation null result in a realistic feed, *PNAS Nexus* | 2025 | B | DOI `10.1093/pnasnexus/pgaf172` |
| ISD, Hurricane Helene falsehoods and threats | 8 Oct 2024 | A/B | https://www.isdglobal.org/digital_dispatches/hurricane-helene-brews-up-storm-of-online-falsehoods-and-threats/ |
| ISD, The trust-consensus paradox (coverage gap) | 18 Dec 2025 | A/B | https://www.isdglobal.org/explainers/the-trust-consensus-paradox-why-decentralized-fact-checking-faces-challenges-on-polarizing-topics/ |
| Wojcik et al., Birdwatch, arXiv:2210.15723 | 27 Oct 2022 | B | https://arxiv.org/abs/2210.15723 |
| Community notes reduce engagement, *PNAS* | 2025 | B | DOI `10.1073/pnas.2503413122` |
| Unbiased sources raise helpfulness, *Scientific Reports* | 2025 | B | DOI `10.1038/s41598-025-09372-6` |
| Republican/Democrat flagging asymmetry, *PNAS* | 2025 | B | DOI `10.1073/pnas.2502053122` |
| R Street Institute, AI Writers on Community Notes | 16 Jun 2026 | E | https://www.rstreet.org/research/ai-writers-on-community-notes-an-evaluation-of-seven-months-of-data/ |
