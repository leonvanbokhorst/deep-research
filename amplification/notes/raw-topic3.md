# RAW FINDINGS — TOPIC 3: AUTOMATED REBUTTAL EVASION / ROUTING AROUND FACT-CHECKS

**Analyst note.** Date of assessment: 25 September 2026. English. ANALYTIC ONLY — capability assessment, evidence, and defence. No operational content.

**THE CENTRAL QUESTION.** Is there credible evidence of AI agents that (i) *notice* fact-checking and (ii) *change messaging* to avoid it?

**BOTTOM LINE (stated up front, defended below).** The evidence supports a **capability-plausible / deployment-unproven** judgement:

- **Technical possibility: established.** Adaptive, feedback-driven adversarial text generation against misinformation/credibility classifiers is peer-reviewed and produces very high attack-success rates (up to 100% confusion score in one lab setting).
- **Demonstrated capability: established in the lab only.** The strongest artefact is XARELLO (WASSA 2024) — an RL agent that explicitly "learns from previous successes and failures." This is an offline research prototype attacking a *classifier*, not a deployer observing *fact-checks*.
- **Credible evidence of deployment: NOT FOUND.** No peer-reviewed, government, platform, or NGO primary source retrieved in this sweep documents a deployed AI system that detects fact-checks (or Community Notes / warning labels / debunks) about its own output and then re-writes to evade them. Every documented real-world "pivot" found is explicable as ordinary human narrative adaptation. This is the single most important finding and it is a **negative** one.
- **Documented real-world impact of evasion specifically: NOT EVIDENCED.** The measurable harms in the record (Helene/FEMA, Southport) are attributable to *volume, speed, and platform moderation failure*, not to demonstrated automated evasion.

A crucial scope limit: most "evasion" literature attacks **spoof/clickbait/credibility-style classifiers on static text (a one-shot perturbation)**. That is categorically weaker than a **closed-loop agent that observes a specific fact-check about a specific claim it just made and re-plans**. The literature rarely says this out loud; this brief does.

---

## SECTION A — ACADEMIC WORK ON ADAPTIVE / EVASIVE DISINFORMATION

### A1. The closest artefact to the central question: XARELLO (adaptive RL attacker)

**Claim.** Przybyła, McGill & Saggion present **XARELLO**, "a generator of adversarial examples for testing the robustness of text classifiers based on **reinforcement learning**. Our solution is **adaptive, it learns from previous successes and failures** in order to better adjust to the vulnerabilities of the attacked model. This reflects the behaviour of a persistent and experienced attacker, which are common in the misinformation-spreading environment."

- **Venue/date:** Proceedings of the 14th Workshop on Computational Approaches to Subjectivity, Sentiment & Social Media Analysis (WASSA), ACL, August 2024, pp. 125–140, Bangkok. DOI `10.18653/v1/2024.wassa-1.11`.
- **URL:** https://aclanthology.org/2024.wassa-1.11/ (PDF: https://aclanthology.org/2024.wassa-1.11.pdf)
- **Numbers (extracted from the PDF body, not the abstract):**
  - BiLSTM **fact-checking** scenario, **confusion score**: DeepWordBug **57%**, BERT-ATTACK **86%**, **XARELLO 100%**.
  - Against the **fact-checking task**, BODEGA quality score **77% (XARELLO) vs 53% (BERT-ATTACK)**, reaching an adversarial example in **7.42 queries on average vs 146**.
  - Overall vs the BiLSTM victim: **68% vs 51%**, using **90 queries instead of 417**.
  - Against **GEMMA** (2-billion-parameter modern LLM): **58% vs 47%** — i.e. the largest, best-performing classifier was *more* vulnerable, not less.
  - **Negative result inside the paper:** gains were **absent for news-bias assessment** (long 512-token inputs). The authors also note prior work showing fake-news detection as "relatively robust" (Jin et al. 2020).
  - **Caveat the authors themselves flag:** output quality degrades; some adversarial examples use "pieces of words whose output resembles the orthographic and morphological rules of English but which may not be acceptable to real-world readers."
- **Evidence grade: B** (peer-reviewed ACL workshop paper with methods and results).
- **Interpretation / why this is not the central claim.** XARELLO is (1) **offline**, (2) attacks a **classifier's robustness**, and (3) runs its learning loop against a **surrogate/target classifier over a dataset**, not against a live fact-check verdict about its own fresh claim. It demonstrates that *adaptive* evasion is technically tractable. It does **not** demonstrate an agent that notices fact-checking in the wild.

### A2. Adversarial attacks against fake-news / credibility detectors — measured attack success rates

**(a) Zhou, Guan, Bhat & Hsu, "Fake News Detection via NLP is Vulnerable to Adversarial Attacks," ICAART 2019.**
- arXiv:1901.09657; DOI 10.5220/0007566307940800.
- Target: **Fakebox** (reported baseline classification accuracy "upwards of 95%").
- **Numbers (PDF body):**
  - **Fact distortion** attack (substituting entities, e.g. replacing every "Walmart" with "Apple"): Fakebox veracity score **dropped by only 0.0073** — negligible for its judgement.
  - **Subject–object exchange** (e.g. "gangster shot by police" ↔ "policeman shot by gangster"): veracity score **"doesn't change at all"**, because term frequency stays the same.
  - **Cause-checking / article mixing:** mixing two unrelated *impartial*-labelled articles produced a **higher** veracity score (0.8585) than either source (0.7151, 0.7652) — the detector rewarded fluent journalistic style while checking no facts.
  - Reported figure **62.40%** relates to accuracy when excluding "unsure" cases (context in paper).
- **Grade: B** (peer-reviewed conference paper). **Scope limit:** hand-crafted attacks on a 2019-era linguistic detector, not automated, not adaptive, not fact-check-aware.

**(b) Koenders, Filla, Schneider & Woloszyn, "How Vulnerable Are Automatic Fake News Detection Methods to Adversarial Attacks?," arXiv July 2021 (arXiv:2107.07970).**
- Method: trained three classifiers (BERTweet, RoBERTa, Flair) on a fake-news dataset, then applied the **TextAttack** library of attack recipes.
- **Numbers:**
  - **Total success rate 65.15%** across the recipe suite.
  - **Mean success rates (all models):** TextFoolerJin2019 **81.17%**; PWWSRen2019 **77.5%**; IGAWang **70%**; PSOZang **68.33%**; BAEGarg2019 **67.5%**; DeepWordBug **63%**; TextBugger **62.5%**; Pruthi **27.83%**; CheckList2020 **9.83%**.
  - Best single model/attack pairs: RoBERTa vs TextFooler **92.5%**; BERTweet vs IGAWang **90%**.
  - Most robust model (FlairEmbeddings): best attack only **66%**; several attacks failed 48–54% of the time.
- **Grade: B** (preprint with methods; not clear it is peer-reviewed — treat as strong preprint).

**(c) Jin, Jin, Zhou & Szolovits, "Is BERT Really Robust?" (TEXTFOOLER), AAAI 2020, arXiv:1907.11932.**
- **Numbers:** attack success rate **99.7%** on IMDB (LSTM) perturbing only **5.1%** of words; **97.8%** on Yelp; **95.8%** on SNLI.
- **Grade: B.** **CRITICAL SCOPE LIMIT:** these are **sentiment classification and textual entailment**, *not* fake-news or fact-checking systems. Widely mis-cited as "attacks on misinformation AI." The fake-news-specific numbers are the 65–92% range in (b), not 99.7%.

**(d) Zhu, Pan, Liu, Tian, Tang & Wang, "A General Black-box Adversarial Attack on Graph-based Fake News Detectors," IJCAI 2024, arXiv:2404.15744.**
- Method: GAFSI — simulated sharing behaviour (fake social interaction) to fool GNN detectors. Attack budget expressed in added edges.
- **Numbers:** success rate rises **from 0.18 to 0.33**; reaches **0.48 with just 210 edges added**; an **80% performance decrease** reported on a GCN detector in one configuration.
- **Grade: B.** **Significance:** this attacks the **propagation/social-graph** signal rather than the text, and is black-box — relevant because real platforms often use engagement signals.

