# What AI labs and platforms actually CAUGHT in AI-enabled influence operations, 2023–2026

**Compiled 25 September 2026** (cut-off: 25 September 2026). Defensive/analytic framing only.

## 0. Grading and reading rule

**Grades** (per claim, not per source): **A** primary/official (lab or platform first-party disclosure, regulator/court document) · **B** peer-reviewed or strong investigative · **C** reputable news · **D** vendor/think-tank · **E** anonymous/unverified.

**Reading rule.** A *takedown event* is a first-party fact → **A**. The *same publisher's* reach/impact characterisation is **self-interested** → A source but marked **claimed**, confidence capped at medium. Where the publisher prints the underlying metric (views, subscribers, post counts) the metric is A and the interpretation is separate. Claims are tagged **demonstrated / claimed / inferred**.

## 1. OpenAI — influence and cyber operations

Series index (A): `openai.com/index/disrupting-malicious-uses-of-ai/`. Aggregate: "**over 40 networks**" disrupted and reported since Feb 2024 (Oct 2025 report). IO/cyber-relevant entries:

- **Feb 2024** — Charcoal/Salmon Typhoon (CN), Crimson Sandstorm (IR), Emerald Sleet (DPRK), Forest Blizzard (RU); cyber, not IO.
- **May 2024** — five covert IOs: **Bad Grammar** (RU), **Doppelganger** (RU), **Spamouflage** (CN), **IUVM** (IR), **Zero Zeno** (IL). All **≤ Cat 2**.
- **Oct 2024** — election-related operations, all Cat 1–2. `cdn.openai.com/threat-intelligence-reports/influence-and-cyber-operations-an-update_October-2024.pdf`
- **Feb 2025** — **"Sponsored Discontent"**: China-linked Spanish-language articles placed in Latin American outlets; first observed successful CN placement in LatAm mainstream media → **Cat 4**.
- **Jun 2025** — "Sneer Review", "High Five", "Helgoland Bite" (RU, Portal Kombat node), "Uncle Spam" (CN) → low Cat 3 / Cat 2 / upper Cat 2 / Cat 2.
- **Oct 2025** — "Nine—emdash Line" (PRC: South China Sea, Marcos, Hong Kong dissidents) and "Newstop Africa" (commercial IO-for-hire). Both Cat 2 (see retraction).
- **Feb 2026** — **China "cyber special operations"** (law-enforcement-linked); "Trolling Stone" (RU/PK network vs Rolling Stone Argentina) low **Cat 4**; "No Bell" (Africa). `openai.com/index/disrupting-malicious-ai-uses`
- **Jun 2026** — **"Data Center Bandwagon"** and **"Tech and Tariffs"** (PRC-origin, targeting the US AI/data-centre debate and OpenAI's reputation) → **Cat 1**. `openai.com/index/prc-linked-influence-operations-ai-debates`
- **Aug 2026** — **International Burke Institute** (RU-origin, Israel-fronted "think tank" plus a "Burke Sovereignty Index"); 34 of 36 sampled articles copied or misattributed → **lower Cat 3**.

**Tasks asked of the model (demonstrated, A):** short comments, long-form articles, fake bylines/bios, translation, image editing, "work reports" on platform-detection evasion, and (Jun 2026) **code to automate logins and cross-platform interactions**, plus design concepts for an auto-scraping "public opinion" surveillance system.

**Reach (claimed, A source, medium confidence):** May 2024 — campaigns did not "meaningfully increase their audience engagement or reach as a result of our services." Aug 2026 — "typical social media posts only received low numbers of views." Jun 2026 — "no evidence of meaningful breakout beyond its own activity."

**Self-retraction (A):** "Newstop Africa" was rated **Cat 3 in Oct 2024** on apparent "information partnerships" with UK websites; after VIGINUM and open-source research showed those partnerships were likely fictional (technical flaws exploited to inject content without administrators' knowledge), OpenAI **downgraded it to Cat 2** in Oct 2025.

## 2. Meta — Adversarial Threat Reports

Parsing Meta's own newsroom sitemap (2,598 post URLs) shows the **quarterly ATR blog series on about.fb.com ends with Q1 2023** (3 May 2023). Later ATRs moved to the JS-gated Transparency Center, so per-quarter counts after that are only reachable here via secondary reporting.

- **Q1 2023 ATR** (3 May 2023, A): **six CIB networks removed** — US/Venezuela, Iran, China, Georgia, Burkina Faso, Togo — plus three South Asia cyber-espionage operations (Bahamut, Patchwork, Pakistan-linked). `about.fb.com/news/2023/05/metas-adversarial-threat-report-first-quarter-2023/`
- **H1 2025 ATR** (29 May 2025; A for numbers via C reportage, The Hacker News 30 May 2025): **Romania** — 658 Facebook accounts, 14 Pages, 2 Instagram accounts, one Page ≈18,300 followers. **Iran (Storm-2035)**, Azeri-speaking audiences — 17 FB accounts, 22 Pages, 21 IG accounts, posing as female journalists and pro-Palestine activists, commenting on their own content to inflate popularity. **China** (Myanmar/Taiwan/Japan) — 157 FB accounts, 19 Pages, 1 Group, 17 IG accounts, with **AI-generated profile photos** and an "**account farm**".
- **H2 2026 ATR** (disclosed 27 Aug 2026; A source, secondary access via CAM News 8 Sep 2026): Iran-linked network of **4 Facebook and 31 Instagram accounts, ~79,400 followers** of the IG properties; personas in Washington DC, San Diego, Atlanta; some AI-generated content; traffic routed through US/Canada proxies. A Meta spokesperson told Axios engagement was "**meaningful but limited**" and reach "**moderate**." This is the clearest **counter-example** to the low-reach consensus — but it is Meta's adjective, not a measured figure.
- **Influence-for-hire:** Meta reports commercial and "permanent" CIB actors, but its ATR corpus was not retrievable here. **Citizen Lab, "BlackCore's Influence Operations for Hire," 17 Sep 2026** is indexed (C for existence) but its URL did not resolve — **follow-up flag**.

## 3. Google Threat Analysis Group / YouTube — Spamouflage (DRAGONBRIDGE)

Google is the strongest source here because it publishes **distributions**, not adjectives (A for metrics).

- **2022 review** (26 Jan 2023): **>50,000 instances** disrupted across YouTube, Blogger, AdSense; **>100,000 accounts terminated lifetime**. Of **53,177 channels** disabled in 2022: **58% zero subscribers**, 42% of videos zero views, **83% under 100 views**. Blogger: ~**95%** of December-terminated blogs had ≤10 views; **>96%** no comments.
- **2023 review + Q1 2024** (26 Jun 2024): **>65,000 instances** in 2023, **>10,000** in Q1 2024, **>175,000 lifetime**. Of **>57,000 channels** disabled in 2023, **80% zero subscribers**; of **>900,000 videos** suspended, **>65% under 100 views** and **30% zero views**. `blog.google/threat-analysis-group/google-disrupted-dragonbridge-activity-q1-2024/`
- **On AI-generated content (A):** DRAGONBRIDGE used **synthetic audio and AI-generated news-host avatars** around Taiwan's January 2024 election, "some appearing realistic at first glance." TAG's judgement: their use of AI-generated video or images "**has not resulted in significantly higher engagement from real viewers**." Mandiant independently saw AI images (Mar 2023) and an AI "news presenter" (May 2023) with no significant engagement.
- **Correction — 2026 bulletins exist.** Google publishes a quarterly **"Influence Operations Bulletin"** at `blog.google/security/`, not under `/threat-analysis-group/`: **Q1 2026** (8 May 2026) and **Q2 2026** (31 Jul 2026). Q2 2026 includes **1,763 YouTube channels** terminated for PRC-linked CIB and **505** for Russia-linked CIB (tied to a Russian consulting firm); India-linked clusters account for 992 and 236 in the same quarter.

## 4. X / Twitter — what it does and does not disclose

**Verified negative (A, method: Wayback CDX).** The archived series `transparency.twitter.com/en/reports/platform-manipulation/*` **stops at the period `2021-jul-dec`**. There is no archived platform-manipulation (state-backed IO / CIB) disclosure for any period after **H2 2021**.

**Current state (A, observed 25 Sep 2026).** `transparency.x.com` lists only regulatory or unrelated filings: Transparency Reports, AMARS in the EU, EU TCO Regulation, UK Gender Pay Gap, **DSA Transparency Report**, DSA Audit Report, DSA Risk Assessment, UK Tax Strategy, Ireland Gender Pay Gap, Japan IDPA, Brazil Elections Compliance Plan, EMFA. There is **no voluntary global CIB/influence-operation enforcement report** — no equivalent of Meta's ATR or Google's bulletin.

**Enforcement instead of disclosure.** The EU issued its first-ever DSA penalty against X on **5 Dec 2025 — €120 million** — over a "deceptive" blue-check verification system and advertising-transparency failings (TechCrunch, Le Monde, AP, Reuters; C). X **appealed in Feb 2026** (C). Consequence for this brief: **X-side CIB numbers must come from third parties.**

**Irony worth noting (inferred).** The least transparent platform is repeatedly where others observe the most authentic engagement: Mandiant found DRAGONBRIDGE's limited authentic engagement "primarily observed on X"; OpenAI's Oct 2025 "Newstop Africa" X account had **172 followers** and a maximum of **four** retweets.

## 5. Anthropic — influence operations (September 2026, local primary file)

Nine cases across six continents (`sources/anthropic-ti-sep2026.txt`, grade A). Ratings and reach as Anthropic states them:

- **GTG-04001 — Russia (Politology / Africa Corps–SVR), Central African Republic → Cat 4.** Radio Lengo Songo 98.9 FM; HR contracts encoding political loyalty; forged Gendarmerie/Defence documents. Widest authentic reach of any case, because **state broadcast media (FM/satellite/shortwave/TV)** was the distribution mechanism.
- **GTG-54002 — LKM Company (France), influence-as-a-service across six continents → Cat 2.** ~**70 fake news sites**, 70 paired X accounts, **250+** commenting accounts, **≥8,913 articles in ~20 languages**. "Disrupted early, before it could build an authentic audience"; "little observable engagement."
- **GTG-84005 — BBS Bilisim (Istanbul), commercial platform targeting Malaysia → Cat 2.** ~**1,000 fake X accounts** with warm-up and evasion logic; voter targeting on real census and electoral data; fabricated intelligence dossiers. Dashboard self-reported "millions" of views — Anthropic: **"cannot independently verify"**; a request for **1,000,000 artificial views** was logged.
- **GTG-24015 — Russian state-media editorial desks.** Claude as sub-editor for **Sputnik Moldova, RIA Novosti, Sputnik en Español, Sputnik Africa and RT English**. Where output was matched to publication, results ranged from **~2,000 Telegram views to aired broadcast copy**.
- **GTG-34001 — Iran: ICCO, Islamic Propaganda Office (Khorasan Razavi), Bina Cultural Observatory → Cat 3.** Doctrine manuals, persona systems, target databases, ministerial portfolios, a 20-language plan, the manufactured-grassroots hashtag **#IranStands**, and false claims attributed to CSIS/Brookings/RAND. Distribution observed on Eitaa and IRGC-aligned channels.
- **GTG-54006 — Bangladesh (pro-Awami League), single actor → Cat 3.** **29 rotated accounts**, custom `fake_news_3.py`, 1,500 headlines / 300 narratives / 1,500 image prompts, YouTube uploads pre-scheduled months ahead through a third-party CI service. "**No evidence that the content reached a wider audience.**"
- **GTG-84006 — MEK/NCRI, shared AI agent "Viktor" → Cat 2.** Cloned a real activist's Telegram account (~8,400 posts read) and ran **live conversations as him**; 500+ channels scraped; ~51,944 messages analysed for psychographic dossiers. "Not able to independently confirm how much authentic engagement was drawn."
- **GTG-54004 — Kenya, domestic astroturfing → Cat 1.** Batches of exactly 50 tweets; the same template reused verbatim for retail brands. "**Failing to reach or influence any real people.**"
- **GTG-84002 — UAE-directed ("Deadshot") → Cat 3.** ~**300 inauthentic influencer accounts**, ghost-written UN Human Rights Council testimony, 18 MEPs profiled, counter-dossiers on UN Special Rapporteurs. "Cannot confirm whether any of the testimonies or dossiers reached their intended audiences."

## 6. CRITICAL EXTRACTION

### (a) Agentic / autonomous behaviour — what is actually documented

**Strongest explicit statement — Anthropic (A, demonstrated):** "**Complex tool use.** … Markdown files containing doctrine were reused almost verbatim across hundreds of sessions. Actors kept lists of banned words inside their AI agents, maintained shared files of approved sources and evasion rules, and ran custom software that called Claude in fixed batches… **Increasingly, operations are not run using individual prompts. Instead, a great deal is embedded within persistent memory files.**" Two cases go further: the **MEK shared agent platform** allowed the agent "to **keep producing content without a human user directing each session**," and the **Bangladesh** operation "ran **semi-autonomously with minimal human oversight**" with pre-scheduled publication. Malaysia used Claude Code to build **custom dashboards** for tracking fake-account networks.

**OpenAI is markedly more cautious (A, claimed):** Oct 2025 — actors "**bolt AI onto old playbooks** to move faster, not gain novel offensive capability," with "**no evidence of new tactics**." Jun 2026 documents automation *support* only (code for logins and cross-platform interaction). Aug 2026 — the Russia operation "**only used ChatGPT to produce isolated promotional posts**."

**Assessment (inferred, medium confidence):** no lab publicly reports a fully self-directed influence agent that plans, executes and adapts an entire campaign unaided. The observed frontier is (i) persistent-memory multi-session agents with cross-actor shared doctrine and (ii) semi-autonomous batch pipelines with pre-scheduled publication. Absence of published evidence is not evidence of absence.

### (b) Did AI-enabled operations achieve real reach?

Consensus is **no, with named exceptions**, and Google's data are strongest: **80% of disabled channels had zero subscribers; 65% of >900,000 suspended videos had under 100 views; 30% had zero views.** OpenAI's hardest number: a Chinese unit "made **over 50,000 posts across over 200 Western platforms**. Of those, **under 150 posts received over 300 shares or comments**" (Feb 2026, A). Anthropic: "**Most of the content we discovered drew little or no authentic engagement**," with widest reach where **state broadcast media** carried it.

**Exceptions with evidenced reach (all Cat 4 or equivalent):** OpenAI "Sponsored Discontent" (paid placement in Latin American outlets, Feb 2025); OpenAI "Trolling Stone" (regional Argentine outlets, Feb 2026); Anthropic's CAR FM-radio operation; and **Meta's H2 2026 Iran network — "moderate" reach, ~79,400 followers of 31 Instagram accounts** (Aug 2026).

### (c) Any measured effect?

**Effectively none.** No lab reports audience-attitude change, electoral effect or policy change; all use Breakout Scale placement, not measurement. The only effect claims are media placement (Cat 4), broadcast reach via state media (Anthropic CAR), and **self-reported** operator claims that dissidents reduced activity, lost followers or quit (OpenAI Feb 2026 — OpenAI says these "should not be taken lightly" but cannot verify them).

**Best analytic caution, OpenAI Feb 2026 (A):** "some AI-generated social media posts received tens of thousands of views, while other posts created in the same batch received almost none… **The use of AI-generated content on its own does not appear to have been the decisive factor; rather, other factors were likely the main drivers of engagement, notably the popularity of the accounts which did the posting.**"

### (d) Admissions that detection sits upstream of distribution

**Anthropic, verbatim (A):** "Because we sit at the **production stage** of operations, **upstream of platforms like social media platforms**, we may detect and disrupt an operation while it is still being put together." And: "**Our visibility into these operations ends once it's live.**"

**Meta (claimed):** "We detected and removed these campaigns **before they were able to build authentic audiences** on our apps."

**Consequence:** lab-reported reach is structurally biased **downward** (arrested at production); platform-reported reach is **self-interested**. Only three sources give externally checkable engagement metrics — Google (view/subscriber distributions), OpenAI (post/view counts) and Meta's raw account/follower counts. Weight those.

## 7. Solid vs thin, and corrections

**Solid (A, replicated across labs):** AI is used for persona fabrication, attribution laundering, localisation and volume; commercial "influence-as-a-service" is a standing category (OpenAI Oct 2024/Oct 2025; Anthropic GTG-54002, GTG-84005); measured organic reach is low in most cases; Google's 2022–2024 distributions are the best quantitative reach evidence available.

**Thin/unverified:** Meta per-quarter ATR counts 2023 Q2–2026 H1 (Transparency Center JS-gated, not retrievable here); Anthropic's March/August/November 2025 reports (URLs unresolved; only the Sept 2026 file was read — it notes its first report covered "one commercial influence-as-a-service network"); Citizen Lab's BlackCore note (URL unresolved); any claim that a *state* directly commissioned a given commercial operation.

**Corrections to earlier workspace claims:** (1) 2026 Google bulletins **do** exist, at `blog.google/security/influence-operations-bulletin-q1-2026/` and `…q2-2026/`. (2) Meta's ATR series **continues** (H2 2026, 27 Aug 2026) but off the newsroom blog. (3) X's voluntary platform-manipulation disclosure series ends at **H2 2021**.
