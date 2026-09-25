# Sub-detection: detection, takedown and enforcement statistics for covert influence operations / CIB

**Prepared:** 25 September 2026 · **Cut-off:** 25 September 2026 · **Scope:** defensive/analytic; methods described only at the level needed to assess capability and defence.

**Grades:** A = primary/official · B = peer-reviewed/investigative · C = reputable news · D = vendor/think-tank · E = anonymous/unverified. **Confidence** is confidence the claim is true as stated. **Tags:** [demonstrated] = shown with data/artefacts; [claimed] = asserted by an interested party; [inferred] = analyst judgement.

**Verification note.** `transparency.meta.com` returns HTTP 400 to automated fetches, `openai.com` article bodies HTTP 403, `euvsdisinfo.eu` sits behind a Cloudflare challenge. Flagged inline; figures are reported only where actually retrieved.

---

## 1. How networks are found

**Behavioural/content signals — best-documented case.** Anthropic's September 2026 threat-intelligence report observes operations at the *production* stage. For one commercial "influence-as-a-service" network: ~70 fabricated news outlets with domains registered "from France within a ten-week window in mid-2025", hosted "behind a single deployment"; 250+ commenting accounts "created during the exact same timeframe" (mostly June–July 2025, many with AI-generated profile photos); detection on **11 September 2025 when sites "published almost identical articles about the DRC–Rwanda conflict within three minutes of each other"**. Twelve sockpuppets shared "one shared creation timestamp (17 May 2026)". A Malaysia-targeted platform ran **1,000+ fake X accounts with warm-up logic that "regularly renew[ed] cookies and IP addresses"**. https://www.anthropic.com/threat-intelligence-report-september-2026 (Sept 2026, Anthropic) — **A, high [demonstrated]**. *Signals: registration bursts, shared deployment IDs, near-simultaneous near-duplicates, creation bursts, AI profile images, warm-up hygiene.*