**(e) "Bots Shield Fake News: Adversarial Attack on User Engagement based Fake News Detection," CIKM 2024, DOI 10.1145/3627673.3679583.**
- Retrieved as a citation and title only. **Specific attack-success numbers NOT VERIFIED** in this sweep (abstract not obtained). Grade: **B (existence), numbers UNVERIFIED.**

**(f) "Adversarial Attacks Against Automated Fact-Checking: A Survey," EMNLP 2025, DOI 10.18653/v1/2025.emnlp-main.1171.**
- Confirmed to exist with that exact title and venue/year via Crossref. **Abstract and reported success rates NOT VERIFIED** — Crossref carries no abstract, ACL Anthology page could not be retrieved cleanly, and the arXiv API was returning empty results during this sweep.
- **Grade: B (existence confirmed).** This is the single most important paper to obtain for a definitive answer, because a survey of attacks against *automated fact-checking* would map exactly which pipeline stages (claim detection → evidence retrieval → verdict prediction) have been broken. **Gap flagged.**

**(g) "The adversarial game between detection and evasion: A survey of anti-detection techniques for machine-generated texts," *Neural Networks*, 2026, DOI 10.1016/j.neunet.2026.109562.**
- PRISMA 2020 synthesis of **27 studies** of attacks against machine-generated-text detection (MGTD). Four evasion families: **watermark attacks, paraphrasing attacks, prompt-based attacks, adversarial-text attacks.**
- **Grade: B.** **Scope limit:** this is *AI-text-detector* evasion, i.e. "make my LLM text look human," **not** "make my false claim survive a fact-check." These are routinely conflated in commentary and should not be.

### A3. What is NOT evidenced in Area A (critical)

- **No paper found** that implements a closed-loop system where a generative model is *given a fact-check verdict about its own claim* and iteratively rewrites until the fact-check no longer matches. Queries returning nothing are listed in the FAILED SEARCHES section.
- **"Claim mutation" / "misinformation mutation" as an automated phenomenon: not evidenced.** Searching Crossref and PubMed for claim mutation, claim rephrasing to defeat claim-matching, and paraphrase attacks on claim retrieval returned **no relevant papers**.
- **The adaptive-attack literature attacks credibility/spoof/bias classifiers, not fact-check verdicts.** Even XARELLO's "fact-checking" task in BODEGA is a **credibility-assessment** dataset, not a verdict-matching fact-check.
- **Deployment gap.** No retrieved source — platform transparency report, government assessment, or NGO investigation — attributes an observed real-world messaging change to an automated fact-check-detection-and-evasion loop.

### A4. Adjacent AI-persuasion findings (context for capability)

These matter because they show LLMs are effective *persuaders and de-persuaders*, which bounds how much either side can claim.

- **Costello, Pennycook & Rand, "Durably reducing conspiracy beliefs through dialogues with AI," *Science*.** DOI `10.1126/science.adq1814`. **N = 2,190** conspiracy believers engaged in personalised evidence-based dialogues with GPT-4 Turbo; **conspiracy belief reduced by ~20%**; effect **persisted 2 months**; generalised to unrelated conspiracies; occurred even among the deeply entrenched. **Grade: B.**
- **"Chatbots reduce health-related conspiracy beliefs not because of but despite being perceived as AI," *Scientific Reports* 2026.** DOI `10.1038/s41598-026-66242-5`. **N = 554**; randomised to control, AI-labelled LLM, or human-labelled LLM debate about a COVID-19 conspiracy. **Grade: B.**
- **Implication for the brief:** the same generative capability that could in principle be turned to evasion is demonstrably effective at *correction*. Capability is symmetric; deployment is where the question is decided.

---

## SECTION B — PREBUNKING / INOCULATION, CONTINUED INFLUENCE, DEBUNKING EFFECT SIZES

### B1. Inoculation / prebunking

**Roozenbeek, van der Linden, Goldberg, Rathje & Lewandowsky, "Psychological inoculation improves resilience against misinformation on social media," *Science Advances*, 24 August 2022.** DOI `10.1126/sciadv.abo6254`.
- Five short videos inoculating against **emotionally manipulative language, incoherence, false dichotomies, scapegoating, ad hominem attacks**.
- **Numbers (from PubMed abstract):** **seven preregistered studies — six randomised controlled studies with n = 6,464**, plus **an ecologically valid field study on YouTube with n = 22,632**. Outcomes: improved **manipulation-technique recognition**, increased confidence in spotting techniques, improved **discernment of trustworthy vs untrustworthy content**, improved sharing judgements.
- **⚠️ UNVERIFIED / CAUTION:** the frequently repeated "**5.4 million users**" figure is **not** in the abstract's reported sample. It most plausibly refers to the **campaign reach/exposure** of the YouTube ad-based field study, *not* the analysed sample (22,632). Treat "5.4 million participants" as **UNVERIFIED and probably a category error.** This is a common citation error worth flagging in the brief.
- **Grade: B** for the numbers above.

**"Video inoculation against election misinformation across 12 EU nations," *Communications Psychology*, 17 March 2026.** DOI `10.1038/s44271-025-00379-3`.
- **Numbers:** **13 surveys across 12 EU nations, N = 19,735**, testing **three inoculation videos** developed for "the largest prebunking campaign to date, which **reached 120M+ YouTube users before the 2024 EU Elections**." Videos targeted **scapegoating, decontextualization, discrediting**. Reported improvement in **manipulativeness assessments** and **technique discernment**, plus enhanced **sharing** judgements. Focus on **older populations (45+)**.
- **Grade: B** (abstract-level verification via PubMed; effect *magnitudes* not extracted — **UNVERIFIED**).

**"Psychological booster shots targeting memory increase long-term resistance against misinformation," *Nature Communications*, 11 March 2025.** DOI `10.1038/s41467-025-57205-x`.
- **Numbers:** **five preregistered longitudinal experiments, N_total = 11,759.** **Text-based and video-based inoculation remained effective for one month; game-based interventions decayed more rapidly.** The paper proposes three competing models of how resistance decays.
- **Grade: B.** **This is the best available decay evidence.**

**"Limited effectiveness of psychological inoculation against misinformation in a social media feed," *PNAS Nexus*, 2025.** DOI `10.1093/pnasnexus/pgaf172`.
- **NULL RESULT — FLAG PROMINENTLY.** Five preregistered studies. Inoculation raised **technique recognition when directly assessed**, but "**it is not clear if this effect transfers to spontaneous detection of techniques and disengagement with the associated content in real-life contexts**." In a **simulated social media feed**, inoculation **only decreased engagement with emotionally present[ed content]...** (abstract truncated in retrieval; the full boundary condition is **UNVERIFIED**).
- **Grade: B.** This directly tempers the optimistic prebunking literature and is exactly the kind of null result the brief should carry.

**Other inoculation items — partially verified:**
- "Psychological inoculation improves resilience to and reduces willingness to share vaccine misinformation," *Nature* (news listing dated 18 Aug 2025). Preprint DOI `10.31234/osf.io/ek5pu`. **Effect sizes UNVERIFIED. Grade: C.**
- "Inoculation reduces social media engagement with affectively polarized content in the UK and US," *Nature* (news listing dated 26 Jan 2025). **Numbers UNVERIFIED. Grade: C.**
- "Prebunking misinformation techniques in social media feeds: Results from an Instagram field study," *HKS Misinformation Review*, ~22 Jan 2026. **Numbers UNVERIFIED. Grade: C.**
- "Prebunking interventions based on 'inoculation' theory can reduce susceptibility to misinformation across cultures," *HKS Misinformation Review*, 3 Feb 2020. **Grade: C (verified only as existing).**

### B2. Debunking meta-analysis — the anchor numbers

**Chan, Jones, Jamieson & Albarracín, "Debunking: A Meta-Analysis of the Psychological Efficacy of Messages Countering Misinformation," *Psychological Science*, 2017.** DOI `10.1177/0956797617714579`.
- **Numbers (PubMed abstract):** **k = 52 studies, N = 6,878.**
  - Presenting misinformation: **ds = 2.41–3.08**
  - **Debunking: ds = 1.14–1.33**
  - **Persistence of misinformation in the face of debunking: ds = 0.75–1.06**
  - **Moderators:** persistence was **stronger** and the debunking effect **weaker** when audiences **generated reasons in support of the initial misinformation** (i.e. actively counter-argued). A **detailed debunking message** correlated **positively** with the debunking effect — but, surprisingly, **also positively with the misinformation-persistence effect**.
