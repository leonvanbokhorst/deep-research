# Topic 2 — Adaptive narrative selection: agents that test messages and shift approach based on measured response

**Compiled:** 25 September 2026 · **Scope:** defensive assessment only (capability, evidence, defence). No operational guidance.
**Central question:** is there *closed-loop, adversary-side* message optimisation driven by measured response — or only (a) platform-side optimisation, (b) human A/B testing, (c) metric dashboards?

**Grades:** A = primary/official (company threat report, regulator, government) · B = peer-reviewed/strong secondary · C = reputable journalism/industry · D = weak/inferred · E = vendor marketing.
**Type:** (i) technical possibility · (ii) demonstrated capability (lab) · (iii) credible evidence of deployment · (iv) documented real-world impact.

---

## 1. Headline assessment

As of September 2026 **no public grade A/B evidence establishes that any state or commercial influence operation runs a closed-loop optimiser that mutates narrative content in response to measured engagement.** The strongest documented cases sit one step short: they *measure* engagement and report it to clients, and they *simulate* engagement to game platform ranking. Measured-response selection of message content is demonstrated in commercial adtech and in the laboratory, not as adversary practice.

The most important official statement is Meta's own: agentic systems "capable of planning, executing multi-step tasks, and adapting to feedback autonomously" represent "a qualitative shift," but **"we have not yet seen these capabilities deployed extensively at scale by threat actors"** (Meta, *H2 2026 Adversarial Threat Report*, §"Security in the Age of AI", https://transparency.meta.com/sr/H2-2026-adversarial-threat-report/, Aug 2026). Grade A, type (i) only.

---

## 2. Q1 — Demonstrated in-the-wild use vs. A/B-testing analogues

**Found: engagement *measurement* and *simulation*. Not found: engagement-driven content *selection*.**

**Anthropic, "Detecting and countering misuse of AI: September 2026," 10 Sep 2026 (grade A; activity disrupted Dec 2025–Aug 2026).** https://www.anthropic.com/threat-intelligence-report-september-2026. Case **GTG-84005**: a commercial election-manipulation platform targeting Malaysia, traced to **BBS Bilisim Teknolojileri** (Istanbul), sold as paid influence-as-a-service and marketed as a "military-grade, AI-driven, real-time political operations ecosystem." Specifics: voters targeted in **all 222 Malaysian parliamentary constituencies** using ingested census and electoral data plus **millions of voter records**; **~1,000 fake X/Twitter accounts** with warm-up logic and cookie/IP rotation; fabricated dossiers against named opposition figures and civil-society organisations; fake outlet **"Malaysia Pulse"** fed by an AI rewriting pipeline that scraped legitimate Malaysian reporting and laundered **Sputnik/RIA, TV BRICS, Xinhua and CGTN** material as independent Malaysian reporting.

