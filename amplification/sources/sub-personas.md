# Sub-personas — Persona Management and Synthetic Corroboration

**Research cut-off: 25 September 2026.** Analytic and defensive only. This section documents
capability, scale, detectability and defence; it contains no operational guidance for creating
personas or running influence campaigns. Companion to `../Agentic-Threat-Amplification-2026.md` §5.3
and to the network-layer brief `../findings/03-computational-propaganda.md`.

**Claim under audit (H2).** AI agents make *synthetic corroboration* — manufacturing the appearance
that one claim comes from many independent witnesses, experts or outlets — cheap enough to convert
an ambiguous event from "a report" into "a pattern".

**Method.** Session `web_search` was broken; discovery used news-RSS search, publisher/API retrieval
and direct document fetch. Academic citations were verified against Crossref and Semantic Scholar
resolution, not asserted from memory. Evidence grades: **A** = primary/official · **B** =
peer-reviewed / high-quality investigative · **C** = reputable news · **D** = vendor/think-tank ·
**E** = anonymous/unverified. Every claim is tagged **demonstrated / claimed / inferred**.

---

## 1. Long-running fabricated identities

**DEMONSTRATED (B, high) — Team Jorge / AIMS (Israel).** Exposed 15 Feb 2023 by the Forbidden
Stories "Story Killers" consortium (>100 journalists, 30 outlets) after reporters posed as
consultants and filmed meetings Jul–Dec 2022. The AIMS software managed persona fleets across
Twitter, LinkedIn, Facebook, Telegram, Gmail, Instagram and YouTube; the on-screen interface,
persona creation by nationality/gender, and photos harvested from real people (the "Sophia Wilde"
avatar traced to a woman in Leeds) are documented on film. AIMS-linked bot activity was tracked in
**~20 countries**, mostly commercial disputes rather than elections, and Meta removed AIMS-linked
bots on 14–15 Feb 2023, with **~2,000 bots traced** in the consortium's own follow-up. The persona
construction was exposed by photo provenance: the avatar "**Canaelan**" used a photograph stolen from
**Tom Van Rooijen, a real Dutch journalist**. *Claimed, not demonstrated:* "33 presidential campaigns, 27 successful" and
"more than 30,000 avatars" — Hanan's own sales pitch, which the consortium warns may be inflated;
leaked emails show a **$160,000** quote in 2015 against a claimed **€6m–€15m** price.
[Guardian, 15 Feb 2023](https://www.theguardian.com/world/2023/feb/15/revealed-disinformation-team-jorge-claim-meddling-elections-tal-hanan)

**DEMONSTRATED (A, high) — John Mark Dougan / Storm-1516; the longest-running documented case.**
A Florida ex-deputy (dismissed 2009) who relocated to Russia in 2016 and became the production hub of
the Russia-linked Storm-1516 network — roughly **nine years of continuous operation, 2017→2026**.
Primary sources now exist and supersede the news reporting:

- **VIGINUM/SGDSN, 7 May 2025** attributed **≥293 CopyCop domains** and **77 information operations
  since Aug 2023**; **84 domains were registered by Dougan on a single day (10 May 2024)**
  (`badvolf.com` registered 10 Apr 2017). Burner accounts across **six platforms** were used in 45 of
  77 operations, and **most of the fake accounts were still not suspended as of 25 Mar 2025**. Paid
  seeding was documented at **$100 to one account** via an intermediary.
  https://www.sgdsn.gouv.fr/publications
- **EU Official Journal L 2025/2568** — Dougan designated **15 Dec 2025** under the hybrid-threats
  framework (CFSP 2024/2643): asset freeze and travel ban. **Reported as the first EU sanction of an
  American for pro-Kremlin disinformation.** (Primary legal act; the Council web page 403s to
  automated retrieval.)
- Bloomberg/Meduza (Apr 2026): **190+ fabricated stories, ~40% targeting Ukraine**; a "Johnny
  Midnight" X persona with **~630k followers** and ~60 fabricated items, banned then reinstated; Q1
  2026 output **double** Q1 2025. **Attribution to GRU Unit 29155 is INFERRED** — VIGINUM states it
  cannot confirm it.

**Named Storm-1516 personas that survive verification — and what exposed them (B, high).** "**Mr.
James O.**" (the Prince Andrew video, seeded via a specific X account); "**Jules Vincent**", a fake
French environmental journalist whose X account was **pre-aged from September 2018**; "**Alisha
Brown**", a paid actor in the fake Harris hit-and-run story, fronted by a fabricated outlet
"**KBSF-TV**" whose name is misspelled inconsistently across the network's own assets; and "**Rick**",
a fake Kazakh exchange student accusing Tim Walz — disproved when the State Department confirmed no
Kazakh students attended Mankato West in 2000–2020. **Recurring exposure signatures:** three YouTube
accounts used in Sept 2023 were **all created on the same day (30 Sept 2022)** — bulk purchase;
recycled X-ray and crash photographs; and simultaneous posting across 100+ Dougan-fronted sites.
Credibility therefore rests on production quality and pre-ageing, and collapses on **asset reuse,
bulk account creation and inconsistent branding**.

> ⚠️ **Do NOT repeat these as documented.** This pass could **not** verify a Doppelganger persona named
> "**Elise**", nor Storm-1516 personas "**Vladimir Z.**" or "**Alexei**", nor an Iranian
> "Manquehue"/"Rafat" persona set. They appear in the tasking brief and in secondary commentary but no
> source-grade record was located. Treat them as **unverified**; if the parent study names them, add
> the caveat or drop them. The verifiable named-persona record is the four cases immediately above.

**DEMONSTRATED (A, high) — AI-native persona systems inside state apparatuses.** Anthropic's
September 2026 threat report (~10 Sep 2026) is the single richest public case set. It documents
actors producing "doctrine manuals, opposition dossiers, ministerial portfolios, **persona systems**,
target databases, employment contracts encoding editorial loyalty, and scoring rubrics," and asks
the model to "strip the marks of automated text and to sound organic," build account-warmup logic,
and remove metadata. Named state-aligned persona programmes include the **Iranian ICCO**, the
**Islamic Propaganda Office of Khorasan Razavi** (whose "Manjanegh"/Catapult content factory used
"dozens of activists… under specific personas without links to Iran's security services") and the
**Bina Cultural Observatory**. Fake personas were built with "AI-generated profile photos, invented
biographies for fake reporters, and fabricated political spokespeople," alongside impersonation of a
real state spokesperson and a real human-rights organisation. The most striking instance: a
**MEK/NCRI-aligned** operation cloned a real activist's Telegram account — reading ~8,400 of his
posts to copy his style — and ran live political conversations with his contacts inside Iran.
[Anthropic, Sep 2026](https://www.anthropic.com/news)

**DEMONSTRATED (B/C, high) — AI-generated troll networks with fake faces, Georgia.** Myth Detector
(GEO, an EDMO member) documented **230 AI-generated accounts** supporting Georgian Dream
(13 Aug 2026) and, eleven days later, a **network of 434 AI trolls** using fake faces and
coordinated amplification (24 Aug 2026). This is the clearest *measured* case of a synthetic
persona network at national scale. https://mythdetector.ge/en/

**Foreign-policy corroboration (A/D, high) — a fake think tank staffed with real names.** OpenAI
reported on 25 Aug 2026 disrupting a Russian covert campaign whose defining feature was a
**fake Israel-based think tank using real researchers' names**, recycling **stolen academic papers**
(Le Monde, Jerusalem Post, 25–27 Aug 2026). This defeats the standard verification heuristic: name
checks, affiliation checks and even publication checks can all be satisfied.

**Pattern across ~15 years — the "fake byline" lineage (B, high).** Named, verified instances:

- **Endless Mayfly (Iran, 2019).** Citizen Lab, *"Burned After Reading"* (14 May 2019) documented a
  **typosquatting** operation impersonating **dozens of media outlets**, including the persona "**Mona
  A. Rahman**", publishing fabricated articles under real outlets' branding and then deleting them —
  an "ephemeral" design that specifically defeats retroactive verification.
  https://citizenlab.ca/2019/05/burned-after-reading-endless-mayflys-ephemeral-disinformation-campaign/
- **Liberty Front Press (Iran, Aug 2018).** A network of **652 accounts** removed by Facebook and
  Twitter, fronted as an independent left-wing news outlet.
- **PeaceData (Russia, 2020).** Graphika/Facebook's 1 Sep 2020 takedown exposed a fake left-wing
  outlet whose editors — "**Jake Sullivan**", "**Ali Ahmed Ghanem**", "**Alex Lacusta**", "**Albert
  Popescu**" — were all fabricated, and which **successfully recruited real, unwitting US and UK
  writers** to contribute. The domain was registered 6 Feb 2020 and taken down 1 Sep 2020
  (WaPo, Guardian, NYT, PBS, 1–2 Sep 2020). This is the two-stage design: the fabricated masthead
  borrows the credibility of genuine bylines it does not own.
- **Spamouflage / Dragonbridge (China).** Graphika named the personas "**He Jingrun**" (account
  created 2009, first tweet Jan 2020) and "**Li Ruoshui**", the latter repeatedly resurrected after
  each takedown — persona persistence as a deliberate design property. The 2024 "The Americans" wave
  used 15 X accounts and one TikTok account posing as US citizens plus a fake US news outlet persona;
  ISD separately documented four "MAGAflage" accounts (Apr 2024).
- **Philippines (2025).** Cyabra, reported by Reuters (11 Apr 2025): roughly **one-third of X accounts**
  in the Duterte-arrest discussion were fake (**11.8m views**), and up to **45%** of election-related
  discussion was inauthentic (**~54m views**). This is one of the few *rate* estimates (rather than
  raw counts) for inauthentic personas in a live national conversation.
- **The 2025–26 change is cost collapse and industrialisation, not invention.** One Bangladesh-based
  operator rotated **29 accounts over ~16 months** generating ≥1,500 headlines and 300 narratives via
  a custom API script (Anthropic, Sep 2026); one French advertising agency ran **~70 fake outlets with
  fabricated bylines** across ~20 languages (Anthropic, Sep 2026); NewsGuard attributed a **167-site
  pro-Russia network, 64 posing as local news**, to Dougan alone (Jun 2024).

---

## 2. Fabricated expertise and "one source as many"

Network-layer detail is in `../findings/03-computational-propaganda.md` and
`personas-2-fake-experts-networks.md`. The analytically load-bearing points:

- **Indian Chronicles (EU DisinfoLab, B, high) is the canonical false-amplification case.** 2019:
  **265+ fake local outlets in 65+ countries** built by layering outlets that "quote and republish
  one another" — EU DisinfoLab's own phrase is a "**mirage of international support**". 2020: a
  **15-year** operation (from 2005) with **10+ UN HRC-accredited NGOs** (mostly *resurrected* after
  dissolution, including a dead man, Prof. Louis B. Sohn, listed as attending UN events), **750+
  fake media outlets across 119 countries**, **550+ domains**, and **11 MEPs** publishing op-eds in
  the fake outlet *EU Chronicle* within six months. The amplifier was India's ANI.
  https://www.disinfo.eu/publications/indian-chronicles-deep-dive-into-a-15-year-operation-targeting-the-eu-and-un-to-serve-indian-interests/
- **Pravda network / Portal Kombat (A, high).** Viginum: **≥193 portals** (12 Feb 2024) → **224**
  (29 Apr 2024), with 31 new domains created in a single week in March 2024. ISD then measured the
  *corroboration layer*: **919 sites** linked to Pravda articles Jul 2024–Jul 2025, and of 303
  English-language sites reviewed, **81% treated Pravda as credible** while only **3%** properly
  contextualised it; **34 sites with >1M monthly visits** cited it as reliable. That is synthetic
  corroboration succeeding *through legitimate amplifiers* — the strongest evidence that the
  mechanism works at the citation layer even when direct audience reach is trivial.
  https://www.sgdsn.gouv.fr/publications ; https://www.isdglobal.org/digital-dispatch/link-by-link-hundreds-of-webpages-cite-pro-russia-pravda-network/
- **Correction worth propagating:** there is **no Viginum February 2025 "Pravda" report with
  domain/article counts**; the Feb 2025 output is the three-year synthesis. On the **"33%"**
  contamination figure: its actual origin is a **NewsGuard audit (March 2025)** finding that the ten
  leading generative-AI tools repeated pro-Kremlin Pravda false claims **33% of the time** — a
  **vendor claim (D)**, and one that **did not replicate** in ISD's own later LLM testing, which
  found popular models rarely cite Pravda links directly. The honest reading: the *citation layer* is
  demonstrably contaminated (81% credulity among reviewing sites; Pew's web-scale detection), but the
  *model-behaviour consequence* is **claimed and contested**. Do not present "LLM poisoning is
  working" as established.
- **Rented credibility, not fabricated credibility (inferred, medium).** DFRLab has repeatedly
  documented sockpuppet networks *impersonating* Americans and Canadians (4 Nov 2024) and
  "influencers-for-hire" (South Africa, 9 May 2025). The market increasingly rents real accounts;
  the fabricated persona is becoming the cheap tier rather than the whole product.

---

## 3. Fake local news and AI-generated news sites

**NewsGuard count series (D — vendor figure, contested methodology, but the only longitudinal series
that exists).** The corrected series, 16 languages throughout the later reports:

| Date | Count | Metric |
|---|---|---|
| 1 May 2023 | **49** | "Rise of the Newsbots", 7 languages |
| Dec 2023 | **~614** | unreliable AI-generated news sites |
| Feb 2024 | **713** | reported figure |
| Jun 2024 | **900+** | AI content farms |
| May 2025 | **~1,300** | AI-generated news sites, 16 languages |
| **23 Jun 2026** | **3,749** | "AI Content Farm news and information websites" |

That is roughly a **76-fold increase in three years**. NewsGuard with Pangram Labs separately
reported **3,006 AI content farms** in March 2026 growing at **+300–500/month**, of which **358 were
tied to Storm-1516** (via [The Decoder, 14 Mar 2026](https://the-decoder.com/ai-spam-websites-flood-the-web-with-false-information-and-the-number-is-growing-fast/)).
**Caveats that must travel with these numbers:** (i) they are *samples, not a census*, and NewsGuard
says so; (ii) the definition requires "strong evidence of no significant human oversight" and
explicitly *excludes* AI-assisted sites with effective oversight — a subjective test that makes the
count a movable lower bound; (iii) the widely cited **"$50/month"** revenue figure is a
vendor-derived estimate for one low-traffic exemplar, **not a median** — low confidence. **Engagement
is the critical qualifier:** NewsGuard's consistent finding is little to no engagement, with
programmatic advertising — ad tech delivering without regard to site quality — as the business model.

**Pink slime (B, high).** Priyanjana Bengani / Tow Center longitudinal work: **450 sites** (Dec 2019)
→ **>1,200** (Aug 2020), of which **Metric Media alone ~960 (80%)**; over **90% of stories
algorithmically generated** or repurposed; sites in **49 states**. A consolidated 2024 Tow report puts
the extended Metric Media network at **>1,100 sites**, and CJR found the network took **$1.6m from
three conservative PACs** in the 2022 cycle. **The June 2024 milestone is the headline number:
NewsGuard found 1,265 pink-slime outlets against 1,213 US daily newspapers** — fakes now outnumbered
real dailies. That same report identified a network of **167 pro-Russia sites, 64 posing as local
news, attributed to John Mark Dougan** — the first documented crossover of pink slime, AI and
Russian disinformation in one network. The alarming 2025–26 development is not traffic but **agenda
penetration**: CJR's Tow Center documented pink-slime publishers running **9,000+ FOIA requests
against universities** between January 2025 and January 2026, contributing to faculty sanctions and
terminations (29–30 Jul 2026). **Prism News** — **~200 AI-generated "local news" sites** launched May
2026 — **went dark in August 2026** (Poynter, 18 Aug 2026), suggesting both fragility and platform
enforcement. https://www.cjr.org/tow_center/

**The audience is small — and that may not matter (B, high).** Tow's nationally representative survey
estimated only about **1 in 25 Americans (~4%)** were exposed to pink-slime content between 24 Aug and
7 Dec 2020; living in a news desert did *not* increase exposure, and readers were more likely to
notice the political slant than the algorithmic nature. Tow's analytic conclusion is the one that
matters here: **"large audiences are not necessarily required — or, indeed, desired — for such
material to achieve its goals."** Effect runs through **secondary circulation**: a Local Government
Information Services story about race-based grading in Illinois ricocheted across conservative outlets
and into candidate campaign material. **This is synthetic corroboration in its pre-generative form,
and it is the strongest available evidence that the mechanism works without an audience.**

**Web-scale measurements (A/B, high) — the best quantification to date.** Pew Research Center, "How
Much of the Internet Is Written With AI?" (**20 Aug 2026**), analysed ~**490,000 English pages** over
five years from Common Crawl using the Open Pangram detector: **10% of a random 10,000-page July 2026
sample shows significant signs of AI authorship**, and among pages published **after ChatGPT's
release, more than one-third** do. Domain skew is steep: ~10% of `.com`, 4.6% of `.org`, ~1% of
`.edu`/`.gov`; `.com` AI-authored share rose from ~1.1% (Jan 2021) to **9.35% (Jan 2026)**. Separately,
Nieman Lab (16 Oct 2025) traced the full laundering loop: one Guardian column was stripped, repackaged
and republished **at least a dozen times** by AI "news outlets," **including with a fabricated quote
attributed to the real author**.

**Audience reality check on the operation side.** The clearest quantified case in the Anthropic
corpus is the French agency's network — **8,913 articles across ~70 outlets in ~20 languages**, rated
**Breakout Scale Category 2** ("no evidence of breakout beyond its own activity"). The same report
states that "most of the content we discovered drew little or no authentic engagement."

---

## 4. Commercial influence-for-hire

Full detail in `personas-4-influence-for-hire.md`. Headline cases, with the claimed/demonstrated
split preserved:

- **Team Jorge / AIMS** — see §1. *Claimed* "33 elections"/"30,000 avatars"; *demonstrated* interface,
  ~20-country footprint, Meta takedown.
- **Archimedes Group** (Facebook removal 16 May 2019, ~**$800,000** ad spend, Africa/Asia/LatAm, **A**)
  — the pre-LLM precedent proving the market predates generative AI.
- **STOIC / "Zero Zeno"** (OpenAI 1 & 30 May 2024; Meta late May 2024, **A/D**) — an Israeli
  commercial firm selling persona-and-fake-news-site services; targeted the Indian election, US and
  Canada. **Correction:** "Operation Overload" is **not** this case — it is the separate pro-Russian
  "Matryoshka" campaign that floods fact-checkers with fake tips.
- **Anthropic, March 2025 (published 23 Apr 2025) — the first explicit "influence-as-a-service"
  disclosure (A/D, high).** **>100 bot accounts** with distinct persona political alignments engaging
  "tens of thousands" of authentic accounts. The analytically novel capability: the model *allocated
  engagement* — deciding which persona should like, share, comment on or ignore which content — with
  persona state held in structured memory. **At least four distinct campaigns** shared the framework;
  narratives served European, Iranian, UAE and Kenyan interests. **No content achieved viral status.**
- **Anthropic, September 2026 — the Malaysia platform (A/D, high).** A commercial operation linked to
  Istanbul-based **BBS Bilişim Teknolojileri**, marketed as "military-grade, AI-driven, real-time
  political operations ecosystem" while fronting as counter-disinformation tooling: **>1,000 fake X
  accounts**, a synthetic outlet ("Malaysia Pulse") laundering Russian and Chinese state media as
  independent Malaysian reporting under fabricated bylines, fabricated intelligence dossiers against
  named opponents, and constituency targeting built on real census and voter data across **all 222
  parliamentary constituencies**. Malaysia's **MCMC opened a probe on 11 Sep 2026**; the firm denies
  involvement. Anthropic rated it **Breakout Scale Category 2**.
- **OpenAI, 1 June 2026 — "Data Center Bandwagon" (A for disclosure, D for attribution).** Two
  China-origin clusters used ChatGPT to generate imagery and social comments claiming US data-centre
  buildouts were raising electricity prices, plus a tariffs cluster, with **fake accounts posing as
  Americans on X and YouTube**. OpenAI's Ben Nimmo: *"this was not a case of an influence operation
  creating a debate. The debate existed already… We didn't see any signs that it succeeded."* Rated
  **Breakout Scale 1 and 2**; **not attributed to the Chinese government**. X separately identified
  ~**200 China-linked bot accounts** on the same debate (Aug 2026).
- **Regional markets.** Philippines: Rappler's Dec 2025 series naming **Infinitus Marketing Solutions**
  and the Senate's **Anti-Troll Farm Act (SB 1490)** with Meta subpoenaed (15 Dec 2025). Kenya:
  Cambridge Analytica 2017, Team Jorge's rejected 2017 pitch, paid-influencer markets in 2022, and an
  Anthropic-flagged Claude-run pro-government astroturfing operation (Category 1 — "failing to reach
  or influence any real people"). India: Cobrapost's **"Operation Karaoke"** (19 Feb 2019, ~**36**
  celebrities paid for political posting). Brazil: the "milícias digitais" inquiry — **specifics
  UNVERIFIED; source from STF/PF primary documents.**
- **Fake-engagement market.** Devumi sold **>200m fake followers** (NYT, 27 Jan 2018) and settled with
  the FTC for **$2.5m** (Oct 2019) — the agency's first fake-influence complaint; the FTC's **final
  rule banning fake reviews** took effect **14 Aug 2024**. **Price-per-1,000 figures are UNVERIFIED.**
- **The strongest measured reach case — and it is platform-driven, not persona-driven (B, high).**
  ISD, *"How pro-Iran networks gained a billion views on war propaganda"* (16 Apr 2026): two
  coordinated networks, **BRICS4CLICKS** (23 accounts, later 18 for **Verified4War**), generated
  **>1 billion views, ~16m likes and 3.5m reposts** in the first month of the Iran war. The account
  behaviour is the persona-management tell: **80% of BRICS4CLICKS accounts changed usernames at least
  once**, adopting handles that made them look like **global media outlets from Iran, Russia, China,
  India or North Korea**, and **~two-thirds bought X Premium** for blue-check credibility —
  while all were based in West Asia. **82% of reposts were in-network.** Crucially, ISD attributes
  the reach to **X's "For You" algorithm plus reposting by accounts with >500k followers (~100 times)
  and >50k followers (>2,000 times)**, and found **no evidence of state backing**. Average **27.6m
  views/day** across ~900 posts, peaking at **>63m in one day**. This is the single most important
  counterweight to the "no audience" finding: personas can reach enormous audiences when the
  **platform's own recommender** does the amplification.

---

## 5. Synthetic corroboration using AI: fabricated evidence

Detail and the full 48-source apparatus are in `personas-5-deepfakes-synthetic-evidence.md`.
Key demonstrated findings:

- **Audio is the highest-yield vector.** Slovakia, 28 Sep 2023: a 48-second fake Šimečka/*Denník N*
  clip, released two days before the election inside the media moratorium. US Biden robocall
  (Jan 2024) produced the first regulatory architecture — FCC declaratory ruling 8 Feb 2024, a
  proposed **$6m** forfeiture, a **$1m** Lingo Telecom settlement — **but a New Hampshire jury
  acquitted the operative, Steve Kramer, on all counts in June 2025.** Regulatory findings and
  criminal liability diverged.
- **Cheap fakes dominate.** Re-cut, re-voiced or mislabelled *real* footage is far more common than
  true synthetic video; several celebrated "deepfakes" are cheap fakes. Do not accept the label.
- **Imagery's demonstrated damage is economic and epistemic, not persuasive.** The fake Pentagon
  explosion image (22 May 2023) moved the **S&P 500 ~0.3% intraday**, debunked in ~20 minutes; the
  widely repeated "**$500bn wiped**" figure is **not corroborated**. The inverse failure mode matters
  as much: France 24 (29 May 2025) documented **real** Gaza aid-queue images being falsely accused of
  being AI-generated.
- **The liar's dividend is now empirical, not theoretical** — see §6.
- **Scale of exposure:** ~**1 in 3 UK voters (≈16m)** reported seeing candidate deepfakes before the
  May 2026 local elections (The Independent, 30 May 2026, C, medium).

---

## 6. Is synthetic corroboration fooling people?

Bifurcated, and the second half is counter-intuitive: **the artefacts fool people; the multiplicity of
sources mostly does not add much.**

**Human detection is at or barely above chance in every modality (A, high).** Diel, Lalgi, Schröter,
MacDorman, Teufel & Bäuerle (2024), *Computers in Human Behavior Reports* 16:100538, DOI
10.1016/j.chbr.2024.100538 — **56 papers, 86,155 participants, k = 137 effects** — pools human
deepfake detection at **55.5%** (95% CI 48.9–62.1): images **53.2%**, text **52.0%**, video **57.3%**,
audio **62.1%**. This is the correct citation for "humans cannot reliably detect synthetic media."

**Faces (A, high).** Nightingale & Farid, *PNAS* 119(8), 2022, DOI 10.1073/pnas.2120481119 (verified
via Semantic Scholar). Exp. 1 (N = 315): accuracy **48.2%** vs 50% chance, d′ = −0.09 — *no
sensitivity, no bias*. Exp. 2 (N = 219, trial-by-trial feedback): only **59.0%**, with **no
improvement across the session**. Exp. 3 (N = 223): synthetic rated **4.82** vs real **4.48**
(+7.7%), d = **0.49** — three of four most-trusted faces were synthetic, all four least-trusted were
real. Qualifications: **Miller et al. (2023, *Psychological Science*)** found White AI faces judged
human **~66%** of the time — *more often than real faces* — with the worst performers most confident;
and **Dawel et al., "Training humans to detect AI-generated faces", *PNAS*, 29 Jun 2026, DOI
10.1073/pnas.2602122123** trained attention on six *global facial impressions* and **nearly doubled
accuracy, 40% → 80%**, with a test–retest control and online replication. Detection is not a fixed
limit — but only the right cue class works. **McGuire et al., *Journal of Vision* 26(7):3, 7 Jul 2026,
DOI 10.1167/jov.26.7.3** confirms diffusion faces are *less* photorealistic yet rated *more*
trustworthy than GAN or real faces: the effect has not decayed.

**Repetition works — by fluency, NOT by source plurality. This is the key finding for H2.**
Foundation: Pennycook, Cannon & Rand, *JEP: General* 147(12), 2018, DOI 10.1037/xge0000465 (verified
via Crossref) — prior exposure raises perceived accuracy even for implausible headlines and even when
the source is discounted. Scale: **Ye et al., *Nature Communications*, 27 Feb 2026, DOI
10.1038/s41467-026-70041-x** — 182 studies, 366 effect sizes, N = 31,184 — corrected illusory-truth
effect **g = 0.37** (0.30–0.44): real, small, heterogeneous. **Riesthuis & Woods (2026,
*Consciousness and Cognition*)** bound it further: repetition **did not reliably increase subjective
truth for socio-political *opinion* statements** (N = 457).

Now the decisive part. The question H2 needs answered — does *one claim from many apparent sources*
beat the same claim from one? — **has been tested, and the best direct test is a null.** **Foster,
Huthwaite, Yesberg, Garry & Loftus, *Acta Psychologica* 2012, DOI 10.1016/j.actpsy.2011.12.004**
(Crossref-verified) is titled for its result: *"**Repetition, not number of sources, increases both
susceptibility to misinformation and confidence**."* **Roggeveen & Johar (*Journal of Consumer
Psychology* 12(2), 2002)** found source count operates through **subjective familiarity, not perceived
source variability**. **Pillai & Fazio (*JARMAC*, Jun 2025, DOI 10.1037/mac0000166)** is the one paper
framed exactly as the synthetic-corroboration hypothesis — *"Repeated by many versus repeated by one"*
— and it **exists** (Crossref-verified), but its effect size could **not** be retrieved; **priority
manual read**. The useful positive mechanism is **indirect**: **Mattavelli, Brambilla & Unkelbach
(2026, *PSPB*)** show across four preregistered experiments that repetition increases the **credibility
of the *source***, generalising to novel statements from it. **Repetition launders *publisher*
credibility — that is the actual enabling condition, not a source-count multiplier.** Net reading:
the strong form of H2 runs against the best direct evidence. Belief scales with *exposure*; plurality
helps only insofar as it produces familiarity or launders source credibility.

**Deepfake warnings backfire (A, high).** Clark & Lewandowsky et al., *Communications Psychology*
(Nature), 2 Jan 2026, DOI 10.1038/s44271-025-00381-9 (Crossref-verified). Three preregistered
experiments (N = 175/275/223): among participants who *believed* an explicit warning that a video was
fake, **53.8% / 44.7% / 50.0% still judged the person guilty from the video's content**. A specific
warning also caused participants to misclassify a **real** video as fake; a generic warning lowered
guilt perception without convincing anyone. Authors caution task-framing cannot be fully ruled out.
**Implication: generic "beware deepfakes" messaging is counterproductive; skill-building is what works
(Huang & Hu, 2025, *Science Communication*).** Related tax: **Altay & Gilardi (2024, *PNAS Nexus*,
N = 4,976)** — labelling headlines "AI-generated" lowered perceived accuracy and sharing **regardless
of truth**, though **three times smaller** than labelling them false.

**The liar's dividend — demonstrated but bounded (A, high).** Term coined by Chesney & Citron,
*California Law Review* 107 (2019). Confirmation: **Grohmann, Halle & Appel, *Psychology of Popular
Media*, 9 Mar 2026, DOI 10.1037/ppm0000665** (Crossref-verified), N = 182 — politicians who falsely
claimed genuine footage was a deepfake scored **higher on leadership** (M ≈ 4.39/4.07) than those who
apologised (M ≈ 2.97/3.01), F(1,178) = 50.01, p < .001, **η²p = .22**, and recipients were more likely
to misidentify the **authentic** video as fake (F = 21.36, p < .001, η²p = .11). **But the largest
test bounds it:** **Schiff, Schiff & Bueno, *APSR* 2024, DOI 10.1017/s0003055423001454** — five
experiments, **>15,000 US adults** — found false misinformation claims raised politician support
across partisan subgroups and were **effective against text-based scandal reports but largely
ineffective against video evidence**, and did **not** reduce general media trust. Vaccari & Chadwick
(2020, *Social Media + Society*) found synthetic political video mainly produced **uncertainty**
rather than changed factual beliefs. **State practice:** Iran, Jan 2026 — regime outlets circulated
*altered copies* of a genuine protest photograph to argue the original was fake ("epistemic fog",
Alimardani, *The Atlantic*).

**Persuasion ceilings and the counterweight (A, high).** Hackenburg & Margetts, *PNAS* 121(24), 2024,
DOI 10.1073/pnas.2403116121 (Crossref-verified): preregistered RCT, **n = 8,587** — GPT-4 messages
persuaded (up to **+12pp**) but **microtargeting added nothing** (4.83 vs 6.20pp, P = .226).
**Hölbling, Maier & Feuerriegel (2025, *Scientific Reports*)** meta-analysed **7 studies, 17,422
participants**: **no significant overall difference in persuasiveness between LLMs and humans**.
Goldstein et al. (2024, *PNAS Nexus*) found curated GPT-3 propaganda **as persuasive as authentic
foreign propaganda**. Against that, Costello, Pennycook & Rand, *Science* (2024): GPT-4 dialogue cut
conspiracy belief **~20%**, durable at two months (N = 2,190). **AI is neither magic nor inert — and
the defensive use is as strong as the offensive one.**

**Modality reversal worth flagging (A, medium-high).** Pehlivanoglu et al., "Is this real?
Susceptibility to deepfakes in machines and humans", *Cognitive Research: Principles and
Implications*, 7 Jan 2026, DOI 10.1186/s41235-025-00700-y: machines reached **~97%** on still
deepfake images while humans were at chance, but on **video** machines fell to near chance while
humans identified real and fake videos correctly about **two-thirds** of the time. Human/machine
advantage is **modality-specific and currently reversed between stills and video** — a caution against
single-modality claims.

---

## 7. Assessment

1. **DEMONSTRATED (A/B, high): production-side and evidence-structure change is real and cheap.**
   Persona systems, fake bylines, synthetic outlets, constituency-level voter profiling and
   engagement allocation are all documented in first-party disclosures from OpenAI, Anthropic,
   Meta and Google, and in Viginum/EU DisinfoLab primary reporting.
2. **DEMONSTRATED (A/D, high): the demand side is normally the binding constraint — with one
   important exception.** Nearly every quantification of effect in the 2025–26 record comes back
   low: Breakout Scale Categories 1–3; "little or no authentic engagement"; OpenAI's explicit "we
   didn't see any signs that it succeeded"; the French agency's 8,913 articles reaching almost
   nobody. **The exception is algorithmic amplification.** ISD's two pro-Iran networks — ~40 accounts
   between them — generated **>1 billion views in a month** because X's recommender and large
   organic accounts carried them. The lesson is not "reach is easy" but **"reach is rented from the
   platform."** A defender's leverage therefore sits substantially in recommendation and
   distribution policy, not only in content-level debunking. An operation that produces a thousand
   times more content into an audience that does not engage has not achieved a thousand-fold increase
   in effect — *unless* the recommender intervenes, in which case the persona network is a trigger
   rather than the amplifier.
3. **DEMONSTRATED (A, high): the *defensive* cost is asymmetric and locally severe.** Pooled human
   detection is **55.5%** across 56 papers and 86,155 participants; naive face verification is at
   chance (48.2%); the worst performers are the most confident; deepfake warnings backfire; and the
   liar's dividend lets real evidence be dismissed as fabricated (η²p = .22 is a large effect,
   though Schiff et al. (2024) bound it to *text*, not video). The harm concentrates on the
   *verification layer*, not on mass belief.
4. **CLAIMED, not demonstrated:** all Team Jorge metrics; the "33%" LLM-contamination figure (a
   NewsGuard vendor claim that ISD's own testing did not replicate); price points in the
   fake-engagement market; Brazilian inquiry specifics.
5. **CONTRADICTED rather than merely unproven — the most important negative finding in this
   section.** The strong form of H2 ("N fake sources beat one fake source") runs against the best
   direct evidence: **Foster et al. (2012, *Acta Psychologica*)** found **repetition, not number of
   sources, drives susceptibility and confidence**; **Roggeveen & Johar (2002)** attribute the effect
   to familiarity, not perceived source variability; and the corrected illusory-truth effect is only
   **g = 0.37**, negligible for socio-political *opinion* statements (Riesthuis & Woods 2026). The
   mechanism that *does* support a corroboration effect is **indirect — source-credibility
   laundering** (Mattavelli et al. 2026): repetition makes the *publisher* seem credible and that
   credibility generalises to its novel claims. **Reframe accordingly: the threat is not that twenty
   fake witnesses are believed as twenty; it is that a claim repeated across twenty outlets makes the
   outlets themselves look like a legitimate press.** One open item: **Pillai & Fazio (2025,
   *JARMAC*)** tests exactly this hypothesis and its effect size could not be retrieved — priority
   manual read.
6. **Counterintuitive finding worth flagging to the parent:** the highest-quality recent evidence
   says accurate synthetic *evidence* is not the main threat — **deniability is**. The liar's dividend
   and the "epistemic fog" cases show the durable damage is to the credibility of *real* evidence, and
   labelling content "AI-generated" lowers belief in true and false material alike (Altay & Gilardi
   2024). An adversary seeking institutional paralysis gets more from manufactured doubt about genuine
   material than from a fabricated incident.
7. **The defensive literature is unusually strong and cheap.** Impression-based face training takes
   accuracy from **40% to 80%** and replicates online (Dawel et al. 2026, PNAS); AI dialogue reduced
   conspiracy belief by **~20%** durably (Costello et al. 2024, *Science*); and the most common
   defensive error — generic deepfake warnings — is now identifiable and avoidable. **Prebunking and skill
   training are the load-bearing defences, not detection tools or transparency labels.**

**Tripwires worth monitoring:** (i) any AI-generated persona network measured at Breakout Scale ≥4;
(ii) a fabricated persona surviving institutional vetting (security clearance, UN accreditation,
credentialed press pass); (iii) a documented case of a state actor using AI-cloned voice for
command-and-control ambiguity; (iv) an LLM citation-contamination effect that replicates under
independent test.

---

## Key numbers and dates

| Date | Case | Number | Status | Grade |
|---|---|---|---|---|
| 2019–2020 | Indian Chronicles (EU DisinfoLab) | 265+ outlets/65+ countries; 750+ outlets/119 countries; 550+ domains; 10+ UN NGOs | Demonstrated | B |
| 12/14/29 Apr 2024 | Viginum Portal Kombat | 193 → 224 portals; 31 new domains in one week | Demonstrated | A |
| 18 Nov 2025 | ISD on Pravda | 919 linking sites; 81% treated as credible; only 3% contextualised | Demonstrated | B |
| 15 Feb 2023 | Team Jorge exposed | "33 elections", "30,000 avatars" | **Claimed** | D |
| 15 Feb 2023 | Team Jorge demonstrated | AIMS interface; ~20 countries; Meta takedown | Demonstrated | B |
| 7 May 2025 | VIGINUM on Dougan/CopyCop | **≥293 domains; 77 info ops since Aug 2023; 84 domains registered in ONE day**; most fake accounts still live Mar 2025 | Demonstrated | A |
| 15 Dec 2025 | EU designates Dougan (OJ L 2025/2568) | Asset freeze + travel ban; **first EU sanction of an American** for pro-Kremlin disinformation | Demonstrated | A |
| Apr 2026 | Bloomberg/Meduza on Storm-1516 | 190+ fabricated stories, ~40% anti-Ukraine; "Johnny Midnight" persona ~630k followers; Q1 2026 output 2× Q1 2025 | Demonstrated | C |
| 11 Apr 2025 | Philippines (Cyabra/Reuters) | **~1/3 of X accounts** in Duterte-arrest discussion fake (11.8m views); up to **45%** of election discussion (~54m views) | Demonstrated | B/C |
| 1 Sep 2020 | PeaceData (Graphika/Facebook) | Fake editors "Jake Sullivan" et al.; recruited real US/UK writers | Demonstrated | A/D |
| May 2023 → Jun 2026 | NewsGuard AI content farms | **49 → ~614 → 713 → 900+ → ~1,300 → 3,749** (16 languages) | Vendor sample; ~76× in 3 yrs | D |
| Mar 2026 | NewsGuard + Pangram | 3,006 AI content farms; +300–500/month; 358 Storm-1516 | Demonstrated | D |
| 11 Jun 2024 | NewsGuard "sad milestone" | **1,265 pink-slime outlets vs 1,213 US daily newspapers**; 167 pro-Russia sites, 64 posing as local news (Dougan) | Demonstrated | A/D |
| 2020 | Tow Center audience survey | ~1 in 25 Americans (~4%) exposed; news-desert residence *not* a predictor | Demonstrated | B |
| 20 Aug 2026 | Pew Research (Common Crawl) | 10% of sampled pages AI-authored; >1/3 of post-ChatGPT pages; .com 1.1%→9.35% | Demonstrated | A/B |
| 29–30 Jul 2026 | CJR Tow / pink slime | ~1,100+ Metric Media outlets; 9,000+ FOIAs vs universities | Demonstrated | B |
| Aug 2026 | Prism News (US) | ~200 AI "local news" sites launched May 2026, dark by Aug 2026 | Demonstrated | C |
| 23 Apr 2025 | Anthropic influence-as-a-service | >100 persona bots; ≥4 campaigns; no viral content | Demonstrated | A/D |
| 1 Jun 2026 | OpenAI "Data Center Bandwagon" | 2 clusters; Breakout Scale 1 & 2 | Demonstrated | A/D |
| 10 Sep 2026 | Anthropic Sept 2026 | Malaysia: 222 constituencies, >1,000 fake X accounts | Demonstrated | A/D |
| 13/24 Aug 2026 | Myth Detector (Georgia) | 230 then 434 AI-generated troll accounts | Demonstrated | B/C |
| 2022 | Nightingale & Farid, *PNAS* | Faces: 48.2% accuracy (chance); synthetic rated +7.7% more trustworthy, d = 0.49 | Peer-reviewed | A |
| 2023 | Miller et al., *Psychological Science* | White AI faces judged human **~66%** — more often than real faces | Peer-reviewed | A |
| 2024 | Diel et al., *CHBR* | **Pooled human detection 55.5%** (56 papers, 86,155 participants) | Peer-reviewed meta-analysis | A |
| 4 Jan 2026 | Dawel et al., *PNAS* | Impression-based training: **40% → 80%** face detection, replicated online | Peer-reviewed | A |
| 2018 | Pennycook, Cannon & Rand, *JEP:General* | Prior exposure ↑ perceived accuracy | Peer-reviewed | A |
| 2026 | Ye et al., *Nature Communications* | Corrected illusory-truth effect **g = 0.37** (182 studies, N = 31,184) | Peer-reviewed meta-analysis | A |
| 2012 | Foster et al., *Acta Psychologica* | **Repetition, NOT number of sources**, drives belief — null for source plurality | Peer-reviewed | A |
| 2026 | Mattavelli et al., *PSPB* | Repetition ↑ **source** credibility, generalising to novel claims | Peer-reviewed | A |
| 2 Jan 2026 | Clark & Lewandowsky, *Comms Psychology* | 45–54% of warned believers still used deepfake content | Peer-reviewed | A |
| 2024 | Schiff, Schiff & Bueno, *APSR* | Liar's dividend: works on **text**, largely ineffective on **video** (>15,000 adults) | Peer-reviewed | A |
| 9 Mar 2026 | Grohmann, Halle & Appel, *Psych Popular Media* | Liar's dividend: η²p = .22 leadership boost (N = 182) | Peer-reviewed | A |
| 2024 | Hackenburg & Margetts, *PNAS* | LLM persuasion up to +12pp; **microtargeting null** (P = .226) | Peer-reviewed | A |

## Gaps and unresolved items

- **Anthropic Sept 2026 canonical URL** — site blocks automated fetch; cited by title/date plus
  independent coverage (Reuters, AFP, Politico, Türkiye Today).
- **NewsGuard counts** — newsguardtech.com/realitycheck return 403 to automated retrieval. The
  May 2023 (49) and the 23 Jun 2026 (3,749) figures were verified on NewsGuard pages that resolved;
  intermediate counts rest on reputable secondary reporting that cites NewsGuard directly.
  **Do not use "1,200 AI news sites" — that is the pink-slime number.**
- **EU sanctions on Dougan** — reported Dec 2025 (first American sanctioned by the EU for pro-Kremlin
  disinformation); the Council legal act itself returned 403 and was **not** read directly.
- **Storm-1516 persona names** — the verifiable set is now recorded in §1 ("Mr. James O.", "Jules
  Vincent", "Alisha Brown", "Rick"). **Explicitly NOT verified and not to be repeated as documented:**
  the Doppelganger persona "**Elise**", and the Storm-1516 personas "**Vladimir Z.**" and "**Alexei**".
  Also unverified: an Iranian "Manquehue"/"Rafat" persona set, Kenya's "The Real Uhuru", Brazil's STF
  persona names, and India's "Dunki"/"Bharat Prakash".
- **Fake fact-checkers** — the "Лапша"/"Noodle" and FactCheckArmenia cases were asserted in the brief
  but **could not be verified** to source grade; Viginum's *Matriochka* (Jun 2024, 60+ countries) is
  the solid case.
- **Pillai & Fazio (2025, *JARMAC*)** — the one study that tests the synthetic-corroboration
  hypothesis directly ("repeated by many versus repeated by one"); effect size and direction
  **not retrieved** (APA blocks automated access). **Priority manual read — this is the highest-value
  outstanding item in the section.**

## Sources

Full graded source lists are in the companion finding files:
`../findings/personas-2-fake-experts-networks.md`,
`../findings/personas-3-ai-news-pink-slime.md`,
`../findings/personas-4-influence-for-hire.md`,
`../findings/personas-5-deepfakes-synthetic-evidence.md`,
`../findings/personas-6-detection-and-belief-studies.md`, and
`../findings/03-computational-propaganda.md`.

Primary and load-bearing sources cited above:
- The Guardian, "Revealed: the hacking and disinformation team meddling in elections", 15 Feb 2023 — https://www.theguardian.com/world/2023/feb/15/revealed-disinformation-team-jorge-claim-meddling-elections-tal-hanan
- Anthropic, "Detecting and Countering Misuse of AI: September 2026", ~10 Sep 2026 — https://www.anthropic.com/news
- OpenAI, "'Data Center Bandwagon' Campaign: US-targeted influence activity", 1 Jun 2026 — https://openai.com/index/data-center-bandwagon/ (JS/403; used via OpenAI feed + CyberScoop 10 Jun 2026)
- Anthropic, "Detecting and countering malicious uses of Claude: March 2025", 23 Apr 2025 — https://www.anthropic.com/news
- Viginum, Portal Kombat reports (12/14/29 Feb–Apr 2024) — https://www.sgdsn.gouv.fr/publications
- ISD, "Link by link: Hundreds of webpages cite pro-Russia Pravda network", 18 Nov 2025 — https://www.isdglobal.org/digital-dispatch/link-by-link-hundreds-of-webpages-cite-pro-russia-pravda-network/
- ISD, "How pro-Iran networks gained a billion views on war propaganda", 16 Apr 2026 — https://www.isdglobal.org/digital-dispatch/how-pro-iran-networks-gained-a-billion-views-on-war-propaganda/
- EU DisinfoLab, Indian Chronicles (2019, 2020) — https://www.disinfo.eu/publications/indian-chronicles-deep-dive-into-a-15-year-operation-targeting-the-eu-and-un-to-serve-indian-interests/
- CJR Tow Center on pink slime / Metric Media, 29 Jul 2026 — https://www.cjr.org/tow_center/
- Myth Detector (Georgia), AI troll networks, 13 & 24 Aug 2026 — https://mythdetector.ge/en/
- AFP Fact Check, "Who is John Mark Dougan, sanctioned by EU for role in Russian disinformation?", 22 Dec 2025 — https://factcheck.afp.com
- Nightingale & Farid, *PNAS* 119(8) 2022 — https://doi.org/10.1073/pnas.2120481119
- Miller et al., *Psychological Science* 2023 ("AI hyperrealism")
- Diel, Lalgi, Schröter, MacDorman, Teufel & Bäuerle, *Computers in Human Behavior Reports* 2024 (pooled 55.5%; 56 papers, 86,155 participants)
- Dawel et al., *PNAS* 2026 (impression-based face training, 40%→80%)
- McGuire, Bohacek, Farid, Taylor & Nightingale, *Journal of Vision* 2026
- Pehlivanoglu et al., *Cognitive Research: Principles and Implications* 2026 (modality reversal)
- Pennycook, Cannon & Rand, *JEP: General* 147(12) 2018 — https://doi.org/10.1037/xge0000465
- Ye et al., *Nature Communications* 2026 (illusory truth meta-analysis, g = 0.37)
- Riesthuis & Woods, *Consciousness and Cognition* 2026 (null for opinion statements)
- **Foster, Huthwaite, Yesberg, Garry & Loftus, *Acta Psychologica* 2012 — "Repetition, not number of sources…"**
- Roggeveen & Johar, *Journal of Consumer Psychology* 2002
- **Pillai & Fazio, *JARMAC* 2025, DOI 10.1037/mac0000166 — "Repeated by many versus repeated by one" (effect size not retrieved)**
- Mattavelli, Brambilla & Unkelbach, *PSPB* 2026 (repetition → source credibility)
- Clark & Lewandowsky et al., *Communications Psychology*, 2 Jan 2026 — https://doi.org/10.1038/s44271-025-00381-9
- Schiff, Schiff & Bueno, *American Political Science Review* 2024 — DOI 10.1017/s0003055423001454
- Grohmann, Halle & Appel, *Psychology of Popular Media*, 9 Mar 2026 — https://doi.org/10.1037/ppm0000665
- Vaccari & Chadwick, *Social Media + Society* 2020
- Hackenburg & Margetts, *PNAS* 121(24) 2024 — https://doi.org/10.1073/pnas.2403116121
- Hölbling, Maier & Feuerriegel, *Scientific Reports* 2025 (meta-analysis, no LLM/human persuasiveness difference)
- Goldstein et al., *PNAS Nexus* 2024; Costello, Pennycook & Rand, *Science* 2024
- Altay & Gilardi, *PNAS Nexus* 2024 (AI labelling); Liang et al., *Patterns* 2023; Weber-Wulff et al., *IJEI* 2023 (detector unreliability)
- Chesney & Citron, "Deep Fakes", *California Law Review* 107 (2019)