- **Grade: B.** This is the single best quantitative anchor for "debunking works, but a substantial residual survives it."

**⚠️ MAJOR GAP.** The **Continued Influence Effect (CIE) meta-analysis** (the pooled estimate of residual influence; commonly attributed to Swire-Thompson and colleagues, *Psychological Bulletin* ~2023) was **NOT RETRIEVED**. Multiple Crossref and PubMed query formulations returned nothing or irrelevant results. Likewise **Walter & Tukachinsky (2020)** and **Walter & Murphy (2018)** were not retrieved. **The pooled CIE effect size is therefore UNVERIFIED in this brief.** Chan et al.'s persistence ds = 0.75–1.06 is the best substitute available. Flagged as a priority gap.

### B3. Backfire effect — mostly a null/refuted finding

- **"Why the backfire effect does not explain the durability of political misperceptions," *PNAS*, 2022** (news listing; PNAS). Title alone establishes the direction: the backfire effect is **not** the explanation for misperception durability. **Specific statistics UNVERIFIED. Grade: C (existence) / B (venue).**
- **"Assessing How Fact-Checks Influence Accuracy and Consensus Judgments: Evidence From the Olympics," *Risk Analysis* 2026.** DOI `10.1111/risa.70293`. Two-wave experimental study; **quota-balanced samples from the United States, France and South Africa, N = 680**; tested whether **repeated fact-checking** could cause a **backfire effect** or an **"illusory consensus" effect**. **Direction of results UNVERIFIED** (abstract retrieved was truncated before conclusions). **Grade: B (design).**
- **"Different vaccination debunking interventions: a randomized, controlled experiment estimating 'backfiring' and positive effects," *Vaccine* 2025.** DOI `10.1016/j.vaccine.2025.127463`. Pre-registered; US adults **with vaccination safety concerns**; randomised to no-message control or three correction message structures (myth-then-fact; fact-myth-fact; fact only). Designed explicitly to detect backfiring. **Results UNVERIFIED. Grade: B.**
- **"Sustaining corrected beliefs in false news headlines over time: The roles of correction format and recognizing corrections," *Memory & Cognition* 2025.** DOI `10.3758/s13421-025-01760-7`. Two experiments; corrections improved belief accuracy most when consumers **recognised that a statement had earlier been corrected**. **Grade: B.**
- **"Why does debunking information fall on 'deaf ears'? ... backfire effect of health rumor corrections among older adults," *Journal of Health Psychology* 2025.** DOI `10.1177/13591053251379834`. **Qualitative** (22 interviews), grounded theory; identifies **worldview** and **familiarity** backfire pathways. **Grade: B (but n=22, qualitative — do not over-claim).**
- **Wood & Porter (2019), "The Elusive Backfire Effect," and Swire-Thompson et al., "Searching for the Backfire Effect": NOT RETRIEVED.** **UNVERIFIED.**

### B4. Whether fact-checks TRAVEL / reach

**Weak evidence base — mostly negative.** Direct searches for studies on the reach of fact-checks returned **no dedicated reach/penetration study**. The closest proxy evidence is indirect and comes from the Community Notes coverage literature (Section D3), which measures note *coverage of misinformation*, not fact-check *reach to audiences*. **No study retrieved quantifies what fraction of a population ever sees a given professional fact-check.** Flagged as an evidence gap; the brief should not assert a reach figure.

---

## SECTION C — DOCUMENTED CASES OF NARRATIVE PIVOTING AFTER DEBUNKING

**Overall finding for Section C: narrative pivoting is well documented; attribution of any pivot to AI is NOT.**

### C1. Hurricane Helene / FEMA (2024) — best-documented adaptation case

**Source: ISD, "Hurricane Helene brews up storm of online falsehoods and threats," 8 October 2024.** https://www.isdglobal.org/digital_dispatches/hurricane-helene-brews-up-storm-of-online-falsehoods-and-threats/
- **Numbers (ISD primary analysis):**
  - **33 posts containing claims debunked by FEMA, the White House and the US government** had together generated **more than 160 million views** on X as of 7 October 2024.
  - **30% of posts on X contained overt antisemitic hate**, collectively garnering **17.1 million views**.
  - An antisemitic post about Asheville Mayor **Esther Manheimer** generated **more than 12.8 million views**.
  - Posts about FEMA public-affairs director **Jaclyn Rothenberg** racked up **more than 4 million views in 24 hours** starting 4 October.
  - Rep. **Marjorie Taylor Greene's "they control the weather"** post: **more than 41.5 million views**.
  - A false claim that a FEMA director had been beaten: **more than 8.1 million views**; **a Community Note was added fact-checking the footage, and it "continued to gain traction"** regardless.
  - **"None of the posts analyzed had been debunked or fact-checked by Community Notes on X."**
  - **A FEMA "Rumour Response" page** was launched; the same actors **"sought to reframe this effort as proof of a government cover-up, supposedly designed to quell 'free speech'"** and attributed it to Mossad/IDF/"Jewish interests."
- **Documented pivot behaviour (this is the key evidentiary nugget):** MTG **responded to the backlash and repeated debunks** by stating **"anyone who says they don't [control the weather], or makes fun of this, is lying to you"** — a **2.1 million-view** follow-up. ISD also records that "**attempts at fact-checking by mainstream outlets have been met with derision**" (example given: an 847,000-view post asserting "No, I do not need to see articles from the Washington Post").
- **Grade: A/B** (NGO primary analysis with quantified engagement; platform data underlying it is not independently auditable).
- **CRITICAL ATTRIBUTION JUDGEMENT:** this is **human narrative adaptation** — a claim-holder **doubling down and reframing correction as proof of conspiracy**. **No AI or automation is implicated anywhere in the ISD findings.** The pivot is a well-known human rhetorical move (in the mis/disinformation literature, "the liar's dividend" family), not an automated evasion loop. **The brief must not present Helene as evidence of AI evasion.**

### C2. Southport / UK riots (July–August 2024)

**Source: RUSI, "How Did Foreign Actors Exploit the Recent Riots in the UK?," 28 August 2024.** https://www.rusi.org/explore-our-research/publications/commentary/how-did-foreign-actors-exploit-recent-riots-uk
- **Direct evidence of a messaging pivot:** **"Some Russian bots appear to have shifted from attacking the UK's support for Ukraine to lambasting the Labour government and the alleged double standards of UK police."**
- RUSI is explicit that the riots **cannot** be dismissed as solely state-backed: they reflect "genuine grievances around migration, the evolution of the far right, and the problematic model of social media platforms." Attribution is described as **increasingly difficult** because profile geolocation is increasingly hidden.
- **Grade: B/C** (think-tank analysis; no quantified bot-volume figures).
- **Attribution:** the pivot is attributed to **bot/influence-account behaviour**, i.e. **automation of posting**, but **not** to an AI system detecting fact-checks and rewriting. The mechanism described is **human-directed narrative switching around a news peg**.

**Full Fact coverage** (multiple items: "What role did misinformation play in riots after the Southport stabbings?", 2 Aug 2024; "What the UK riots taught us about social media failure," 29 Jul 2025; "One year on, has the Government learned the lessons from the Southport Riots?", 29 Jul 2025) exists but the specific article URLs **did not resolve** (404) and content was **not retrieved**. Grade: **C (existence), contents UNVERIFIED.**

### C3. Russia — Doppelganger, and AI-enabled persona infrastructure

