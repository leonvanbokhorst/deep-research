# Continuous Monitoring, Adaptive Narrative Selection, Localisation and Newsjacking
## Evidence notes for the defensive threat-assessment brief

**Compiled:** 25 September 2026
**Scope:** four topics — (1) continuous monitoring of public reaction; (2) adaptive narrative selection; (3) localised/multilingual messaging; (4) "newsjacking" / automated rapid response.
**Analytic only.** No operational instructions, prompts, tooling recommendations or implementation detail appear in this document.

### Evidence grades used throughout
| Grade | Meaning |
|---|---|
| **A** | Primary/official — government statements and .gov publications, company threat-intelligence reports, regulator decisions, court/regulatory filings, vendor's own published price list |
| **B** | Peer-reviewed or strong secondary — journals, established academic benchmarks |
| **C** | Reputable journalism / credible industry reporting |
| **D** | Weak / inferred / single unverified source |
| **E** | Vendor marketing, PR, advocacy, self-interested claim |

### Capability ladder used to classify each finding
**(i) technical possibility** — plausible from published methods; **(ii) demonstrated capability** — shown in a lab, benchmark or experiment; **(iii) credible evidence of deployment** — primary-source evidence an actor actually fielded it; **(iv) documented real-world impact** — measured reach, effect or consequence.

A finding can be grade A and still only sit at rung (iii). Very little in this research reaches rung (iv), and where it does, the impact is usually absent rather than large. That asymmetry is itself the headline.

---

# TOPIC 1 — Continuous monitoring of public reaction (social listening, sentiment tracking, real-time narrative detection)

## 1.1 What is commercially available in 2026 — market structure

- **Gartner published its first-ever Magic Quadrant for Social Media Management and Listening (SMML) on 13 July 2026**, formally merging social publishing/engagement and social listening into one strategic market. It assessed **only six vendors**: **Emplifi and Sprinklr as Leaders**, **Hootsuite and Sprout Social as Visionaries**, **Brandwatch and Oktopost as Niche Players**, and **no Challengers at all**. Gartner is reported to note deployment complexity and higher cost of ownership for Sprinklr, and that Hootsuite/Lumen by Talkwalker are "not yet fully integrated into a single unified experience."
  - Source: CX Today, "Gartner Magic Quadrant for Social Media Management and Listening 2026: The Rundown", 13 July 2026 — https://www.cxtoday.com/social-business/gartner-magic-quadrant-for-social-media-management-and-listening-2026-the-rundown/ — **Grade C**.
  - Analytic note: a six-vendor MQ with zero Challengers indicates a market that is consolidating around a small number of enterprise platforms rather than fragmenting. That matters defensively: capability is concentrated in vendors that can be contracted, regulated and (in principle) audited.
- **Gartner launched a separate *Emerging Market Quadrant for Narrative Intelligence — Startup Vendors* (June 2026)**, a new analyst category distinct from social listening. **Blackbird.AI** and **Cyabra** were each announced as a **"Market Shaper"** in it.
  - Source: PR Newswire, "Blackbird.AI Is Positioned As A Market Shaper by Gartner® In The Emerging Market Quadrant for Narrative Intelligence – Startup Vendors as of June 2026", 1 July 2026; Cyabra, "Cyabra Named a Market Shaper in June 2026 Gartner® Emerging Market Quadrant for Narrative Intelligence", 30 June 2026 — **Grade E** (vendor PR describing a third-party report; the underlying Gartner document is paywalled and was not inspected).
  - Analytic note: "narrative intelligence" being carved out as its own category, with dedicated startups, is real market evidence that *narrative-level* (not mention-level) detection is now a purchased enterprise capability, not a research prototype.
- **Named vendors and their 2026 status** (all verified as trading/announcing in 2026 unless stated):
  - **Sprinklr** — Leader, Gartner SMML MQ 2026; reported **FY2026 revenue $857M** with slowing growth (PPC Land, 11 March 2026).
  - **Emplifi** — Leader, Gartner SMML MQ 2026; "Social Media Monitoring Software of the Year", 2026 MarTech Breakthrough Awards (PR Newswire, 6 August 2026).
  - **Hootsuite / Lumen by Talkwalker** — Visionary. Hootsuite **acquired Talkwalker** (Social Media Today, 8 April 2024; announced 2024) and rebuilt around an AI agent ("Wisdom"/"Social OS", 24 June 2026).
  - **Sprout Social** — Visionary. **Acquired NewsWhip for $55 million** (PRWeek, 30 July 2025), described by Gartner as strengthening predictive intelligence.
  - **Brandwatch** — Niche Player; now inside **Cision**; **co-selected with Blackbird.AI by NATO** in February 2026 (see 1.4); acquired Trajaan.
  - **Blackbird.AI** — raised **$28 million**, reported **118% YoY ARR growth** and "3X customer wins" (PR Newswire, 7 January 2026; SecurityWeek, 8 January 2026); launched **RAV3N Risk LLM** (HPCwire, 18 August 2026).
  - **PeakMetrics** — raised **$6 million Series A** for its narrative-intelligence platform (Pulse 2.0, 12 April 2026; Research Live, 15 April 2026).
  - **Cyabra** — Q1 2026: **net loss $10.8 million, ARR up 19%** (Quiver Quantitative, 15 May 2026); **Carahsoft partnership for the US public sector** (Cyabra, 15 January 2026).
  - **Alethea** — **$20M Series B** (April 2024); reported "more than 3X growth in 2024" (PR Newswire, 30 October 2024). No fresh 2026 funding found.
  - **Dataminr** — see 1.4; the largest single deployment evidence found.
  - **Logically, Recorded Future, Graphika, Moonshot, CASM Technology** — all trading; none published list pricing.
- **Consolidation is the dominant 2024–2026 trend**: Hootsuite absorbed Talkwalker; Sprout absorbed NewsWhip; Brandwatch was absorbed into Cision. The independent "listening pure-play" is largely gone, replaced by listening bundled into an enterprise platform or fitted with a generative-AI layer.
  - **Grade C** for the consolidation events.

## 1.2 Pricing — what is actually public (accessed 25 September 2026)

This was a specific research ask and the honest answer is that **most of the market has deliberately removed public pricing.** Both findings matter.

**Publicly listed prices (rare):**
- **Sprout Social** publishes full seat-based list pricing on its own site: **Standard $199 per seat/month; Professional $299 per seat/month; Advanced $399 per seat/month; Enterprise custom**. A lower **Essentials** tier is **$79 per seat/month billed annually ($99 billed monthly)**. Listening and Premium Analytics are **paid add-ons** to Standard and above, priced by package level — i.e. the headline seat price is not the social-listening price.
  - Source: https://sproutsocial.com/pricing/ (accessed 25 September 2026) — **Grade A** (vendor's own published price list). Note the grade covers the *existence and level* of the price, not any performance claim.
- **Logically** states on its own demo-request form that it "typically work[s] with teams that have a **monthly budget of at least $20K USD**" and asks the prospect to confirm this. It offers a SaaS product (Logically Intelligence) and a scoped custom system (PRISMα).
  - Source: https://www.logically.ai/pricing (accessed 25 September 2026) — **Grade A** as a vendor-stated minimum budget floor; **Grade E** as any indicator of value delivered.
- **Platform data access, for comparison:** the **X (Twitter) Pro API tier is priced at $5,000 per month** for commercial data access — cited in July 2026 as evidence that data X withheld from vetted researchers was simultaneously sold commercially.
  - Source: Tech Policy Press, "What X's Corrected Action Under the DSA Fixes on Data Access, and What's Left Open", 29 July 2026 — **Grade B** (expert legal/technical analysis citing the price).

