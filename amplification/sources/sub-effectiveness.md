# Reach and persuasive effect of covert influence operations and coordinated inauthentic behaviour

**Compiled:** 25 September 2026 · **Research cut-off:** 25 September 2026 · **Framing:** defensive/analytic only.
**Question:** What is *actually known* — as opposed to asserted — about how far covert influence operations (IOs) and coordinated inauthentic behaviour (CIB) reach, and whether that reach changes attitudes, turnout or vote choice?

**Evidence grades.** A = primary/official (government, court, platform disclosure); B = peer-reviewed or equivalent working paper; C = reputable news; D = vendor/think-tank; E = anonymous/unverified.
**Confidence** is my judgement of how well the specific number survives scrutiny, not of the source's prestige.
Claims are tagged **[DEMONSTRATED]** (measured), **[CLAIMED]** (asserted, not measured) or **[INFERRED]** (my synthesis).

> **Bottom line.** The best-identified measurement literature finds that foreign IO *reach* was real but heavily concentrated and small relative to domestic political content, and that its *measured* relationship to attitudes, turnout and vote choice is null-to-negligible. The strongest evidence for genuine causal effect comes not from persuasion but from (a) targeted voter-*suppression* advertising and (b) laboratory AI-persuasion experiments — and neither has been shown to scale to population-level election outcomes. Claims that AI has qualitatively changed the mechanism are, as of the cut-off, mostly **[CLAIMED]**, not measured.

---

## 1. The IRA measurement literature (2018–2024)

### 1.1 Eady et al. 2023 — the pivotal null
**Eady, Paskhalis, Zilinsky, Bonneau, Nagler & Tucker, "Exposure to the Russian Internet Research Agency foreign influence campaign on Twitter in the 2016 US election and its relationship to attitudes and voting behavior," *Nature Communications* 14, 9 Jan 2023.**
<https://www.nature.com/articles/s41467-022-35576-9> · Grade **B** · Confidence **high** · **[DEMONSTRATED]**

Design: 1,496 US Twitter users, three-wave YouGov panel linked to respondents' full Twitter timelines (1.2bn posts), with Twitter's IRA account list. Key measured results:

| Finding | Number |
|---|---|
| Concentration of exposure | **1% of users = 70% of exposures**; 10% = 98% |
| Concentration on supply side | 1% of Russian accounts = **89%** of the IRA content in timelines |
| Benchmark vs domestic content (last month) | ~**4** IRA posts/user/day vs **106** national-news and **35** politician posts/day → **25×** and **9×** |
| Median weekly IRA exposure in final month | **0** |
| Partisan skew | "Strong Republicans" exposed to ~**9×** more than Democrats/Independents; relationship monotonic, not U-shaped |
| Aggregate reach | 63% of US Twitter users potentially exposed → **~32 million Americans** |
| Effect on vote choice | **−0.18 pp** for Trump (90% CI −1.15, 0.78); ≈ −0.4 for preference-rank and broader measures |
| Attitude / polarisation effects | no meaningful relationship detected |

**Why it matters:** the paper's own framing is that Russia's campaign "may have had its largest effects by convincing Americans that its campaign was successful" — i.e. second-order effects on legitimacy beliefs, which this design does **not** measure.
**Caveats that limit inference:** "exposure" = *potential* exposure (a post appearing in a timeline), not attention; observational, not randomised; Twitter's account list was never independently validated; Twitter-only.

### 1.2 Bail et al. 2020 — independent null with a different design
**Bail, Guay, Maloney, Combs, Hillygus, Merhout, Freelon & Volfovsky, *PNAS* 117(1):243–250, online 25 Nov 2019.** <https://doi.org/10.1073/pnas.1906420116> · Grade **B** · Confidence **high** · **[DEMONSTRATED]**

Longitudinal survey of 1,239 partisan Twitter users (late 2017) merged with non-public Twitter IRA data; Bayesian causal forest. Of 1,239 respondents, **76** had interacted with an IRA account; main models: **44 treated vs 1,106 control**. **No significant effect on any of 6 outcomes** (issue attitudes, affective polarisation, partisan stereotypes, political engagement, accounts followed, network ideology). Interactions were concentrated among users with high echo-chamber homophily, high political interest and heavy Twitter use — i.e. the *least* persuadable. **80%** never interacted; for those who did, IRA interactions were **0.1%** of their likes/mentions/retweets. Dosage models (213/110/67 treated) also null.