- **EU DisinfoLab, "Doppelganger – Media clones serving Russian propaganda," 27 September 2022** — documented the typosquatted "media clone" infrastructure. **Grade: C (existence verified via news index; contents UNVERIFIED).**
- **The Record (Recorded Future News), 5 December 2023:** "Russia-linked 'Doppelgänger' social media operation rolls on, report says" — indicates **continuity/persistence** rather than a documented pivot. **Grade: C.**
- **Meliorator / AI-enhanced bot farm (July 2024).** Multiple outlets (**Washington Post**, 9 Jul 2024; **Forbes**, 9 Jul 2024 — "Russia Made Nearly **1,000** Fake AI-Generated X Accounts Impersonating Americans"; **CyberScoop**; **HPCwire**) report a **US/Canada/allied court-authorized takedown** of an **AI-enhanced social media bot farm** using software referred to as **Meliorator**. The DOJ press-release URL and the Canadian Centre for Cyber Security joint-advisory URL **both returned 404/Page-not-found** on direct fetch; **the underlying DOJ/CSE primary documents were NOT retrieved**.
  - **Grade for the takedown itself: C (multiple independent outlets).** **Grade for Meliorator as a primary-source A-item: UNVERIFIED.**
  - **What is and is not claimed:** reporting describes **AI generation of fake personas and posts at scale** (~1,000 accounts). **No retrieved source claims the tool detected fact-checks and adapted.** This is an **AI-enabled volume/persona** story, not a **fact-check-evasion** story.
