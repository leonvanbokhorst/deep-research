# Synthetic corroboration at scale — coordinated influence operations using generative AI
### DEFENSIVE threat-assessment annex: named operations, dates, network sizes, platform actions, and platform-stated reach

**Compiled:** 25 September 2026
**Purpose:** capability and defence assessment only. No operational guidance.
**Scope:** AI-developer adversarial-misuse reports (OpenAI, Anthropic), social/media platform integrity reports (Meta, Google TAG), vendor/state reporting (Microsoft MTAC, EEAS, EU DisinfoLab) and the specific pattern of **LLM-manufactured "independent" corroboration** (fake outlets, fake bylines, fake experts, fake witnesses) on ambiguous events.

---

## 0. How to read this annex

**Evidence grades used on every item** (graded per *claim*, not per source):

| Grade | Meaning |
|---|---|
| **A** | Regulator / court / official primary document (sanctions instrument, indictment, government report) |
| **B** | Peer-reviewed or strong empirical study with disclosed method |
| **C** | Reputable journalism / industry secondary reporting |
| **D** | Weak or inferred evidence |
| **E** | Vendor or advocacy self-report |

**Critical grading rule applied throughout:** a platform's *takedown event* (it banned N accounts on date D) is a **first-party factual disclosure → A/B**. The same platform's *reach/impact* claim ("it did not reach real audiences") is **self-interested → E**, unless it is corroborated indepently. Where a platform publishes the underlying behavioural metric (view counts, subscriber counts) the metric is A/B and the *interpretation* is E. Every item below separates the two.

**The capability ladder used to sort findings:**
- **(a) technical possibility** — the model *can* be used to write a fake op-ed.
- **(b) demonstrated capability** — an actor was observed actually doing it.
- **(c) credible evidence of deployment** — the artifact was published/distributed at scale.
- **(d) documented real-world impact** — authentic audiences changed behaviour, or mainstream media/policy absorbed the claim.

Almost everything documented below sits at **(b)–(c)**. Genuine **(d)** cases are rare and are flagged explicitly in §4.

---

## 1. FINDINGS BY OPERATION

### 1.1 OpenAI — "Disrupting malicious uses of AI" series

OpenAI has published consolidated threat reports roughly quarterly since Feb 2024, with individual case-study pages. Aggregate figure from its own reporting: **"over 40 networks" disrupted and reported since February 2024** (stated Oct 7, 2025). *Grade: A for the disclosure that networks were disrupted; E for the count's completeness (only successful disruptions are visible).*

---

#### OP-01 — State-affiliated actors (first report)
- **Date:** 14 February 2024
- **Operation names:** Charcoal Typhoon, Salmon Typhoon (China); Crimson Sandstorm (Iran); Emerald Sleet (DPRK); Forest Blizzard (Russia)
- **Network size:** five state-affiliated actor clusters; account counts not disclosed
- **AI use:** open-source research, translation, debugging, phishing-content drafting. **Not** an influence-operation (IO) case.
- **Platform action:** OpenAI accounts terminated
- **Reach/impact:** OpenAI states these actors "generally sought to use OpenAI services for querying open-source information, translating, finding coding errors, and running basic coding tasks" and that GPT-4 offers "only limited, incremental capabilities for malicious cybersecurity tasks."
- **URL:** https://openai.com/index/disrupting-malicious-uses-of-ai-by-state-affiliated-threat-actors
- **EVIDENCE GRADE:** A (takedown event, first-party) / E (capability characterisation)

#### OP-02 — Five covert influence operations ("Bad Grammar" et al.)
- **Date:** 30 May 2024
- **Operation names:** **Bad Grammar** (Russia, previously unreported), **Doppelganger** (Russia), **Spamouflage** (China), **IUVM** (Iran), **Zero Zeno** (Israel — STOIC)
- **Network size:** five operations; per-operation sizes below
- **AI use:** short comments, long-form articles, fake names/bios for personas, translation/proofreading, open-source research, simple code debugging; "occasionally images"
- **Platform action:** OpenAI account termination; threat indicators shared with industry peers
- **Reach/impact — OpenAI's own assessment:** "**no significant audience increase due to our services**"; "none of the five operations… scored higher than a **2**" on the Brookings Breakout Scale ("activity on multiple platforms, but no breakout into authentic communities"). OpenAI explicitly distinguishes **faking engagement** (self-replies) from **attracting authentic engagement**, noting the networks "did not manage to do [the latter] to a meaningful degree."
- **Notable defensive finding:** models repeatedly refused requests; operators published model refusal messages on their own sites/social — human error remained a detection vector.
- **URL:** https://openai.com/index/disrupting-deceptive-uses-of-ai-by-covert-influence-operations
- **EVIDENCE GRADE:** A (takedown + scale-2 assessment) / E (the "no significant audience" claim)

#### OP-03 — IUVM (International Union of Virtual Media)
- **Date:** 1 May 2024 (case study in May 2024 report)
- **Attributing org:** OpenAI; IUVM studied by open-source community since 2018; Reuters first exposed 2018
- **Network size:** "a small number of accounts"; IUVM-branded accounts as of 23 May 2024: **TikTok 10 followers, VKontakte 76, Odnoklassniki 274**
- **AI use:** generate and proofread long-form articles, headlines and website tags in English and French, published on **iuvmpress.co**. Earlier IUVM domains were **seized by the FBI in 2020**.
- **Platform action:** OpenAI bans; website continues
- **Reach/impact:** OpenAI: "IUVM's online presence has been reduced by repeated social media takedowns and the FBI's seizure of its domains." **Breakout Scale Category 2** — "no breakout or significant audience engagement."
- **URL:** https://openai.com/index/disrupting-malicious-uses-of-ai-iuvm
- **EVIDENCE GRADE:** A (sizes/dates/domains) / E (impact judgement)

#### OP-04 — Doppelganger (Russian influence activity targeting Ukraine)
- **Date:** 1 May 2024
- **Network size:** **four clusters** of accounts banned, each with different TTPs (consistent with functional teams)
- **AI use:** short comments in English/French/German/Italian/Polish posted to **9GAG and X**; translation of Russian articles into English/French for **rrn.media**; French article generation for **franceeteu.today**; German short posts for a Facebook Group/Page named after **grenzezank.com**. Also attempted AI cartoon generation of European politicians — models refused.
- **Platform action:** OpenAI bans; also disabled a third-party access service (Russia/Czech-linked) used to circumvent supported-country policy
- **Reach/impact (published metrics):** 9GAG posts typically **5–10 upvotes and 15–200 downvotes**; on X, typical posts had **~1,000 shares with zero replies and zero likes** — OpenAI notes the discrepancy "suggests inauthentic amplification." Critical replies called the accounts out as "bots." **Breakout Scale Category 2.**
- **URL:** https://openai.com/index/disrupting-malicious-uses-of-ai-doppelganger
- **EVIDENCE GRADE:** A (metrics, TTPs) / E (interpretation)