**State-of-practice summaries.** EEAS 4th FIMI report: network graphs built on **channel co-occurrence within incidents** ("edges … indicate that channels appeared in the same incident, revealing recurring coordination patterns"); **seeder/amplifier account sets** (Storm-1516/Overload; Spamouflage's seeder-impersonator, amplifier-reply and screenshot clusters); AI text using "near-identical templates, reflecting a uniform style across languages". https://www.eeas.europa.eu/eeas/4th-eeas-report-foreign-information-manipulation-and-interference-threats_en (12 Mar 2026, EEAS) — **A, high [demonstrated]**.

**Infrastructure/account-lifecycle signals.** Google TAG documents bulk account sellers, **recycling of accounts previously used for financially motivated activity**, and "uniform hashtags and titles across channels". https://blog.google/threat-analysis-group/over-50000-instances-of-dragonbridge-activity-disrupted-in-2022/ (26 Jan 2023, Google) — **A, high [demonstrated]**.

**Human-source intelligence.** Anthropic "first identified this network following a tip from the INPACT/All Eyes on Wagner" (CAR/Russia case) and states its visibility "ends once [content is] live", relying thereafter on open-source and industry partners — **A, high [demonstrated]**. Meta combines internal investigation with tips from governments, civil-society, journalists and third-party researchers (§2) — **A, medium**.

**Gap:** none of the major detectors publish calibration data (per-signal precision/recall; false positives on organic communities).

## 2. Published detection frameworks

**Meta CIB.** Networks of accounts/Pages/Groups working together to mislead about *who they are, what they are doing, or why*; removal turns on **behaviour, not falsity** — content need not be false. `https://transparency.meta.com/policies/community-standards/coordinated-inauthentic-behavior/` (Meta; live page HTTP 400 to automated fetch here) — **A, medium [claimed]**. Brookings corroborates that the standard "leans heavily on aggregate behaviors for detecting campaigns": https://www.brookings.edu/articles/adding-a-d-to-the-abc-disinformation-framework/ (27 Apr 2020) — **B/D, high**.

**Google TAG.** Cross-product enforcement (YouTube, Blogger, AdSense), lifetime account terminations, and **audience metrics as the impact test**. Google URL above — **A, high**.

**Breakout Scale (Nimmo/Brookings, 2019).** Six categories, single-community to global mainstream breakout; measures *impact*, not operation count. Anthropic applied it in Sept 2026, grading two 2026 networks **Category Two — "no evidence of breakout"** — **A/D, high [demonstrated]**.

**Watermarking (new, 2026).** From **14 August 2026** future Claude models "will generate text that contains a watermark"; several major providers are doing likewise to comply with the **EU AI Act**, which "as of August 2 [2026] … requires AI providers serving its market to mark AI-generated content". The mark is statistical, invisible, "detectable to anyone who has a key that encodes it" — i.e. **key-gated and not independently verifiable**. https://www.anthropic.com/news/claude-text-watermark (14 Aug 2026, Anthropic) — **A, high [claimed]**.

**DISARM.** Open, community-led framework giving defenders "a common language and structure"; use endorsed by Hybrid CoE, ENISA and the EEAS. https://www.disarm.foundation/ (accessed 25 Sep 2026) — **D (with A-grade endorsements), high**.

**ABC (Actor–Behaviour–Content).** Established 2019 by Camille François (Graphika); Brookings proposes adding **"D" for Distribution**, arguing platform architecture shapes reach, and warns that without distribution data "we will continue to play the whack-a-mole game" — **B/D, high**.

**Viginum (France).** Characterises a *mode opératoire informationnel* from shared technical characteristics, coordinated relays on TikTok/Instagram/X/Facebook "by accounts presenting several markers of inauthenticity", and **technical markers of extraneity** for attribution. In *Rokh Solis* (detected March 2026, published 11 June 2026) it tied a fake-news ecosystem attacking La France Insoumise to Israeli influence firm **Blackcore**. https://www.sgdsn.gouv.fr/viginum/publications/rokh-solis-analyse-dun-mode-operatoire-informationnel-ayant-cible-les — **A, high [demonstrated]**.

**Academic methods.** Pacheco et al., *Uncovering Coordinated Networks on Social Media* (ICWSM 2021): unsupervised coordination networks from "identities, images, hashtag sequences, retweets, or temporal patterns". https://arxiv.org/abs/2001.05658 — **B, high**. Nizzoli et al., *Coordinated Behavior … 2019 UK General Election* (ICWSM 2021): network-based, estimates a *degree* of coordination rather than a binary label. https://arxiv.org/abs/2008.08370 — **B, high**. **Caveat:** neither abstract states a headline precision/recall/F1; full-text validation figures were not extractable here, so any specific accuracy claim is **unverified**.

**AI-text detection accuracy.** Sadasivan et al., *Can AI-Generated Text be Reliably Detected?* (TMLR; v4 Jan 2025): a **recursive paraphrasing attack "significantly reduce[s] detection rates … only slightly degrad[ing] text quality"** against watermarking, neural, zero-shot and retrieval detectors; the paper links the best-possible detector's **AUROC to the total-variation distance between human and AI text** — a fundamental limit. https://arxiv.org/abs/2303.11156 — **B, high [demonstrated]**.

## 3. Enforcement statistics

**Google (primary).** In 2022 Google "disrupted over 50,000 instances of DRAGONBRIDGE activity", disabled **53,177 channels** (58% with zero subscribers; 83% of videos <100 views), and had terminated **100,960 DRAGONBRIDGE accounts lifetime** by Jan 2023 — Google URL above, **A, high**. Later figures are relayed, not primary-verified: ~23,000+ YouTube channels deleted Q1 2025 (Neowin, 15 May 2025, C); "approximately 34k channels … in 2025" (Fox Business, 21 Jul 2025, C); 18,000+ channels in each of Q3/Q4 2025 (The Tech Buzz, 13 Nov 2025 / 29 Jan 2026, **D, low**).

**EEAS (primary).** 2nd FIMI report: **750 incidents** investigated, 1 Dec 2022 – 30 Nov 2023 (23 Jan 2024). 4th report: **540 incidents in 2025** involving **10,500 channels/websites**; recorded incidents **35% attributed (29% Russia, 6% China), 65% unattributed**; **27% involved AI TTPs, up from 41 cases (2024) to 147 (2025), +259%**. Of ~3,000 recurrent channels, only **9.5% are directly state-linked; 90.5% are covert**. EEAS URLs above — **A, high [demonstrated]**; EEAS warns its data are "a selective, time-bound sample", not a census.

**Named networks (EEAS 2025).** Portal Kombat (Pravda network): **~10,000 articles/day across 101 websites**. Storm-1516: **5 networks / 453 websites in 2025**, output nearly doubled vs 2024, "the only IMS capable of generating organic engagement", reaching **5,000–4 million views** per item. Operation Overload/Matryoshka: **700+ videos** in 2025 — **A, high**.

**AI labs (primary, but incommensurable).** OpenAI's feed lists ~20 influence-operation disruptions from May 2024 to Aug 2026 (Spamouflage, Doppelganger, STORM-2035, "Trolling Stone", "Fish Food", "No Bell", "Cyber Special Operations", "Tech and Tariffs", "Data Center Bandwagon", a Russia campaign on 25 Aug 2026, and others). https://openai.com/news/rss.xml (retrieved 25 Sep 2026; bodies 403) — **A for existence, high; account counts not retrieved**. Anthropic reports **nine influence-operation cases disrupted, December 2025 – August 2026**, one network publishing **8,913+ articles in ~20 languages** with 70 matched and 250+ commenting X accounts — **A, high**.

**Meta and X — the disclosure gap.** The widely repeated claim that Meta removed *N* CIB networks per quarter 2023–2026 **could not be verified from primary sources here** (`transparency.meta.com` HTTP 400; no fetchable per-quarter CIB ledger): **UNVERIFIED — treat precise per-quarter Meta CIB counts as unconfirmed**. For X, the evidence reached supports the "reporting collapse" claim at **medium confidence**: the historical disclosure pages `https://transparency.twitter.com/en/reports/information-operations.html` and `.../takedowns.html` **both now return HTTP 404** (checked 25 Sep 2026), and `https://transparency.x.com/en` returns an essentially empty shell; X's first post-takeover transparency report (25 Sep 2024) was widely reported as not restoring state-backed-IO/CIB network disclosure (AP/WIRED/Social Media Today, **Grade C**). What is *demonstrated* is that X no longer exposes those disclosures in their prior form; the narrower claim that X published **no** CIB takedown data after 2022 remains **not independently confirmed**.

**EU DSA Transparency Database (primary).** Live; tracks content-moderation decisions "in almost real-time" via **statements of reasons**. https://transparency.dsa.ec.europa.eu/ (accessed 25 Sep 2026) — **A, high**. **But** its schema is organised around platform moderation decisions, not CIB networks or "disinformation" as an enforcement category; it cannot yield an operation-level takedown count, and drawing one from it is a category error.

## 4. How quickly networks are detected

All lags below are **trigger → public exposure**, which is *not* time-to-detection:

| Operation | Trigger / activity | Public exposure | Lag |
|---|---|---|---|
| Rokh Solis (France) | Detected March 2026, targeting municipal elections | Viginum report 11 Jun 2026 | ~3 months [demonstrated] |
| Portal Kombat / Pravda | Continued growth after exposure | Viginum 12 Feb 2024; EDMO noted it "grew bigger in the EU, even after its uncovering" (24 Apr 2024) | Exposure did **not** stop expansion |
| Doppelgänger | Active 2022–2025 | EU DisinfoLab exposed 27 Sep 2022; still tracked by EEAS in 2025 | Years |
| Storm-1516 / CopyCop / False Façade | Output ~doubled 2025 vs 2024; pre-2024 activity | Named 2024; EEAS 2025 retrospective | Multi-year |
| Overload / Matryoshka | Content distributed **"months in advance"** of Moldova's vote; 700+ videos/yr | DW fact-check 3 Aug 2026; ISD 4 Sep 2026 | Production lead time in months |

**The upstream-of-distribution problem.** Anthropic: "while a social media site usually sees an operation once its content is already circulating, **we may see it on Claude while the operation is still being built**"; "**Our visibility into these operations ends once it's live**"; "most of the content we discovered drew little or no authentic engagement, and in several cases we disrupted the operation before it could build an audience" (two 2026 networks graded Breakout Scale Category Two) — **A, high [demonstrated]**. **Implication [inferred]:** AI-lab disruption counts measure *production capacity denied*, not *audience harm averted*. Summing them with platform "networks removed" double-counts the same operations at two stages and yields a meaningless total.

## 5. Limits of detection

1. **False positives are large and measured.** Liang et al. (Patterns, 2023), seven GPT detectors, 91 human-written TOEFL essays: **average false-positive rate 61.22%**; **97.80%** flagged by ≥1 detector; **19.78%** flagged unanimously; native 8th-grade essays ~**5.19%** FP. Vocabulary enrichment cut FP to **11.77%**. https://arxiv.org/abs/2304.02819 — **B, high [demonstrated]**. Applying AI-text detection to non-native-English authors is unreliable and discriminatory.
2. **Evasion is cheap and theoretically bounded.** Recursive paraphrasing defeats watermarking and neural detectors while only slightly degrading quality (Sadasivan et al.) — **B, high [demonstrated]**. The 2026 EU-AI-Act watermarking regime does not answer this: key-gated, unverifiable by third parties, with no published evaluation of survival under paraphrase/translation/rewriting pipelines operators already use.
3. **Adversaries adapt to the detectors.** Google TAG calls Dragonbridge "persistent and adaptable" (bespoke, higher-quality content). Anthropic documents actors asking models "to strip the marks of automated text and to sound organic", keeping **banned-word lists and evasion rules**, account warm-up, VPNs/rotated accounts and IP laundering — **A, high**.
4. **Near-duplicate detection is deliberately degraded.** AI rewriting of the *same* story "in opposite ideological directions for different audiences", border-laundering and stripping state attribution attack the near-duplicate signal directly; detection migrates to **infrastructure/account-level invariants** (shared deployment, creation bursts, hosting reuse) — the signals Anthropic actually used — **A, high [inferred]**.
5. **Whack-a-mole is structural.** Brookings: without distribution transparency we keep "play[ing] the whack-a-mole game"; Portal Kombat's post-exposure growth is the empirical illustration — **B/D + A, high**.
6. **Attack surface reaches model training.** EEAS suspects Portal Kombat of **LLM grooming** — flooding the web with multilingual content to contaminate training data — **A, medium [claimed]**.

## 6. Where the evidence is thin

- **Platform disclosure narrowed after 2023; nothing is independently audited.** Meta per-quarter CIB counts were unverifiable here, and X's legacy CIB/state-IO disclosure pages now 404 (see §3). Every headline enforcement figure is **self-reported**, including Google's "0 subscribers" impact metrics; no external body validates takedown counts or completeness.
- **"Detection speed" is systematically unmeasured.** Every lag above is **exposure lag**. Platforms rarely disclose first-detection dates (Rokh Solis: detected March, published June). Claims that networks are "detected within days" are asserted without data and should be rejected absent a first-detection date.
- **Units are incommensurable.** Google counts instances/channels/accounts; Meta counts networks; EEAS counts incidents; AI labs count accounts/cases. They cannot be summed, and within-publisher year-on-year comparisons are distorted by methodology changes.
- **Vendor self-reporting.** Anthropic notes its Malaysian engagement figures are "self-reported by the actor's own tools" and "cannot [be] independently verify[ed]" — a caution that generalises to adversary-produced view counts.
- **Attribution confidence is uneven and often stripped in retelling.** Anthropic labels the CAR case a state-directed covert operation with an SVR assessment and a tip-off, while the LKM commercial case states "we found no evidence of direction by any government."
- **Academic accuracy claims usually lack adversarial validation.** The ICWSM coordination papers are method papers; no headline precision/recall on genuinely labelled adversarial networks was extractable here. Treat "detection methods achieve X% accuracy" as **unverified** absent the full text.

---

*Retrieved: EEAS 4th/2nd FIMI reports; Google TAG Dragonbridge review; Viginum Rokh Solis; Anthropic Sept 2026 misuse report and text-watermark note; OpenAI news feed; DSA Transparency Database; arXiv 2001.05658, 2008.08370, 2303.11156, 2304.02819; Brookings ABC/D article; DISARM Foundation. Blocked/unverified: transparency.meta.com, openai.com bodies, euvsdisinfo.eu, X transparency portal.*