- **OpenAI threat reporting (2025–2026).** OpenAI published "Cyber Special Operations: China-linked influence planning" (1 Feb 2026) and "Disrupting a new covert influence campaign from Russia" (25 Aug 2026), plus earlier quarterly threat reports. **openai.com returned HTTP 403 on both the `web_fetch` tool and direct `curl`; the primary reports were NOT retrieved.**
  - The best available substitute is **EUvsDisinfo, "Interview with Ben Nimmo from OpenAI," 16 February 2026** (https://euvsdisinfo.eu/interview-with-ben-nimmo-from-openai/), retrieved in full. Key statements from Nimmo (OpenAI Principal Investigator, ex-DFRLab/Graphika):
    - **"We see evolution rather than revolution. Threat actors tend to integrate AI into existing workflows instead of building entirely new ones."**
    - **"you can generate a convincing article with AI, but without a distribution network, it reaches no one. So the core infrastructure of influence operations remains unchanged."**
    - Russian and Chinese operations use ChatGPT **"to improve their English and avoid grammatical errors that once made them easy to spot"** — i.e. **AI is used to fix detectable tells, not to read fact-checks.**
    - The **"Bad Grammar"** operation (disrupted early 2024) was exposed because a Telegram post **accidentally published the model's refusal message**. Nimmo's framing: **"removing one set of mistakes often introduces others."**
    - On data voids: **"If the vulnerability is a lack of reliable content, the solution is to fill that gap."**
  - **Grade: A for the interview text (NGO-published interview with a named platform investigator); B/C for the substantive claims within it (expert judgement, not quantified).**
  - **Nimmo's own framing is the strongest available counter-evidence to an "adaptive evasion" narrative** and should be quoted in the brief.

### C4. Spamouflage / Dragonbridge

- **Reuters, 3 September 2024:** "US voters targeted by Chinese influence online, researchers say"; **CyberScoop, 3 September 2024:** "Disinfo group Spamouflage more aggressively targeting U.S. elections, candidates." Both describe **escalation and targeting shifts**, i.e. **human-directed campaign adaptation**, not fact-check-driven automation. **Grade: C.**
- **"How China is using AI news anchors to deliver its propaganda," The Guardian, 18 May 2024.** AI-generated **presenters** (synthetic media), again a **volume/production** capability, not evasion. **Grade: C.**
- **EEAS FIMI reports:** "3rd EEAS Report on Foreign Information Manipulation and Interference Threats" (31 Mar 2025) and **"4th EEAS Report on FIMI Threats" (12 Mar 2026)** — EU official threat reporting. **Contents NOT retrieved. Grade: A (existence as official EU reporting), substance UNVERIFIED.**
- **A dedicated search for "Spamouflage Dragonbridge narrative pivot" returned ZERO results.** Recorded as a negative finding.

### C5. Romania 2024 / Georgescu (TikTok)

- **Declassified Romanian documents (December 2024):** covered by **RFE/RL** ("Romanian Elections Targeted By 'Aggressive Hybrid Russian Action,' Declassified Documents Show," 4 Dec 2024), **Politico** ("Romania's presidential front-runner Georgescu benefited from Russia-style booster campaign, declassified docs say," 5 Dec 2024), **Washington Post** (6 Dec 2024), **BBC** (17 Dec 2024, EU investigates TikTok). **Grade: C for coverage; the declassified documents themselves are A-grade but were NOT retrieved.**
- **TikTok's own statement:** "Continuing to protect the integrity of TikTok during Romanian elections" — TikTok Newsroom, **6 December 2024**. The direct URL used returned a **different, unrelated TikTok newsroom page (a Sept 2026 Miley Cyrus item)**, so the statement's specific figures were **NOT retrieved**; however TikTok later publicly stated that **fake accounts manipulated the Romanian election** (reported by tvpworld, 2 Apr 2025). **Grade: C.**
- **Global Witness, "What happened on TikTok around the annulled Romanian presidential election? An investigation and poll," 17 December 2024**; and **Global Witness, "TikTok algorithm continues to push multiple times more far-right content to users ahead of Romanian election," 15 May 2025.** These concern **algorithmic amplification**, not evasion. **Grade: C.**
- **Attribution judgement:** the Romanian case is a documented instance of **coordinated inauthentic behaviour and algorithmic amplification**. **No retrieved source documents an AI system detecting fact-checks and adapting.** The election was **annulled** (6 Dec 2024) — a **state-level** response, not a platform fact-check response.

### C6. Cuba / "Havana syndrome"-style narratives

**Not researched to depth and no evidence of fact-check-driven adaptation retrieved.** Any "Havana syndrome" analogy in the final brief should be presented as an **illustrative analogy about contested-narrative persistence**, not as a documented evasion case. **Grade: D / not evidenced.**

### C7. ISD, "From Bucharest to Prague: The spread of the 'Romanian Scenario' conspiracy theory in Czechia's elections" (3 February 2026)

Directly relevant to **narrative travel and adaptation across borders** — a conspiracy frame originating in one national context being **re-applied** in another. **Contents NOT retrieved. Grade: C.**

---

## SECTION D — PLATFORM/POLICY RESPONSES AND THEIR MEASURED EFFECTS

### D1. Meta's January 2025 change — dates and official documents

- **"More Speech and Fewer Mistakes," about.fb.com, 7 January 2025.** This is Meta's official announcement ending its US third-party fact-checking programme and moving to a Community Notes model. **The page returned HTTP 403 on direct fetch; the existence, title, publisher and date are confirmed via the Google News index of about.fb.com. Grade: A (official announcement, existence/date); full text UNVERIFIED.**
- **"Testing Begins for Community Notes on Facebook, Instagram and Threads," about.fb.com, 13 March 2025.** **Grade: A (existence/date), text UNVERIFIED.**
- **Meta Oversight Board:** "Board to Review Meta's Plans to Expand Community Notes," **19 November 2025**; Oversight Board **advisory opinion on the global Community Notes rollout, March 2026** — covered by **Nieman Lab (26 Mar 2026)**: "Meta's Oversight Board warns that 'Community Notes' aren't a proper substitute for fact-checking globally," and **Tech Policy Press (26 Mar 2026)**: "Oversight Board Flags Human Rights Risks in Meta's Global Community Notes Rollout." **Grade: A for the Oversight Board instrument (existence); C for the coverage; substance UNVERIFIED.**
- **ISD (18 December 2025)** independently confirms the sequence and adds comparative context: **YouTube signalled interest with a pilot in June 2024**; **Meta formally launched its version in April 2025**; **TikTok introduced "FootNotes"** a few months later, **supplementing rather than replacing** its existing fact-checking. **Grade: A/B.**
- **Meta LatAm rollout:** **Tech Policy Press, 22 September 2026** — "Meta Brings Community Notes to LatAm Without Showing What Success Looks Like"; **RFI, 9 September 2026**; **Engadget, 10 September 2026**. The framing — *"without showing what success looks like"* — is itself evidence that **Meta has not published outcome metrics**. **Grade: C.**
- **⚠️ NOT EVIDENCED:** **no measured causal effect of Meta's transition on misinformation prevalence was retrieved.** No peer-reviewed study, and no Meta-published outcome metric, quantifying the effect of ending US third-party fact-checking was found. The brief should state this as a **measurement gap**, not infer an effect in either direction.

### D2. X Community Notes — effectiveness, accuracy, speed

**Strongest causal study:**
**"Community-based fact-checking reduces the spread of misleading posts on X (formerly Twitter)," *Nature Communications* 2026.** DOI `10.1038/s41467-026-72597-0`.
- **Numbers:** Difference-in-Differences design; repost time series for **N = 237,180 community-fact-checked cascades**, reposted **more than 431 million times**.
  - Exposing users to community notes **reduces subsequent spread of misleading posts by, on average, 61.2%**.
  - Community notes **increase the odds that users delete their misleading posts by 94.3%**.
  - **Effect is "significantly weaker for posts from influential accounts and political content."**
- **Grade: B.** **This is the single strongest causal estimate in the whole topic area** — and note the built-in limitation: the effect is **weakest exactly where the harm is greatest** (influential accounts, political content).

**Supporting causal/observational work:**
- **"Community notes reduce engagement with and diffusion of false information online," *PNAS* 2025.** DOI `10.1073/pnas.2503413122`. Time series for **40,078 posts** with proposed notes; **synthetic control methods**; attaching notes **significantly reduces engagement with and diffusion of false content**. **Grade: B.**
- **Wojcik et al., "Birdwatch: Crowd Wisdom and Bridging Algorithms can Inform Understanding and Reduce the Spread of Misinformation," arXiv:2210.15723, 27 October 2022** (X/Twitter authors). Numbers extracted from the PDF body:
  - Notes selected by the matrix-factorisation (bridging) algorithm **reduce the likelihood of agreeing with the substance of a potentially misleading Tweet by about 26%** among Twitter users (**weighted binomial logit, p « 0.001, N = 6,046**).
  - Users who see a note are **36% less likely to respond "not sure"** when asked whether they agree or disagree.
  - Notes chosen by the MF algorithm were **41% less likely to agree** with the tweet, vs **22%** on average across algorithms tested.
  - **Nearly 80% of all users** find chosen notes helpful (≥70% within each major political party).
  - **A/B test on the live platform:** users exposed to annotations were **25–34% less likely to like or retweet** them vs control. The authors note this is **likely an underestimate** due to treatment dilution.
  - Algorithmic threshold: a note is "currently rated helpful" if its intercept **≥ 0.40**.
  - **Grade: B** (arXiv preprint by platform authors; not confirmed peer-reviewed).
- **"References to unbiased sources increase the helpfulness of community fact-checks," *Scientific Reports* 2025.** DOI `10.1038/s41598-025-09372-6`. **Odds of a community fact-check being perceived as helpful are 2.33× higher if it provides links to external sources.** **Grade: B.** (Directly actionable for defenders.)
- **"Trust the crowd: Crowdsourced fact-checking is as effective at reducing confidence in misinformation as expert fact-checking," *PLoS ONE* 2026.** DOI `10.1371/journal.pone.0348291`. **N = 102**; participants randomised to expert vs crowdsourced fact-checking condition. **Grade: B (but n = 102 — very small; do not generalise).**
- **"Republicans are flagged more often than Democrats for sharing misinformation on X's Community Notes," *PNAS* 2025.** DOI `10.1073/pnas.2502053122`. **2.3× more posts by Republicans flagged as misleading** than by Democrats; the authors find **no meaningful overrepresentation of Republicans among X users** and argue the asymmetry is not attributable to rater political bias. **Grade: B.**
- **"Community Notes vs. Snoping: How the Crowd Selects Fact-Checking Targets on Social Media," ICWSM/AAAI 2024.** **Contents NOT retrieved. Grade: C (existence).**
- **UC San Diego / JAMA-family study finding Community Notes accurate on vaccine misinformation (news listings 24 April 2024, incl. Forbes and UCSD Today).** **Accuracy rate and sample size NOT VERIFIED** — the press items were indexed but the underlying paper was not retrieved. **Grade: C.**

### D3. Coverage, speed, and the coverage gap — the critical limitation

**ISD, "The trust-consensus paradox: why decentralized fact-checking faces challenges on polarizing topics," 18 December 2025** (de la Fuente, Doctor & Hohlfeld). https://www.isdglobal.org/explainers/the-trust-consensus-paradox-why-decentralized-fact-checking-faces-challenges-on-polarizing-topics/
- Method: analysis of X's public Community Notes dataset, scope **19 March 2024 – 19 March 2025**, merged with Brandwatch exports; semantic mapping; LLM political-content classifier; network analysis; qualitative review of 50 helpful Notes and 50 high-engagement misleading posts.
- **Numbers (KEY):**
  - **Median lag of more than 15 hours** between the posting of misleading content and the addition of a **helpful** Community Note — while **"most views and engagement occur within the first hours after a post is published."**
  - **Case study, 2024 Hurricanes Helene and Milton: only 10% of sampled high-engagement false claims received a visible Note, with an average delay of 46 hours.**
  - Using an LLM classifier, **about half of the Notes applied to roughly 27,000 posts** focused on **"soft news"** (culture/lifestyle) rather than politics or current events. **Factually accurate and well-sourced Notes around politically charged events frequently went unpublished.**
  - **Notes appear widely trusted across the political spectrum**, even by users who have themselves been corrected — which the authors frame as a **paradox**: if Notes were applied more frequently to controversial content, overall confidence in the programme could decline.
- **Grade: A/B** (NGO primary analysis of platform data with published methodology).

**R Street Institute, "AI Writers on Community Notes: An Evaluation of Seven Months of Data," Spence Purnell, 16 June 2026.** https://www.rstreet.org/research/ai-writers-on-community-notes-an-evaluation-of-seven-months-of-data/
- Method: official Community Notes public download data through **23 March 2026**; **423,915 notes** with status history; **1,407,713** participants' enrolment records; **35,521,327** individual ratings. Study window **September 2025 – March 2026**.
- **Numbers (KEY):**
  - **27 AI accounts enrolled via the API; 24 actively wrote, producing 31,464 notes = 7.4% of total note volume** — and **13.9% of all "Currently Rated Helpful" (CRH) notes** (i.e. AI notes were displayed at nearly double their output share).
  - **CRH rate: 18.0% (AI) vs 8.9% (human)** — AI notes more than twice as likely to be displayed.
  - **"Verdict Success Rate" (VSR, restricted to notes that completed evaluation): 88.8% (AI) vs 68.5% (human), χ² P < 0.001.**
  - **"Needs More Ratings" (NMR) status: 71.5% (AI) vs 79.5% (human)** — **the vast majority of all notes, AI and human alike, never receive a final determination.**
  - **Only 2.3% of AI notes and 4.1% of human notes received "Currently Rated Not Helpful" status.**
  - **Time-to-verdict did not differ significantly: median 6.0 h (AI) vs 6.3 h (human), Mann-Whitney P = 0.058.**
  - **100% of AI notes classified the target post as "misleading" vs 82.4% for human notes** — attributed by the authors to an **API architectural constraint**: AI writers can only submit notes on posts they classify as misleading.
  - **100% of AI notes included at least one URL source vs 87.8% of human notes; average 2.2 vs 1.4 URLs; median summary length 363 vs 245 characters.**
  - **Top-cited domains for AI notes: Reuters, BBC, Snopes, AP News, AFP Fact Check, PolitiFact** — i.e. **AI notes depend on professional fact-checking output**. AI writers were **nearly 3× more likely than humans to flag "manipulated media"** (39.4% vs 13.3%).
  - **CRH rates by topic — AI vs human: politics 15.8% vs 5.7%; celebrity/entertainment 22.2% vs 11.2%; satire/jokes 25.9% vs 6.6%.**
  - AI growth: **93 notes in September 2025 → 8,109 in February 2026 (~87×)**; AI share of monthly note volume **0.2% → 12.7% (March 2026)**; human volume stable at ~54,000–70,000/month — **"genuine additive note-writing capacity; it did not appear to be displacing human writers."**
  - Economic framing: AI notes consume rater attention ~3× more efficiently — **304 ratings per successful correction vs 908 for humans** — credited with a potential saving of **~$577,000 to $3.4 million** in professional fact-checking labour.
- **Grade: E** — **vendor/advocacy.** R Street is a **free-market-leaning think tank** that has published in favour of the Community Notes transition ("Social Media Platforms Have Incentives to Get the Truth Right," 10 Feb 2026). The **interest is pro-crowdsourcing and cost-efficiency.** The underlying data is **X's own public download**, which makes the numbers auditable and raises them above pure advocacy — but the **framing, the novel "VSR" metric, and the cost-benefit conclusions should be read as advocacy-adjacent.** Report the numbers; mark the provenance.
- **Important caveat on this study for the CENTRAL QUESTION:** it shows **AI writing fact-check NOTES** (an assistant role), *not* AI **evading** fact-checks. It is sometimes misread as showing AI "gaming" Community Notes. It shows the opposite: AI note-writers **improving coverage**. The authors explicitly flag unresolved risks around **"concentration, gaming, and erosion of crowd-based legitimacy."**

**Coverage — the >90% unpublished finding:**
- **Fortune, 10 July 2025:** "More than 90% of X's Community Notes are never published and 'stuck in limbo', study finds." **GIGAZINE (14 July 2025)** repeats: "More than 90% of X's **1.76 million** community notes remain unpublished and in limbo." **Social Media Today (30 October 2024):** "Reports Find Community Notes Is Failing To Address Misinformation on X."
- **Grade: C** (journalism summarising a study that was **not** retrieved directly). The R Street data (NMR 71.5–79.5%) is consistent in direction but uses a different window and denominator. **Treat ">90%" and "1.76 million" as UNVERIFIED; treat "the large majority of notes never receive a verdict" as supported (grade B via R Street, grade A/B via ISD).**
- **NBC News, 10 October 2023:** "Elon Musk's X fact-checking system delayed Israel corrections for days" — an early, independent speed failure. **Grade: C.**

### D4. YouTube and other platforms

- **"YouTube Loosens Rules Guiding the Moderation of Videos," The New York Times, 9 June 2025.** **Grade: C.** Contents UNVERIFIED.
- **YouTube's own misinformation policy effects: no measured causal study retrieved.** Google/YouTube have historically published little causal outcome data; **no independent causal estimate of YouTube misinformation-policy effect was found in this sweep.** Flagged as a gap.
- **"Information control on YouTube during Russia's invasion of Ukraine," HKS Misinformation Review, 25 November 2025.** **Grade: C (existence); contents UNVERIFIED.**
- **"Accountability in name only: Fact-checking under the EU's Code of Practice on Disinformation," HKS Misinformation Review, 7 July 2026.** Title implies a critical null/weak-accountability finding. **Contents UNVERIFIED. Grade: C.**

### D5. NULL RESULTS AND NEGATIVE FINDINGS — collected explicitly

1. **Inoculation fails to transfer to a realistic feed.** *PNAS Nexus* 2025 (`10.1093/pnasnexus/pgaf172`): five preregistered studies; inoculation **only** decreased engagement **with emotionally present[ed content]** and did **not** clearly transfer to spontaneous detection/disengagement. **Grade: B.**
2. **Inoculation decays.** *Nature Communications* 2025 (`10.1038/s41467-025-57205-x`): text/video inoculation effective for **one month**; **game-based interventions decay more rapidly**. **Grade: B.**
3. **User warnings on social media have little effect.** **Revista Pesquisa FAPESP, 27 January 2026:** "Warnings left by users on social media posts containing misinformation have little effect." **Grade: C** (Brazilian science-press report; underlying paper not retrieved).
4. **Community Notes coverage collapses in crises.** ISD: **only 10%** of sampled high-engagement false claims in Helene/Milton got a visible Note; **average delay 46 hours**; **median lag >15 hours** generally. **Grade: A/B.**
5. **Community Notes are weakest where it matters most.** *Nature Communications* 2026: the 61.2% spread-reduction effect is **significantly weaker for influential accounts and political content**. **Grade: B.**
6. **Community Notes effectiveness is untested on Meta.** No study and **no Meta-published outcome metric** on the effect of Meta's Community Notes rollout was found; Tech Policy Press (22 Sep 2026) frames this as Meta rolling out globally **"without showing what success looks like."** **Grade: C (journalistic), but the absence is itself the finding.**
7. **Backfire effect is largely refuted as an explanation.** PNAS 2022 title; Risk Analysis 2026 explicitly tested and framed it as a live hypothesis. **Grade: B for the venues; direction partly UNVERIFIED.**
8. **Persistent correction-resistant core.** Chan et al. 2017: **persistence of misinformation despite debunking, ds = 0.75–1.06** — a **large** residual, not a small one. **Grade: B.** This is arguably the most under-appreciated number in the brief: correction leaves a **substantial** residue.
9. **Fact-check reach is unmeasured.** No study found quantifying the share of a population that sees a given professional fact-check. **Gap.**
10. **XARELLO's own null result:** adaptive attacks achieved **no improvement on news-bias assessment** with long inputs, and prior work is cited showing fake-news detection as "relatively robust." **Grade: B.**
11. **AI note-writers have a real failure mode.** R Street: **two of 24 AI accounts fell below the human VSR baseline** (31.6% and 46.2%); **human evaluators most commonly criticised AI notes as "unnecessary."** **Grade: E (advocacy source, but the failures are in the authors' own data).**

---

## FAILED SEARCHES / NEGATIVE FINDINGS

This section is the most important part of the brief for this topic.

### Tooling failures encountered (materially limited coverage)

- **`web_search` tool: BROKEN by task instruction — not used.**
- **Semantic Scholar API: HTTP 429 "Too Many Requests" on every attempt.** All six planned S2 queries returned empty. Zero S2 results obtained.
- **OpenAlex API: rate-limited mid-sweep.** "Rate limit exceeded — Insufficient budget... $0 remaining; resets at midnight UTC." Early queries succeeded; later queries (all Community Notes abstract queries, TextFooler, adversarial claim matching, CIE meta-analysis) returned **empty**. **This is a tooling artefact, not a genuine absence of literature** — but it did block verification.
- **arXiv API: intermittently returned zero `<entry>` elements** for queries that should have matched (e.g. `all:"fact-check" AND all:evasion`, `all:"claim matching"`, `all:"Community Notes"`). `curl` to `export.arxiv.org` returned an empty body on three retries. Worked earlier in the session, failed later. Marked as **unreliable**; arXiv abstract pages were fetched individually instead where possible.
- **`./tools/web.sh` (Bing scraper): BROKEN/POISONED.** Returned entirely unrelated spam results (internet-speed-test sites, a Chinese Q&A site, and pornographic domains) for every legitimate query. **Unusable — do not use.** This cost significant time and all its output was discarded.
- **`r.jina.ai` proxy: HTTP 429** ("Per IP rate limit exceeded") — blocked `ddg.sh` and any proxy-based retrieval.
- **Direct-fetch blocks (HTTP 403):** `about.fb.com` (Meta official announcements), `openai.com` (both 2025–2026 OpenAI threat reports). **Meta's and OpenAI's own primary documents could not be read**, only their existence/title/date via the Google News index.
- **404s on guessed canonical URLs:** DOJ Office of Public Affairs (all three candidate Meliorator URLs), Canadian Centre for Cyber Security joint advisory, Full Fact's Southport article.
- **Anomalous fetch:** `aclanthology.org/2024.wassa-1.11/` via `get.sh` returned a **German local-news article about a Munich airport drone sighting** on first attempt — i.e. the fetch pipeline returned a mismatched page. The ACL Anthology content was subsequently retrieved correctly on retry, and the PDF was obtained and parsed. **Flag: `get.sh` output should be sanity-checked for content match, not just line count.**

### Query formulations that returned NOTHING (or nothing relevant)

Central-question queries (the critical ones):
- `"fact-check evasion"` (OpenAlex) → returned **tax-avoidance, cancer immune-evasion, malware classifier evasion, astrophysics**. No disinformation relevance at all.
- `"evading fact-checking"` (OpenAlex) → **cosmology, tumours, Android sandbox detection**. Nothing relevant.
- `evading fact-checking LLM` (Semantic Scholar) → **empty (429)**.
- `adversarial fact-checking` (S2) → **empty (429)**.
- `LLM persuasion adaptive` (S2) → **empty (429)**.
- `misinformation mutation` (S2) → **empty (429)**; (OpenAlex) → irrelevant medical/communications results.
- `zombie claims debunking` (S2) → **empty (429)**; (PubMed, Crossref) → **zombie cinema, petro-zombies, medical education**. **No literature uses "zombie claims" as an indexable term.**
- `claim rephrasing fact-check classifier` (S2) → **empty (429)**.
- `claim mutation after debunking` (PubMed) → **no results**; (Crossref) → **no relevant results**.
- `adaptive evasion content moderation LLM` (PubMed) → **no results**; (Crossref) → only "Content Moderation by LLM: From Accuracy to Legitimacy" (SSRN) and an AoIR paper on TikTok users evading content moderation — **neither documents an AI agent observing moderation feedback**.
- `self-adaptive disinformation agent` (PubMed) → **no results**.
- `generative model adapts to moderation policy` (Crossref) → **no relevant results**.
- `claim paraphrasing adversarial fact verification retrieval` (Crossref) → **no results**.
- `LLM agent evade content moderation feedback loop` (Crossref) → **no relevant results**.
- `"Spamouflage Dragonbridge narrative pivot"` (news) → **ZERO results**.
- `"Meliorator AI software Russian bot farm CSE advisory July 2024"` (news) → **ZERO results**.
- `"Doppelganger AI-generated deepfake personas adaptation 2025"` (news) → **ZERO results**.
- `"Spamouflage cross-platform adaptation takedown 2025 2026"` (news) → **ZERO results**.
- `"DFRLab Doppelganger adaptation domain shift"` (news) → **ZERO results**.
- `"abuse of AI to evade fact-checking"` / equivalent phrasings across Crossref/PubMed/OpenAlex → **no results**.

Items sought and **NOT FOUND**:
- **The Continued Influence Effect meta-analysis** (Swire-Thompson et al., *Psychological Bulletin* ~2023) — **NOT RETRIEVED** across multiple query formulations.
- **Walter & Tukachinsky (2020)** and **Walter & Murphy (2018)** — **NOT RETRIEVED**.
- **Wood & Porter (2019), "The Elusive Backfire Effect"** and **Swire-Thompson et al., "Searching for the Backfire Effect"** — **NOT RETRIEVED**.
- **"Adversarial Attacks Against Automated Fact-Checking: A Survey" (EMNLP 2025)** — **existence confirmed via Crossref, but abstract and all reported success rates NOT RETRIEVED.**
- **"Bots Shield Fake News" (CIKM 2024)** — **attack success rates NOT RETRIEVED.**
- **UC San Diego vaccine Community Notes accuracy study** — **accuracy rate and sample size NOT RETRIEVED.**
- **Any study quantifying the reach/penetration of professional fact-checks** — **NOT FOUND.**
- **Any measured effect of Meta's ending of US third-party fact-checking** — **NOT FOUND.**
- **Any measured causal effect of YouTube's misinformation policies** — **NOT FOUND.**
- **Any Meta-published outcome metrics for Community Notes** — **NOT FOUND** (and journalistically noted as absent).
- **Costello & Rand effect-size details beyond ~20% / 2 months** — **not extracted.**
- **The "truth sandwich" literature** — **not searched successfully**; no relevant academic work retrieved. Treat any "truth sandwich" claim as **UNVERIFIED**.

### EXPLICIT STATEMENT OF WHAT HAS NO EVIDENCE

Stated plainly, because the central question demands it:

1. **NO EVIDENCE FOUND** of any deployed AI system that **detects fact-checking, Community Notes, or debunk content about its own output** and then **modifies subsequent messaging to avoid it**. No platform transparency report, government assessment, NGO investigation, or peer-reviewed study retrieved makes this claim.
2. **NO EVIDENCE FOUND** of a **closed-loop adaptive claim-rewriting system** tested against a **fact-check verdict** (as opposed to a credibility/bias/spoof classifier). The gap between "perturb a static text so a classifier mislabels it" and "notice a fact-check about your claim and re-plan" is **entirely unbridged in the literature retrieved**.
3. **NO EVIDENCE FOUND** that any real-world narrative pivot (Helene/FEMA, Southport, Doppelganger, Spamouflage, Romania) was **caused by** an automated evasion capability. Every documented pivot retrieved is **consistent with ordinary human narrative adaptation** — doubling down, reframing correction as conspiracy, shifting news pegs, or escalating targeting.
4. **NO EVIDENCE FOUND** that AI has *increased* the difficulty of fact-checking by making claims harder to match. The AI effects actually documented are **volume, fluency, persona generation, and synthetic media** — plus, at X, AI **writing** notes that improve coverage.
5. **NO EVALUATION FOUND** of whether the Community Notes transition at Meta changed misinformation outcomes at all. This is a **major, current, and policy-relevant measurement gap**.

### What evidence WOULD establish the central claim

To move from "capability plausible" to "deployment demonstrated," a defender would need at least one of:

1. **A peer-reviewed closed-loop study**: a generative agent given fact-check verdicts (or claim-matching scores) about its own generated claims, iteratively rewriting, reporting **evasion rate against a real fact-check pipeline** (claim detection → retrieval → verdict) at **fixed semantic fidelity**, with the **query budget** reported. XARELLO is the methodological template; it has not been run against a fact-check *verdict*.
2. **Platform or researcher telemetry**: a documented account that is **observed to change a claim's surface form specifically after receiving a fact-check or a Community Note**, with timestamp ordering that rules out ordinary editing, and a control comparison against accounts not yet fact-checked.
3. **A takedown/attribution report** naming a tool whose function is **fact-check-aware rewriting** (analogous to how Meliorator was named for persona generation). Nothing retrieved names such a tool.
4. **An ablation in the wild**: evidence that misinformation **re-emerges in rephrased forms at a rate above baseline** following a fact-checking intervention — and that the rephrasing is **systematically optimised against the detector** rather than organic. ISD's Helene observation that a Community-Note-corrected false claim "continued to gain traction" is **necessary but nowhere near sufficient** for this; it is equally explained by reach and delay.
5. **Detection-side negative control**: a fact-checking organisation reporting a measured rise in **claim-matching failure rates** (claims they can no longer retrieve) attributable to LLM paraphrase. **No such report was found.**

---

## QUICK-REFERENCE NUMBER TABLE

| Finding | Number | Source | Date | Grade |
|---|---|---|---|---|
| RL adaptive attacker (XARELLO) vs BiLSTM fact-checking, confusion score | **100%** (vs 86% BERT-ATTACK, 57% DeepWordBug) | Przybyła et al., WASSA/ACL, `10.18653/v1/2024.wassa-1.11` | Aug 2024 | B |
| XARELLO vs fact-checking, quality score / queries | **77% vs 53%**, **7.42 vs 146 queries** | ibid. | Aug 2024 | B |
| XARELLO vs GEMMA (2B) | **58% vs 47%** | ibid. | Aug 2024 | B |
| TextAttack total success rate on fake-news classifiers | **65.15%** | Koenders et al., arXiv:2107.07970 | Jul 2021 | B |
| Mean ASR, TextFooler on fake-news classifiers | **81.17%** | ibid. | Jul 2021 | B |
| Best single ASR (RoBERTa vs TextFooler) | **92.5%** | ibid. | Jul 2021 | B |
| TextFooler on IMDB LSTM (sentiment — NOT fake news) | **99.7%** ASR, 5.1% words | Jin et al., arXiv:1907.11932 | 2020 | B |
| Fakebox — fact-distortion veracity drop | **0.0073** (negligible) | Zhou et al., arXiv:1901.09657 | 2019 | B |
| GNN fake-news attack success rate w/ 210 edges | **0.48**; 80% performance drop on GCN | Zhu et al., IJCAI 2024, arXiv:2404.15744 | Apr 2024 | B |
| Social-engagement attack on fake-news detectors | success rate **0.18 → 0.33**, reaching **0.48** | arXiv:2302.07363 (CIKM 2023) | Feb 2023 | B |
| Inoculation RCTs + YouTube field study | **n=6,464 (6 RCTs)** + **n=22,632 (field)** | Roozenbeek et al., Sci. Adv. `10.1126/sciadv.abo6254` | 24 Aug 2022 | B |
| 12-EU video inoculation | **N=19,735**, 13 surveys, campaign reach **120M+** | Comms. Psychology `10.1038/s44271-025-00379-3` | 17 Mar 2026 | B |
| Inoculation durability | text/video **1 month**; game decays faster; **N=11,759** | Nature Comms `10.1038/s41467-025-57205-x` | 11 Mar 2025 | B |
| Debunking meta-analysis | **k=52, N=6,878**; debunking **ds 1.14–1.33**; persistence **ds 0.75–1.06** | Chan et al., Psych. Sci. `10.1177/0956797617714579` | 2017 | B |
| AI dialogues reduce conspiracy belief | **~20%**, persisting **2 months**, **N=2,190** | Costello & Rand, Science `10.1126/science.adq1814` | 2024 | B |
| Helene: debunked claims' reach | **33 posts → >160M views** | ISD | 8 Oct 2024 | A/B |
| Helene: antisemitic share of posts | **30%**, **17.1M views** | ISD | 8 Oct 2024 | A/B |
| Helene: MTG "control the weather" | **41.5M views**; follow-up **2.1M** | ISD | 8 Oct 2024 | A/B |
| Helene: posts fact-checked by Community Notes | **NONE of those analysed** | ISD | 8 Oct 2024 | A/B |
| Community Notes reduce spread of misleading posts | **61.2%** (N=237,180 cascades, 431M reposts) | Nature Comms `10.1038/s41467-026-72597-0` | 2026 | B |
| Community Notes increase odds of post deletion | **94.3%** | ibid. | 2026 | B |
| Birdwatch note effect on agreement | **−26%** (N=6,046, p«0.001) | Wojcik et al., arXiv:2210.15723 | 27 Oct 2022 | B |
| Birdwatch live A/B: like/retweet reduction | **25–34% less likely** | ibid. | 27 Oct 2022 | B |
| Note helpfulness with external sources | **2.33× odds** | Sci. Rep. `10.1038/s41598-025-09372-6` | 2025 | B |
| Republican vs Democrat flagging asymmetry | **2.3×** | PNAS `10.1073/pnas.2502053122` | 2025 | B |
| Community Notes median lag to helpful note | **>15 hours** | ISD trust-consensus paradox | 18 Dec 2025 | A/B |
| Helene/Milton: high-engagement false claims with a visible Note | **10%**; average delay **46 hours** | ISD | 18 Dec 2025 | A/B |
| AI note-writers' share of note volume / of CRH notes | **7.4% / 13.9%** (31,464 notes) | R Street | 16 Jun 2026 | E |
| CRH rate AI vs human | **18.0% vs 8.9%** | R Street | 16 Jun 2026 | E |
| Verdict Success Rate AI vs human | **88.8% vs 68.5%** (P<0.001) | R Street | 16 Jun 2026 | E |
| Notes never reaching a verdict (NMR) | **71.5% AI / 79.5% human** | R Street | 16 Jun 2026 | E |
| Ratings per successful correction, AI vs human | **304 vs 908** | R Street | 16 Jun 2026 | E |

---

## SOURCE INVENTORY (URLs actually used)

**Peer-reviewed / preprint (fetched or abstract-verified):**
- https://aclanthology.org/2024.wassa-1.11/ · https://aclanthology.org/2024.wassa-1.11.pdf
- https://arxiv.org/abs/1901.09657 · https://arxiv.org/abs/2107.07970 · https://arxiv.org/abs/1907.11932 · https://arxiv.org/abs/2404.15744 · https://arxiv.org/abs/2302.07363 · https://arxiv.org/abs/2210.15723
- https://doi.org/10.1126/sciadv.abo6254 · https://doi.org/10.1038/s44271-025-00379-3 · https://doi.org/10.1038/s41467-025-57205-x · https://doi.org/10.1093/pnasnexus/pgaf172
- https://doi.org/10.1177/0956797617714579 · https://doi.org/10.1126/science.adq1814 · https://doi.org/10.1038/s41598-026-66242-5
- https://doi.org/10.1038/s41467-026-72597-0 · https://doi.org/10.1073/pnas.2503413122 · https://doi.org/10.1038/s41598-025-09372-6 · https://doi.org/10.1073/pnas.2502053122 · https://doi.org/10.1371/journal.pone.0348291
- https://doi.org/10.1016/j.neunet.2026.109562 · https://doi.org/10.1111/risa.70293 · https://doi.org/10.1016/j.vaccine.2025.127463 · https://doi.org/10.3758/s13421-025-01760-7 · https://doi.org/10.1177/13591053251379834
- https://doi.org/10.18653/v1/2025.emnlp-main.1171 (EMNLP survey — existence only)

**NGO / think tank / official:**
- https://www.isdglobal.org/digital_dispatches/hurricane-helene-brews-up-storm-of-online-falsehoods-and-threats/
- https://www.isdglobal.org/explainers/the-trust-consensus-paradox-why-decentralized-fact-checking-faces-challenges-on-polarizing-topics/
- https://www.rusi.org/explore-our-research/publications/commentary/how-did-foreign-actors-exploit-recent-riots-uk
- https://euvsdisinfo.eu/interview-with-ben-nimmo-from-openai/
- https://www.rstreet.org/research/ai-writers-on-community-notes-an-evaluation-of-seven-months-of-data/

**Journalism / indexed-only (Google News RSS: headline + source + date; redirect URLs do not resolve):**
Fortune (10 Jul 2025); GIGAZINE (14 Jul 2025); Social Media Today (30 Oct 2024, 13 Mar 2025); NBC News (10 Oct 2023); Washington Post (9 Jul 2024, 6 Dec 2024); Forbes (9 Jul 2024); CyberScoop (9 Jul 2024, 3 Sep 2024); HPCwire (10 Jul 2024); Reuters (3 Sep 2024); The Guardian (18 May 2024); RFE/RL (4 Dec 2024); Politico (5 Dec 2024); BBC (17 Dec 2024); tvpworld (2 Apr 2025); Global Witness (17 Dec 2024, 15 May 2025); VSquare (19 Dec 2024); CEPA (5 Dec 2024, 20 Dec 2024); Atlantic Council (6 Dec 2024); Le Monde (7 Dec 2024); NYT (7 Jan 2025, 9 Jun 2025, 6 Oct 2024); NPR (7 Jan 2025, 22 Oct 2024); VOA (22 Jan 2025); Nieman Lab (26 Mar 2026); Tech Policy Press (3 Feb 2025, 3 Mar 2026, 26 Mar 2026, 22 Sep 2026); Engadget (10 Sep 2026); RFI (9 Sep 2026); Just Security (21 Apr 2026); Carnegie Endowment (31 Jan 2024, 11 Oct 2024, 26 Sep 2025); EUvsDisinfo (31 Mar 2025, 12 Mar 2026); The Record (5 Dec 2023); EU DisinfoLab (27 Sep 2022); HKS Misinformation Review (7 Jul 2026, 25 Nov 2025, 22 Jan 2026, 3 Feb 2020); Revista Pesquisa FAPESP (27 Jan 2026); CU Boulder (17 Apr 2026); CIPA/Univ. of Washington (9 Oct 2024); Yale Insights (7 Jul 2025); MIT Sloan (31 Mar 2025); CDD (25 Jul 2025); DDIA (9 Jul 2025); Carnegie (31 Jan 2024).

**Anomalous / discarded:** `./tools/web.sh` output (spam); the `get.sh` fetch of `aclanthology.org/2024.wassa-1.11/` that returned an unrelated Munich-airport news article; the TikTok Newsroom URL that returned an unrelated Sept-2026 album story.