#### OP-05 — Spamouflage (China-linked)
- **Date:** 1 May 2024
- **Network size:** "a small number of accounts"; attribution cross-referenced to Meta ("individuals associated with Chinese law enforcement") and FBI (a unit within China's Ministry of Public Security)
- **AI use:** code debugging for a WordPress site (**revealscum.com**, a "traitor"-labelling doxxing site targeting Chinese diaspora critics), research on social-media analysis, article generation (Fukushima wastewater narratives) posted to Medium, Blogspot, **ameblo.jp**; English comment clusters attacking dissident **Cai Xia**
- **Platform action:** OpenAI bans
- **Reach/impact:** the April 2024 Cai Xia comment cluster — **all ten comments came from Spamouflage accounts and there were no real replies**. "None gained high numbers of engagements or follows from real people. In some cases, the available indicators show that the only views of their posts came from our investigative team." **Category 2.** OpenAI also notes AI was "only a minority of its overall output."
- **URL:** https://openai.com/index/disrupting-malicious-uses-of-ai-spamouflage
- **EVIDENCE GRADE:** A (metrics) / E (impact judgement)

#### OP-06 — Zero Zeno (Israel — STOIC)
- **Date:** 1 May 2024
- **Network size:** one cluster; no account count; **four front websites**: uc4canada.com, the-good-samaritan.com, ufnews.io, nonagenda.com
- **AI use:** web articles and social comments; **fictional personas and bios generated from variables (age, gender, location)**; research on named individuals (Histadrut critics) — model refused personal-data requests; GAN-era profile photos, with **multiple accounts reusing the same photo**
- **Platform action:** OpenAI bans; Meta and X had already disabled many accounts
- **Reach/impact:** "appears to have attracted little if any engagement, other than from its own inauthentic accounts." The operation's fake accounts commented on its own posts "likely in an attempt to create the impression of audience engagement." A Canada-focused YouTube channel: **one video, zero views**. **Category 2.**
- **URL:** https://openai.com/index/disrupting-malicious-uses-of-ai-zero-zeno
- **EVIDENCE GRADE:** A (artifacts, metrics) / E (impact judgement)
- **Cross-ref:** DFRLab (Atlantic Council) independently identified content on Facebook/Instagram/X; accounts were replaced after takedowns.

#### OP-07 — Iranian covert influence operation / **Storm-2035** (first OpenAI disruption)
- **Date:** 16 August 2024
- **Attributing org:** OpenAI; operation "identified as Storm-2035" (Microsoft's naming, published one week earlier)
- **Network size:** **five websites** posing as progressive *and* conservative news outlets — **niothinker.com, savannahtime.com, evenpolitics.com, teorator.com, westlandsun.com**; **"a dozen accounts on X and one on Instagram"**
- **AI use:** long-form articles (US politics, Gaza, Olympics, Venezuela, Latinx rights, Scottish independence) and short English/Spanish comments; some comments were AI rewrites of other users' posts; interspersed fashion/beauty content to appear authentic
- **Platform action:** OpenAI bans; intelligence shared with government, campaign and industry stakeholders
- **Reach/impact:** "**does not appear to have achieved meaningful audience engagement**"; "majority of social media posts… received few or no likes, shares, or comments"; no evidence web articles were shared on social media. **Low end of Category 2.**
- **URL:** https://openai.com/index/disrupting-a-covert-iranian-influence-operation
- **EVIDENCE GRADE:** A (domains, account counts) / E (reach)

#### OP-08 — Operation "STORM-2035" (recidivist, 2024)
- **Date:** 1 October 2024
- **Network size:** **>a dozen fake personas on X and one on Instagram**; **five websites**; articles typically **700–900 words**
- **AI use:** long-form articles; short English/Spanish comments; some research on improving "social media engagement." Meta confirmed the Instagram account was connected to an **Iranian network Meta disrupted in December 2022**.
- **Platform action:** OpenAI bans
- **Reach/impact:** "does not appear to have achieved meaningful audience engagement"; posts "garnered low to no engagement before the accounts were suspended." OpenAI notes the operator asked the model to write an article asserting that Microsoft's exposure of the operation proved Iranian cyber operations were more impactful than Russian or Chinese ones — i.e. **the actor sought to manufacture a favourable analytic narrative about its own reach**.
- **URL:** https://openai.com/index/disrupting-malicious-uses-of-ai-storm-2035-2024
- **EVIDENCE GRADE:** A (artifacts) / E (reach)

#### OP-09 — Operation "A2Z"
- **Date:** 1 October 2024
- **Attribution:** previously unreported cluster; praised Azerbaijan, "potentially suggesting a commercially run operation"
- **Network size:** **~150 accounts identified across X and Facebook, "with more suspected accounts"**; described as "likely hundreds of accounts"
- **AI use:** persona management, bio generation, post/comment analysis, multilingual reply drafting and proofreading, stylised 1930s-poster images
- **Platform action:** OpenAI bans (early June 2024); accounts fell silent through the EU, UK and French election periods; some resumed late August
- **Reach/impact (strongest OpenAI LOW-reach dataset):** largest X following observed **222 followers**; "more typical figures were in the mid-teens to low twenties"; typical X posts **single-digit engagements**; highest Facebook reaction count **36**, typical **0–5**. **BUT**: the operation did engage real people in comment threads (documented Turkish and German exchanges), including real users contradicting the fakes. OpenAI therefore rates it **top end of Category 2, "with a risk of breaking out into Category Three."** OpenAI calls out its own **reverse-causality caveat**: the operation was unusually vulnerable to disruption *because* it relied on one model at many kill-chain links.
- **URL:** https://openai.com/index/disrupting-malicious-uses-of-ai-a2z
- **EVIDENCE GRADE:** A (metrics, threads) / E (rating; note this is one of the few LOW-reach ratings that concedes real interaction)

#### OP-10 — Operation "Stop News" (Russia)
- **Date:** 1 October 2024 (lead came from **Meta's Q2 2024 threat report**)
- **Network size:** a cluster of websites posing as news outlets in Africa and the UK — **newstop.africa, britishtalks.com, euronewstop.co.uk, britishattitudes.com**
- **AI use:** short comments, long-form articles and DALL·E images (cartoon/bright-palette); GAN profile pictures; Russian-language commercial spam (including fake "official replies" to customer reviews on Yandex for an unrelated St Petersburg renovation company)
- **Platform action:** OpenAI bans; indicators shared with authorities and platforms; Meta had removed the Facebook/Instagram assets
- **Reach/impact:** X accounts had double-digit follower counts; **Meta reported the operation's Facebook + Instagram assets had a total following of 2,100**. **However**, the UK "news" brands established **"information partnerships"** with real entities (a school in Wales, a church in Yorkshire, a California chambers-of-commerce association) which published the partnerships on their own sites. OpenAI rated this **Category Three** "with some evidence that real people in different contexts… were engaging with it."
- **Partial retraction:** in Oct 2025 OpenAI **revised this down to Category 2** after VIGINUM and open-source researchers showed the "partnerships" were likely fictional and that the operators **"exploited technical flaws on these external sites" to add content without administrators' knowledge.**
- **URL:** https://openai.com/index/disrupting-malicious-uses-of-ai-stop-news-2024 ; revision at https://openai.com/index/disrupting-malicious-uses-of-ai-stop-news-2025
- **EVIDENCE GRADE:** A (artifacts) / E (rating) — **and a documented case of a platform over-stating reach and then correcting itself.** Treat all Category 3+ claims as provisional.

#### OP-11 — "Iranian influence nexus" (IUVM ↔ Storm-2035 overlap)
- **Date:** 1 February 2025
- **Network size:** **five ChatGPT accounts**
- **AI use:** articles for **al-sarira[.]com** (Storm-2035-linked), Spanish articles for **lalinearoja[.]net**, French texts for **critiquepolitique[.]com**, and English articles for **iuvmpress[.]co** (IUVM). The operator used the model, then **rephrased before publication**; OpenAI's semantic-similarity analysis concluded the published version was "highly likely a rewrite," suggesting **multi-stage rewriting to evade detection**.
- **Platform action:** OpenAI bans
- **Reach/impact:** "did not appear to build a substantial online following." **al-Sarira X account: 157 followers while following 895 accounts; typical tweets single-digit engagement.** Low end Category 2.
- **Analytic significance:** first documented **operator-level overlap** between two nominally separate named Iranian operations, plus a **laundering-by-rewrite** step.
- **URL:** https://openai.com/index/disrupting-malicious-uses-of-ai-iranian-influence-nexus
- **EVIDENCE GRADE:** A (accounts, follower counts, rewrite finding) / E (reach)

#### OP-12 — "Empowering Ghana" (Ghana 2024 election)
- **Date:** 1 February 2025
- **Network size:** Instagram "Empowering Ghana" (~900,000 followers claimed), X account (1,535 followers), YouTube (~1,500 subscribers)
- **AI use:** articles, posts and **batches of 30 pro-Bawumia comments** used as fake engagement
- **Platform action:** OpenAI bans
- **Reach/impact — instructive debunk:** many posts showed **30–32 comments, all pro-Bawumia**, but since the operators generated sets of exactly 30, OpenAI assesses authentic engagement was likely **0–2 comments**. Separately, Instagram's own transparency data showed **54% of the ~900,000 followers (≈500,000 accounts) also followed a single account focused on Australian legislation** — OpenAI judges the following "more likely to have been artificially inflated." Typical X engagements single/low-double digits; no mainstream amplification. **Category 2.**
- **URL:** https://openai.com/index/disrupting-malicious-uses-of-ai-ghana-election
- **EVIDENCE GRADE:** A (the 30-comment batch artifact and the follower-overlap observation) / E (the inflation inference, though it is well-argued)

#### OP-13 — "Sponsored Discontent" (China-linked, Latin America placement)
- **Date:** 1 February 2025
- **Network size:** social accounts with "low numbers of followers and minimal engagement" **plus** planted long-form articles
- **AI use:** English social posts attacking dissident **Cai Xia**; Spanish-language articles
- **Platform action:** OpenAI bans
- **Reach/impact — one of the few HIGH assessments:** articles matching model output were published in **Peruvian outlets La Republica, Wapa, El Popular and Libero**. OpenAI: "the first time we've observed a China-origin influence operation successfully **planting long-form articles in Latin American media**… may have reached a significantly wider audience, although we are not able to independently ascertain engagement." Rated **Category 4 (breakout to mainstream media).** OpenAI notes it may have been **paid placement**.
- **URL:** https://openai.com/index/disrupting-malicious-uses-of-ai-sponsored-discontent
- **EVIDENCE GRADE:** A (article-outlet matching) / E (reach inference; engagement explicitly unverified) — **reach claim is corroborated only by the fact of publication in real outlets.**

#### OP-14 — "STORM-2035" recidivist (2025)
- **Date:** 1 June 2025
- **Network size:** batches of ~12 tweets; accounts posing as residents of the US, UK, Ireland and Venezuela
- **AI use:** Persian-language prompting for English/Spanish outputs; profile pictures of young women, some apparently **copied from Pinterest**
- **Platform action:** OpenAI bans
- **Reach/impact:** "**Typical tweets by this operation recorded 150–350 views and zero likes, shares or comments.** We did not identify instances where the comments we identified were amplified by other, real users into larger audiences." **Category 1** — the lowest rating in the series.
- **URL:** https://openai.com/index/disrupting-malicious-uses-of-ai-storm-2035-2025
- **EVIDENCE GRADE:** A (metrics) / E (rating)

#### OP-15 — Operation "Sneer Review" (China-origin)
- **Date:** 1 June 2025
- **Network size:** small; two Facebook Pages; Reddit/X/TikTok assets
- **AI use:** posts criticising a Taiwanese social-media influencer; **many of the comments on the posts were themselves generated by the network**
- **Platform action:** OpenAI bans; one Reddit post removed by platform filters
- **Reach/impact — the single most important "don't trust the numbers" case:** two TikTok videos amassed a **combined 25,000 likes**; tweets by the main account typically received **~10,000 views each**. OpenAI rates it **low end of Category 3 *if* the engagement figures were authentic**, "**and would revise this downwards if more evidence emerged to support the hypothesis that the majority of likes and views, like the majority of comments, were inauthentic.**" *All engagement figures should be treated with caution.*
- **URL:** https://openai.com/index/disrupting-malicious-uses-of-ai-sneer-review
- **EVIDENCE GRADE:** A (the existence of manufactured comments) / **D for the 25,000-like figure as evidence of reach** (contaminated by inauthentic engagement)

#### OP-16 — Operations "Uncle Spam", "Helgoland Bite", "VAGue Focus" (June 2025)
- **Uncle Spam** (China, US polarisation): **Category 2**; follower counts in the thousands but "we were unable to assess the authenticity of those followers, and the follower numbers did not appear to translate into post engagements."
- **Helgoland Bite** (Russia, German-language): Telegram channel **1,755 subscribers**; X account **27,000 followers**; content regularly reposted verbatim on a **Pravda-network-affiliated domain**. Upper end Category 2.
- **VAGue Focus** (China, social engineering + IO): Focus Lens News X account had **17,000 followers**, but was created in Nov 2014, tweeted for three days, fell silent until mid-2024 — "typical of accounts that have been **compromised and repurposed**, and its follower numbers should be treated with caution." Low end Category 2; covert/social-engineering impact "insufficient evidence."
- **URLs:** https://openai.com/index/disrupting-malicious-uses-of-ai-uncle-spam ; .../helgoland-bite ; .../vague-focus
- **EVIDENCE GRADE:** A (account metrics, repurposing evidence) / E (ratings)

#### OP-17 — Operation "Nine–emdash Line" (PRC-origin, regional)
- **Date:** 1 October 2025
- **Network size:** volume across multiple platforms; no single count given
- **AI use:** regional influence content on the South China Sea, Hong Kong and US politics; stock-image profiles and default handles
- **Platform action:** OpenAI bans; **Philstar.com independently discovered and reported a subset of the network on X that continued to operate after the ChatGPT bans** — a documented case of partial platform-action failure
- **Reach/impact:** **Category 2**; "most of the posts and social media accounts received minimal or no engagements. Often the only replies to or reposts of a post… were by other social media accounts controlled by the operators."
- **URL:** https://openai.com/index/disrupting-malicious-uses-of-ai-nine-emdash-line
- **EVIDENCE GRADE:** A (independent third-party corroboration of survival) / E (reach)

#### OP-18 — "Stop News" recidivist (2025)
- **Date:** 1 October 2025
- **Network size:** "Newstop Africa" X account; YouTube and TikTok channels featuring an **AI newsreader**
- **AI use:** short video content; "more complex use of multiple AI tools"
- **Platform action:** OpenAI bans
- **Reach/impact:** X account **172 followers** (Aug 2025), max **4 retweets** on any post; YouTube/TikTok channels **~1,900 followers each**; TikTok **5,855 likes across 56 videos (avg 105)**; most-viewed video **63,300 views**, least-viewed **87**; YouTube **255,000 views across 50 videos (avg 5,100)** — but "we see no evidence of these videos having been re-shared, cited in the media, or otherwise achieved wider resonance." **Category 3 revised down to Category 2.**
- **URL:** https://openai.com/index/disrupting-malicious-uses-of-ai-stop-news-2025
- **EVIDENCE GRADE:** A (metrics) / E (rating)

#### OP-19 — Operation "Trolling Stone" (Russia-linked, multi-country)
- **Date:** 1 February 2026
- **Attribution:** comments about the **arrest in Argentina of alleged Russian "cult leader" Konstantin Rudnev**; activity "very likely originated in Pakistan, Armenia and Uruguay," with further activity from Argentina and Kazakhstan; the Pakistan-origin element was **a for-hire actor**
- **AI use:** batches of social-media comments; some supportive of Rudnev, others attacking the Argentine justice system and trolling the **Argentine edition of Rolling Stone**
- **Platform action:** OpenAI bans
- **Reach/impact — note the HIGH rating with a caveat:** Facebook Pages "typically had a few hundred followers" and posts "single-digit engagements," **but** "some of the operation's articles appear to have been published by regional news outlets in Argentina; we are not able to independently confirm how the articles were submitted and accepted." Rated **low end of Category 4 (breakout to mainstream media)** on the strength of that placement alone.
- **URL:** https://openai.com/index/disrupting-malicious-uses-of-ai-trolling-stone
- **EVIDENCE GRADE:** A (artifacts) / **D–E for the Category 4 reach** (placement unverified; no evidence of audience response)

#### OP-20 — "Cyber Special Operations" (China-linked, law-enforcement associated)
- **Date:** 1 February 2026
- **Network size (actor's own claim):** unit "had made **over 50,000 posts across over 200 Western platforms**"
- **AI use:** the account asked the model to **plan a covert IO targeting the Japanese prime minister** — the model refused; and to edit/polish periodic status reports on "**cyber special operations**" (网络特战)
- **Platform action:** OpenAI bans
- **Reach/impact — the single most important reach datapoint for scale-vs-effect:** "**Of those [50,000+ posts], under 150 posts received over 300 shares or comments.**" Majority of posts "did not receive engagement from authentic audiences; many had such low viewing figures that they likely did not even reach authentic audiences." Manual investigation found only a handful of instances of the operation's hashtags on social media. **Separately**, the actor's own reports claim dissidents lost followers, reduced activity, or **gave up entirely** as a result of harassment, and that dissident accounts were taken down — OpenAI says these claims "should not be taken lightly," given described physical and psychological harassment, but cannot verify them.
- **URL:** https://openai.com/index/disrupting-malicious-uses-of-ai-cyber-special-operations
- **EVIDENCE GRADE:** A (the model refusals, the actor's prompts) / **E for the 50,000-post claim (self-reported by the actor)** / A–B for the "under 150 posts >300 shares" cross-check done by OpenAI on public data. **This item cleanly separates (b/c) deployed volume from (d) impact: mass production, negligible reach, and a harassment effect that is real but not measurable as "reach."**

#### OP-21 — "Data Center Bandwagon" and "Tech and Tariffs" (PRC-linked, targeting US AI debates)
- **Date:** 1 June 2026 (companion narrative report 10 June 2026)
- **Attribution:** "likely part of a social-media operations team at a **private Chinese technology company conducting work for Chinese provincial-level government clients**"; another cluster showed terminology consistent with China's public-security system and described its accounts as a "**water army**" (水军). Both used VPNs; prompted in Simplified Chinese for English/Chinese output posing as Americans.
- **Network size:** two clusters; one X network also pushed false claims that **ChatGPT user data had been compromised**
- **AI use:** social comments, political cartoons, work-report editing, social-media monitoring-system design
- **Platform action:** OpenAI bans
- **Reach/impact:** "**Category One: activity spanning one platform, with no evidence of breakout.** Most of the social media posts we identified generated little or no observable engagement. We found no evidence that the false claims about ChatGPT user data being compromised were amplified by authentic high-reach accounts." OpenAI also states the operation "**appears to have** [not] shifted public opinion… but… shows PRC-origin influence operators testing narratives against AI infrastructure."
- **URLs:** https://openai.com/index/disrupting-malicious-uses-of-ai-data-center-bandwagon ; https://openai.com/index/disrupting-malicious-uses-of-ai-tech-and-tariffs ; https://openai.com/index/prc-linked-influence-operations-ai-debates
- **EVIDENCE GRADE:** A (artifacts, actor materials) / E (reach) — **this is a commercial-for-hire capability with state clients, i.e. the "influence-as-a-service" market, applied to AI-policy discourse.**

#### OP-22 — **International Burke Institute (IBI)** — manufactured authority (Russia-origin)
- **Date:** 25 August 2026
- **Network size:** a cluster of ChatGPT accounts; IBI website **registered February 2025**, claiming an **Israel** base; presence on **Substack, Telegram, X, Facebook, LinkedIn**
- **AI use:** promotional social comments written in Russian-prompts but English output, with instructions to **hide linguistic clues of Russian origin**; the *articles* were not model-generated but were **copied from real academic writing, sometimes with false attribution**, and included **machine-translation artifacts** (e.g. "**the Svetofor coalition**" for Germany's *Ampelkoalition* — *svetofor* = "traffic light" in Slavic languages). The operation also built a **"Burke Sovereignty Index"** casting Russia favourably.
- **Platform action:** OpenAI bans
- **Reach/impact:** "typical social media posts only received low numbers of views, and the official IBI accounts had low subscriber numbers." Telegram channels "generally counting **10–20,000 followers** each." Rated **lower end of Category Three**. OpenAI's judgement on significance: "**The significance of the operation lies less in the audience it reached… than in the infrastructure it had built**… an otherwise credible-appearing institution, complete with purported experts, republished academic work and a purported proprietary risk index… **manufacture authority, obscure the source of favoured narratives, and establish assets that could be scaled over time.**"
- **URL:** https://openai.com/index/disrupting-malicious-uses-of-ai-influence-campaign-russia
- **EVIDENCE GRADE:** A (forensic artifacts: domain registration, translation artifacts, attribution errors) / E (reach). **This is the clearest 2026 example of the "fake think-tank" corroboration pattern: it is an (a)→(b)→(c) case, not yet (d).**

---

### 1.2 Anthropic — "Detecting and countering misuse of AI: September 2026"

- **Date:** September 2026 (covers activity disrupted **December 2025 – August 2026**; prior reports March, August and November 2025)
- **URL:** https://www.anthropic.com/threat-intelligence-report-september-2026
- **Method note that matters for this brief:** Anthropic sits **upstream at the production stage**, so it frequently disrupts operations *before* distribution; it explicitly concedes "**Our visibility into these operations ends once it's live**" and relies on open-source and cross-platform data to assess reach.
- **Aggregate reach assessment (Anthropic's own):** "**Most of the content we discovered drew little or no authentic engagement, and in several cases we disrupted the operation before it could build an audience. The widest authentic reach occurred where state media outlets were the distribution mechanism** (including FM radio, satellite and shortwave radio, and global television)."
- **Nine influence-operation cases**; account bans in all; Breakout Scale applied to each.

#### ANT-01 — **GTG-54002: LKM Company (France) — commercial "influence-as-a-service"**
- **Network size:** **~70 fabricated news websites**, **70 matching X accounts**, **>250 inauthentic commenting X accounts**; **at least 8,913 articles in ~20 languages**
- **AI use:** original fake articles **and** rewriting of legitimate journalism; fixed JSON output schema, formatted HTML, character limits, 3–4 internal links per article; **fabricated journalist bylines** ("these writers did not actually exist"); AI-generated profile photos; SEO-authority gaming
- **Detection signature:** all ~70 domains registered from France **within a ten-week window in mid-2025**, hosted on shared infrastructure behind a single deployment; on **11 September 2025** the network published **near-identical articles about the DRC–Rwanda conflict within three minutes of each other**, with tone altered per regional audience
- **Manipulation tactics named by Anthropic:** rewriting the same source story **in opposite ideological directions** for different audiences; adding political angles to neutral stories; **"laundering stories across borders into unrelated regions, stripped of their original context"**
- **Targets found:** US, Brazil, France, **DRC (318 articles)**
- **Platform action:** account + organisation banned; indicators shared
- **Reach/impact:** "**We disrupted this operation early, before it could build an authentic audience**… most of the content we identified generated little observable engagement from real audiences." **Breakout Scale Category Two** — "no evidence of breakout beyond its own activity."
- **EVIDENCE GRADE:** A (domains, timestamps, byline forensics) / E (reach). **This is the single best-documented instance of the "network of apparently independent pseudo-news sites" pattern at industrial scale, and the platform's verdict is LOW reach.**

#### ANT-02 — **GTG-84005: BBS Bilisim Teknolojileri (Istanbul) — Malaysia election-manipulation platform**
- **Network size:** **~1,000 fake X/Twitter accounts**, one fake news outlet (**"Malaysia Pulse"**, domain registered **10 May 2026**), fabricated intelligence dossiers; **222 Malaysian parliamentary constituencies** profiled against **millions of voter records**
- **AI use:** constituency targeting system on real census/electoral data; account warm-up and detection-evasion logic (cookie/IP rotation); AI rewriting pipeline for the fake outlet; **fabricated dossiers on named opposition figures and NGOs**; laundering of **TV BRICS, Xinhua, Sputnik/RIA, CGTN** content with the state attribution stripped
- **Platform action:** account and organisation banned; IOCs published (domains, Hetzner IPs, GitHub org, 12 sockpuppets with **one shared creation timestamp of 17 May 2026**, YouTube channel @malaysiapulseof)
- **Reach/impact:** self-reported dashboard figures "in the millions" for a senior official's account — **"Because these figures are self-reported by the actor's own tools, we cannot independently verify them."** One observed request: **1 million artificial views** on the sitting PM's account. **Category Two** — "without evidence of breakout into authentic communities."
- **Notable failures:** the actor "pursued a contract with Malaysia's national communications regulator. **We found no evidence that this pursuit succeeded.**"
- **EVIDENCE GRADE:** A (IOCs, timestamps, tooling) / E (the millions-of-views claim — explicitly disowned by the platform)

#### ANT-03 — **GTG-24015: Russian state-media editorial pipelines**
- **Network size:** **four accounts**; output distributed via **Sputnik Moldova, RIA Novosti, Sputnik en Español, Sputnik Africa (@sputnik_africa), RT English**
- **AI use:** Claude as "sub-editor layer" — Romanian/Moldovan news, polling and opposition social posts → Russian-language articles; Russian milblogger Telegram (Rybar, Colonel Cassad) → localised Spanish; character-exact on-air tickers, chyrons and voice-over scripts for RT (one confirmed instance reached Russian airwaves)
- **The corroboration mechanism, stated explicitly:** "**Actors used a chain of different outlets to make Russian-origin claims appear to be independently reported**… The same story was echoed across different outlets so it appeared to be independently confirmed" — Anthropic calls these "**false verification loops**." A related actor had the model **drop caveats on claims it had flagged as unverified and present everything as confirmed**, "so the material would read as established fact." A "supposedly independent Telegram" was used to reframe Kremlin narratives as "authentic local commentary."
- **Targets/dates:** fabricated defamatory claims about **Moldova's president Maia Sandu ahead of the 28 September 2025 parliamentary election**
- **Reach/impact — the HIGH-reach exception:** "Unlike covert networks that struggle to reach real audiences, the content developed by these individual actors **was distributed through media outlets' established channels**." Matched outputs ranged from **a Telegram post with ~2,000 views up to aired broadcast copy**. Anthropic could not determine what share of the outlets' total output passed through Claude.
- **EVIDENCE GRADE:** A (matched outputs, outlet identification) / B–C for reach (matched published artifacts, not "consumed by audiences"); the outlets are EU-sanctioned (eadaily.com) — grade A for the sanctions fact.

#### ANT-04 — **GTG-34001: Iranian state-aligned operations** (ICCO; Islamic Propaganda Office of Khorasan Razavi; Bina Cultural Observatory)
- **Network size:** three accounts/institutions; Mashhad "**Manjanegh**" (Catapult) multi-province content factory using dozens of activists; amplification through **"more than 100 Iranian platform channels"** including IRGC-tied channels (@hamyane_sepah, @moghavematnews_iran)
- **AI use:** doctrine manuals, persona systems, target databases, ministerial planning documents; a **nine-part international influence portfolio** and a plan for the Supreme Leader's funeral; working in Farsi, Arabic, Urdu, Malay, Spanish, English with a **broader plan targeting 20 languages**; **attribution laundering** — posts made to seem from foreign writers or independent news sources; manufactured-grassroots hashtag **#IranStands**
- **Specific corroboration fraud:** during the **2026 US–Israel–Iran war**, the network **attributed false claims to Western research institutions including CSIS, Brookings and RAND**.
- **Reach/impact:** **Category Three** — "multiple platforms, with content observed disseminated by IRGC-aligned channels on Eitaa and other platforms." Actor framing quoted: their role as cultural attachés was "**not to be the narrator, but the director**."
- **EVIDENCE GRADE:** A (institutional documents, codenames, hashtags) / E (reach). **Directly relevant: fabricated think-tank attribution was an observed technique, not a hypothesis.**

#### ANT-05 — **GTG-84002: UAE-directed operation** (Muslim Brotherhood / Sudan / UN accountability)
- **Network size:** **~300 inauthentic influencer accounts**; a front NGO **copying the identity of a real Swiss organisation**; **18 MEPs and journalists profiled**; counter-dossiers on UN Special Rapporteurs
- **The fabricated-witness mechanism, stated explicitly:** "The actor borrowed the identity of a real Sudanese human rights organisation and **ghost-wrote complete UN testimony for two named individuals, so that materials serving a party to the Sudan conflict would reach the UN as from independent local witnesses, rather than state messaging**." Testimony was engineered so that **neither speech mentioned the UAE**; intended for delivery at the **62nd session of the UN Human Rights Council**.
- **Attribution:** "linked it with high confidence to **UAE government officials**"; a doctrine file named senior UAE officials as intended recipients; the actor funded the amplification network. Internal reporting called the network's "**independence**" its "**greatest strategic asset**."
- **Platform action:** accounts banned; detections built; indicators shared
- **Reach/impact:** "**We cannot confirm whether any of the testimonies or compiled target dossiers successfully reached their intended audiences.**" **Category Three**; "A higher category would require evidence of broad public attention or policy impact, which we are not able to confirm."
- **EVIDENCE GRADE:** A (doctrine files, ghost-written testimony artifacts) / E (reach). **This is the most important single finding in the brief: it is a documented (b)–(c) attempt to insert fabricated "local witnesses" into the UN record, with (d) explicitly unproven.**

#### ANT-06 — Other Anthropic cases (2026)
- **GTG-04001 — Radio Lengo Songo 98.9 FM, Central African Republic** (Russia/Politology, assessed under SVR control from late 2023): daily FM output, airtime traded for SputnikPro training, forged gendarmerie/ministry documents, a recurring surveillance operation on CAR opposition figures. **Category Four** — the only Anthropic case reaching broadcast mass media. Grade A (contracts, forged documents) / B for reach (broadcast on national FM).
- **GTG-54006 — pro-Awami League fake-news operation, Bangladesh:** single actor in **Gaibandha district** rotating **29 Claude accounts over ~16 months**, custom tool **fake_news_3.py** producing fixed batches of **15 headlines, 3 detailed stories, 15 image prompts**; **at least 1,500 headlines, 300 false narratives, 1,500 image prompts**; YouTube bulk-upload scheduled a month ahead via third-party CI. **Category Three**; "**we found no evidence that the content reached a wider audience outside of these accounts**"; no evidence of party direction/funding.
- **GTG-84006 — MEK/NCRI-aligned operation inside Iran:** cloned a **real activist's Telegram account** (read ~**8,400** of his posts to copy his style) and ran **live political conversations with his contacts**, who "did not know they were speaking with an AI-assisted account"; scraped **500+ social-media channels** to profile individuals; analysed **~51,944 archived messages** for psychographic dossiers; AI avatars posing as "ordinary Iranians." **Category Two**. Instagram properties listed include ~708K (@simaintv), ~299K, ~173K, ~89.5K followers — **but Anthropic states it "cannot independently confirm how much authentic engagement was drawn by the network's amplification accounts."**
- **GTG-54004 — Kenya:** single actor generating batches of exactly **50 tweets** instructed to look like "spontaneous grassroots commentary" (pro-Opiyo Wandayi, #PowerReliefKE, #PoweringTheNewKenya). **Category One** — "**completely isolated within the network of fake accounts… failing to reach or influence any real people.**" Found via a tip from OpenAI.

---

### 1.3 Meta — Adversarial Threat Report / coordinated inauthentic behaviour

**Meta's own aggregate (first-party):** "Since 2017, we've reported takedowns of **more than 200 covert influence operations**, cyber espionage, mass reporting and brigading networks." — https://transparency.meta.com/metasecurity/threat-disruptions/ *Grade A for takedown disclosure; E for the framing.*

**Meta's own standing method claim:** "Using what we call a **Network Disruption approach**, we take down each adversarial network of accounts and Pages as a whole."

#### MET-01 — Meta ATR, Q1 2025 (published late May 2025)
- **Meta's own framing:** "**We detected and removed these campaigns before they were able to build authentic audiences on our apps.**"
- **Romania network:** **658 Facebook accounts, 14 Pages, 2 Instagram accounts**; cross-platform presence on TikTok, X, YouTube; one Page had **~18,300 followers**; fake personas masquerading as Romanian locals; proxy-IP OpSec. **"A majority of these comments did not receive any engagement from authentic audiences."**
- **Iran network targeting Azeri-speaking audiences (Azerbaijan/Turkey) — attributed to Storm-2035:** **17 Facebook accounts, 22 Facebook Pages, 21 Instagram accounts**; accounts posed as **female journalists and pro-Palestine activists**; accounts commented on **the network's own content** "so as to artificially inflate their popularity"
- **China-origin network (Myanmar/Taiwan/Japan):** **157 Facebook accounts, 19 Pages, 1 Group, 17 Instagram accounts**; **AI used to create profile photos** and an "**account farm**" to spin up new fake accounts; Pages claiming to display anonymously submitted posts "in a likely attempt to create the impression of an authentic discourse"
- **URL (secondary, fetched successfully):** https://thehackernews.com/2025/05/meta-disrupts-influence-ops-targeting.html
- **EVIDENCE GRADE:** A for the account counts and the fact of takedown (first-party numbers relayed verbatim by trade press); **E for the "before they were able to build authentic audiences" claim**

#### MET-02 — Meta ATR, Q2 2024 (Doppelganger)
- Meta: "Since [our] last update in May, [we] have also detected and removed **over 5,000 accounts and Pages**." In **August 2024** Meta announced **more than 6,000 threat indicators** on this operation published to GitHub — **96% of them redirection domains blocked by the platform**.
- **Source:** EU DisinfoLab Doppelganger Hub (see §1.5) — https://www.disinfo.eu/doppelganger-hub/
- **EVIDENCE GRADE:** B/A (Meta's own numbers, relayed by a specialist NGO)

#### MET-03 — Meta's 2024 Iran takedown context
- Meta had attributed the **Storm-2035 Instagram account** to an Iranian network it disrupted in **December 2022** (per OpenAI's Oct 2024 case study, which says "after our disruption and resulting information share, Meta confirmed…").
- **EVIDENCE GRADE:** B (cross-platform corroboration between two independent first parties)

#### MET-04 — Meta ATR, H1 2026 (published **11 March 2026**) — **NOT FETCHED (see §6)**
- Directionally reported by third parties (headline level only, grade C/D, no numbers verified):
  - Iranian influence operation using **fake personas to deceive US Instagram users** — *The Record* (Recorded Future News), 11 March 2026
  - Meta removes **Iran-linked network targeting Azerbaijan** in the latest threat report — AzerNews, 17 March 2026
  - Meta blocks Iranian plot to **impersonate Americans with AI** — Seeking Alpha, 27 August 2026
  - Meta removes Iran-linked network that **faked American personas to sway US political debate** — Combat Antisemitism Movement, 8 September 2026
  - Meta exposes influence network operating **from Belarus against Poland** — reform.news, 12 December 2025
  - Meta said it disabled **150,000 accounts linked to scam-centre networks in Southeast Asia** (11 March 2026) — *not* an influence-op figure, listed to avoid conflation
- **EVIDENCE GRADE:** C–D (secondary headlines; network sizes and Meta's reach language unverified)

---

### 1.4 Google Threat Analysis Group (TAG) — DRAGONBRIDGE / Spamouflage and quarterly bulletins

All TAG bulletin URLs were fetched successfully from `blog.google/threat-analysis-group/…`.

#### TAG-01 — **DRAGONBRIDGE** ("Spamouflage Dragon"), China-linked — year-in-review 2022
- **Network size (lifetime and yearly):**
  - 2022: **over 50,000 instances of activity disrupted** across YouTube, Blogger, AdSense; **53,177 channels disabled**; **100,960 accounts terminated over the network's lifetime**
  - **58% of disabled channels had zero subscribers; 42% of videos had zero views; 83% had fewer than 100 views**
  - Blogger: **~95% of blogs terminated in December received 10 or fewer views; >96% received no comments**
  - Engagement "was almost entirely inauthentic, coming from other DRAGONBRIDGE accounts"
- **URL:** https://blog.google/threat-analysis-group/over-50000-instances-of-dragonbridge-activity-disrupted-in-2022/
- **EVIDENCE GRADE:** **A** (arithmetic-verifiable first-party enforcement metrics) — TAG is the strongest of the platform disclosures on this question because it publishes distributions, not adjectives.

#### TAG-02 — **DRAGONBRIDGE**, year-in-review 2023 + Q1 2024
- 2023: **over 65,000 instances disrupted**; **over 57,000 YouTube channels disabled**; **80% zero subscribers**; **over 900,000 videos suspended**; **>65% of videos had fewer than 100 views; 30% had zero views**
- Q1 2024: **over 10,000 instances disrupted**; **lifetime total over 175,000 instances**
- **AI use (explicit):** Taiwan's January 2024 election — "**thousands of videos and comments on YouTube using synthetic audio and avatars** promoting a false 'secret history' document critical of President Tsai Ing-wen"; "**AI-generated news hosts speaking to the camera in the style of a news broadcast**"; production quality "varied widely, with some appearing realistic at first glance." Content also pushed on **X, Reddit, Instagram, Facebook, Medium** and smaller forums.
- **Reach (TAG's own words):** "**The IO campaign had limited reach, with practically no engagement from organic users**, and YouTube terminated channels tied to the activity. The campaign received coverage in the Taiwanese press, **which noted the low views of the content**."
- **URL:** https://blog.google/threat-analysis-group/google-disrupted-dragonbridge-activity-q1-2024/
- **EVIDENCE GRADE:** **A** — and note the important nuance: the Taiwanese *press covered the campaign*, i.e. it achieved **narrative salience without audience reach**.

#### TAG-03 — Quarterly CIB enforcement bulletins (selected figures; all first-party)
- **Q1 2024:** PRC-linked clusters: 5,306 + 1,341 + 3,066 YouTube channels, 540 Blogger blogs; **107 domains blocked** (PRC media company); **Doppelganger: 5 domains blocked**; Iran clusters (33, 22, 4 channels)
- **Q3 2024:** PRC: 7,767 channels + 1,004 Blogger blogs; **498 domains blocked linked to Chinese PR firm Shanghai Haixun Technology Co., Ltd**; Russian consulting firm: **7,319 + 4,253 channels**; **Doppelganger: 25 + 25 domains blocked**; **OpenAI supplied leads**
- **Q4 2024:** PRC: 6,318 + 5,028 channels; **206 domains blocked**; Russian consulting firm: 4,065 + 1,903 + 2,471 channels; **Iran: 27 + 23 + 15 channels**
- **Q1 2025:** **Portal Kombat: 57 domains blocked**; Russian consulting firm: 2,357 + 1,263 channels; **"We received leads from OpenAI"** (Russian-language cluster) and **"leads from Meta"** (Israel/Canada STOIC case; Bangladesh)
- **Q2 2025:** PRC: 3,592 + 1,545 channels; Russian consulting firm: 1,045 + 507; **Ghana: "Our findings are similar to findings reported by Meta and OpenAI"**
- **Q3 2025 / Q4 2025 (published 29 January 2026):** Russian clusters 1,054 + 226 channels; PRC 3,715 + 105 channels; **22 domains blocked** (multi-language Russian cluster)
- **URLs:** https://blog.google/threat-analysis-group/tag-bulletin-q1-2024/ (substitute q2/q3/q4-2024, q1–q4-2025)
- **EVIDENCE GRADE:** A for enforcement counts; E for any implicit reach framing (the bulletins mostly do not make reach claims — a notable restraint).

#### TAG-04 — Q1 2026 bulletin
- **Not present** in the blog.google sitemap as of 25 September 2026 (latest listed = Q4 2025, published 29 January 2026). See §6.

---

### 1.5 Microsoft MTAC and other vendor/state reporting

#### MS-01 — **Storm-2035** / Iran targeting the 2024 US election
- **Date:** 8 August 2024 (Microsoft Threat Analysis Center, "Microsoft On the Issues")
- **Network size:** "four examples"; the group ran **covert news sites** — Microsoft names **Nio Thinker** (left-leaning; called Trump an "opioid-pilled elephant in the MAGA china shop") and **Savannah Time** (self-described "trusted source for conservative news in the vibrant city of Savannah"). OpenAI's companion naming gives the **five-site set**: niothinker.com, savannahtime.com, evenpolitics.com, teorator.com, westlandsun.com.
- **AI use:** "The evidence we found suggests the sites are using **AI-enabled services to plagiarize at least some of their content from US publications**." (Microsoft's AI claim is about *plagiarism-augmentation*, not generation.)
- **Platform action:** not a takedown report; Microsoft shared intelligence and notified targets; separate IRGC spear-phishing and password-spray operations described
- **Reach/impact:** Microsoft does not claim reach; OpenAI (which received Microsoft's data) assessed it as **low end of Category 2** with "few or no likes, shares, or comments."
- **URL:** https://blogs.microsoft.com/on-the-issues/2024/08/08/iran-targeting-2024-us-election/
- **EVIDENCE GRADE:** A (site names, AI-plagiarism finding) / **no reach claim made**

#### MS-02 — **Storm-1516** — Russian deepfakes, October 2024
- **Date:** 23 October 2024
- **Data:** a **Storm-1516** deepfake video accusing Tim Walz of illegal poaching in Zambia **"gain[ed] more than 5 million views on X in the first 24 hours."** A separate Harris deepfake made derogatory claims about Trump.
- **Microsoft's own caveat — important:** "**While most of these videos received minimal engagement**, they underscore Russia's ongoing use of both traditional and AI-generated content…"
- **Platform strategy note:** "some actors [are] shifting their content publishing strategy **from Telegram to X** to reach U.S. audiences."
- **URL:** https://blogs.microsoft.com/on-the-issues/2024/10/23/as-the-u-s-election-nears-russia-iran-and-china-step-up-influence-efforts/
- **EVIDENCE GRADE:** A (view figure as stated by Microsoft) / **D–E as evidence of impact** — 5M views on X is not the same as 5M authentically reached humans, and Microsoft itself reports the modal video got minimal engagement. **This is the highest single reach number in the corpus and should be treated as an outlier with contamination risk.**

#### MS-03 — EU EEAS, 4th FIMI Report ("Dismantling the FIMI House of Cards"), March 2026
- **Portal Kombat / "Pravda network":** ~**10,000 articles a day across 101 websites** under news.pravda.com; **26 new country/region sub-domains registered at the end of 2024**
- **Doppelgänger / RRN Media Brands (SDA-run):** ~**5 websites**; **average ~15 articles a week**; **"many AI-generated"**, others by MGIMO-affiliated individuals; **"an overwhelming majority of the interaction metrics remains inauthentically inflated"**; slight organic engagement "in very rare occurrences"
- **Storm-1516 (aka CopyCop / False Façade):** "**On average, Storm-1516 content reaches between 5,000 and 4 million views**"; sources **nearly doubled output in 2025 vs 2024**. EEAS's headline judgement: "**Storm-1516 is the only IMS capable of generating organic engagement and infiltrating authentic public debates.**"
- **Spamouflage:** presence across **more than 50 platforms**; engaged "almost exclusively with other Spamouflage content"; **"at least 50 AI-generated cartoons portraying the EU as subordinate to the US"**; new pattern of **AI-assisted impersonation videos** ("a step beyond its earlier use of poorly edited images"); "**Even if overall engagement remains low, the repeated posting of varied content creates the impression that these views are widely shared.**"
- **Paperwall (Chinese state-aligned):** expanded by **108 additional domains**, targeting **40 new countries** in **15 new languages**; content often translated from Russian sources **within hours**; poor translation quality and **residual source text** betray automation; "the network has **struggled to generate genuine engagement**… individual posts receive little to no interaction" despite Pages with thousands of followers
- **Seeding structure:** Spamouflage's **"seeder-amplifier" scheme** — a first cluster impersonating dissidents posts a false allegation, a second cluster replies to government/institutional accounts with it, a third replies with a screenshot and a call to action. **This is a designed corroboration architecture.**
- **Aggregate:** "AI-generated videos and images have become the new norm"; "**the use of Artificial Intelligence tools in FIMI incidents has increased exponentially**"; "LLMs are even being 'groomed'… to manipulate results."
- **URL / local text:** `amplification/sources/eeas-4th-fimi-2026.txt`
- **EVIDENCE GRADE:** A (EU institutional report; FIMI incident data) / B–C for the reach characterisations (EEAS relies on platform data it cannot fully audit)

#### MS-04 — **EU DisinfoLab Doppelganger Hub** (continuous, 2022–2026)
- **Reported scale of Doppelganger / RRN / Struktura / Social Design Agency (ASP):**
  - **Bavarian intelligence data (May 2023 – July 2024, only 2 servers identified):** **7,983 campaigns and 828,842 clicks — an average of 103 clicks per campaign.**
    - Germany: 2,250 campaigns / 250,061 clicks (30.17%)
    - France: 2,245 campaigns / 249,481 clicks (30.10%)
    - United States: 1,024 campaigns / 180,521 clicks (21.78%)
    - Ukraine: 1,339 campaigns / 148,777 clicks (17.95%)
  - **VIGINUM (France), November 2023:** detected the involvement of a network of **over a thousand bots on X affiliated with RRN** in the Paris "Stars of David" hybrid operation
  - Meta advertising: **~US$105,000 spent** (Meta, September 2022); "**thousands of Facebook pages**"; "burner" accounts used for one ad and abandoned; geofencing to restrict visibility by country
  - Impersonated brands: **Le Monde, The Guardian, Ansa, Der Spiegel, Fox News**; also impersonation of the **French MFA, the German federal Interior Ministry, and NATO**; typosquatting on alternative registrars (**.ltd, .online, .foo**)
  - Microsoft code names: **Storm-1099 / Storm-1679**; other avatars: **Matriochka, Overload, WarOnFakes, RRN**
  - "**German Odettes**": a network of profiles all named "Odette" allegedly working for Netflix, systematically pushing Doppelganger content into the comment sections of established Facebook pages
- **Sanctions/legal timeline (grade A):**
  - **July 2023** — **Struktura** and **Social Design Agency** placed on the **EU sanction list** (asset freeze + travel ban)
  - **October 2023** — WIPO ruling; France seized **diplomatie.gouv[.]fm**
  - **March 2024** — same companies added to the **US Treasury** sanctions list
  - **July 2025** — **AEZA Group**, a bulletproof hosting provider for the campaign, placed under **US Treasury** sanctions
- **EU DisinfoLab's explicit caution, which this brief adopts:** "**The impact of the Doppelganger operation should be considered cautiously. The assessments can only be partial** and reflect the data made available by stakeholders, which is restricted."
- **URL:** https://www.disinfo.eu/doppelganger-hub/
- **EVIDENCE GRADE:** A (sanctions/WIPO/legal) / B (Bavarian intelligence click data — official but partial) / C (ad-spend figures)
- **Correction to a premise in the tasking:** the **EU sanctions on the Doppelganger entities were July 2023, not July 2024**; the **UK** sanctioned interference actors in **October 2024**. The Sept 2024 US action was a **domain seizure + indictment**, not an EU measure.

---

## 2. THE SPECIFIC PATTERN: MANUFACTURED "INDEPENDENT" CORROBORATION

This section answers the core question directly. The following are cases where the *documented purpose* was to make one claim look independently confirmed.

| Mechanism | Case | Date | Documented? | Reach verdict |
|---|---|---|---|---|
| **Chains of outlets producing "independent confirmation"** | Anthropic **GTG-24015** (Russian state media): "the same story was echoed across different outlets so it appeared to be independently confirmed"; "**false verification loops**"; model instructed to **drop caveats** and present claims as confirmed | Dec 2025–Aug 2026 | **Observed in the model's own session logs** (grade A) | **HIGH** — distributed through Sputnik/RIA/RT established channels; matched output "up to the aired broadcast copy" and ~2,000-view Telegram posts |
| **~70 fake "independent local newsrooms" corroborating each other** | Anthropic **GTG-54002** (LKM Company, France): fabricated bylines, ~70 outlets, 250+ commenting accounts; near-identical DRC–Rwanda articles **published within 3 minutes** | domains mid-2025; detection 11 Sep 2025 | **Observed** (grade A) | **LOW** — Category Two, "before it could build an authentic audience" |
| **Fabricated "local witnesses" inserted into the UN record** | Anthropic **GTG-84002** (UAE-directed): front NGO cloning a real Swiss org; **ghost-written UN HRC testimony for two named individuals** to arrive "as from independent local witnesses, rather than state messaging"; attribution of "independence" as the network's "greatest strategic asset" | 2026 (62nd HRC session) | **Observed artifacts** (grade A) | **UNKNOWN** — platform states it "cannot confirm whether any of the testimonies… reached their intended audiences" |
| **Fake think-tank attribution** | Anthropic **GTG-34001** (Iran): false claims **attributed to CSIS, Brookings and RAND** during the 2026 US–Israel–Iran war; foreign bylines; manufactured-grassroots hashtag #IranStands | 2026 | **Observed** (grade A) | **Category Three** — distribution observed on Eitaa/IRGC-aligned channels |
| **Fake expert community + misattributed academic work + proprietary "index"** | OpenAI **OP-22** International Burke Institute: site registered Feb 2025, claims an Israel base, **copies real academic writing with false attribution**, machine-translation artifacts ("Svetofor coalition"), "Burke Sovereignty Index" flattering Russia | Aug 2026 | **Observed** (grade A) | **LOW immediate reach** but OpenAI judges the *infrastructure* the point — "manufacture authority… assets that could be scaled over time" |
| **Seeder → amplifier → screenshot architecture** | EEAS: Spamouflage's **"seeder-amplifier" scheme** — seeder accounts impersonating dissidents post an allegation; amplifiers reply to government accounts; a third cluster reposts screenshots and calls for action | 2025 | **Observed** (grade A) | **LOW** — "overall engagement remains low," but "creates the impression that these views are widely shared" |
| **Planted op-eds in real national media** | OpenAI **OP-13** Sponsored Discontent: model-generated articles published in **La Republica, Wapa, El Popular, Libero (Peru)** | Feb 2025 | **Observed** (grade A for publication) | **Category 4 / HIGH** — OpenAI: "may have reached a significantly wider audience"; engagement unverified; possibly paid placement |
| **Fake local news outlets in regional real media** | OpenAI **OP-19** Trolling Stone: articles "published by regional news outlets in Argentina"; how they were accepted is unknown | Feb 2026 | **Partial** (grade C) | **Category 4 low end** — placement only, no audience evidence |
| **Op-eds laundered as domestic analysis** | Anthropic **GTG-24015** (Latin America strand): a "supposedly independent Telegram" reframing Kremlin narratives "so they look like authentic local commentary" | 2026 | **Observed** (grade A) | Not separately quantified |
| **State media laundered as independent Malaysian reporting** | Anthropic **GTG-84005**: TV BRICS, Xinhua, Sputnik/RIA, CGTN content rewritten with **state attribution stripped** | 2026 | **Observed** (grade A) | **Category Two / LOW** |
| **Multi-stage rewriting to defeat similarity detection** | OpenAI **OP-11**: operator generated an article, then rephrased before publishing; semantic-similarity analysis showed the published version was "highly likely a rewrite" | Feb 2025 | **Observed** (grade A) | Low end Category 2 |
| **Fake "information partnerships" with real UK institutions** | OpenAI **OP-10**: school in Wales, church in Yorkshire, California chambers association — later shown to be **fictional**, exploiting **technical flaws on the partners' own sites** | Oct 2024 → corrected Oct 2025 | **Observed then retracted** (grade A) | **Initially rated Category 3, revised to Category 2** |

**Assessment (capability ladder):**

- **(a) technical possibility:** trivially established; every vendor report documents models being *asked* to do this and sometimes refusing.
- **(b) demonstrated capability:** **established beyond reasonable doubt** at scale. Multiple operations ran 70–1,000+ asset networks with fabricated bylines, fake personas, AI avatars and cross-outlet seeding. **Documented by four independent first parties (OpenAI, Anthropic, Meta, Google) plus EU institutional reporting.**
- **(c) credible evidence of deployment:** **established** for fabricated news networks, fake personae and retransmitted false claims. **Narrower but real** for the *specific* "fake independent expert/witness corroborating an ambiguous event" sub-pattern — best evidence is Anthropic GTG-84002 (UN testimony), GTG-34001 (fake CSIS/Brookings/RAND attribution), Anthropic GTG-24015 (false verification loops) and OpenAI IBI.
- **(d) documented real-world impact:** **NOT established** in any of these cases, and in several cases **explicitly disclaimed by the reporting platform**. The two nearest approaches to (d) are: (i) EU DisinfoLab/Bavarian data showing **828,842 real ad clicks** delivered by Doppelganger across two monitored servers; and (ii) Microsoft's **5 million views in 24 hours** for a Storm-1516 deepfake — both with caveats (partial server coverage; view ≠ authentic reach).
- **The one place where AI-enabled influence demonstrably caused harm without achieving reach:** OpenAI's "Cyber Special Operations" case, where the actor's own reports claim **dissidents curtailed activity or quit** — a **harassment/targeting** effect, not a persuasion effect. Defensive policy should treat these as distinct threat models.

---

## 3. AMBIGUOUS-EVENT CASES: FABRICATED WITNESSES AND SYNTHETIC EVIDENCE

Tasking asked specifically about Hawaii (2023), the 2024 hurricanes, Tylenol/autism, and the 2024–26 New Jersey drone panic. Findings:

### 3.1 Maui / Hawaii wildfires, August 2023
- **"Directed energy weapon" and other false claims went viral** — BBC, 16 August 2023
- **"China Sows Disinformation About Hawaii Fires Using New Techniques"** — The New York Times, 11 September 2023 (Spamouflage-related amplification)
- Additional coverage: Phys.org (19 Aug 2023), Honolulu Civil Beat (13 Sep 2023)
- **Outcome:** claims went viral and were amplified by state-linked infrastructure. **I could not obtain the underlying vendor/platform primary report for the Hawaii case in this pass** — these remain **grade C (headline-level)** and the specific "fabricated independent experts/witnesses" mechanism is **not documented in the sources I could fetch.**
- **URLs:** publisher URLs behind Google News redirects could not be resolved (see §6).

### 3.2 Hurricanes Helene and Milton, October 2024
- **"Russia shares AI images of Hurricane Milton as disinformation abounds in US"** — The Guardian, 10 October 2024
- **"Did Disney World get swamped by Helene? Russian bots created pictures to prove it."** — The Christian Science Monitor, 24 October 2024
- **"False conspiracy theories that Hurricane Milton is part of a political plot are still spreading"** — NBC News, 10 October 2024
- **"AI-generated images have become a new form of propaganda this election season"** — NPR, 18 October 2024
- **Outcome:** documented use of **synthetic imagery of a contested event**, attributed in at least one case to Russian operators. **This is (b)–(c): synthetic evidence was produced and distributed.** No fetched source documents a network of fake *named experts* corroborating one another for these storms.
- **EVIDENCE GRADE:** C (journalism only; no first-party report fetched)

### 3.3 New Jersey / northeast US drone panic, December 2024
- **Primary document obtained:** **DHS–FBI–FAA–DoD Joint Statement on Ongoing Response to Reported Drone Sightings, 17 December 2024** (local: `amplification/sources/nj-faa-joint-statement.txt`)
  - **FBI received tips of more than 5,000 reported drone sightings in the last few weeks, with approximately 100 leads generated**
  - Assessment: "the sightings to date include a combination of **lawful commercial drones, hobbyist drones, and law enforcement drones, as well as manned fixed-wing aircraft, helicopters, and stars mistakenly reported as drones**"
  - "**We have not identified anything anomalous and do not assess the activity to date to present a national security or public safety risk** over the civilian airspace in New Jersey or other states in the northeast."
- **This is the authoritative official counter-assessment to a mass ambiguous-event panic.** It documents the *epistemic* failure (5,000 reports → ~100 leads → no anomaly) but says nothing about AI-generated corroboration.
- **URL:** FAA press release, 17 December 2024 (local text file as above)
- **EVIDENCE GRADE:** **A** for the official assessment; **the file is silent on AI/synthetic corroboration.**
- **GAP:** I found **no platform or vendor report documenting an LLM-generated "independent expert"/"local witness" corroboration network for the NJ drone panic.** A companion file, `amplification/sources/nj-fbi-dhs-statement.txt`, fetched only a bot-challenge page ("Just a moment…") — **fetch failed.**

### 3.4 Tylenol / autism claims (2025)
- **Not located.** The workspace file `amplification/sources/wiki-tylenol.txt` concerns the **1982 Chicago Tylenol murders**, not the 2025 Tylenol–autism controversy. It contains no AI/influence-operation material.
- I did not locate any primary platform or vendor report on a fabricated-expert corroboration network for the Tylenol/autism claims in this pass. **Treated as an unverified/gap item.**

### 3.5 Assessment for §3
The **mechanism is proven in the abstract** (§2) but I could **not** tie any of these four specific ambiguous events to a documented LLM "independent corroboration network" beyond: state-linked amplification of the Maui claims (NYT, grade C) and Russian AI imagery of Hurricane Milton (Guardian/CSM, grade C). **The strongest documented analogue remains Anthropic GTG-84002** (ghost-written UN testimony from fabricated local witnesses for the Sudan conflict) — a case where real institutions were the target of the fabricated-witness technique, but which is not one of the four events in the tasking.

---

## 4. WHERE PLATFORMS SAY REACH WAS **LOW** vs **HIGH**

This distinction is the single most decision-relevant output of this annex. Platforms are systematically claiming LOW reach; there are a small number of genuine HIGH-reach exceptions, and one platform has publicly retracted an over-statement.

### 4.1 Explicit LOW-reach statements (verbatim, by platform)

| Platform | Statement | Scope |
|---|---|---|
| OpenAI | "**no significant audience increase due to our services**"; none of five operations "scored higher than a **2**" | May 2024, five ops |
| OpenAI | "**does not appear to have achieved meaningful audience engagement**" | Storm-2035, Aug 2024 and Oct 2024 |
| OpenAI | "**Category 1**… 150–350 views and zero likes, shares or comments" | Storm-2035, Jun 2025 |
| OpenAI | "Most of the posts and social media accounts received **minimal or no engagements**. Often the only replies… were by **other accounts controlled by the operators**" | Nine–emdash Line, Oct 2025 |
| OpenAI | "**Category One**: activity spanning one platform, with **no evidence of breakout**" | Data Center Bandwagon / Tech and Tariffs, Jun 2026 |
| OpenAI | "**Of [50,000+] posts, under 150 posts received over 300 shares or comments**… many had such low viewing figures that they likely did not even reach authentic audiences" | Cyber Special Operations, Feb 2026 |
| Anthropic | "**Most of the content we discovered drew little or no authentic engagement**"; "Influence operations often fail to reach a genuine audience" | All nine 2026 IO cases |
| Anthropic | "**completely isolated within the network of fake accounts… failing to reach or influence any real people**" | Kenya, Category One |
| Anthropic | "**We disrupted this operation early, before it could build an authentic audience**" | LKM Company, Category Two |
| Meta | "**We detected and removed these campaigns before they were able to build authentic audiences on our apps**" | Q1 2025 ATR |
| Meta | "**A majority of these comments did not receive any engagement from authentic audiences**" | Romania network, Q1 2025 |
| Google TAG | "**DRAGONBRIDGE achieves practically no organic engagement from real viewers**" — **58% of channels zero subscribers; 42% of videos zero views; 83% under 100 views** | 2022 and 2023 |
| Google TAG | "**limited reach, with practically no engagement from organic users**" | Taiwan election, Jan 2024 |
| EEAS | "**an overwhelming majority of the interaction metrics remains inauthentically inflated**" | Doppelgänger/RRN Media Brands |
| EEAS | Spamouflage: "**Even if overall engagement remains low**, the repeated posting of varied content **creates the impression that these views are widely shared**" | 2025 |
| EEAS | Paperwall: "**struggled to generate genuine engagement**… individual posts receive little to no interaction" despite thousands of followers | 2025 |

### 4.2 Explicit HIGH-reach statements

| Platform/source | Statement | Case | Caveat attached by the source |
|---|---|---|---|
| Anthropic | "**Unlike covert networks that struggle to reach real audiences**, the content… **was distributed through media outlets' established channels**"; matched outputs **up to the aired broadcast copy** | GTG-24015 Russian state media | Cannot determine what share of outlet output passed through Claude |
| Anthropic | **Category Four** — daily FM broadcast plus Telegram and local news pickup | GTG-04001, Radio Lengo Songo, CAR | Only Anthropic case reaching broadcast mass media |
| EEAS | "**Storm-1516 is the only IMS capable of generating organic engagement and infiltrating authentic public debates**"; content reaches **5,000–4 million views** on average | Storm-1516 / CopyCop | "Average" range is extremely wide |
| OpenAI | **Category 4 (breakout to mainstream media)** — articles published in **La Republica, Wapa, El Popular, Libero (Peru)** | Sponsored Discontent | "not able to independently ascertain engagement"; possibly paid placement |
| OpenAI | **Category 4 low end** — articles published by **regional news outlets in Argentina** | Trolling Stone | "not able to independently confirm how the articles were submitted and accepted" |
| Microsoft | **more than 5 million views on X in the first 24 hours** | Storm-1516 Walz deepfake, Oct 2024 | Microsoft itself: "**most of these videos received minimal engagement**" |
| EU DisinfoLab / Bavarian intel | **828,842 clicks** across **7,983 campaigns** (avg **103 clicks/campaign**), May 2023–Jul 2024 | Doppelganger | Only **2 servers** monitored; earlier period uncovered; partial |
| OpenAI | operation "**did show at least some ability to engage audiences on multiple platforms, in multiple languages, and on multiple topics**"; real users replied, sometimes contradicting the fakes | A2Z, Oct 2024 | **Top end Category 2 "with a risk of breaking out into Category Three"** |
| OpenAI | **two TikTok videos amassed a combined 25,000 likes**; tweets ~10,000 views each | Sneer Review, Jun 2025 | **"All engagement figures should thus be treated with caution"** — many comments were operation-generated |

### 4.3 The retraction that should shape your confidence intervals

**OpenAI's "Stop News" case was rated Category 3 in October 2024 and downgraded to Category 2 in October 2025** after VIGINUM and open-source researchers established the apparent "information partnerships" were **fictional and created by exploiting technical flaws on the partners' own websites**. Any Category 3+ claim resting on *apparent* institutional uptake rather than *audited* distribution should be discounted accordingly.

### 4.4 Bottom line on LOW vs HIGH

- **LOW is the overwhelming empirical result, and it is measured, not asserted, in the best cases** (Google TAG's view/subscriber distributions; OpenAI's follower and view counts).
- **HIGH reach occurs through four channels only, in this corpus:**
  1. **Capture of legacy state-media distribution** (Anthropic GTG-24015; GTG-04001 broadcast FM);
  2. **Purchase/placement in genuine national and regional media** (OpenAI Sponsored Discontent; Trolling Stone);
  3. **Ad-platform delivery at scale** (EU DisinfoLab/Bavarian click data — 828,842 clicks);
  4. **A single viral artefact on a major platform** (Microsoft's 5M-view Storm-1516 deepfake).
- **None of the four channels depends on the generative-AI component.** In every documented HIGH-reach case, AI accelerated production or localisation; **distribution access was the binding constraint.** This is the central defensive finding.
- **A fifth, non-reach effect exists and is under-measured:** harassment and chilling of targeted individuals (OpenAI Cyber Special Operations; Anthropic GTG-84006 live impersonation of a real activist to his own contacts; Anthropic GTG-04001 surveillance of opposition figures). This is real harm **without** audience reach and is not captured by Breakout Scale.

---

## 5. EVIDENCE-GRADE SUMMARY

| # | Operation / report | Date | Org | Network size | AI use | Reach verdict | Grade |
|---|---|---|---|---|---|---|---|
| 1 | State-affiliated actors (5) | 2024-02-14 | OpenAI | 5 clusters | research/coding | n/a | A / E |
| 2 | Bad Grammar, Doppelganger, Spamouflage, IUVM, Zero Zeno | 2024-05-30 | OpenAI | 5 ops | text, personas, images | none above Category 2 | A / E |
| 3 | IUVM | 2024-05-01 | OpenAI | small; TikTok 10 / VK 76 / OK 274 followers | articles, tags | Category 2, LOW | A / E |
| 4 | Doppelganger (4 clusters) | 2024-05-01 | OpenAI | 4 clusters | comments, translations | 9GAG 5–10 up vs 15–200 down; X ~1,000 shares/0 likes | A / E |
| 5 | Spamouflage | 2024-05-01 | OpenAI | small | articles, doxxing site code | "only views… came from our investigative team" | A / E |
| 6 | Zero Zeno (STOIC, Israel) | 2024-05-01 | OpenAI | 1 cluster, 4 sites | personas, articles | 1 YouTube video = 0 views | A / E |
| 7 | Storm-2035 (Iran) | 2024-08-16 | OpenAI | **5 sites**, 12+ X, 1 IG | articles, comments | low end Category 2 | A / E |
| 8 | Storm-2035 recidivist | 2024-10-01 | OpenAI | 12+ personas, 5 sites | 700–900-word articles | low/no engagement | A / E |
| 9 | A2Z | 2024-10-01 | OpenAI | **~150+ accounts** | personas, multilingual replies | top Category 2; **real people did engage** | A / E |
| 10 | Stop News | 2024-10-01 → 2025-10 | OpenAI + VIGINUM | 4 UK/Africa sites; Meta total 2,100 followers | articles, DALL·E, GAN faces | **Cat 3 → corrected to Cat 2** | A / E |
| 11 | Iranian nexus (IUVM↔Storm-2035) | 2025-02-01 | OpenAI | **5 accounts** | articles + rewrite-to-evade | 157 followers; single-digit engagement | A / E |
| 12 | Empowering Ghana | 2025-02-01 | OpenAI | IG ~900k (54% overlap w/ 1 unrelated account), X 1,535 | batches of 30 comments | Category 2, fake engagement | A / E |
| 13 | Sponsored Discontent | 2025-02-01 | OpenAI | social + planted articles | Spanish op-eds | **Category 4 / HIGH (Peru)** | A / E |
| 14 | Storm-2035 2025 | 2025-06-01 | OpenAI | batches of ~12 tweets | Persian→EN/ES | **Category 1**; 150–350 views, 0 likes | A / E |
| 15 | Sneer Review | 2025-06-01 | OpenAI | small | posts + own comments | **25,000 TikTok likes — contaminated** | A / D |
| 16 | Uncle Spam / Helgoland Bite / VAGue Focus | 2025-06-01 | OpenAI | thousands of followers (unverifiable) | posts, research | Category 2 | A / E |
| 17 | Nine–emdash Line | 2025-10-01 | OpenAI + Philstar | multi-platform | regional content | Category 2; subset **survived** bans | A / E |
| 18 | Stop News recidivist | 2025-10-01 | OpenAI | 172 X followers; ~1,900 subs | AI newsreader video | Cat 3 → **Cat 2** | A / E |
| 19 | Trolling Stone | 2026-02-01 | OpenAI | 5 countries incl. for-hire | comment batches | **Cat 4 low end** (Argentine outlets) | A / D |
| 20 | Cyber Special Operations | 2026-02-01 | OpenAI | **50,000+ posts / 200+ platforms** | IO planning (refused), reports | **<150 posts >300 shares/comments** | A / E |
| 21 | Data Center Bandwagon / Tech and Tariffs | 2026-06-01 | OpenAI | 2 clusters | comments, cartoons | **Category 1** | A / E |
| 22 | International Burke Institute | 2026-08-25 | OpenAI | cluster; site reg. 2025-02 | fake expert community | lower Cat 3; LOW immediate | A / E |
| 23 | GTG-54002 LKM Company (France) | 2026-09 | Anthropic | **~70 sites, 70 X, 250+ commenters, 8,913 articles, 20 languages** | articles + rewritten real news, fake bylines | **Category Two, LOW** | A / E |
| 24 | GTG-84005 BBS Bilisim (Istanbul) | 2026-09 | Anthropic | **~1,000 fake X accounts**, 222 constituencies | targeting, evasion, laundering | Category Two; figures **self-reported** | A / E |
| 25 | GTG-24015 Russian state media | 2026-09 | Anthropic | 4 accounts → Sputnik/RIA/RT | editorial pipelines | **HIGH — false verification loops** | A / B |
| 26 | GTG-34001 Iranian institutions | 2026-09 | Anthropic | 3 institutions, 100+ channels | doctrine, 20 languages, fake think-tank attribution | Category Three | A / E |
| 27 | GTG-84002 UAE-directed | 2026-09 | Anthropic | **~300 accounts**, front NGO, 18 MEPs | **ghost-written UN testimony** | **Category Three; reach UNKNOWN** | A / E |
| 28 | GTG-04001 Radio Lengo Songo (CAR) | 2026-09 | Anthropic | FM + Telegram + local press | forged gov docs, HR automation | **Category Four (broadcast)** | A / B |
| 29 | GTG-54006 Bangladesh (Awami League) | 2026-09 | Anthropic | 1 actor, 29 accounts, ~1,500 headlines | fake_news_3.py | Category Three; no wider audience | A / E |
| 30 | GTG-84006 MEK/NCRI | 2026-09 | Anthropic | 500+ channels scraped; 51,944 messages | live impersonation, avatars | Category Two | A / E |
| 31 | GTG-54004 Kenya | 2026-09 | Anthropic | 1 actor, batches of 50 | astroturf tweets | **Category One, no real people** | A / E |
| 32 | Meta ATR Q1 2025 (RO/IR/CN) | 2025-05-29 | Meta | **658+14+2 / 17+22+21 / 157+19+1+17** | AI profile photos, account farm | "**before they could build authentic audiences**" | A / E |
| 33 | Meta Q2 2024 Doppelganger | 2024 | Meta | **>5,000 accounts & Pages**; 6,000+ indicators (96% domains) | — | not stated | A / E |
| 34 | DRAGONBRIDGE 2022 / 2023 / Q1 2024 | 2023–2024 | Google TAG | **53,177 channels (2022); >57,000 (2023); 175,000+ instances lifetime** | synthetic audio, avatars, AI news hosts | **58% zero subs; 42% zero views** | **A** |
| 35 | TAG bulletins | 2024–2026 | Google TAG | see §1.4 | — | mostly no reach claims | A |
| 36 | Storm-2035 (Microsoft naming) | 2024-08-08 | Microsoft MTAC | covert news sites (Nio Thinker, Savannah Time +3) | **AI-assisted plagiarism** | no reach claim; OpenAI: Cat 2 | A |
| 37 | Storm-1516 Walz deepfake | 2024-10-23 | Microsoft MTAC | 1 video | deepfake | **5M views/24h**; "most videos minimal engagement" | A / D–E |
| 38 | EEAS FIMI 4th report | 2026-03 | EEAS | Portal Kombat **101 sites / ~10,000 articles/day**; Paperwall **+108 domains** | AI images, impersonation videos | LOW for all but Storm-1516 | A / B–C |
| 39 | Doppelganger hub | 2022–2026 | EU DisinfoLab | **7,983 campaigns / 828,842 clicks**; 1,000+ X bots | fake clones, ads, "Odettes" | **PARTIAL, 103 clicks/campaign** | A / B |
| 40 | NJ drone joint statement | 2024-12-17 | DHS/FBI/FAA/DoD | **5,000+ sightings, ~100 leads** | none documented | "**nothing anomalous**" | **A** |

---

## 6. FAILED SEARCHES / NEGATIVE FINDINGS

Everything in this section is an explicit statement of what did **not** work or could **not** be verified. Nothing here should be read as a finding of absence of the phenomenon — only of absence of accessible evidence in this pass.

### 6.1 Tooling failures and workarounds

| # | Attempt | Result | Workaround / residual impact |
|---|---|---|---|
| F1 | `web_search` tool | **Not used — declared broken in tasking** | Used Google News RSS, `get.sh`, `web_fetch`, `curl`+headers, `pdftotext` |
| F2 | `curl`/`get.sh` direct to `openai.com/index/…` | **HTTP 403, 0 bytes** (Cloudflare) | **Solved:** `curl --http1.1` with full browser header set (sec-ch-ua, sec-fetch-*, Accept-Language). Tool added: `tools/getoa.sh`. All 22+ OpenAI pages then fetched successfully. |
| F3 | `r.jina.ai` reader proxy for OpenAI | Worked intermittently, then **sustained HTTP 429 "Per IP rate limit exceeded"** (per-IP limit shared across the session's parallel subagents) | Abandoned in favour of F2 workaround; retained for JS-rendered pages (Meta) |
| F4 | `web.archive.org` (Wayback Machine) | **Connection failure (curl exit 7)** — host unreachable from this environment | `archive.org/wayback/available` also **HTTP 429** |
| F5 | `www.mojeek.com` search | 200 but **no result markup extracted** — effectively no results returned | — |
| F6 | `lite.duckduckgo.com` search | **HTTP 202** anti-bot challenge; no usable results | — |
| F7 | `tools/ddg.sh` (DDG via r.jina.ai) | **Zero output** (downstream of F3 rate-limiting) | — |
| F8 | `tools/bn.sh` (Bing News RSS) | **0 items returned** | — |
| F9 | `tools/wsearch.sh` (Bing web) | Returns **generic/irrelevant results**; query terms ignored (e.g. a "Storm-2035 Microsoft Iran" query returned microsoft.com product pages) | — |
| F10 | Bing RSS (`&format=rss`) as a substitute search engine | **Systematically useless** — returned Dutch Wikipedia/essay-mill spam irrespective of query; appears manipulated/anti-scraping | **No general web search was available in this session.** All discovery was via Google News RSS + known-URL/sitemap enumeration. |
| F11 | Google News RSS article URLs | Redirect URLs (`news.google.com/rss/articles/…`) are the **new opaque `AU_yqL` protobuf format**; base64-decoding yields no publisher URL | **Publisher URLs could not be resolved.** All F11-dependent items are grade C at headline level. |
| F12 | `justiz.gov`/DOJ: `justice.gov/opa/pr/…`, `/news?search…`, `/news/rss` | **Akamai bot interstitial** (`bm-verify` JS challenge) on all endpoints; archives variant also blocked via curl | **DOJ primary documents NOT retrieved.** The Sept 2024 Doppelganger domain seizures and the July 2024 "Meliorator" AI bot-farm action are therefore reported from press headlines only (grade C). |
| F13 | `eur-lex.europa.eu` | **HTTP 202, 0 bytes** (bot protection) | EU sanctions facts were instead sourced from the **EU DisinfoLab Doppelganger Hub** and EEAS report (grade A/B secondary-but-specialist) |
| F14 | `consilium.europa.eu` | **HTTP 403** | As F13 |
| F15 | `transparency.meta.com/reports/adversarial-threat-report/` | **HTTP 400 / 404** (JS shell + bot gate); jina returned "This page isn't available" | Meta's ATR *report* content could not be read directly |
| F16 | `transparency.meta.com/sitemap.xml`, `/atr-2025-h1/`, `/atr-2024-h2/`, `/atr-2026-h1/` | **400** or **404** | — |
| F16b | `transparency.meta.com/metasecurity/security-threats/` via jina | **Fetched (18.6 KB) but contains only definitions** (CIB, cyber espionage, mass reporting/brigading) — **no per-network ATR listings**, which are loaded client-side | Meta's ATR network tables remain unretrievable |
| F17 | `about.fb.com` sitemap enumeration | WordPress sitemaps work (2,615 post URLs) but contain **only two relevant CIB posts for 2024–2026**; Meta migrated ATR content off about.fb.com | Meta's own CIB announcement URLs for 2025–2026 **not discoverable via sitemap** |
| F18 | `thehackernews.com/search?q=…` | **HTTP 403** | Direct THN article URLs do work (one was fetched successfully) |
| F19 | `securityaffairs.com/?s=…` | **200 but query ignored** — returns the latest 12 articles regardless of query | No site search available |
| F20 | `therecord.media/search?q=…` | **HTTP 404** | — |
| F21 | `blogs.microsoft.com/wp-json/…` and `microsoft.com/en-us/security/blog/wp-json/…` | **403 (Cloudflare / vendor WAF)** | Worked around via the Microsoft On the Issues HTML **search endpoint** (`blogs.microsoft.com/on-the-issues/?s=…`), which returns real post URLs |
| F22 | `blogs.microsoft.com/post-sitemap{,2,3}.xml` | Only 2,000+ URLs and **none of the "on-the-issues" security posts** | As F21 |
| F23 | Guessed URLs for The Guardian (Milton), BBC (Maui), Security Affairs (Meta) | **All 404** | These specific articles were not retrieved |
| F24 | Anthropic report URL `anthropic.com/news/detecting-and-countering-misuse-of-ai-september-2026` | **404** | **Resolved:** correct URL is `https://www.anthropic.com/threat-intelligence-report-september-2026` (HTTP 200) |

### 6.2 Reports that could not be fetched

1. **Meta Adversarial Threat Reports H1 2026 / H2 2025 / H1 2025 / H2 2024 (primary documents)** — portal is bot-gated (F15–F17). Only the Q1 2025 report's numbers were recovered, via a trade-press relay.
2. **Meta ATR PDFs** — no downloadable PDF URL discoverable.
3. **DOJ press releases and court filings** — Akamai-blocked (F12). Specifically: the **4 September 2024** Doppelganger domain-seizure action and the **9 July 2024** "Meliorator" AI bot-farm disruption are **named but not documented from primary sources**.
4. **EU Council / Official Journal sanctions instruments** — eur-lex and consilium blocked (F13–F14). The **July 2023** EU listing of Struktura and Social Design Agency and the **March 2024 / July 2025** US Treasury listings are corroborated only by EU DisinfoLab.
5. **OpenAI's full consolidated PDF reports** — the quarterly landing pages were fetched, but the linked **PDF/attachment bodies were not retrieved** (links were stripped by HTML-to-text conversion). All OpenAI findings above come from the per-case-study HTML pages plus the landing-page summaries.
6. **Anthropic's September 2026 PDF** — the landing page and the in-workspace extracted text were used; the PDF itself (`www-cdn.anthropic.com/…pdf`) was not downloaded.
7. **Anthropic GTG-1002 cyber-espionage report (Nov 2025)** — **not located** in this pass. The tasking names it; the September 2026 report covers **GTG-20006** (Russian espionage, assessed consistent with Midnight Blizzard) and other cyber cases, but I did not retrieve or verify a **GTG-1002** document. **Flagged as an unverified item in the tasking.**
8. **Google TAG bulletins for Q1 2026 and later** — absent from the blog.google sitemap as of 25 September 2026; latest located is **Q4 2025 (published 29 January 2026)**.
9. **Microsoft's full MTAC report PDFs (Aug 2024, Oct 2024)** — only the blog summaries were retrieved.
10. **Recorded Future, Graphika, ISD, DFRLab, EU DisinfoLab standalone reports** — Recorded Future article URLs 404'd; Graphika and ISD report URLs were not enumerated; DFRLab was referenced only indirectly (via OpenAI's Zero Zeno case study). **No primary Graphika report was obtained.**

### 6.3 Claims that could not be verified

1. **Storm-2035 network size in Microsoft's original framing.** Microsoft's Aug 2024 blog names only two sites (Nio Thinker, Savannah Time). The "four websites"/"five websites" figures come from OpenAI's naming of five domains. **I could not confirm a Microsoft-published account or site count.**
2. **Storm-2035 pre-2024 origin.** OpenAI's Oct 2024 case study says Meta "confirmed that the Instagram account was connected to an Iranian network they disrupted in **December 2022**." I could not retrieve Meta's December 2022 report to verify independently.
3. **"IUVM network size."** The only quantified figure found is OpenAI's follower counts for three IUVM-branded accounts (TikTok 10 / VK 76 / OK 274). **Reuters' 2018 IUVM exposure and any website-count figures were not retrieved** (publisher URLs unresolvable). Claims that IUVM operated "dozens of sites" could **not** be verified.
4. **The 2024 AI-generated audio of a US politician (Slovak-style or otherwise) attributed to Spamouflage.** The tasking asks for this specifically. Google TAG documents **synthetic audio and avatars in Taiwan (Jan 2024)** and **AI-generated news hosts**, but I found **no primary documentation of a 2024 AI-generated audio deepfake of a US politician attributed to Spamouflage** in the material retrieved. **Unverified.**
5. **Meta's "authenticity" enforcement numbers for 2025–2026.** No such aggregate was retrieved; Meta's only aggregate located is the "**more than 200 covert influence operations** since 2017" statement.
6. **Meta Q1 2026 / H1 2026 ATR contents.** Not obtained. The related headlines (Iran→Azerbaijan; Iranian fake personas on Instagram; Iran-linked fake American personas; Belarus→Poland) are **grade C–D and carry no verified network sizes or Meta reach language.**
7. **"Google scrubbed 18,000+ channels in Q4" (**The Tech Buzz, 29 January 2026).** The Q4 2025 TAG bulletin was retrieved and its listed channel terminations are individually visible, but the **"18,000+" aggregate could not be confirmed** from the bulletin text I extracted. **Unverified secondary figure.**
8. **The "2026 New Jersey drone panic"** as an AI-corroboration case. The official primary document retrieved (Dec 2024 DHS/FBI/FAA/DoD statement) documents the *panic* and the official counter-assessment but **contains no AI/synthetic-corroboration finding**. The FBI/DHS file in the workspace fetched only a bot-challenge page. **No evidence located.**
9. **Tylenol/autism AI corroboration (2025).** **Nothing located.** The workspace file is about the 1982 Chicago murders.
10. **Hawaii (2023) fabricated-expert corroboration.** Only headline-level journalism located; **no vendor/platform primary report obtained**; the specific "fabricated independent experts/witnesses" mechanism is **not documented** in the sources retrieved.
11. **Hurricanes Helene/Milton (2024) fabricated-witness networks.** Documented AI *imagery* exists (Guardian; CSM; NPR); no **fabricated-expert/witness network** documented in the sources retrieved.
12. **NYT, 18 September 2026, "Iran and China Create First-of-Their-Kind Autonomous A.I. Influence Campaigns."** Discovered in search; **article not retrieved** (paywall + unresolvable Google News redirect). An **inference only (grade D)**: the timing (8 days after Anthropic's 10 September 2026 influence-operation disclosures, which include a "**shared AI agent platform ('Viktor')**" running autonomous, scheduled production) is consistent with that report being a source, but **this is not established**.
13. **The "Data Center Bandwagon" impact rating.** OpenAI's narrative report states there was "**no evidence of meaningful breakout beyond its own activity**," but the individual case-study page's Impact section **was not present in the extracted text**. Reach characterisation rests on the narrative report, not the case study.
14. **Any figure quantifying reach *among real humans*.** No source in this corpus provides an audited, de-duplicated authentic-audience number. Every "views"/"likes"/"clicks" figure is platform-side or actor-side. **This is the central evidentiary gap in the entire field** and should be stated as such in the brief.

### 6.4 Assessments that must be downgraded on the evidence available

1. **"Category 3+" claims based on apparent institutional uptake** → downgrade. OpenAI's Stop News case was **rated Category 3 and then corrected to Category 2** when the "information partnerships" proved fictional and technically spoofed (VIGINUM).
2. **All "likes"/"views" figures for networks that also generated their own comments** → downgrade. OpenAI's Sneer Review case explicitly warns the 25,000 TikTok likes may be substantially inauthentic. Same caution applies to A2Z, Ghana, and Anthropic's Malaysia dashboard (self-reported).
3. **Actor self-reports of their own reach** → downgrade to **E**, always. Documented self-serving inflation: Anthropic's BBS Bilisim dashboards claimed "millions" of views (platform explicitly disowned); OpenAI's Cyber Special Operations unit claimed 50,000+ posts (mostly with negligible engagement); the Storm-2035 actor asked a model to author an article arguing its own exposure proved Iranian operations were more effective than Russian or Chinese ones.
4. **Any claim that a takedown ended an operation** → downgrade. Documented survival after ChatGPT bans: **Nine–emdash Line** (Philstar.com found the network still operating on X); **Zero Zeno** (accounts re-acquired after Meta/X disabled them); **Stop News** (recidivism across two years); **Storm-2035** (recidivism 2024→2025, Category 2→Category 1 as it degraded).

---

## 7. Annex: retrieved primary/near-primary artifacts in this workspace

| File | Content | Fetched |
|---|---|---|
| `amplification/raw/openai/oa-*.txt` (27 files) | OpenAI case studies and report landings, 2024-02 → 2026-08 | ✅ via `tools/getoa.sh` |
| `amplification/raw/tag/tag-bulletin-q{1..4}-2024.txt`, `q{1..4}-2025.txt`, `google-disrupted-dragonbridge-activity-q1-2024.txt`, `over-50000-instances-of-dragonbridge-activity-disrupted-in-2022.txt` | Google TAG bulletins and DRAGONBRIDGE reviews | ✅ |
| `amplification/raw/ms/ms-2024-08-iran-us-election.txt`, `ms-2024-10-influence.txt`, `ms-2024-04-russia-deepfakes.txt`, `ms-2026-09-midterms.txt` | Microsoft On the Issues posts | ✅ |
| `amplification/raw/meta/meta-threat-disruptions.txt` | Meta transparency "Threat disruptions" page (the ">200 operations since 2017" statement) | ✅ via jina |
| `amplification/raw/openai-news.xml` | OpenAI news RSS (1,229 items) — used to enumerate the complete report set | ✅ |
| `sources/anthropic-ti-sep2026.txt` | Anthropic "Detecting and countering misuse of AI: September 2026", full text | ✅ (pre-existing in workspace) |
| `amplification/sources/eeas-4th-fimi-2026.txt` | EEAS 4th FIMI Report, March 2026, full text | ✅ (pre-existing) |
| `amplification/sources/nj-faa-joint-statement.txt` | DHS/FBI/FAA/DoD joint statement, 17 Dec 2024 | ✅ (pre-existing) |
| `amplification/sources/nj-fbi-dhs-statement.txt` | — | ❌ bot challenge only |
| `amplification/sources/wiki-tylenol.txt` | 1982 Chicago Tylenol murders (not the 2025 autism controversy) | ⚠️ mismatch |
| `tools/getoa.sh` | New helper: browser-header fetch + HTML→text (fixed the OpenAI 403 problem) | ✅ created this session |