**No public list pricing (verified absent on the vendor's own pricing page):**
- **Brandwatch** — "With standard to enterprise plans available for each of our solutions…" — plans described, no figures. (https://www.brandwatch.com/pricing/)
- **Meltwater** — "Meltwater uses tailored pricing rather than a one-size-fits-all list… Your quote is customized." Modules include media monitoring, **GenAI Lens LLM Tracking**, social listening, influencer marketing, analytics. (https://www.meltwater.com/en/pricing)
- **Talkwalker / Lumen** — "Pick your plan to get **a custom quote**." (https://www.talkwalker.com/pricing)
- **Recorded Future** — "**Why don't you publish prices?** … Because the final configuration varies by customer, contact us for an accurate quote." It does disclose the *pricing metric*: for most packages, **organisation size measured by unique workforce credentials**, with packages badged **Core / Professional / Elite**, and additional capacity sold on API calls, scanned assets and monitored organisations. Users and integrations are unlimited. (https://www.recordedfuture.com/pricing)
- **Dataminr** — pricing page returns HTTP 403; no public pricing.
- **Graphika, Alethea, Cyabra, PeakMetrics, Moonshot, CASM Technology** — no public pricing page located.
- **Grade A as a negative finding**: this is a verified absence on the vendors' own pricing properties, not an inference. It is analytically important — a market with no list prices is a market sold through enterprise/government procurement, which is precisely where transparency and oversight are weakest.

**Cost-per-mention / per-item economics (the closest proxy to unit cost that is defensible):**
- Academic measurement puts **LLM text annotation at under $0.003 per annotation — roughly 30× cheaper than MTurk crowd work** (Gilardi et al., PNAS 2023 — see 1.3). This is the correct order of magnitude for the marginal cost of *classifying* a mention in 2023 and has fallen since.
- **No vendor publishes a per-mention, per-post or per-API-call list price.** Vendors price on seats, modules, data volume, regions/languages, organisation size and contract term.
  - **Negative finding, Grade A.**

## 1.3 Accuracy of LLM sentiment and annotation versus human coders

This is the strongest-evidenced part of Topic 1, and the numbers cut both ways.

- **Gilardi, Alizadeh & Kubli, "ChatGPT outperforms crowd workers for text-annotation tasks", *PNAS*, 18 July 2023** (DOI 10.1073/pnas.2305016120; ~1,110 citations).
  - Four samples of tweets and news articles, **n = 6,183**.
  - Tasks: **relevance, stance, topics, frame detection** — i.e. the political-communication annotation tasks that social listening is built on.
  - **Zero-shot ChatGPT accuracy exceeded crowd workers by about 25 percentage points on average.**
  - **ChatGPT's intercoder agreement exceeded that of both crowd workers and *trained* annotators for all tasks.**
  - **Cost per annotation under $0.003 — about thirty times cheaper than MTurk.**
  - **Grade B** for capability; **Grade D** for direct extrapolation to 2026 commercial narrative detection (see caveats).
- **"Comparing large Language models and human annotators in latent content analysis of sentiment, political leaning, emotional intensity and sarcasm", *Scientific Reports* 15:11477, 3 April 2025** (DOI 10.1038/s41598-025-96508-3). Design: **33 human annotators, 8 LLM variants (GPT-4 family, GPT-4o, GPT-4o-mini, Gemini, Llama-3.1-70B, Mixtral 8×7B, hard-prompt GPT-4o), 100 curated items, 3,300 human and 19,200 LLM annotations.**
  - Inter-rater reliability (**Krippendorff's α**) — humans vs LLMs:
    | Dimension | Human α | LLM α |
    |---|---|---|
    | Sentiment | **0.95** | **0.95** |
    | Political leaning | **0.55** (moderate) | **0.80** (good) |
    | Emotional intensity | 0.65 | 0.85 |
    | Sarcasm | **0.25** (poor) | **0.25** (poor) |
  - Cross-group comparability: sentiment means 3.19 (human) vs 3.22 (LLM), t(55) = −1.097, **p = .277**, d = −0.29 — statistically indistinguishable. Political leaning 2.89 vs 2.82, **p = .178**, d = 0.33 — indistinguishable. Emotional intensity 3.44 vs 3.19, **t(49.42) = 3.615, p < .001**, large effect — humans rate intensity significantly higher.
  - Temporal consistency (ICC across three time points): sentiment ≥ **0.990** for all models; political leaning **0.965–0.997** except **Gemini, whose political-leaning ICC was −0.412**; emotional intensity 0.966–0.996; sarcasm lowest, with GPT-4 at **0.299** and Gemini at **−0.065**.
  - **Grade B.**
  - **Critical caveat the paper itself understates: Krippendorff's α measures *agreement*, not *correctness*.** An α of 0.95 means the coders agree; it does not mean they are right. The sarcasm result is the proof: **both humans and LLMs score α = 0.25**, i.e. near chance, so neither group can be treated as ground truth. Any procurement or policy argument that says "the AI matches human coders, therefore it is accurate" is invalid on this evidence. Where humans themselves disagree (political leaning, sarcasm), automation inherits the disagreement and presents it with false confidence and high temporal stability. **This is the single most important defensive caveat in Topic 1.**
- **"Sentiment Analysis in the Era of Large Language Models: A Reality Check"**, Findings of NAACL 2024 (DOI 10.18653/v1/2024.findings-naacl.246; arXiv 2305.15005). Across **13 tasks and 26 datasets**: LLMs perform satisfactorily on simple sentiment classification but **lag behind domain-fine-tuned small language models on complex tasks requiring structured or fine-grained sentiment understanding**; they outperform SLMs in few-shot settings where annotation resources are limited. **Grade B.**
- **"GPT is an effective tool for multilingual psychological text analysis", *PNAS* 2024** (DOI 10.1073/pnas.2308950121) — relevant to both Topic 1 and Topic 3; peer-reviewed evidence that LLM text analysis generalises across languages. **Grade B** (full text not retrieved; abstract-level).

**Negative findings for 1.3 — looked for and did not find:**
- **No peer-reviewed benchmark of any commercial narrative-detection or social-listening product** (Blackbird.AI, Graphika, NewsWhip, PeakMetrics, Dataminr, Cyabra, Logically) reporting precision, recall, false-positive rate or AUC against a labelled ground truth.
- **No vendor publishes accuracy, precision or false-positive rates** in its public materials. Claims are qualitative ("detect emerging narratives", "Sentiment in the Smart Inbox").
- **No independent evaluation of narrative-detection products on a held-out political-text corpus** was found in the literature searched.
- **No published error rate for LLM-based *narrative* clustering/attribution** (as opposed to per-item sentiment classification).
- Therefore: **per-item sentiment classification by LLMs is well benchmarked and genuinely strong (rung ii); product-level narrative detection and attribution is not independently benchmarked at all.** Any claim about the latter is at best grade D and more often grade E.

## 1.4 Is real-time narrative detection actually deployed by governments, parties and militaries?

Yes — and 2026 is a step change. Evidence below is graded, newest first.

- **UNITED KINGDOM — National Centre for Information Defence, announced 22–23 September 2026.** In his UNGA address the UK Prime Minister stated: *"Today I am tasking our security chiefs to begin work on a new **National Centre for Information Defence** — to **detect, attribute and disrupt** these kinds of hostile state information attacks. To support and defend our democracy."* Same speech, hard figures: the **Kremlin spends around £1.3 billion each year on manipulating information**; Russian actors **forged the branding of 28 British organisations, including universities and the BBC**; and the UK has "evidence that they tried to interfere with the 2019 General Election."
  - Source: GOV.UK, "PM speech at UNGA: 22 September 2026" — **Grade A** (primary government publication).
  - Corroboration: Reuters, BBC, The Guardian, UN News and The Record (Recorded Future News), all 23 September 2026 — **Grade C**. UK Parliament select-committee chair welcomed the announcement the same day. Civil-liberties criticism followed immediately (Big Brother Watch, 23 September 2026).
  - Analytic note: this is a *multiplatform monitoring and attribution* mission, announced two days before this note was compiled, at "begin work" stage. It is evidence of **political intent to deploy**, not yet of an operating system. Do not grade it as fielded capability yet.
- **NATO — "Information Environment Assessment" capability, February 2026.** A **Brandwatch and Blackbird.AI consortium was selected by NATO to deliver an Information Environment Assessment capability**.
  - Source: PR Newswire / EQS News, 10 February 2026; local coverage The Argus (Brighton), 13 March 2026 — **Grade C** for the award; **Grade E** for capability claims. Underlying NATO contract documentation was not located.
  - Analytic note: this is the clearest example of a *narrative-intelligence startup* being procured into an alliance-level monitoring role rather than a media-monitoring vendor being used ad hoc.
- **UNITED STATES — Dataminr, the largest single contract found.** The **US Department of War awarded Dataminr a five-year, $318 million contract** for alerting services technology, alongside the launch of "First Alert Advanced" (26 August 2026; DefenceScoop reported it 27 August 2026; the award appears in the US Department of War daily contracts listing for 26 August 2026).
  - Sources: Business Wire, 26 August 2026; DefenceScoop, 27 August 2026; US Department of War, "Contracts for Aug. 26, 2026" — **Grade A** for the existence of the award (government contracts listing) and **Grade C** for the scope description.
  - Related: **Dataminr's First Alert Advanced went live on NATO's Maven Smart System, 8 September 2026**; Dataminr **acquired ThreatConnect for $290 million** (October 2025); **Carahsoft** signed on to distribute Dataminr to the US public sector (February 2026). **Grade C.**
  - Analytic note: $318M over five years for *real-time event and narrative alerting* is, on its face, the largest publicly disclosed Western government spend on this capability class. It is the strongest single datum that continuous monitoring is now a funded line item, not a pilot.
- **CYABRA — APAC intelligence agency contract, 3 August 2026.** Cyabra announced a **multi-year, "six-figure" contract with an Asia-Pacific intelligence agency** for "AI-powered narrative intelligence". Also a Carahsoft partnership for US public sector (January 2026).
  - Source: Yahoo Finance / Stock Titan, 3 August 2026; Cyabra press releases — **Grade E** (vendor announcement). Note the disclosed value is only "six-figure" — orders of magnitude below Dataminr.
- **FRANCE — VIGINUM, active and expanding.** VIGINUM (the French state technical service for foreign digital interference) was reported in 2026 to be **taking its fight against Russian propaganda to Europe's eastern flank** (Intelligence Online, 20 April 2026); France publicly **suspected the Israeli firm BlackCore of meddling in the New York and Scotland votes** (Reuters, 12 June 2026); and France uncovered a **network of propaganda sites linked to China** (Le Monde, 10 June 2026). The Economist ran "How France learned to fight Russian disinformation" on 8 April 2026.
  - **Grade C** throughout. Principal-source VIGINUM technical reports were not retrieved in this pass.
  - Analytic note: VIGINUM's public attributions are the clearest example of a *state* running detection and public attribution at operational tempo — closer to rung (iv) than any vendor case, because attribution changes the information environment by naming actors.
- **EU — EEAS.** EUvsDisinfo continues publishing (EEAS-CCD report on Russian FIMI targeting Ukraine's EU future, 23 June 2026; regular Disinfo Updates). **Grade A** (EEAS is the issuing body).
- **CHINA — state monitoring using frontier LLMs (primary evidence).** Anthropic's September 2026 threat report documents a **municipal cyber police unit using Claude Code with custom skills to operate a sentiment-monitoring pipeline, query a government surveillance database and generate daily reports on politically sensitive incidents**, including tracking a prominent overseas dissident account; and a **PRC state security bureau producing an internal manual on how to use AI in surveillance operations**. Related cases: an Iranian case-management system ("Arman") used to profile targets and analyse **155,216 tweets**, with one unit aiming to surveil and profile **6,388 Iranians in a single year**; and **Mali's state intelligence service (ANSE) building "Lakana 360", a population-scale platform monitoring roughly 25 million SIM cards across all three national mobile operators**, designed to bypass court-order requirements.
  - Source: Anthropic, "Detecting and countering misuse of AI: September 2026", 10 September 2026 — https://www.anthropic.com/threat-intelligence-report-september-2026 — **Grade A** (first-party platform investigation, with named infrastructure and, in the Mali case, corroborating State Department/Human Rights Watch documentation cited by Anthropic).
  - Analytic note: this is monitoring capability assessed from *production-side* telemetry. It evidences **authoritarian state adoption of commercial frontier models for sentiment monitoring**, which is a different and arguably more significant pathway than Western governments buying purpose-built listening products.
- **UNITED STATES — simultaneous and severe RETREAT.** The Brennan Center (15 July 2026) documents: the **State Department closed the Global Engagement Center**; the **ODNI cut more than 500 staff (~30% of its workforce) between January and August 2025 and scaled back the Foreign Malign Influence Center** (the office that had uncovered an Iran-backed effort targeting Trump); the **FBI quietly shuttered its foreign-deception task force**; and **CISA lost about a third of its workforce**, including **more than a dozen staffers who monitored foreign disinformation in elections**.
  - Source: Brennan Center for Justice, "Trump Administration Cuts Make Elections More Vulnerable to Foreign Influence and Disinformation", 15 July 2026 — https://www.brennancenter.org/our-work/analysis-opinion/trump-administration-cuts-make-elections-more-vulnerable-foreign — **Grade C** (strong secondary; individual closures are independently reported).
  - Analytic note: **the 2026 picture is asymmetric.** Allied and authoritarian states are building monitoring capability; the US federal government has dismantled much of its own. Any assessment that assumes US federal monitoring capacity is intact is out of date.

## 1.5 Legal and surveillance constraints

- **EU Digital Services Act, Article 40(12) — researcher data access is the live battleground.**
  - The European Commission **fined X €120 million in December 2025**; **€40 million of that was for failures on researcher data access** under Article 40(12). The decision identified four failures: an overly restrictive interpretation of researcher eligibility, deficient application review, limited quotas and access duration, and contractual prohibitions on independent data collection.
  - In **mid-July 2026 the Commission accepted X's corrective action plan**: X will revise screening so eligible researchers are not excluded in error, provide access **free of charge**, commit to timely access "including to the appropriate volumes of data", and state in its terms that eligible researchers are not contractually prohibited from scraping publicly available data. X has **six months to implement**, is subject to an **external independent audit**, and remains under **enhanced supervision**. Notably, the **European Board for Digital Services considered the plan "overall inadequate to address the infringement"**, and the Commission accepted it only after clarifying implementation requirements.
  - A peer-reviewed-style audit (St. Gallen) of the two most mature Article 40(12) implementations found the following **measured** restrictions — this is the most quantitatively useful evidence found on DSA access in practice:
    - **Instagram: follower thresholds alone excluded 49.35% of the posts users actually saw** during the 2024 US presidential and 2025 German federal elections.
    - **API ingestion delays of up to four days** mean ephemeral formats (Stories, live streams, which disappear after 24 hours) are **never** available to researchers.
    - **17.7%–23.3% of TikTok posts became inaccessible within weeks**, often for ToS violations; **this rate roughly doubled for political content**. Some of those posts had reached millions of views.
    - **Metadata stripping: TikTok's Research API exposes 32 of the 186 parameters the web client transmits (~83% loss); for a single Instagram post the browser sends 236 parameters but only 100 are available via API.** The stripped fields are largely the platforms' own governance signals — moderation labels, downranking and sharing-friction flags, AI labels.
    - **Operational quotas: Meta's Content Library allows 1,000 queries per rolling week**, enough for a handful of viral posts.
  - Sources: Tech Policy Press, "What X's Corrected Action Under the DSA Fixes on Data Access, and What's Left Open", 29 July 2026; Tech Policy Press, "X's Data Access Remedies Are a Win for Researchers Only If They Last", 30 July 2026; WIRED, "European Researchers Say Big Tech Is Blocking Access to Their Data", 24 July 2026; European Research Council workshop on Article 40, October 2025; Hogan Lovells, "Who gets to see inside?", 10 July 2025; Tech Policy Press on the delegated regulation, 8 July 2025 — **Grade B** for the measurements, **Grade C** for the policy reporting.
  - Analytic note: **the legal right of researchers to observe the information environment is materially weaker than the commercial right to sell the same data.** X withheld data from vetted researchers while selling equivalent access commercially at $5,000/month. Defensive monitoring is therefore structurally disadvantaged relative to any actor willing to pay.
- **GDPR.** IAPP's "Thought for the week" (13 July 2026) states the position plainly: **web scraping for generative AI is subject to the GDPR.** Combined with the DSA work above, the constraint regime pulls in two directions — obligations attach to collection, rights attach to data subjects, and the researcher-access route is procedurally slow. **Grade C.**
- **EU Digital Omnibus.** A 2026 proposal would amend GDPR and AI Act provisions; law-firm analyses (e.g. Arnold & Porter, 26 February 2026) track the changes. Status as of 25 September 2026 was not confirmed. **Grade C, incomplete.**
- **UK/Ofcom and online safety.** The Online Safety Act regime intersects with false communications and coordinated inauthentic behaviour; the UK's counter-disinformation unit was rebranded as the National Security Online Information Team (NSOIT) in 2024 after criticism, and the September 2026 announcement builds on it. **Grade C.** The Telegraph (7 August 2024) reported NSOIT-type monitoring was brought in during the August 2024 riots.

## 1.6 NEGATIVE FINDINGS — Topic 1 (looked for and did not find)

These are as valuable as the positive findings and should be carried into the brief.

1. **No vendor publishes accuracy, precision, recall or false-positive rates** for narrative detection. Not one of Blackbird.AI, Graphika, NewsWhip, PeakMetrics, Dataminr, Cyabra, Logically, Brandwatch, Meltwater or Talkwalker publishes a validated performance figure. **Grade A (verified absence).**
2. **No independent third-party benchmark of commercial narrative-intelligence products** was found in the peer-reviewed literature.
3. **No per-mention, per-post or per-API-call list pricing** is published by any major social-listening vendor. The market is quote-only. **Grade A (verified absence on vendor pricing pages).**
4. **No evidence located of a political party contracting a named commercial social-listening vendor** — party use is inferred from the general availability of the products, not documented. **Grade D at best; treat partisan social listening as an inference, not a finding.**
5. **No public evidence found that is sufficient to grade the UK National Centre for Information Defence as an operating capability** — it was announced two days before compilation and is at "tasking security chiefs to begin work" stage.
6. **NATO's Information Environment Assessment contract documentation was not obtained** — the award rests on vendor PR plus local press. The specific technical scope is unverified.
7. **No estimate of total government spend on social listening/narrative intelligence was found**, beyond the single $318M Dataminr contract and one "six-figure" Cyabra deal. Market-sizing claims from vendors were deliberately not used.
8. **No evidence found that any democracy has a legally binding, audited accuracy standard for automated narrative detection** used in policy or enforcement.

## 1.7 BOTTOM LINE — Topic 1

Continuous monitoring is a **mature, consolidated commercial market with an unmeasurable accuracy claim**. The per-item science is strong: LLMs match or beat human coders on sentiment and political leaning, at roughly 30× lower cost per annotation. But every published benchmark measures *agreement*, not *correctness*, and sarcasm — the dimension closest to detecting ironic or deniable political messaging — sits at Krippendorff's α = 0.25 for humans and models alike, i.e. near chance. On deployment, 2026 is a step change: a UK National Centre for Information Defence announced 23 September 2026, NATO buying Brandwatch/Blackbird narrative assessment, and a $318M US Department of War Dataminr contract. Simultaneously the US federal government closed the Global Engagement Center and gutted ODNI's Foreign Malign Influence Center, the FBI task force and a third of CISA. Defensively the asymmetry is stark: the commercial right to buy the data is intact ($5,000/month for X's Pro API) while the research right to see it is not — Instagram follower thresholds alone hide 49.35% of what users actually see. **Confidence: high on market and deployment facts; low on any accuracy claim for narrative-level detection, because no vendor publishes one.**

---

# TOPIC 2 — Adaptive narrative selection: agents that test messages and shift approach based on measured response

**Central question:** is there evidence of *closed-loop, adversary-side* message optimisation driven by measured response — or only (a) platform-side optimisation, (b) human A/B testing, and (c) metric dashboards?

## 2.1 Headline assessment

As of September 2026 **no public grade A or B source establishes that any state or commercial influence operation runs a closed-loop optimiser that mutates narrative content in response to measured engagement.** The strongest documented cases sit one step short: they *measure* engagement and report it to clients or operators, and they *simulate* engagement to game platform ranking. Measured-response selection of message content is demonstrated in commercial adtech and in the laboratory, not documented as adversary practice.

The single most important official statement is **Meta's own**: in its **H2 2026 Adversarial Threat Report** (published August 2026), Meta writes that agentic systems "capable of planning, executing multi-step tasks, and adapting to feedback autonomously" represent "a qualitative shift," but that **"we have not yet seen these capabilities deployed extensively at scale by threat actors."** Meta also states that "behavioral detection approaches remain effective against AI-enabled influence operations."
— Source: Meta, *H2 2026 Adversarial Threat Report*, https://transparency.meta.com/sr/H2-2026-adversarial-threat-report/ — **Grade A**, capability rung **(i) only**.
This is a rare case where a platform that has every commercial incentive to inflate the threat explicitly declines to. It should carry substantial weight.

## 2.2 Demonstrated in the wild: measurement and simulation — but not content selection

**Anthropic, "Detecting and countering misuse of AI: September 2026," 10 September 2026** (activity disrupted December 2025 – August 2026), https://www.anthropic.com/threat-intelligence-report-september-2026 — **Grade A**.
- Case **GTG-84005**: a commercial election-manipulation platform targeting **Malaysia**, traced to **BBS Bilisim Teknolojileri**, an Istanbul-based technology company that sold access as paid influence-as-a-service. Marketed in the actor's own documentation as a **"military-grade, AI-driven, real-time political operations ecosystem."**
  - Targeting of voters in **all 222 Malaysian parliamentary constituencies**, using **ingested real census and electoral data and millions of voter records**, aimed at the faultlines of **race, religion and royalty**.
  - **~1,000 fake X/Twitter accounts** with **account warm-up logic** (regularly renewing cookies and IP addresses) and platform-detection evasion.
  - Fake outlet **"Malaysia Pulse"** (domain registered **10 May 2026**) fed by an AI rewriting pipeline that scraped legitimate Malaysian reporting and laundered **Sputnik/RIA, TV BRICS, Xinhua and CGTN** copy as independent Malaysian reporting, under fabricated bylines.
  - The operator used **Claude Code to build custom dashboards** tracking likes and views generated per target, with **a parameter letting the user tune how many artificial views each target receives**. Anthropic observed a request for **1,000,000 artificial views** on the sitting Prime Minister's account; dashboard figures for a senior official were "in the millions."
  - **The critical analytic point:** this is a targeted **engagement-metric dashboard that scales the *volume* of inauthentic engagement. It is NOT documented closed-loop adaptation of message content based on measured response.** Anthropic found no evidence the actor's pursuit of a contract with **Malaysia's national communications regulator** succeeded, rates the campaign **Breakout Scale Category Two** (no evidence of breakout into authentic communities), and notes the engagement figures are **self-reported by the actor's own tools and cannot be independently verified.**
- Case **GTG-54002**: a commercial "influence-as-a-service" network traced to **LKM Company**, a **France-based digital advertising agency** — **~70 fabricated news websites**, **70 matching X accounts**, **250+ inauthentic commenting accounts**, **at least 8,913 articles in about 20 languages**, targeting the US, Brazil, France and the DRC. It rewrote one real source story in **opposite ideological directions** for different audiences and **switched political stance "based on whoever was paying."** That is audience tailoring and client servicing — **not** feedback adaptation.
- Case **GTG-04001**: a Russian state-aligned FIMI production backbone in the Central African Republic where the operator "explicitly instructed Claude to embed the pro-Russia, anti-France talking points" — a **fixed directional instruction with no measurement loop.**
- **Anthropic's general finding cuts against impact claims** and should be quoted directly: *"Most of the content we discovered drew little or no authentic engagement, and in several cases we disrupted the operation before it could build an audience. The widest authentic reach occurred where state media outlets were the distribution mechanism."*

**Meta H2 2026 Adversarial Threat Report** — **Grade A**.
- An Israel-origin coordinated inauthentic behaviour network, assessed as influence-for-hire and **likely BlackCore**, and linking to the Angola case: **215 Facebook accounts, 4 Pages, 1,044 Instagram accounts removed**; ~**32,500 Page followers and ~248,000 Instagram followers**; **only ~$100 in ad spend**. The engagement mechanism is explicit: "clusters of **lower-sophistication, automated fake accounts specifically designed to artificially boost engagement**," using AI to mass-produce comments "designed to artificially boost engagement," a tactic the network's own operators called **"Mother-Child."** This closes a **visibility** loop (engagement → reach), **not a content loop.**
- A France/Spain network "demonstrated an ability to **adapt to enforcement actions**" — building authentic audiences with non-civic patriotic ads, then organically seeding political content. That is **adaptation to detection, not to measured response.**
- Meta also documents **manual iterative refinement**: "One user **iteratively workshopped** fake Meta security alerts through the model, requesting edits to remove emojis for a more professional appearance and to add specific device and location details that would increase victim believability." **This is the honest description of most observed "adaptation": a human iterating against an imagined audience.**

**Citizen Lab, "Research Note: BlackCore's Influence Operations for Hire," 17 September 2026** — https://citizenlab.ca/research/blackcores-influence-operations-for-hire/ — **Grade A/B**.
- Israeli influence-for-hire firm; an **Angola program advertised as a 4-week course ran 14 weeks**; participants produced **40+ pieces of content**; **trainers evaluated at least 24 publications** — i.e. **manual quality assurance**, not an algorithmic loop. Marketing promised "Discourse Dominance", **"Organic Engagement: achieve attention and engagement from real people"**, and "Counter Operations: disrupting dissenting narratives with tailored messaging," and claimed hundreds of avatars. A client report screenshot showed deceptive Facebook posts at **~20,000 likes, later approaching 50,000** — substantial in a country with an estimated **six million active Facebook users**.
- Corroboration: The Record (Recorded Future News), 17 September 2026 (notes Citizen Lab could not independently confirm the training occurred but judged it "highly likely") — **Grade C**; OCCRP, 17 September 2026 — **Grade C**. French government attribution: **VIGINUM/SGDSN, 11 June 2026**, confirmed targeting of French municipal elections (Rokh-Solis) plus suspected interference in New York, Scotland, Togo and Angola — **Grade A**.

## 2.3 Platform ad optimisation ("bandit") and the algorithmic-amplification debate

**The optimisation is the platform's, not the advertiser's — and the foundational papers usually cited are not bandit papers.**
- He et al., "Practical Lessons from Predicting Clicks on Ads at Facebook," ADKDD '14, DOI **10.1145/2648584.2648589** — the GBDT+LR hybrid CTR model. **A CTR-ranking model, not a multi-armed bandit.** Grade B.
- Hazelwood et al., "Applied Machine Learning at Facebook: A Datacenter Infrastructure Perspective," IEEE HPCA 2018, DOI **10.1109/HPCA.2018.00059**. Grade B.
- Naumov et al., DLRM, **arXiv:1906.00091** (31 May 2019) — a **recommendation** model, not an ad-bandit. Grade B.

**Direct audit evidence that delivery — not creative choice — is the decisive optimised variable:**
- **Ali, Sapiezynski, Korolova, Mislove & Rieke, "Ad Delivery Algorithms: The Hidden Arbiters of Political Messaging," WSDM 2021**, DOI **10.1145/3437963.3441801**; preprint **arXiv:1912.04255**. Running real political ads on Facebook, they found delivery algorithms "effectively differentiate the price of reaching a user based on their inferred political alignment," with the effect "most acute when advertisers use small budgets." **Grade B, rungs (ii)→(iii).** Implication: the observable selection of which message reaches which citizen is performed by the platform, without advertiser knowledge — **category (a), no adversary agency.**
- **Votta, Dobber, Guinaudeau & Helberger, "The Cost of Reach: Testing the Role of Ad Delivery Algorithms in Online Political Campaigns," *Political Communication* 2024**, DOI **10.1080/10584609.2024.2439317** (pre-registered). **135 identical ads** placed by **three Dutch parties**, targeting nine audiences during the 2022 municipal elections. One party paid **9.24%–10.74% less per 1,000 users**; **lower-educated citizens, women and 18–24-year-olds were more expensive to reach**. **Grade B.**

**Did political campaigns or influence operations use platform ad-optimisation tooling?** The tooling demonstrably exists and is marketed for automated creative testing/iteration (Meta Advantage+ and automated-ads consolidation; TikTok Smart+) — **Grade C**. But **no grade A/B source was found documenting an influence operation or political campaign using these tools to adapt narrative content against measured engagement**, and Meta's own H2 2026 report records the Israeli/BlackCore network spending only **~$100** on ads — commercial automation was not the mechanism.

## 2.4 Academic work: bandit/RL message optimisation and generative-AI persuasion

**Bandit message optimisation exists — in commercial advertising, not politics.**
- **Schwartz, Bradlow & Fader, "Customer Acquisition via Display Advertising Using Multi-Armed Bandit Experiments," *Marketing Science* 2017**, DOI **10.1287/mksc.2016.1023** (229 citations). The canonical demonstration of measured-response ad optimisation — **commercial, non-political**. Grade B.
- Dynamic Creative Optimization (platform-side creative selection): **10.2139/ssrn.3863663**; **10.1109/bigdata55660.2022.10020498** — vendor-side systems, not adversary tooling. Grade B/C.
- **"Personality-Aware Reinforcement Learning for Persuasive Dialogue with LLM-Driven Simulation," LNCS 2026, DOI 10.1007/978-3-032-19687-3_33** — an RL persuasion *policy* demonstrated **in simulation**. The clearest lab analogue of adaptive narrative selection; **no evidence of deployment.** Grade B, rung (ii).

**Generative-AI persuasion experiments (all rung (ii), survey/lab):**

| Study | Scale / effect | Source, date, grade |
|---|---|---|
| Matz, Teeny, Vaid, Peters, Harari & Cerf, "The potential of generative AI for personalized persuasion at scale" | 4 studies / 7 sub-studies, **N = 1,788**; ChatGPT-personalised messages significantly more influential, including **political appeals for climate action** | *Scientific Reports*, 26 Feb 2024, **10.1038/s41598-024-53755-0**, 275 cites. Grade B |
| Bai, Voelkel, Muldowney, Eichstaedt & Willer, "LLM-generated messages can persuade humans on policy issues" | 3 pre-registered experiments, **N = 4,829**; attitude change on an **assault-weapons ban, carbon tax, paid parental leave**; LLMs **roughly as effective as lay-human-written** messages | *Nature Communications*, 1 Jul 2025, **10.1038/s41467-025-61345-5**. Grade B |
| Hackenburg, Tappin, Röttger, Hale, Bright & Margetts, "Scaling language model size yields diminishing returns for single-message political persuasion" | **720 messages, 10 US issues, 24 models, N = 25,982**; **sharply diminishing returns** to model scale; association **shrinks to zero** once adjusted for task completion (coherence, staying on topic) | *PNAS* 2025, **10.1073/pnas.2413443122**. Grade B |
| Hackenburg, Tappin, Hewitt, Saunders, Black & Lin, "The levers of political persuasion with conversational artificial intelligence" | **19 LLMs, 707 issues, 466,769 claims fact-checked, N = 76,977**; post-training raised persuasiveness up to **51%**, prompting **27%**; **where persuasion rose, factual accuracy systematically fell** | *Science*, Dec 2025, **10.1126/science.aea3884**. Grade B |
| Costello, Pennycook & Rand, "Durably reducing conspiracy beliefs through dialogues with AI" | **N = 2,190**; **~20% reduction persisting ~2 months** — *numbers from secondary coverage; the primary abstract was blocked (science.org HTTP 403) at the time of research* | *Science*, 13 Sep 2024, **10.1126/science.adq1814**. Grade B **with caveat** |

**Two defensive readings.** (1) The *conversational* result is the only one showing genuine per-recipient adaptation — a model adapting inside a dialogue — but that is adaptation to the interlocutor, not a bandit loop over engagement metrics, and it is bought at the cost of accuracy. (2) The *scale* result is reassuring: static LLM political messages show sharply diminishing persuasive returns to model size once basic coherence is controlled.

**Attribution corrections — do not propagate the errors (these came up in the originating research questions):**
- The *Nature Communications* 2025 paper "LLM-generated messages can persuade humans on policy issues" is by **Bai, Voelkel, Muldowney, Eichstaedt & Willer (Stanford)** — **not** Hackenburg & Margetts. The genuine Hackenburg–Margetts item is a 2024 PNAS **Reply to Teeny and Matz**, "Toward the robust measurement of personalized persuasion with generative AI," **10.1073/pnas.2418817121**. **No "Hackenburg & Margetts, AI and persuasion, Nature Human Behaviour 2024/2025" exists in Crossref.**
- The "**Platt**/Meta bandit" attribution is **unverified**: John Platt does not appear on the Facebook GBDT+LR paper, and no Platt bandit ad-delivery paper surfaced. Treat as a probable conflation.
- "Bai et al., *How susceptible are LLMs to influence*" could not be verified.
- A 2024 "AI-generated political messages in **Kenya**" field study **could not be located** across five news queries and two bibliographic queries. **Do not cite it.**
- **Team Jorge "Advanced Impact" A/B testing is unverified** (only Haaretz, 15 February 2023, located).
- **"Project Alamo / 50,000–60,000 ad variants per day" is campaign self-reporting repeated in journalism — Grade D, unverified.** Do not use.

## 2.5 Grading the three categories

| Category | Evidence grade | Closest evidence | Established? |
|---|---|---|---|
| **(a) Platform-side optimisation** (the bandit/auction selects delivery; no adversary agency) | **A/B** | Ali et al. WSDM 2021; Votta et al. *Political Communication* 2024 (9.24–10.74% skew); Meta engineering papers | **Yes — demonstrated deployment (iii)** |
| **(b) Routine human A/B testing of creative** | **C/D** for politics; **A/B** for the tooling's existence | Meta Advantage+/automated ads; Meta Ad Library creative variants; DCO literature | **Tooling yes; documented political/influence use NO** |
| **(c) Genuine autonomous adversary-side narrative adaptation** | **B (lab only); NOT documented in the wild** | Personality-aware RL persuasive dialogue (10.1007/978-3-032-19687-3_33); conversational persuasion levers (10.1126/science.aea3884) | **(ii) demonstrated capability only. (iii)/(iv) NOT established** |

**Nearest-miss ranking (proximity to a true closed loop):** Anthropic GTG-84005 dashboard (measures engagement per target, tunes artificial-view **volume**) > Meta "Mother-Child" (engineers engagement to raise reach) > Anthropic GTG-54002 (tailors the *same* story in opposite directions per audience) > Meta France/Spain (adapts to enforcement, not to response) > manual prompt iteration (Meta H2 2026). **None is a documented closed-loop optimiser over narrative content.**

## 2.6 Defensive levers identified

- **EU Digital Services Act, Regulation (EU) 2022/2065, Article 39** ("Additional online advertising transparency") requires VLOPs to publish a repository of ads presented to each individual, including who paid and the targeting parameters — https://eur-lex.europa.eu/eli/reg/2022/2065/oj — **Grade A**.
- **Meta Ad Library**, **Google Ads Transparency Center**, **TikTok Commercial Content Library** — the practical way to observe creative *variants* and spend, i.e. to detect **human** A/B testing by advertisers. **Grade A** for existence.
- Enforcement: the European Commission found **TikTok in breach of EU advertising-transparency rules** (The Guardian, 15 May 2025; Tech Policy Press, 16 May 2025) — **Grade A/C**.
- **Assessment:** ad repositories give defenders the best available window into *human* A/B testing, but they are **blind to inauthentic-account engagement loops** — the dominant 2026 pattern — which require platform-side behavioural detection. Meta states that behavioural detection is still working.

## 2.7 NEGATIVE FINDINGS — Topic 2

1. **No bandit/RL influence-operation optimiser in the wild.** No peer-reviewed paper or A-level threat report documents a state or commercial actor selecting or mutating narrative content via a multi-armed/contextual bandit or RL loop over platform engagement signals.
2. **No academic literature on bandit-based political persuasion.** Crossref queries for "multi-armed bandit political persuasion", "contextual bandit campaign messaging", "reinforcement learning political advertising" and "adaptive persuasion experiment" returned only commercial DCO, generic bandit theory and unrelated experiments. An arXiv query for bandit + persuasion returned zero entries.
3. **The 2024 "AI-generated political messages in Kenya" field study could not be located. Treat as unverified; do not cite.**
4. **No threat report shows an influence operation A/B-testing narrative variants and then shifting approach.** Meta states agentic feedback-adapting systems "have not yet [been] deployed extensively at scale by threat actors."
5. **Anthropic GTG-84005's dashboard is measurement-only.** No evidence likes/views metrics were fed back into content generation or narrative selection.
6. **No evidence political campaigns used platform bandit tooling for adaptive narrative selection.**
7. **"Project Alamo" variant-count claims are unverified (Grade D).**
8. **"Platt/Meta bandit" attribution unverified.** Likely conflation.
9. **Team Jorge "Advanced Impact" A/B testing unverified.**
10. **Tooling limitations affecting completeness (not conclusions):** OpenAlex API exhausted its shared daily budget mid-session; Semantic Scholar and export.arxiv.org returned HTTP 429; science.org returned HTTP 403; nature.com cross-origin redirect; tandfonline.com returned HTTP 403. Google News redirect URLs do not resolve, so headline + source + date were used as evidence.

## 2.8 BOTTOM LINE — Topic 2

Adaptive narrative selection remains a **capability, not an observed practice**. Platform-side optimisation of *delivery* is documented and peer-reviewed (Ali et al.; Votta et al., a 9.24–10.74% per-1,000-user price skew between Dutch parties) — but that is the platform's agency, not the adversary's. Generative-AI persuasion is real and large-N (Bai et al., N = 4,829; Hackenburg et al., N = 76,977), yet static messages show diminishing returns to scale and conversational persuasiveness trades factual accuracy for influence. The 2026 influence-for-hire cases — BlackCore (Citizen Lab, Meta, VIGINUM) and Anthropic's GTG-84005 — document **metric dashboards, engagement simulation and audience tailoring**, all scoring Breakout Category Two, with trivial paid amplification (~$100) and "little or no authentic engagement." **No source documents a closed loop from measured response to changed narrative**, and Meta states plainly that autonomous feedback-adapting agents are not yet deployed at scale. Defensively, the leverage is behavioural detection, DSA ad repositories for detecting human creative testing, and treating any future closed-loop capability as a forecasted escalation rather than a present one.

---

# TOPIC 3 — Localised and multilingual messaging

## 3.1 LLM translation quality for low-resource and dialectal languages

**The benchmark of record: FLORES-200.**
- **NLLB Team (Meta AI), "No Language Left Behind: Scaling Human-Centered Machine Translation," arXiv:2207.04672** (July 2022), peer-reviewed as **"Scaling neural machine translation to 200 languages," *Nature*, 2024, DOI 10.1038/s41586-024-07335-x**.
  - **FLORES-200 covers 200 languages and ~40,000 translation directions**, built specifically to measure quality where previous benchmarks did not reach. Complementary instruments created alongside it: **XSTS** (a human evaluation protocol giving cross-language consistency) and **ETOX** (a toxicity detector built from toxicity word lists, covering every language in FLORES-200).
  - **Headline result: NLLB-200 achieved an average 44% improvement in translation quality as measured by BLEU over the previous state-of-the-art.** The authors state the final model "includes 200 languages and **three times as many low-resource languages as high-resource ones**."
  - **Data-engineering result relevant to how fast the gap can close:** bitext mining produced **more than 1,100 million new sentence pairs for 148 languages**, and this plus back-translation yielded **+12.5 chrF++ for translating *very low-resource* languages into English**.
  - **Definitions the paper uses, which matter for grading claims:** *high-resource* = at least **1 million sentences** of aligned bitext with another language; *very low-resource* = **fewer than 100,000 samples across all pairings** with any other language in the dataset.
  - **Grade A** for the benchmark's existence, coverage and the 44% / +12.5 chrF++ figures.
  - **Crucial caveat:** the paper's own framing is that low-resource performance *improved* and the gap *narrowed* — it does **not** claim parity. The structural point stands: a model trained on 200 languages is not uniformly good at 200 languages, and the residual gap is concentrated exactly on the languages influence operations would use to reach populations that are poorly served by professional media.
- **FLORES-200 language coverage — verified against the official repository's language metadata** (facebookresearch/flores, `flores200` README, accessed 25 September 2026). Confirmed present among the languages this brief asked about: **Hausa (`hau_Latn`), Yoruba (`yor_Latn`), Amharic (`amh_Ethi`), Somali (`som_Latn`), Tagalog (`tgl_Latn`), Indonesian (`ind_Latn`), Ukrainian (`ukr_Cyrl`), Russian (`rus_Cyrl`)**, and — importantly — **not one but four Arabic entries: Modern Standard Arabic (`arb_Arab` and a Latin-script variant `arb_Latn`), Egyptian Arabic (`arz_Arab`), North Levantine Arabic (`apc_Arab`) and Moroccan Arabic (`ary_Arab`).**
  - **This corrects a common assumption.** FLORES-200 *does* benchmark three major spoken Arabic dialects, so "dialectal Arabic is absent from the benchmarks" is **false**. Gulf Arabic (`afb`) was not found in the retrieved language list — treat Gulf Arabic as the least-benchmarked of the major dialects. **Grade A.**
- **2024–2026 model generations (vendor-reported, treat with care):**
  - **Cohere for AI, "Aya Expanse" (8B and 32B open-weights), released 26 October 2024.** Reported: **Aya Expanse-32B achieved a 25% higher average accuracy across low-resource language benchmarks** than other leading models including **Gemma 2 27B, Mistral 8x22B and Llama 3.1 70B** (a model more than twice its size); **Aya Expanse-8B win rates ranged 60.4%–70.6%** against Gemma 2 9B, Llama 3.1 8B and Ministral 8B. Training explicitly used data from low-resource languages including **Swahili, Bengali and Welsh**.
  - **Grade C** for the fact of release and the stated benchmarks as reported by a specialist technical outlet (MarkTechPost, 26 October 2024); **Grade E** for the comparative performance claims themselves, which are Cohere's own and were not independently reproduced here.
  - **Tencent Hunyuan-MT-7B / Hunyuan-MT-Chimera-7B** open-sourced as state-of-the-art multilingual translation models (MarkTechPost, 2 September 2025) — **Grade C**, capability claim **Grade E**.
- **Cultural localisation remains the weak spot.** Slator reported on **10 February 2026** that "**Cultural Localization Remains a Weak Spot for AI Translation, Appen Says**" — i.e. the vendor that supplies the human-evaluation data says the residual failure mode is cultural rather than lexical. The article body returned HTTP 403 and could **not** be read, so only the headline, source and date are usable. **Grade C (headline only).**
  - **Analytic significance:** this is the most defensible statement of where machine translation still fails for influence purposes. Fluency is close to solved for many pairs; idiom, register, in-group reference and taboo are not. That is exactly the layer that determines whether foreign-language messaging reads as authentic to a native audience — and it is also the layer that Anthropic's case evidence (below) shows a frontier LLM can now be coached through *interactively*.

## 3.2 LLM ability to write in local idiom, slang and code-switching

- **PRIMARY EVIDENCE THAT THE LANGUAGE BARRIER IS GONE (Grade A).** Anthropic's September 2026 threat report documents a **PRC-aligned actor with no Arabic language skills** who used Claude to run a **multi-day covert recruitment operation against Uyghur targets in Syria**, written in **Syrian Arabic dialect**. The model **"drafted outreach in the regional dialect, translated replies in real time, role-played as an 'expert' to run a quality check on the mission, and formatted the results for what we suspect was a handoff to a case officer."** Anthropic's own summary: the actor used Claude to **"obviate the need for native language skills."**
  - Source: Anthropic, "Detecting and countering misuse of AI: September 2026," 10 September 2026, https://www.anthropic.com/threat-intelligence-report-september-2026 — **Grade A** (first-party platform investigation).
  - This is the single strongest piece of evidence in the whole brief for Topic 3. It moves dialectal-generation capability from rung (ii) to rung **(iii) credible evidence of deployment**, because it is observed in an operational, multi-day, real-interlocutor setting — not a benchmark.
- **Interactive coaching substitutes for native competence.** The same case shows the actor **role-playing an "expert" consultant** to quality-check the deception, and **translating replies in real time**. The mechanism is not one-shot translation; it is a human with no target-language skill using a model as a live interpreter and cultural reviewer. This is materially different from, and stronger than, "the LLM translates well."
- **Tell-removal rather than reach-creation (Grade A/B).** In an interview published by **EUvsDisinfo on 16 February 2026**, **Ben Nimmo** (OpenAI Principal Investigator; formerly DFRLab and Graphika) stated that Russian and Chinese operations use ChatGPT **"to improve their English and avoid grammatical errors that once made them easy to spot."** His framing of the overall trend is the most important counterweight in this section: **"We see evolution rather than revolution. Threat actors tend to integrate AI into existing workflows instead of building entirely new ones,"** and **"you can generate a convincing article with AI, but without a distribution network, it reaches no one. So the core infrastructure of influence operations remains unchanged."** He also noted that the "Bad Grammar" operation was exposed by accidentally publishing the model's refusal message, and that **"removing one set of mistakes often introduces others."**
  - Source: EUvsDisinfo, "Interview with Ben Nimmo from OpenAI," 16 February 2026, https://euvsdisinfo.eu/interview-with-ben-nimmo-from-openai/ — **Grade A** for the interview text; **Grade B/C** for the substantive claims within it (expert judgement, not quantified).
- **Negative/gap:** no peer-reviewed human-evaluation study of LLM generation quality in **Hausa, Yoruba, Amharic, Somali, Tagalog or Bahasa** idiom was retrieved in this pass, and **no benchmarked code-switching generation quality figure** was obtained. The evidence for local-idiom competence is therefore **operational (Anthropic case) rather than psychometric.** That asymmetry should be stated rather than papered over.

## 3.3 Cost per translated or generated message in 2026 (all figures accessed 25 September 2026)

**Frontier-LLM generation — vendor's own published price list, Grade A:**
Anthropic publishes the following API rates (https://www.anthropic.com/pricing):

| Model | Input | Output | Cache read | Cache write |
|---|---|---|---|---|
| Fable 5.1 | **$10 / MTok** | **$50 / MTok** | $0.25 / MTok | $12.50 / MTok |
| Opus 5.5 | **$4 / MTok** | **$20 / MTok** | $0.20 / MTok | $5 / MTok |
| Sonnet 5 | **$2 / MTok** | **$10 / MTok** | $0.20 / MTok | $2.50 / MTok |
| Haiku 4.5 | **$1 / MTok** | **$5 / MTok** | $0.10 / MTok | $1.25 / MTok |

Also published: **batch processing saves 50%**; **web search $10 per 1,000 searches**; **managed agents $0.08 per session-hour of active runtime**; **code execution $0.05 per hour per container**. US-only inference carries a **1.1×** multiplier; fast mode on Opus 5.5 is **2×** standard.

**Derived unit cost for a typical short social-media message** (≈300 input tokens, ≈80 output tokens):

| Model | Standard | With 50% batch discount |
|---|---|---|
| Sonnet 5 | **≈$0.0014 per message** | ≈$0.0007 |
| Haiku 4.5 | **≈$0.0007 per message** | ≈$0.00035 |

**i.e. roughly 700–3,000 generated short messages per US dollar at list price**, before any volume discount. **Grade A** for the token prices; the derived per-message figure is arithmetic from them and is marked **D (derived)**. It is worth stating plainly: at 2026 prices the marginal cost of generating a fluent short message in any language the model supports is a **fraction of a tenth of a cent**, and effectively irrelevant to whether an operation is attempted. **Cost is no longer a constraint on multilingual reach.**

**Purpose-built translation services:**
- **DeepL Pro** (https://www.deepl.com/en/pro-api): **€7.49 per month billed annually for 300,000 characters per month** (≈**€0.025 per 1,000 characters**); **€24.99 per month for 1,000,000 characters per user per month**; **€49.99 per month for unlimited characters** subject to a fair-usage policy. **Grade A.**
- **Google Cloud Translation** (https://cloud.google.com/translate/pricing): the **Translation LLM is charged "$10 per million characters input and $10 per million characters output, making it cost equivalent with NMT"**; NMT is **$20.00 per million characters** at base volume with tiers stepping down to **$18.00, $16.00**. Custom model training is **$45 per hour**, capped at **$300 per training job**. **Grade A.**
- **Azure Translator** (https://azure.microsoft.com/en-us/pricing/details/cognitive-services/translator/): **2 million characters free per month**; **$40 per million characters** for custom translation and for document translation; **$10 per million source+target characters** of training data, capped at **$300 per training job**; a monthly subscription tier including **675 million characters** also exists with overage pricing. **Grade A.**
- **Negative finding:** OpenAI's pricing page returned **HTTP 403** and could not be read; OpenAI token rates are therefore **not** reported here rather than estimated.

**Analytic reading of the cost picture:** for a low-resource-language operation, purpose-built NMT at **$20 per million characters** is roughly an order of magnitude *cheaper per unit of text* than frontier-LLM generation, but it produces **translation only** — no persona, no framing, no dialect coaching, no interactive reply handling. The Anthropic Syria case is the reason the frontier-LLM price is the relevant one: what the actor bought was not translation but **the ability to operate without a native speaker on the team.**

## 3.4 Documented multilingual influence operations

- **Commercial multilingual influence-as-a-service at scale (Grade A).** Anthropic's **GTG-54002**: a network traced to **LKM Company, a France-based digital advertising agency**, published **at least 8,913 articles in about 20 languages** across **~70 fabricated news websites**, amplified by **70 matching X accounts** and **250+ inauthentic commenting accounts**, targeting the **United States, Brazil, France and the Democratic Republic of Congo**. It "rewrote real news stories into politically slanted versions that were **tailored to appeal to each specific national audience and political angle**." It also repeatedly **"rewrote the same source story in opposite ideological directions for different audiences"** and **"laundered stories across borders into unrelated regions, stripped of their original context."** On **11 September 2025** its sites published near-identical DRC–Rwanda articles **within three minutes of each other** with tone varied by region while link distribution was coordinated on X.
  - **This is the clearest single demonstration of localisation as an industrial process**: one source story, many locales, many political directions, machine tempo.
- **Language portfolio expansion (Grade A).** A separate operation documented by Anthropic used Claude to transform official government intelligence bulletins into tailored content, **"working in Farsi, Arabic, Urdu, Malay, Spanish, and English, with a broader plan targeting 20 languages."**
- **Chinese operations (Spamouflage / DRAGONBRIDGE).** Reporting through 2024–2026 documents continued escalation and targeting shifts rather than a language-count disclosure: CyberScoop, "Disinfo group Spamouflage more aggressively targeting U.S. elections, candidates" (3 September 2024); Euronews, "Chinese operation tried to overthrow Spanish government, report says" (30 January 2025); Radio Free Asia on Graphika's finding of **AI-generated deepfake news anchors** (8 February 2023, now resurfacing in 2026 coverage); **Le Monde, "How France uncovered a network of propaganda sites linked to China" (10 June 2026)**. **Grade C** throughout; a precise Spamouflage *language count* was **not** obtained from a primary source (see negative findings).
- **Russian operations — Doppelganger, Storm-1516, and third-country multilingual targeting.** EU DisinfoLab's foundational "Doppelganger – Media clones serving Russian propaganda" (27 September 2022) established the typosquatted media-clone model; **The Record** reported that the **German agency BfV** assessed Doppelgänger was "rushing to secure itself amid ongoing detections" (15 August 2024); **EUvsDisinfo, "Doppelganger Strikes Back: Unveiling FIMI Activities Targeting European Parliament Elections"** (19 June 2024). **Grade C.** A 2026 example of multilingual reach into a third country: "**A wave of Russian fake news has swept Armenia's information space**" (Caucasian Knot, 2 June 2026) — **Grade C**.
- **Fabricated local voices — the localisation-quality tell.** A notable 2026 pattern is the manufacture of **local bylines and accents** rather than mere translation: "**Ghost reporters: How fabricated African voices carried pro-Russia narratives**" (TheCable, 27 August 2026; syndicated as "How Russia's ghost reporters are poisoning Africa's media landscape," News24, 26 August 2026). Compare Anthropic's finding that **GTG-54002 signed articles with the names of fake journalists** so that "each site [had] the appearance of an independent local newsroom with its own staff." **Grade C / A.**
- **Synthetic media and synthetic presenters as a multilingual delivery vehicle.** Graphika's finding on **AI-generated deepfake news anchors** (via Radio Free Asia, 8 February 2023) and The Guardian's "How China is using AI news anchors to deliver its propaganda" (18 May 2024) document synthetic presenters — a production capability that scales across languages without a native on-camera talent. **Grade C.**
- **Allied/state assessment of the multilingual threat.** **4th EEAS Report on Foreign Information Manipulation and Interference Threats** (12 March 2026) and the EU's June 2026 report on Russian FIMI targeting Ukraine's EU future. **Grade A** for existence of official EU reporting; contents not read in this pass.

## 3.5 Did LLM translation improve the reach or quality of foreign-language operations?

**Quality and capability: yes, credibly. Reach: no evidence, and one strong reason to doubt it.**

- **Capability and quality gains are well evidenced (rung iii):** an actor with **no Arabic skills** ran a **multi-day** dialectal operation with real-time reply translation (Anthropic, Grade A); an operation converted source material into **six languages with a 20-language plan** (Anthropic, Grade A); a network produced **8,913 articles in ~20 languages** (Anthropic, Grade A); and per OpenAI's investigator, actors use LLMs specifically to **"improve their English and avoid grammatical errors that once made them easy to spot"** (EUvsDisinfo interview, Grade A/B). The direction of travel is **removal of the detectable tell**, which historically was the single most reliable indicator of foreign authorship.
- **Reach gains are NOT evidenced, and the available evidence points the other way.** Anthropic states that, across the influence operations it disrupted, **"most of the content we discovered drew little or no authentic engagement"** and that **"the widest authentic reach occurred where state media outlets were the distribution mechanism"** — FM radio, satellite, shortwave and global television. It rates GTG-54002, the 20-language, 8,913-article network, **Breakout Scale Category Two**, i.e. no evidence of breakout into authentic communities. And Nimmo's point stands: *"without a distribution network, it reaches no one."*
- **The correct analytic conclusion:** LLM translation has demonstrably **lowered the skill and language barrier to producing** multilingual influence content, and demonstrably **raised its fluency**. It has **not** been shown to improve **reach**, because reach is a function of distribution and platform ranking, not of translation quality. **Anyone asserting that AI translation made foreign-language operations more effective is asserting something the evidence does not support — and in Anthropic's own dataset, the highest-reach operation was a radio station.**

## 3.6 NEGATIVE FINDINGS — Topic 3

1. **No peer-reviewed per-language FLORES-200 score table for 2025–2026 frontier models** was obtained for the specific pairs requested (English→Hausa, Yoruba, Amharic, Somali, Tagalog, Bahasa, Arabic dialects, Ukrainian, Russian). The NLLB paper and FLORES-200 language coverage are verified; **the current-generation per-language spread is not.** Anyone quoting a specific spBLEU/COMET figure for these pairs should be asked for the table it came from.
2. **No benchmarked code-switching or slang-generation quality figure** was retrieved.
3. **No human-evaluation study of LLM idiom in Hausa, Yoruba, Amharic, Somali, Tagalog or Bahasa** was retrieved. Local-idiom competence rests on a **single operational case (Anthropic, Syrian Arabic)** plus vendor claims.
4. **A precise, primary-source language count for Spamouflage/DRAGONBRIDGE was not obtained** — only secondary reporting about escalation and targeting.
5. **A primary-source Doppelganger language-coverage list (EU DisinfoLab / BfV / VIGINUM) was not retrieved** — the EU DisinfoLab report page did not return usable content.
6. **No OpenAI threat report could be read** (openai.com returned HTTP 403); OpenAI's own primary evidence on multilingual misuse is therefore cited here only via the EUvsDisinfo interview with Ben Nimmo.
7. **OpenAI API token pricing was not obtained** (HTTP 403).
8. **The Slator/Appen article on cultural localisation could not be read** (HTTP 403) — headline, source and date only.
9. **No evidence found that any operation measured a reach improvement from LLM translation.** The claim is inferred by commentators, not demonstrated by sources.
10. **No evidence found of dialect-specific targeting in an African or Southeast Asian language** at the scale documented for Arabic — the strongest operational cases are Arabic and the broad multi-language industrial pipeline, not Hausa/Yoruba/Amharic/Somali/Tagalog specifically.
11. **Note on method:** the first pass at this topic was mis-scoped by a research assistant and produced a substantial file on an off-brief question (automated evasion of fact-checking). That material is retained at `amplification/notes/raw-topic3.md` as an **off-brief annex** and is **not** part of this brief's Topic 3 findings. It is mentioned here only so that a reader who encounters that file is not misled about what was asked.

## 3.7 BOTTOM LINE — Topic 3

Multilingual production is **solved; multilingual authenticity is nearly solved; multilingual reach is not addressed at all**. FLORES-200 benchmarks 200 languages and ~40,000 directions, including Hausa, Yoruba, Amharic, Somali, Tagalog, Bahasa, Ukrainian, Russian **and three major Arabic dialects** (Egyptian, Levantine, Moroccan) — a common claim that dialects are unbenchmarked is wrong. NLLB-200 improved low-resource quality by an average **44% BLEU**, with **+12.5 chrF++** for very-low-resource→English. The decisive operational evidence is Anthropic's finding that a PRC-aligned actor with **no Arabic language skills** ran a multi-day Uyghur recruitment operation **in Syrian Arabic dialect** with real-time reply translation and expert role-play, explicitly obviating native-language capability; a network published **8,913 articles in ~20 languages**; another planned **20 languages**. Cost is no longer a barrier: at Anthropic's published rates a short message costs **≈$0.0007–0.0014** (≈700–3,000 per dollar), and NMT runs at **$20 per million characters**. But **no evidence shows reach improved** — Anthropic reports most content drew little or no authentic engagement, and its highest-reach case was a **radio station**. AI removed the grammatical tell; distribution still decides who hears it.

---
# TOPIC 4 — Automation of "newsjacking": exploitation of emerging narratives

**Orientation.** The open-source record supports a firm conclusion about **tempo** and a weak one about **automation in breaking news**. Human actors are documented reaching high-reach false narratives within **~2 hours** of an attack (Southport, 29 July 2024) and within **~8 hours** for a specific false-flag persona (Butler, PA, 13 July 2024). What is **not** documented publicly is a case where the **first** narrative on a breaking event was machine-generated.

## 4.1 Hard timing data: documented time-to-first-narrative

### Southport stabbings, UK — 29 July 2024 (strongest human-tempo case)

| Data point | Number / fact | Source | Date | Grade |
|---|---|---|---|---|
| Attack reported | Shortly before midday BST | — | 29 Jul 2024 | — |
| First high-reach false identity claim | Account "Europe Invasion" posted at **13:49 BST** that the suspect was "alleged to be a Muslim immigrant" — **false**. Post viewed **6.7 million times** | The Guardian, "How false online claims about Southport knife attack spread so rapidly" | 31 Jul 2024 | C |
| **Time-to-first-narrative** | **≈2 hours** after the attack was reported | derived from the above | — | D (derived) |
| Aggregate reach of false identity framing | At least **27 million impressions** of X posts stating or speculating the suspect was Muslim, a migrant, a refugee or a foreigner (Dr Marc Owen Jones, Hamad Bin Khalifa University) | Guardian (as above) | 31 Jul 2024 | B/C |
| False name penetration | False suspect name seen **more than 420,000 times** | The Independent | 17 Aug 2024 | C |
| Official correction | Police: suspect was **born in the UK** (Cardiff); Reuters fact check | Reuters | 31 Jul 2024 | A/C |
| Amplification mechanism | A single **deleted LinkedIn post** was screenshotted and "seen by millions" before the Southport riot | BBC | 25 Oct 2024 | C |
| Real-world impact | Southport disorder 30 Jul 2024; nationwide disorder 2–4 Aug 2024; **>100 arrests** by 1 Aug | BBC | 1 Aug 2024 | A/C |

**Automation specifically:** the earliest false claims were **human posts by an anti-immigrant account**, amplified by influencers (Andrew Tate: "illegal migrant"; Tommy Robinson: rioters "justified"), and then by recommendation systems. **No public evidence that the initial claim was machine-generated.** Rung **(iii) deployment** for coordinated human/opportunistic amplification within ~2 hours; rung **(i) only** for automated generation of the first narrative.

### Butler, Pennsylvania assassination attempt — 13 July 2024

| Data point | Number / fact | Source | Date | Grade |
|---|---|---|---|---|
| False "Secret Service agent" persona | Anonymous 4chan post posing as agent "Jonathan Willis" appeared **about eight hours after the shooting**; a second post followed **about 20 minutes later** | FactCheck.org | 15 Jul 2024 | A/C |
| Official rebuttal | Secret Service: no such employee; claim "categorically false" | FactCheck.org / US Secret Service | 15 Jul 2024 | A |
| Broader "staged"/false-flag speculation | Circulated in the "chaotic hours" after the shooting; several unconnected conspiracy strands | PBS NewsHour fact-check | Jul 2024 | C |

Human-authored in the documented case; **no automation evidence**.

### Iran–Israel, June 2025 ("Operation Rising Lion", from 13 June 2025)

| Data point | Number / fact | Source | Date | Grade |
|---|---|---|---|---|
| Platform-level official finding | The **Meta Oversight Board** considered a case involving a **fabricated video purporting to show an attack on Israel** during the June 2025 Israel–Iran conflict, and on **10 March 2026** called on Meta to improve labelling, clarify policy and adopt a comprehensive AI-content policy | Oversight Board decision, 10 Mar 2026 | 10 Mar 2026 | A |
| Scale framing (institutional) | "Iranian missiles flatten Tel Aviv… Skyscrapers in the UAE collapse in fireballs. **None of it happened.**" Content "produced **in seconds** by widely available AI apps", "reaching **hundreds of millions of viewers**" | Oversight Board co-chair op-ed, 14 May 2026 | 14 May 2026 | A/E (institutional but advocacy-flavoured) |
| Industry monitoring | NewsGuard Reality Check, "Special Edition: Iran's War Falsehoods" | newsguardrealitycheck.com | 24 Jun 2025 | C/E |
| Fact-check record | AI-generated visuals (Google Veo) falsely presented as Israelis pleading with Iran; AI image of a downed US B-2; AI video of Mossad HQ "blown up"; AI video of Evin prison strike | FACTLY (19–25 Jun 2025); BOOM (24 Jun 2025); Vishvas News (20 Jun 2025); AFP Fact Check (1 Jul 2025) | Jun–Jul 2025 | C |
| Monetisation motive | "AI-generated Iran war videos surge as creators use new tech to cash in" | BBC | 7 Mar 2026 | C |
| Failure to act | "Meta failed to flag AI video during 2025 Israel–Iran war, Oversight Board says" | Rest of World | 10 Mar 2026 | C |

**Critical gap: no published latency metric** (e.g. "first AI-generated video appeared X hours after the 13 June strikes") was located. Rungs **(ii)/(iii)**: demonstrated production capability and credible deployment at scale; **(iv)** impact asserted at "hundreds of millions of viewers" by an official body, but not independently measured here.

### Disasters, 2024–2025

**Hurricane Helene, landfall 26 September 2024** — the single richest quantitative case, from **ISD's Digital Dispatch**, "Hurricane Helene brews up storm of online falsehoods and threats," 8 October 2024 — **Grade B**:
- Misinformation "began to spread **as soon as Helene made landfall**."
- **33 posts debunked by FEMA/the White House → more than 160 million views** (as of 7 Oct 2024).
- **30% of posts contained overt antisemitic hate** → **17.1 million views**.
- Single highest-reach false claim: Rep. Marjorie Taylor Greene's "they control the weather" post → **41.5 million views**; follow-up **2.1 million**.
- Abuse of officials: posts attacking Asheville Mayor Esther Manheimer → one post **12.8 million views**; abuse of FEMA public-affairs director Jaclyn Rothenberg → **>4 million views in 24 hours** from 4 Oct 2024.
- Fabricated violence: false claim a FEMA director was "beaten" → **>8.1 million views** (a 2023 nightclub video relabelled); a supporting post reached **267,000 views**; a Community Note was added but the content still spread.
- **Pre-landfall next-event exploitation:** ISD observed Hurricane **Milton** being framed *before landfall* as "sending Hurricane Milton to the remaining Trump strongholds."
- **State amplification:** a US official said Russian, Chinese and Cuban accounts were amplifying hurricane misinformation (Reuters, 29 Oct 2024) — **Grade A/C**.
- **Moderation asymmetry:** ISD found most high-reach false narratives had **no Community Note** applied, and that X "appears to have no such policy" for imminent-harm false content in crises — **Grade B**.

**Los Angeles wildfires, January 2025:** AI-generated images of the Hollywood Sign on fire went viral (NBC Los Angeles, Deadline, 9 Jan 2025); AFP Fact Check on an AI-generated wildfire-aftermath image (21 Feb 2025); CEDMO on an AI-generated "miracle house" (27 Jan 2025) — **Grade C**. **Specific AI-image counts were not retrieved.**

## 4.2 Academic evidence: crisis informatics, rumour dynamics and speed

- **Zubiaga et al., "Analysing How People Orient to and Spread Rumours in Social Media by Looking at Conversational Threads," *PLoS ONE* 2016**, DOI **10.1371/journal.pone.0150989** — **743 citations**. Establishes that in breaking news, rumour, speculation and verification are entangled in the same threads. **Grade B.**
- **Zubiaga et al., "Detection and Resolution of Rumours in Social Media: A Survey," *ACM Computing Surveys* 2018**, DOI **10.1145/3161603** — **606 citations**. **Grade B.**
- **"Crisis Informatics in the Context of Social Media Crisis Communication," *IEEE Access* 2020**, DOI **10.1109/access.2020.3030184** — **66 citations**. **Grade B.** (The foundational Palen / Starbird / Vieweg crisis-informatics corpus and Starbird's alternative-media-ecosystem work are the canonical references but were **not re-verified** in this pass — see negative findings.)
- **THE KEY QUANTITATIVE ANCHOR — Vosoughi, Roy & Aral, "The spread of true and false news online," *Science* 2018**, DOI **10.1126/science.aap9559** — **8,827 citations**:
  - False news stories **70% more likely to be retweeted** than true stories.
  - **True stories take about six times as long to reach 1,500 people** as false stories.
  - Falsehoods reach retweet **cascade depth 10 about 20 times faster** than facts.
  - The effect is driven by **humans retweeting, not bots** — the authors explicitly found the spread "is essentially not due to bots."
  - **Grade B.**
- **Pacheco et al., "Uncovering Coordinated Networks on Social Media: Methods and Case Studies," *ICWSM* 2021**, DOI **10.1609/icwsm.v15i1.18075** — **132 citations**. Supplies the methodological basis for inferring coordination from temporal/behavioural similarity rather than content alone. **Grade B.**
- Woolley & Howard's *Computational Propaganda* corpus and the Oxford Internet Institute reports remain the standard reference for state/party "cyber troops"; **not re-verified** in this pass. **Grade B (asserted).**

**Synthesis:** the peer-reviewed literature robustly establishes *that* false narratives outrun true ones and *how* to detect coordination. It does **not** supply a published distribution of automated response latencies to breaking events — the "machine speed" claim rests on AI-provider telemetry, not academia.

## 4.3 Measured machine tempo (primary source)

**Anthropic, "Detecting and countering misuse of AI: September 2026"** (10 September 2026) — **Grade A**:
- **Hardest machine-tempo number located: case GTG-54002.** The commercial "influence-as-a-service" network traced to **LKM Company** was detected on **11 September 2025** when its **~70 fabricated news websites published near-identical articles about the DRC–Rwanda conflict within three minutes of each other**, modifying tone per regional audience and coordinating link distribution across numerous X accounts. This is **machine-tempo adaptation of a live news event across a network** — but it is a **rewriting/laundering pipeline, not a breaking-news first-mover.**
- **Simultaneous false breaking news:** an Iran-focused impersonation network sent a fabricated **BREAKING NEWS headline to more than 30 contacts simultaneously**, and cloned a real activist's account to hold live conversations with his contacts inside Iran.
- **Broadcast beats AI for reach:** case **GTG-04001**, Russian state-aligned FIMI in the Central African Republic, ran a **daily** operation through Radio Lengo Songo (98.9 FM) coordinated with RT, Sputnik Afrique, TASS and the Russian House in Bangui — rated **Breakout Scale Category Four**, the highest in the report, *because a broadcast outlet carried it*. **The highest measured reach came from broadcast, not AI-generated social content.**
- **"AI as a newsdesk":** Claude was slotted into existing **human-edited** pipelines as sub-editor/content creator, letting low-resourced actors exceed solo capacity; some campaigns were timed to elections (fabricated claims about Moldova's president before the September 2025 vote; fake grassroots posts prepared in Kenya ahead of 2027).
- **Essential caveat:** the provider sits **upstream of the platforms at the production stage**, so it usually disrupts operations **before they are live**, and reports that **most content drew little or no authentic engagement**. These are **production-speed findings, NOT evidence of downstream virality or first-mover advantage.**

## 4.4 How defenders measured it — and the defender tempo gap

| Mechanism | Evidence | Date | Grade |
|---|---|---|---|
| **Ofcom (UK) post-Southport evaluation** | Letter from Chief Executive Dame Melanie Dawes to the Secretary of State setting out "our evaluation of how illegal material may have spread during the period following the Southport attack"; Ofcom issued a **public statement on 5 August 2024** and an **open letter** to tech firms; supervision teams spoke to the largest platforms "from early August". Duties were **not yet in force**, so Ofcom explicitly **did not determine breaches** | 22 Oct 2024 | **A** |
| Ofcom algorithmic finding | "Social media algorithms need overhaul in wake of Southport riots, Ofcom says" | The Guardian, 22 Oct 2024 | C |
| Ofcom crisis duty | "Tech firms must act to stop spread of illegal content in a crisis, watchdog says" | The Independent, 9 Jun 2026 | C |
| **UK CDU / RRU** | "Fact Sheet on the Counter Disinformation Unit (CDU) and Rapid Response Unit (RRU)" | GOV.UK, 9 Jun 2023 | **A** (contents not retrieved) |
| UK parliamentary scrutiny | "UK MPs warn of repeat of 2024 riots unless online misinformation is tackled" (Science, Innovation and Technology Committee) | The Guardian, 17 Oct 2025 | A/C |
| UK police learning | "An inspection of the police response to the public disorder in July and August 2024: Tranche 2" | Criminal Justice Inspectorates, 7 May 2025 | **A** (contents not retrieved) |
| Liverpool-specific response | "The Liverpool Response to Misinformation Was a Good First Step—but It's Not Enough" | Carnegie Endowment, 5 Jun 2025 | B |
| **EU rapid response** | EDMO, "assessment of the Rapid Response System of the Code of Practice on Disinformation" | edmo.eu, 2 Oct 2024 | **B** |
| EU FIMI doctrine | EEAS, "Information Integrity and Countering Foreign Information Manipulation & Interference (FIMI)" | 14 Mar 2025 | **A** |
| EU DSA enforcement tempo | Commission DSA actions against Slovenia pre-election disinformation (Mar 2026); Bulgaria requested EU support against election meddling (Apr 2026) | — | C |
| **NATO** | "NATO's approach to counter information threats" | NATO, 3 Feb 2025 | **A** |

**THE MOST CONSEQUENTIAL FINDING FOR A DEFENSIVE BRIEF:** the UK regulatory position is explicitly *ex post* and tempo-limited. Ofcom stated on 22 October 2024 that it **could not determine breaches** because Online Safety Act duties were not in force — meaning that for the Southport ~2-hour narrative window, the documented defender response was a **public statement on 5 August**, i.e. **days** after the false claim peaked. **Hours for the attacker, days for the regulator.** Rung **(iv) documented impact**.

## 4.5 Capability tiering — consolidated

- Generating plausible false text/imagery for any news event in **seconds** — **(i) technical possibility**, well established (Oversight Board 2026; NewsGuard; FACTLY/AFP).
- A network publishing ~70 tailored articles on a live conflict within **3 minutes** — **(ii) demonstrated capability** (Anthropic GTG-54002, 11 Sep 2025, Grade A).
- Networked actors adapting a live event and coordinating cross-platform link distribution — **(ii)/(iii)** (Anthropic; Pacheco et al. for method).
- A **state** actor reacting to a breaking event with AI content at scale — **(iii) credible deployment** (Meta Oversight Board case, June 2025).
- The **first** narrative on a breaking event being machine-generated — **not evidenced**.
- Machine-generated content producing **measured virality/real-world impact** — **not evidenced** (Anthropic: little/no authentic engagement).
- Human/influencer actors reaching millions with a false identity claim within **~2 hours** — **(iv) documented impact** (Southport: 6.7m views; 27m impressions).

## 4.6 NEGATIVE FINDINGS — Topic 4

1. **No documented case where the first narrative on a breaking event was machine-generated.** In the best-timestamped cases (Southport, Butler) the originating posts were human-authored.
2. **No published time-to-first-AI-content latency metric** for the June 2025 Iran–Israel strikes.
3. **No verified latency number for 7 October 2023** (Hamas attack). Rapid-narrative reporting exists (EU DisinfoLab, ISD, NewsGuard) but no time-to-first-claim figure was retrieved.
4. **NewsGuard's specific AI-generated-image counts** for Hurricane Helene/Milton and the January 2025 LA wildfires were **not retrieved** (site HTTP 403 / JS-gated).
5. **No quantitative academic measurement of automated response latency** to real-world events was found. Coordination-detection literature measures *similarity*, not latency distributions.
6. **Foundational crisis-informatics citations (Palen, Starbird, Vieweg) and Woolley & Howard were not independently re-verified** — the OpenAlex API budget was exhausted mid-session. Treat as asserted, not verified.
7. **No public evidence of bot-driven automation in the Southport opening narrative.** Vosoughi et al. found false-news virality was human-, not bot-driven — consistent with the Southport record.
8. **Ofcom could not and did not adjudicate** the Southport spread, so there is **no regulatory finding of platform breach** for that incident.
9. **The EU DSA "crisis response mechanism" primary Commission page was not retrievable**; only secondary/adjacent sources were confirmed.
10. **GOV.UK CDU/RRU fact sheet and the Criminal Justice Inspectorates police-report contents were not extracted** — headline/source/date confirmed, direct URLs 404.
11. **No evidence found that any documented machine-tempo operation achieved first-mover advantage** in a breaking-news narrative competition.
12. **Not investigated this pass (out of scope, deprioritised for cases with hard timestamps):** 2024 UK general election, 2024 European Parliament elections, August 2024 Durov arrest, 2024 Bangladesh/India narratives, 2025 Nepal protests, 2025 US ICE-raid narratives.

## 4.7 BOTTOM LINE — Topic 4

The evidence supports a **tempo asymmetry, not an automation revolution, in breaking news.** The fastest documented false narrative is human: a false "Muslim immigrant" claim on X **~2 hours** after the Southport attack (29 July 2024), reaching **6.7 million views** and ~**27 million impressions** of suspect-identity speculation, with the false name seen **>420,000 times**. Butler's false-agent persona appeared at **~8 hours**. Vosoughi et al. (*Science* 2018) show falsehood reaches 1,500 people **six times faster** than truth, driven by **humans, not bots**. Machine tempo is proven only at the *production* layer: **~70 sites publishing near-identical conflict articles within three minutes** (Anthropic, 11 Sep 2025), with the provider cautioning that most content drew negligible engagement. Defender tempo lags badly — Ofcom's first public statement came **days** after Southport. **Plan for 2–8 hour human-led narrative windows with defender latency measured in days; treat sub-minute machine tempo as demonstrated capability (rung ii), not documented first-mover deployment.**

---