### 1.3 Reach was broad, not just partisan — the counterweight
**Freelon & Lokot, "Russian Twitter disinformation campaigns reach across the American political spectrum," *HKS Misinformation Review*, 16 Feb 2023.** <https://misinforeview.hks.harvard.edu/article/russian-disinformation-campaigns-on-twitter/> · Grade **B** · Confidence **medium-high** · **[DEMONSTRATED]**

Network analysis of **2,057,747 authentic replies** to IRA tweets over nine years; 10 distinct communities (four right-wing, one left/anti-Trump, one Black-American, false-news, hashtag games, health, Russian-language). Authentic users overwhelmingly engaged with IRA personas matching *their own* identity — so the IRA had reach into separate ideological silos, not only into strong Republicans. This **qualifies but does not overturn** Eady §1.1: different population (repliers, 9-year window) and different measure (engagement, not timeline exposure).
**Linvill & Warren, "Engaging with others," *HKS Misinformation Review*, 14 Jan 2020** (<https://misinforeview.hks.harvard.edu/article/engaging-ira-coordinated-information-operation/>) adds that in its final phase the IRA mostly *retweeted* real users, amplifying **>100k** external accounts — a mechanism that hides reach inside organic behaviour. Grade **B**, confidence **medium**.

### 1.4 Concentration is a general property, not an IRA quirk
**Baribi-Bartov, Swire-Thompson & Grinberg, "Supersharers of fake news on Twitter," *Science*, 30 May 2024.** <https://doi.org/10.1126/science.adl4435> · Grade **B** · Confidence **high** · **[DEMONSTRATED]**
**2,107 registered US voters (0.3% of a 664,391-voter panel) accounted for 80% of fake-news sharing** during the 2020 election, reaching 5.2% of registered voters. Domestic, not foreign — but it shows that extreme concentration of a harmful content class is normal and not itself evidence of a coordinated foreign operation.

### 1.5 Official reach figures — headline numbers and their provenance
Full provenance in `amplification/notes/stream-f-ira-official.md`. Headline figures as cited in the peer-reviewed literature (Eady et al. 2023, §1.1):

- **Facebook:** ~**126 million** users *potentially* exposed to IRA content over two years (Facebook's own estimate, 2017). Grade **A** (platform), confidence **medium** — it is an *upper bound on potential exposure*, not reach or attention.
- **Twitter:** ~**288 million** views of IRA content, 1 Sep–15 Nov 2016, with **1.4 million** direct interactions; **3,841** IRA-linked accounts and ~**10 million** tweets (Twitter's 2018 disclosures). Grade **A** (platform), confidence **medium** — Twitter later expanded its account list without updating views, so 288m is a floor for views *and* an extreme upper bound on users.
- **Google/YouTube:** **1,108** videos, **43 hours**, ~**309,000** views (Google, 2017). Grade **A**, confidence **medium**.
- **SSCI Vol. 2, "Russia's Use of Social Media," Oct 2019**, and the underlying contractor reports (New Knowledge, *The Tactics & Tropes of the IRA*, 2018; Oxford Computational Propaganda Project, *The IRA, Social Media and Political Polarization*, 2018) are Grade **A** as documents but the reach numbers inside them are largely **vendor extrapolations from samples**, not full censuses — treat as **CLAIMED** with confidence **low-to-medium**.

**[INFERRED]** The three platform figures are not comparable: "potential views", "reach" and "interactions" measure different things, and only Twitter's interaction figure is close to a behavioural measure — and it is ~0.5% of the view figure.

---

## 2. Follow-up 2023–2026: did exposure change attitudes, turnout or votes?

- **Coppock, Hill & Vavreck, "The small effects of political advertising are small regardless of context, message, sender, or receiver," *Science Advances*, 2 Sep 2020.** <https://doi.org/10.1126/sciadv.abc4046> · Grade **B** · Confidence **high** · **[DEMONSTRATED]** — 59 unique experiments, 49 real campaign ads, ~34,000 people, replicated weekly in real time during 2016. Average effects on candidate favourability and vote are **small**, and heterogeneity (battleground, primary/general, party, attack/promotional) does **not** hide large offsetting effects. This is the crucial benchmark: even well-funded, well-targeted *domestic* persuasion barely moves vote choice, so a foreign campaign with a fraction of the dosage should not be assumed to.
- **Kalla & Broockman, "The minimal persuasive effects of campaign contact in general elections," *APSR* 2018** — meta-analysis of 49 field experiments; average effect of campaign contact ≈ **0**, with tight bounds (see `stream-b-effects.md`).
- **Kim, Dahlke, Song & Heinrich, "Targeted digital voter suppression efforts likely decrease voter turnout," *PNAS*, 26 Jan 2026.** <https://doi.org/10.1073/pnas.2519944123> · Grade **B** · Confidence **medium** · **[DEMONSTRATED]** — user-level real-time ad tracking merged with verified turnout records; 2016 election. Finds clear **geo-racial targeting** (non-Whites in minority counties of battleground states saw substantially more suppression ads) and **small** population-level *decreases* in turnout, sharpest in those targeted segments. This is the strongest recent measured effect in the area — but it is **demobilisation via paid ad targeting**, not attitude change via organic IO, and the effect is explicitly described as small.
- **"Chatbot Voting Advice Applications inform but seldom sway young unaligned voters," *PNAS*, 8 Dec 2025** — consistent direction: AI-mediated political information shifts knowledge more than preference.

---

## 3. AI-generated persuasion: what the experiments actually show

- **Salvi, Horta Ribeiro, Gallotti & West, "On the Conversational Persuasiveness of Large Language Models: A Randomized Controlled Trial," arXiv:2403.14380 (Mar 2024); *Nature Human Behaviour* (2025), doi 10.1038/s41562-025-02194-6.** <https://arxiv.org/abs/2403.14380> · Grade **B** · Confidence **high** (for the experiment), **low** (for external validity) · **[DEMONSTRATED]**
  Pre-registered; **N = 820**; multi-round debates. Participants who debated **GPT-4 with access to their personal information had 81.7% higher odds** of increased agreement than those who debated a human (**p < 0.01**). **Without** personalisation, GPT-4 still outperformed humans but **non-significantly (p = 0.31)**. Note the units: this is an odds ratio on a short, low-stakes, self-reported agreement shift — not a vote.
- **Liu, Salvi et al. (38 authors), "When Large Language Models are More Persuasive Than Incentivized Humans, and Why," arXiv:2505.09662 (May 2025; v4 Aug 2026).** <https://arxiv.org/abs/2505.09662> · Grade **B** · Confidence **medium-high** · **[DEMONSTRATED]** — the most important *qualifier*: LLM superiority is **context-dependent** (truthful vs deceptive), **model-specific**, and **wanes over repeated interactions, unlike human persuasiveness**. The effect may depend on LLMs expressing higher *conviction* than humans. This is a multi-lab replication with a much weaker, conditional story than the single-study headline.
- **Orchinik et al., "A light-touch AI literacy intervention helps protect against AI political persuasion," arXiv:2609.16432 (Sep 2026).** <https://arxiv.org/abs/2609.16432> · Grade **B** (preprint) · Confidence **medium** · **[DEMONSTRATED]** — two experiments, **N = 3,208** Americans conversing with an LLM instructed to shift their views. A brief warning that LLMs can be prompted to persuade **reduced belief change by ~48.1% (95% CI −59.5% to −36.8%)**, without significantly reducing trust in generative AI generally. If replicated: AI persuasion is real *and* cheaply attenuable.
- **Salvi, Cuevas & Horta Ribeiro, "Commercial Persuasion in AI-Mediated Conversations," arXiv:2604.04263 (Apr 2026).** <https://arxiv.org/abs/2604.04263> · Grade **B** (preprint) · Confidence **medium** · **[DEMONSTRATED]** — N = 2,012; LLM persuasion **nearly triples** selection of sponsored products vs conventional search placement (**61.2% vs 22.4%**); "Sponsored" labels do not significantly reduce it; instructing concealment drives detection below **10%**. Commercial, not political, but it is the cleanest demonstration that *conversational* steering is stronger than static messaging and hard to make transparent.
- **Hackenburg & Margetts** (PNAS 2024) and **Hackenburg et al.** (Nature Human Behaviour 2025, "The levers of political persuasion with conversational AI"): see `stream-c-ai-persuasion.md` for exact Ns and effect sizes. **[DEMONSTRATED]**
- **Goldstein, Chao, Grossman, Stamos & Tomz, "How persuasive is AI-generated propaganda?" *PNAS Nexus* 2024** — LLM-written propaganda performed comparably to human-written, but absolute persuasion was modest. See `stream-c-ai-persuasion.md`.
- **Countermeasure durability — genuinely mixed.** **Simchon, Zipori, Teitelbaum, Lewandowsky & van der Linden, *Current Opinion in Psychology*, Oct 2025** (33 inoculation experiments, **N = 37,025**; signal-detection meta-analysis): inoculation reliably improves **discrimination** between reliable and unreliable news without inducing blanket scepticism. Grade **B**, confidence **medium-high**. **Against that:** **Roozenbeek, Freeman & van der Linden, *Psychological Science*, 2021** — preregistered direct replication of the accuracy nudge: **stage 1 failed (p = .67)**; pooled N = 1,583 gave a *small* interaction (**d = 0.14** treatment vs **0.10** control). And **Loughnan, van Stekelenburg, Pouwels & Kleemans, *JMIR*, Aug 2025**, raise **methodological concerns about the inoculation meta-analytic literature**. Net **[INFERRED]**: prebunking/inoculation is the best-supported countermeasure, but pooled effects are small-to-moderate and the durability evidence is thinner than commonly presented.

---

## 4. Sceptical assessments

- **The Breakout Scale — Nimmo (Graphika), Brookings, September 2020.** <https://www.brookings.edu/articles/the-breakout-scale-measuring-the-impact-of-influence-operations/> · Grade **D** · Confidence **high** (for the framework) · **[CLAIMED]** as a measurement of impact.
  Six categories: **1** one community on one platform; **2** one community across platforms, *or* multiple communities on one platform; **3** multiple platforms *and* multiple communities; **4** breaks out to mainstream media; **5** amplified by high-profile individuals (celebrities, candidates); **6** triggers a policy response or concrete action, *or* includes a call to violence. The framework's own argument is that operators struggle to climb the scale and that **mainstream journalists, celebrities and policymakers — not the operators — do most of the amplification**. Critically, the scale measures **breakout, not persuasion**: Categories 1–3 can be reached with negligible attitudinal effect.
- **Takedown arithmetic.** Platform CIB/adversarial-threat disclosures (Meta, Google TAG) remove accounts in the hundreds-to-thousands per operation, with no published organic-reach or engagement figures that would let a reader infer effect. See `stream-d-sceptical.md` for 2023–2026 counts and any reach statements.
- **Backfire vs. correction.** The "backfire effect" (Nyhan & Reifler 2010) has largely **failed to replicate at scale** — Wood & Porter, "The Elusive Backfire Effect," *Political Behavior* 2019; Guess & Coppock 2020. The larger problem is not backlash but the **implied truth effect** (Pennycook, Bear, Collins & Rand, *Management Science* 2020): tagging *some* false content can make *untagged* false content look truer. See `stream-d-sceptical.md` for effect sizes.
- **Counterproductive-for-the-intervener.** Eady et al.'s discussion (§1.1) is the cleanest published statement: the campaign's largest effect may have been on **American beliefs about the campaign itself**, not on vote choice. Exposure concentrated among already-committed Republicans is structurally incapable of being persuasive.

---

## 5. AI-generated content reach and prevalence, 2025–2026

See `stream-e-ai-reach.md` for the full inventory. Headline cautions that apply to nearly every number in this space:
- Most "prevalence" estimates come from **vendor panels** (NewsGuard, Graphika, Similarweb-type traffic estimates) or **detector-based classification**, both with material error rates. Grade **D**; confidence **low-to-medium**.
- Vendor claims about *how many* AI-generated sites exist should not be read as claims about *audience*: NewsGuard's own reporting has repeatedly found **very low engagement** per site. **[CLAIMED]**
- Platform transparency reports (Meta, TikTok, YouTube, X, 2025–2026) and OpenAI/Meta threat reports on LLM-assisted covert operations report **account counts and takedowns**, generally without organic reach or engagement — so they cannot support impact claims. Grade **A** for the takedown count, **not applicable** for effect.
- Politico, "Foreign actors turn to Claude for influence operations," 10 Sep 2026 (<https://www.politico.com/newsletters/politico-influence/2026/09/10/foreign-actors-turn-to-claude-for-influence-operations-01071431>) — Grade **C**, confidence **low**: tool-adoption evidence, not effect.

---

## 6. Where the evidence is THIN (explicit)

1. **No field experiment has ever randomly assigned exposure to foreign IO**, for obvious ethical and legal reasons. Every IRA exposure estimate is observational, and "exposure" means *potential* exposure (posts in a timeline), not attention. Effect estimates are therefore **upper bounds at best**.
2. **The "1% received 70%" figure is a concentration statistic about potential exposure**, not about persuasion, attention or belief. It is often cited as if it were an impact finding; it is not.
3. **Attitudinal effects are asserted far more often than measured.** SSCI/New Knowledge/Oxford-style "sowed discord" and "radicalised" framings are **[CLAIMED]**; the two best-identified individual-level studies (Eady; Bail) find nothing. The gap between the two literatures is largely a gap between **content/strategy analysis** and **effect measurement**.
4. **The persuasion-effects literature is bounded, not precise.** Eady's vote-choice estimate is "near zero" with 90% CIs of roughly ±1 pp; the equivalence bound is <0.7 pp in 95% of simulations. That excludes large effects, not small ones. A 0.3 pp national swing is both undetectable in these designs and potentially electorally decisive in a close state — the literature cannot resolve this.
5. **AI-specific impact is the weakest link.** There is no population-level measurement showing that LLM-generated IO changed attitudes, turnout or votes. Salvi et al. and Hackenburg et al. establish **short-horizon, self-reported, low-dosage** effects in volunteers; Liu et al. show the advantage **decays across repeated interactions**. Commercial-steering results (61.2% vs 22.4%) do not transfer to political choice, where priors are stronger and persuasion effects are smaller.
6. **"AI has qualitatively changed the mechanism" is [CLAIMED], not shown.** The measurable changes are in **production cost and volume** (vendor/government threat reporting) and in **conversational adaptivity** (lab studies). No study demonstrates a changed *population-level effect size*.
7. **Prevalence estimates for AI content rest on weak instruments** — detector error rates, panel bias, and definitional drift ("AI-generated" vs "AI-assisted" vs "AI-edited"). Directional claims ("most political content is now AI") are not supported by instruments capable of supporting them.
8. **Second-order/legitimacy effects are essentially unmeasured** — Eady's own candidate explanation for the campaign's largest impact has no dedicated causal design behind it.
9. **Countermeasure durability is genuinely uncertain** — the accuracy-nudge replication failed at stage 1; inoculation meta-analyses have attracted published methodological criticism; long-horizon decay is under-studied.

---

## 7. Citation-integrity notes (corrections to the commissioning brief)

- The 2023 *Nature Communications* IRA paper's author list is **Eady, Paskhalis, Zilinsky, Bonneau, Nagler & Tucker** (verified against the article page). There is **no "Poteat" and no "Trexler"** on it; Crossref author searches for "Poteat" and "Trexler" return no IRA/influence-operation work. Treat that part of the brief as a **fabricated or garbled citation**.
- **"Like, Post, and Mistrust" (attributed to Guess, Nyhan et al.) could not be located** in Crossref, arXiv, Europe PMC, OpenAlex (rate-limited), the HKS Misinformation Review index, or general web/news search as a work on IRA exposure. Either the title is wrong or the work does not exist. The closest verified real work by the named authors in this space is **Bail et al. 2020 (§1.2)** for exposure→attitudes, and **Guess, Nyhan, O'Keeffe & Schimmel, *Science* 2023**, on exposure to vaccine-skeptical content on Facebook — a different topic. **Do not cite "Like, Post, and Mistrust" without a locatable DOI.**
- The **Breakout Scale** attribution to **Nimmo** is correct (Brookings, Sept 2020); note that the related "ABC" framework is **François/Graphika** — the two are frequently conflated.
- Salvi et al.'s arXiv identifier is **2403.14380**, not 2410.12743 (that ID is a soft-matter physics paper).

---

## 8. Source table

| # | Source | Date | Publisher | Grade | Confidence | Effect / number |
|---|---|---|---|---|---|---|
| 1 | Eady, Paskhalis, Zilinsky, Bonneau, Nagler & Tucker | 2023-01-09 | Nature Communications | B | High | 1%→70% exposure; ~32m reached; vote effect −0.18 pp (90% CI −1.15, 0.78) |
| 2 | Bail, Guay, Maloney, Combs, Hillygus, Merhout, Freelon & Volfovsky | 2019-11-25 | PNAS | B | High | 44 treated/1,106 control; 0/6 outcomes significant; 0.1% of activity |
| 3 | Freelon & Lokot | 2023-02-16 | HKS Misinformation Review | B | Med-High | 2,057,747 replies; 10 communities across spectrum |
| 4 | Linvill & Warren | 2020-01-14 | HKS Misinformation Review | B | Medium | >100k external accounts amplified |
| 5 | Baribi-Bartov, Swire-Thompson & Grinberg | 2024-05-30 | Science | B | High | 2,107 users = 80% of fake-news shares; reach 5.2% |
| 6 | Facebook / Twitter / Google disclosures (as cited in #1) | 2017–2018 | Platforms | A | Medium | 126m; 288m views / 1.4m interactions; 1,108 videos / 309k views |
| 7 | SSCI Vol. 2 + New Knowledge + Oxford CPP | 2018–2019 | US Senate / vendors | A (doc) / D (numbers) | Low-Med | Vendor extrapolations; treat as claimed |
| 8 | Coppock, Hill & Vavreck | 2020-09-02 | Science Advances | B | High | 59 experiments, 34k people; small effects, no hidden heterogeneity |
| 9 | Kim, Dahlke, Song & Heinrich | 2026-01-26 | PNAS | B | Medium | Geo-racial targeting; small turnout decreases |
| 10 | Salvi, Horta Ribeiro, Gallotti & West | 2024-03 / 2025 | arXiv / Nature Human Behaviour | B | High (lab) | +81.7% odds of agreement shift with personalisation (p<0.01); null without (p=0.31) |
| 11 | Liu et al. (38 authors) | 2025-05 / 2026-08 | arXiv | B | Med-High | LLM advantage context-dependent and decays over turns |
| 12 | Orchinik et al. | 2026-09-14 | arXiv | B (preprint) | Medium | Warning cuts belief change −48.1% (CI −59.5, −36.8), N=3,208 |
| 13 | Salvi, Cuevas & Horta Ribeiro | 2026-04 | arXiv | B (preprint) | Medium | Sponsored selection 61.2% vs 22.4%; concealment detection <10% |
| 14 | Simchon et al. | 2025-10 | Current Opinion in Psychology | B | Med-High | 33 experiments, N=37,025; improved discrimination, no bias increase |
| 15 | Roozenbeek, Freeman & van der Linden | 2021-06 | Psychological Science | B | Medium | Accuracy nudge: stage 1 failed (p=.67); pooled d=0.14 vs 0.10 |
| 16 | Loughnan et al. | 2025-08-28 | JMIR | B | Medium | Methodological critique of inoculation meta-analysis |
| 17 | Nimmo | 2020-09 | Brookings | D | High | 6-level Breakout Scale; breakout ≠ persuasion |
| 18 | Hackenburg & Margetts; Hackenburg et al.; Goldstein et al. | 2024–2025 | PNAS / Nat Hum Behav / PNAS Nexus | B | Medium | See stream-c notes |

*Raw research trails: `amplification/notes/stream-b-effects.md`, `stream-c-ai-persuasion.md`, `stream-d-sceptical.md`, `stream-e-ai-reach.md`, `stream-f-ira-official.md`.*