The engagement loop is the closest documented case to adversary-side feedback optimisation: the operator used Claude Code to build **custom dashboards tracking likes and views generated per target**, with **a parameter tuning how many artificial views each target receives**; Anthropic observed a request for **1,000,000 artificial views** on the sitting Prime Minister's account, and dashboard figures "in the millions." **Critically, this is a targeted engagement-metric *dashboard*, not documented closed-loop adaptation of message content.** The parameter scales *volume of inauthentic engagement*, not narrative content. Anthropic rates it **Breakout Scale Category Two — no evidence of breakout into authentic communities**, notes the figures are **self-reported by the actor's own tools and unverifiable**, and found **no evidence** that the actor's pursuit of a contract with Malaysia's national communications regulator succeeded. (Coverage of MCMC's review: CNA and The Edge Malaysia, 11 Sep 2026.)

**Anthropic's general finding cuts against high claimed impact:** "Most of the content we discovered drew little or no authentic engagement, and in several cases we disrupted the operation before it could build an audience. The widest authentic reach occurred where state media outlets were the distribution mechanism" (p. 43). Grade A, type (iv) — evidence of *failure to scale*.

**Citizen Lab, "Research Note: BlackCore's Influence Operations for Hire," 17 Sep 2026 (grade A/B).** https://citizenlab.ca/research/blackcores-influence-operations-for-hire/. Israeli influence-for-hire firm; Angola program advertised as a 4-week course, ran **14 weeks**; participants produced **40+ pieces of content**; **trainers evaluated at least 24 publications**; Facebook/Instagram advertising plus a TikTok campaign around a fictitious "Agita News" page. Marketing promised "Discourse Dominance," **"Organic Engagement: achieve attention and engagement from real people,"** and "Counter Operations: disrupting dissenting narratives with tailored messaging," claiming hundreds of avatars. Client-report screenshots showed deceptive Facebook posts at **~20,000 likes, later approaching 50,000** — "substantial" against ~6 million active Facebook users in Angola. **Distinction: contractor measurement and client reporting ("trainers evaluated at least 24 publications" = manual QA); no documented algorithmic loop.** Corroboration: The Record (Recorded Future News), 17 Sep 2026, https://therecord.media/angola-israel-influence-operations-blackcore (grade C; Citizen Lab could not independently confirm the training occurred but judged it "highly likely"); OCCRP, 17 Sep 2026, https://www.occrp.org/en/news/israeli-firm-may-have-run-angola-influence-campaign (grade C).

**Meta H2 2026 (grade A)** ties Angola to an Israeli-origin CIB network assessed as influence-for-hire, "likely run on behalf of a number of distinct clients": 215 Facebook accounts, 4 Pages, 1,044 Instagram accounts removed; ~32,500 Page followers and ~248,000 Instagram followers; only **~$100 in ad spend**; cross-platform including TikTok, X and owned websites. The mechanism is explicit: "clusters of **lower-sophistication, automated fake accounts specifically designed to artificially boost engagement** to its main accounts," using AI to "mass-produce contextually relevant comments **designed to artificially boost engagement**... a tactic to boost reach that the network's own operators referred to as **'Mother-Child'**." This is **engagement simulation to game ranking**, not message testing. Likewise an Iran-origin network targeting Nigeria, South Africa, Kenya, Ethiopia and Sudan "utilized inauthentic accounts to comment on the network's posts to **simulate popularity**."

---

## 3. Q2 — Platform ad optimisation ("bandit") and the amplification debate

**The optimisation is the platform's, not the advertiser's.** Foundational engineering papers describe platform-side machinery; none is a bandit paper:

- He et al., "Practical Lessons from Predicting Clicks on Ads at Facebook," ADKDD '14, **DOI 10.1145/2648584.2648589** — the GBDT+LR CTR model. Grade B, type (ii). *A CTR-ranking model, not a multi-armed bandit.*
- Hazelwood et al., "Applied Machine Learning at Facebook: A Datacenter Infrastructure Perspective," IEEE HPCA 2018, **DOI 10.1109/HPCA.2018.00059**. Grade B, type (ii).
- Naumov et al., DLRM, **arXiv:1906.00091** (31 May 2019) — verified: personalisation/recommendation, model- and data-parallel training, benchmarked on Big Basin. Grade B, type (ii). A *recommendation* model, not an ad bandit.

**Audit evidence that delivery — not creative choice — is the decisive optimised variable:**

- Ali, Sapiezynski, Korolova, Mislove & Rieke, "Ad Delivery Algorithms: The Hidden Arbiters of Political Messaging," WSDM 2021, **DOI 10.1145/3437963.3441801**; preprint **arXiv:1912.04255** (Dec 2019). Running real political ads on Facebook, they found "Facebook's ad delivery algorithms effectively differentiate the price of reaching a user based on their inferred political alignment with the advertised content, inhibiting political campaigns' ability to reach voters with diverse political views," most acute at small budgets because "the delivery algorithm tends to preferentially deliver to the users who are, according to Facebook's estimation, most relevant." Grade B, type (ii)→(iii) (production system measured). **Implication: the observable selection of who receives which message is performed by the platform without advertiser knowledge — category (a), no adversary agency.**
- Votta, Dobber, Guinaudeau & Helberger, "The Cost of Reach: Testing the Role of Ad Delivery Algorithms in Online Political Campaigns," *Political Communication* 2024, **DOI 10.1080/10584609.2024.2439317** (pre-registered). 135 identical ads placed by three Dutch parties on their own Facebook/Instagram accounts across nine audiences during the 2022 municipal elections, running simultaneously with identical settings, budgets, texts and images. One party paid **9.24%–10.74% less per 1,000 users**; **lower-educated citizens, women and 18–24s were more expensive to reach**. Grade B, type (ii)/(iii).

**Did campaigns or influence ops use this tooling?** Platform automation is marketed for creative testing/iteration (Meta Advantage+ and automated-ads consolidation — Social Media Today 1 Oct 2025, Forbes 25 Apr 2026, AdExchanger 29 Oct 2025; TikTok Smart+; grade C). But **no grade A/B source found this session documents an influence operation or campaign using it for adaptive narrative selection**, and the documented Israeli/BlackCore network spent only **~$100** — commercial automation was not the mechanism. The "Project Alamo / 50,000 ad variants per day" claims are campaign self-reporting; unverified here, graded **D**. On the **algorithmic-amplification debate**, the audited mechanism relevant to Topic 2 is ad *delivery* (above); broader recommender-amplification claims were not re-verified this session and are excluded from graded claims.

---

## 4. Q3 — Academic work: bandit/RL message optimisation and generative-AI persuasion

**Bandit message optimisation exists — in commercial advertising, not politics.**

- Schwartz, Bradlow & Fader, "Customer Acquisition via Display Advertising Using Multi-Armed Bandit Experiments," *Marketing Science* 2017, **DOI 10.1287/mksc.2016.1023** (229 citations). Multi-armed bandit field experiments for display-ad allocation. Grade B, type (ii). Canonical demonstration of measured-response ad optimisation — commercial, non-political.
- Dynamic Creative Optimization: "Dynamic Creative Optimization in Online Display Advertising," SSRN 2021, **DOI 10.2139/ssrn.3863663**; "Conversion-Based Dynamic-Creative-Optimization in Native Advertising," IEEE BigData 2022, **DOI 10.1109/bigdata55660.2022.10020498**. Grade B/C, type (i)/(ii). Vendor/platform systems, not adversary tooling.
- "Personality-Aware Reinforcement Learning for Persuasive Dialogue with LLM-Driven Simulation," LNCS 2026, **DOI 10.1007/978-3-032-19687-3_33**. Grade B, type (i)/(ii): an RL persuasion *policy* demonstrated in simulation — the clearest lab analogue of adaptive narrative selection, with no evidence of deployment.

**Generative-AI persuasion experiments (all type (ii), survey/lab):**

| Study | Scale / effect | Source, date, grade |
|---|---|---|
| Matz, Teeny, Vaid, Peters, Harari & Cerf, "The potential of generative AI for personalized persuasion at scale" | 4 studies / 7 sub-studies, **N = 1,788**; ChatGPT-personalised messages significantly more influential than non-personalised across domains incl. **political appeals for climate action**; one short prompt sufficed | *Scientific Reports*, 26 Feb 2024, **10.1038/s41598-024-53755-0**, 275 cites. B |
| Bai, Voelkel, Muldowney, Eichstaedt & Willer, "LLM-generated messages can persuade humans on policy issues" | 3 pre-registered experiments, **N = 4,829**; significant attitude change across policies incl. **assault-weapons ban, carbon tax, paid parental leave**; LLMs **~as effective as lay-human-written** messages | *Nature Communications*, 1 Jul 2025, **10.1038/s41467-025-61345-5**. B |
| Hackenburg, Tappin, Röttger, Hale, Bright & Margetts, "Scaling language model size yields diminishing returns for single-message political persuasion" | **720 messages, 10 US issues, 24 models, N = 25,982**; **sharply diminishing returns** to model scale; association **shrinks to zero** once adjusted for task completion (coherence, staying on topic) | *PNAS* 2025, **10.1073/pnas.2413443122**. B |
| Hackenburg, Tappin, Hewitt, Saunders, Black & Lin, "The levers of political persuasion with conversational artificial intelligence" | 3 experiments, **N = 76,977**; **19 LLMs**, **707 political issues**, **466,769 claims fact-checked**; post-training raised persuasiveness up to **51%**, prompting **27%**; personalisation and model scale smaller; **where persuasion rose, factual accuracy systematically fell** | *Science*, Dec 2025, **10.1126/science.aea3884**. B |
| Costello, Pennycook & Rand, "Durably reducing conspiracy beliefs through dialogues with AI" | Reported at **N = 2,190**, **~20% reduction persisting ~2 months** — *numbers from secondary coverage; primary abstract blocked (science.org HTTP 403)* | *Science*, 13 Sep 2024, **10.1126/science.adq1814**. B (caveat) |
| "A meta-analysis of the persuasive power of large language models" | Effect-size synthesis | *Scientific Reports*, 12 Dec 2025 (headline verified; DOI not captured). C |

**Two defensive readings.** (1) The *conversational* result is the only one showing per-recipient adaptation — a model adapting inside a dialogue — but it is adaptation to the interlocutor, not a bandit loop over engagement metrics, and it is bought at the cost of accuracy. (2) The *scale* result is reassuring: static LLM political messages show diminishing persuasive returns to model size once basic coherence is controlled.

**Attribution corrections (do not propagate):**
- The *Nature Communications* 2025 paper is by **Bai, Voelkel, Muldowney, Eichstaedt & Willer (Stanford)** — **not** Hackenburg & Margetts. The genuine Hackenburg–Margetts item found is the 2024 PNAS **Reply to Teeny and Matz**, **10.1073/pnas.2418817121**. No "Hackenburg & Margetts, AI and persuasion, Nature Human Behaviour 2024/2025" exists in Crossref.
- "Bai et al., *How susceptible are LLMs to influence*" could not be verified this session.
- The prompt's "**Platt**/Meta bandit" attribution is **unverified**: Platt is absent from the GBDT+LR author list, and no Platt bandit ad-delivery paper surfaced. Possible conflation.

---

## 5. Q4 — Documented operations that iterated on engagement feedback

Ranked by proximity to a genuine feedback loop:

1. **Anthropic GTG-84005 (Malaysia).** Per-target likes/views dashboard with an artificial-views knob. **Measurement + inauthentic-engagement scaling; no content mutation loop.** Grade A.
2. **Meta H2 2026, Israeli/BlackCore network.** "Mother-Child" bot clusters mass-producing AI comments "designed to artificially boost engagement... to boost organic reach" — a *visibility* loop (engagement → reach), not a *content* loop. Grade A.
3. **Meta H2 2026, France/Spain network.** "The operation demonstrated an ability to adapt to **enforcement actions**; in an attempt to avoid our political advertising policies, it ran non-civic patriotic advertisements to build authentic audiences, then organically seeded political content into their feeds." **Adaptation to detection, not to measured response.** Grade A.
4. **Anthropic GTG-54002 (LKM Company, France).** A digital advertising agency running **~70 fabricated news sites** and **250+ inauthentic commenting accounts**, publishing **8,913 articles in ~20 languages**; it rewrote one real story in **opposite ideological directions** for different audiences and switched political stance "based on whoever was paying." Grade A. **Audience tailoring / client servicing, not feedback adaptation.**
5. **Anthropic GTG-04001 (Central African Republic).** A Russian state-aligned production backbone (Radio Lengo Songo 98.9 FM, coordinated with RT, Sputnik Afrique, TASS) where the operator "explicitly instructed Claude to embed the pro-Russia, anti-France talking points." Grade A. **Fixed directional instruction, no measurement loop.**
6. **Manual iterative refinement (Meta H2 2026).** "One user **iteratively workshopped** fake Meta security alerts through the model, requesting edits to remove emojis... and to add specific device and location details that would increase victim believability." Grade A. **Human-in-the-loop prompt iteration against an imagined audience — the honest description of most "adaptation" observed.**

**Meta H2 2026's own framing of direction of travel (grade A, type (i)):** "These developments suggest a transition from AI as a content generation tool to AI as infrastructure, embedded within automated systems that can **produce, adapt, and distribute content with minimal human intervention per unit of output**." Read with its caveat that autonomous feedback-adaptation "has not yet [been] deployed extensively at scale," this is a *forecast*, not an observation.

**Additional lead (grade A, not fully retrieved):** OpenAI, "Operation 'Stop News': Russia-origin influence activity," **1 Oct 2024** (https://news.google.com/rss/articles/CBMifEFVX3lxTE1PREQzLUZxYTF6VFVzYnJKWmp1U2stazYydWh6OFB2Vjl3bm1XVU9kdHR4YXBmWVNqa29LNFBsWmNkSHhpcU1CT0VYS3hRcDRFYTFVQlVIcFRGZXdOQ0ZNS0hTcmZHTzI4MFhIR3lzLWlCLXFheXpfSXk3ZEo?oc=5). OpenAI threat reporting documents actors using ChatGPT to generate and refine influence content; **no retrieved OpenAI report documents engagement-feedback-driven content selection.**

---

## 6. Q5 — Platform ad-delivery literature, public evidence, DSA transparency

**Platform optimisation is documented and audited** (§3): Ali et al. and Votta et al. show the platform, not the advertiser, decides who within an audience sees a political ad, with measurable price skews. Grade B, type (ii)/(iii).

**Public evidence that influence ops used it: none found.** The best-documented 2026 influence-for-hire cases spent **~$100** (BlackCore/Meta) or used **no paid amplification** (Anthropic GTG-84005 relied on fake accounts and a rewriting pipeline). Paid bandit tooling is *available but not the documented vector*. Grade A for the spend figures; the inference of non-use is **C/D (absence of evidence)**.

**Defensive transparency infrastructure (grade A, official):**
- **EU Digital Services Act**, Regulation (EU) 2022/2065, **Article 39** ("Additional online advertising transparency") requires VLOPs to publish a repository of ads presented to each individual, including who paid and targeting parameters — https://eur-lex.europa.eu/eli/reg/2022/2065/oj.
- **Meta Ad Library** https://www.facebook.com/ads/library/ · **Google Ads Transparency Center** · **TikTok Commercial Content Library**. These expose creative *variants* and spend — the practical way to detect human A/B testing.
- Enforcement: the European Commission found **TikTok in breach of EU advertising transparency rules** (The Guardian, 15 May 2025; Tech Policy Press, 16 May 2025). Grade A/C. EU DisinfoLab, "Disinfo Update: DSA rulings | AI manipulation," 17 Mar 2026 (C) tracks the trend.
- Defender method: GIJN, "Guide to Investigating Digital Ad Libraries," 26 Jun 2024 (C).

**Assessment:** ad repositories give the best available window into *human* creative testing, but they do not expose inauthentic-account engagement loops — the dominant 2026 pattern — which require platform-side behavioural detection, precisely the approach Meta reports still works.

---

## 7. Q6 — Grading the three categories

| Category | Grade | Closest evidence | Established? |
|---|---|---|---|
| **(a) Platform-side optimisation** (auction/bandit selects delivery; no adversary agency) | A/B | Ali et al. WSDM 2021 (arXiv:1912.04255); Votta et al. *Political Communication* 2024; Meta engineering papers (10.1145/2648584.2648589; 10.1109/HPCA.2018.00059; arXiv:1906.00091) | **Yes — (iii) deployment** |
| **(b) Routine human A/B testing of creative** | C/D for politics; A/B for tooling existence | Meta Advantage+ / automated ads (Social Media Today 1 Oct 2025; Forbes 25 Apr 2026); Meta Ad Library variants; DCO literature | **Tooling yes; documented political/influence use NO** |
| **(c) Genuine autonomous adversary-side narrative adaptation** | B (lab only) | RL persuasive dialogue (10.1007/978-3-032-19687-3_33); conversational persuasion levers (10.1126/science.aea3884, N=76,977) | **(ii) only. (iii)/(iv) NOT established** |

**Nearest-miss ranking:** Anthropic GTG-84005 dashboard (measures engagement per target, tunes artificial-view volume) > Meta "Mother-Child" (engineers engagement to raise reach) > Anthropic GTG-54002 (same story in opposite directions per audience) > Meta France/Spain (adapts to enforcement, not response) > manual prompt iteration. **None is a documented closed-loop optimiser over narrative content.**

---

## 8. NEGATIVE FINDINGS — looked for and did not find

1. **No bandit/RL influence-operation optimiser in the wild.** No peer-reviewed paper or A-level threat report documents an actor selecting or mutating narrative content via a multi-armed/contextual bandit or RL loop over platform engagement signals. Searches: Google News ("influence operation A/B test messages engagement"; "Russian influence operation tested messages engagement feedback loop"; "Graphika influence operation A/B testing narratives data-driven"), plus Crossref, OpenAlex, arXiv.
2. **No academic literature on bandit-based political persuasion.** OpenAlex `multi-armed bandit political persuasion messaging` returned only unrelated items (top: "Personalized persuasion in Ambient Intelligence," 2012, 43 cites; "The Bandit Whisperer," 2024). Crossref queries for "multi-armed bandit political persuasion," "contextual bandit campaign messaging," "reinforcement learning political advertising," "adaptive persuasion experiment" returned no political-persuasion bandit work — only commercial DCO, bandit theory, and unrelated experiments. arXiv `all:"bandit" AND all:"persuasion"` returned **zero** entries.
3. **The 2024 "AI-generated political messages in Kenya" field study could not be located.** Five Google News queries and two Crossref bibliographic queries found no such study. Closest verified: Bai et al. 2025 (US, N=4,829); a 2025 Kenya/Nigeria AI *health*-messaging study (10.64628/aaj.akjf7gmka); Meta's H2 2026 Iran network *targeting* Kenya. **Treat the Kenya study as unverified.**
4. **No threat report shows an influence op A/B-testing narrative variants then shifting approach.** Meta H2 2026 is explicit that feedback-adapting agentic systems have not been deployed at scale; Anthropic's September 2026 report offers no comparable documentation.
5. **Anthropic GTG-84005's dashboard is measurement-only.** No evidence likes/views metrics fed back into content generation; Anthropic's own caveats are that figures are self-reported, unverifiable, and that most influence content drew "little or no authentic engagement."
6. **No evidence political campaigns used platform bandit tooling for adaptive narrative selection.** Only platform-side delivery optimisation is documented; ad spend in the documented 2026 influence-for-hire cases was trivial (~$100) and paid amplification was not the mechanism.
7. **"Project Alamo" / "50,000–60,000 ad variants per day" claims unverified (grade D).** Campaign self-reporting repeated in journalism; no primary or peer-reviewed confirmation this session.
8. **"Platt/Meta bandit" attribution unverified.** No Platt paper on Facebook ad bandits found; the GBDT+LR author list excludes Platt.
9. **Team Jorge "Advanced Impact" A/B testing unverified.** Google News returned only Haaretz, 15 Feb 2023 ("Hacking, extortion, election interference: The toolkit of Israel's agents of chaos"); no primary documentation that the platform performed automated message A/B testing on engagement.
10. **Tooling limitations encountered (affects completeness, not conclusions):** `web_search` not used (session-disabled by instruction); **OpenAlex API exhausted its shared daily budget** mid-session; **Semantic Scholar returned HTTP 429** for most calls; **export.arxiv.org returned HTTP 429**; **science.org HTTP 403**; **nature.com** cross-origin redirect; **tandfonline.com HTTP 403**. Google News redirect URLs do not resolve, so headline + source + date were used as evidence. Crossref DOI lookups and `arxiv.org/abs/` HTML were reliable substitutes.

---

## 9. Bottom line for Topic 2

Adaptive narrative selection remains a **capability, not an observed practice**. Platform-side bandit optimisation of *delivery* is documented and peer-reviewed (Ali et al.; Votta et al.) — but that is platform agency, not the adversary's. Generative-AI persuasion is real and large-N (Bai et al., N=4,829; Hackenburg et al., N=76,977), yet static messages show diminishing returns to scale, and conversational persuasiveness trades accuracy for influence. The 2026 influence-for-hire cases — BlackCore (Citizen Lab, Meta, Viginum) and Anthropic's GTG-84005 — document **metric dashboards, engagement simulation and audience tailoring**, all Breakout Category Two, with trivial paid amplification and "little or no authentic engagement." No source documents a closed loop from measured response to changed narrative. Meta states plainly that autonomous feedback-adapting agents are not yet deployed at scale. Defensively, the leverage is behavioural detection, DSA ad repositories for detecting human creative testing, and treating any future closed-loop capability as a forecasted escalation rather than a present one.

---

### Key raw URLs not given inline

- Anthropic report PDF: https://www-cdn.anthropic.com/e50be2e51e7695dc4b1366a37a245a597377d3b5/Anthropic-Detecting-and-countering-091026.pdf · IOCs: https://www-cdn.anthropic.com/b5af8acd5ee681422114af7c7b6b02c1ecd074ca/20260910_Anthropic_AI_Misuse_Report_IOCs.csv
- Viginum (French SGDSN), 11 Jun 2026: https://www.sgdsn.gouv.fr/viginum/publications/rokh-solis-analyse-dun-mode-operatoire-informationnel-ayant-cible-les
- Reuters, 11 Jun 2026: https://www.reuters.com/world/israeli-firm-blackcore-also-suspected-meddling-nyc-scotland-votes-french-2026-06-11/
- OpenAI, Operation "Stop News," 1 Oct 2024: https://news.google.com/rss/articles/CBMifEFVX3lxTE1PREQzLUZxYTF6VFVzYnJKWmp1U2stazYydWh6OFB2Vjl3bm1XVU9kdHR4YXBmWVNqa29LNFBsWmNkSHhpcU1CT0VYS3hRcDRFYTFVQlVIcFRGZXdOQ0ZNS0hTcmZHTzI4MFhIR3lzLWlCLXFheXpfSXk3ZEo?oc=5
- EU DSA: https://eur-lex.europa.eu/eli/reg/2022/2065/oj · Meta Ad Library: https://www.facebook.com/ads/library/
