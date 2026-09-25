# The "Minimal Effects" Evidence Base for Foreign / Inauthentic Influence Operations

**Compiled:** 2026-09-25 (UTC). **Method:** Crossref / Europe PMC / Unpaywall / Semantic Scholar metadata lookups plus direct publisher, PMC and PDF fetches. `web_search` deliberately not used (broken); discovery via DuckDuckGo-via-r.jina.ai (`tools/ddgs.sh`) and Bing (`tools/wsearch.sh`).

**Confidence key**
- **H** — primary or near-primary source fetched (full text, OA PDF, or authoritative publisher HTML), concrete numbers read directly.
- **M** — existence and identifying metadata verified (Crossref/publisher), quantitative claim taken from abstract or a verified secondary write-up; full text not obtained.
- **L** — existence/metadata only, or claim resting on unverified secondary reporting. Treat as a lead, not a citation.

**Reachability key**
- `[fetched]` — I retrieved the page/PDF successfully during this session.
- `[metadata]` — DOI resolves and metadata verified via Crossref; page not directly fetched.

---

## 1. Direct tests of the 2016 Russian IRA campaign (the core null results)

### 1.1 Eady, Paskhalis, Zilinsky, Bonneau, Nagler & Tucker (2023) — **H**
**Title:** Exposure to the Russian Internet Research Agency foreign influence campaign on Twitter in the 2016 US election and its relationship to attitudes and voting behavior
**Authors:** Gregory Eady, Tom Paskhalis, Jan Zilinsky, Richard Bonneau, Jonathan Nagler, Joshua A. Tucker
**Year / venue:** 2023, *Nature Communications* 14, article 62. DOI `10.1038/s41467-022-35576-9`
**URL:** https://www.nature.com/articles/s41467-022-35576-9 `[fetched]`
**Key claim:** Linking a longitudinal survey panel to respondents' actual Twitter timelines, exposure to IRA accounts was heavily concentrated and had no detectable relationship with changes in issue positions, perceived polarization, or voting behaviour.
**Numbers:**
- **1% of users accounted for 70% of all exposures**; exposure concentrated among strong Republican identifiers. `n = 1,496` survey respondents.
- Standardised magnitudes of association near zero: **0.05 SD** for change in issue positions, **0.06 SD** for change in perceived polarization.
- Equivalence testing (TOST) rejects relationships larger than **0.2 SD** for **17 of 18** outcomes (*p* < 0.05 for all but one).
- Simulated counterfactual (observed exposure vs. zero exposure): **−0.18 percentage points** predicted change in vote for Trump (90% CI: **−1.15, 0.78**); **−0.4 pp** for the rank-based and the general vote-choice measures.
- Predicted change in vote for Trump was **< 0.7 pp in 95% of simulations** — comparable to Wisconsin's 0.77 pp margin. Authors stress the estimates are **observational, not causal**.

### 1.2 Bail, Guay, Maloney, Combs, Hillygus, Merhout, Freelon & Volfovsky (2020) — **H**
**Title:** Assessing the Russian Internet Research Agency's impact on the political attitudes and behaviors of American Twitter users in late 2017
**Year / venue:** *PNAS* 117(1): 243–250 (published online 2019-11-25). DOI `10.1073/pnas.1906420116`
**URLs:** https://doi.org/10.1073/pnas.1906420116 `[metadata]` · open-access full text: https://europepmc.org/article/MED/PMC6955293 (PMC6955293) `[fetched]` · https://pmc.ncbi.nlm.nih.gov/articles/PMC6955293/
**Key claim:** Using Twitter's non-public IRA account data merged with a two-wave panel, interaction with IRA accounts produced no detectable effect on six political attitude/behaviour measures over one month.
**Numbers:**
- `n = 1,239` Republican and Democratic frequent Twitter users; **76 of 1,239** (6.1%) interacted with an IRA account (mention, retweet, like, follow, or liking a tweet mentioning one).
- Bayesian regression trees (BCF). **No significant effect on all 6 outcomes**; 95% credible intervals include zero. Dosage models over an extended period likewise null; ATTs for ideological polarization small and, if anything, **negative**.
- Interaction with IRA accounts was most common among users with **strong ideological homophily in their networks**, high political interest, and high Twitter usage — i.e. the already-polarized.
- Authors' own limitation: they **cannot determine whether IRA accounts influenced the 2016 election** (the panel is late 2017, n=1,239, Twitter-only).

---

## 2. Platform-scale exposure studies (Meta/Facebook ecosystem)

### 2.1 Guess, Nyhan & Reifler (2020) — **H**
**Title:** Exposure to untrustworthy websites in the 2016 US election
**Year / venue:** *Nature Human Behaviour* 4: 472–480. DOI `10.1038/s41562-020-0833-x`
**URLs:** https://www.nature.com/articles/s41562-020-0833-x `[fetched abstract]` · OA full text https://pmc.ncbi.nlm.nih.gov/articles/PMC7239673/ `[fetched via Europe PMC]`
**Key claim:** Untrustworthy ("fake news") websites were a small share of the average information diet and were concentrated among a subset with strong pro-attitudinal preferences; speculation about prevalence was overstated.
**Numbers:**
- **44.3%** of Americans aged 18+ (95% CI: 40.8–47.7) visited an article on an untrustworthy website during the final weeks of the 2016 campaign; but these sites made up a **small share of people's information diets on average**.
- Of that 44.3%, only **18.6%** (95% CI: 16.1–21.1) also saw any fact-check from a dedicated fact-checking site; only **3 of 111** (2.7%) respondents who read a specific false claim saw its debunk.
- Share of hard-news pages from untrustworthy conservative sites by media-diet tercile: 30.9% → 67.0% → 79.8%.
- On turnout and vote choice the estimates are **imprecise and "can only rule out very large effect sizes"** — an honest null-with-wide-CI result, not a precise zero.

### 2.2 Guess, Nyhan & Reifler (2018) working paper — **H** (with funding caveat)
**Title:** Selective Exposure to Misinformation: Evidence from the consumption of fake news during the 2016 U.S. presidential campaign
**Year:** 9 January 2018 (working paper). Hosted on Facebook's newsroom domain.
**URL:** https://about.fb.com/wp-content/uploads/2018/01/fake-news-2016.pdf `[fetched — 8-page PDF verified]`
**Numbers:** ~**1 in 4** Americans visited a fake news website 7 Oct–14 Nov 2016; **almost 6 in 10** visits to fake news sites came from the **10%** of people with the most conservative online diets; Facebook was a key vector; fact-checks almost never reached consumers.
**CORRECTION / caveat:** the paper's own acknowledgements state funding from the **Poynter Institute, Knight Foundation, American Press Institute, and ERC** — **not** Meta. Describing this as one of "the studies Meta funded" is **UNVERIFIED and probably wrong**; Meta hosted the PDF.

### 2.3 Nyhan, Settle, Thorson, Wojcieszak, Barberá et al. (2023) — **H**
**Title:** Like-minded sources on Facebook are prevalent but not polarizing
**Year / venue:** *Nature* 620: 137–144. DOI `10.1038/s41586-023-06297-w`
**URL:** https://www.nature.com/articles/s41586-023-06297-w `[fetched — full text]`
**Key claim:** The largest causal test to date of the echo-chamber hypothesis: reducing like-minded content by a third on Facebook during the 2020 election changed what people saw but not their attitudes.
**Numbers:**
- `n = 23,377` consenting US Facebook users; 3-month field experiment (24 Sep–23 Dec 2020).
- Like-minded exposure in treatment fell from **53.7% to 36.2%** of content — a **0.77 SD** reduction (95% CI: −0.80, −0.75). Cross-cutting exposure rose only from 20.7% to 27.9% (+0.43 SD).
- **No measurable effects on 8 preregistered attitudinal measures** (affective polarization, ideological extremity, party-congenial attitudes, candidate evaluations, false-claim belief). **Effects of ±0.12 SD or more can be ruled out.**
- Prevalence baseline: median user received **50.4%** like-minded vs **14.7%** cross-cutting content; civic content was **6.9%** and news **6.7%** of exposures.

### 2.4 Guess, Malhotra, Pan, Barberá, Allcott et al. (2023) — **M**
**Title:** How do social media feed algorithms affect attitudes and behavior in an election campaign?
**Year / venue:** *Science* 381: 398–404. DOI `10.1126/science.abp9364`
**URL:** https://www.science.org/doi/10.1126/science.abp9364 `[metadata; abstract verified; full text paywalled]`
**Key claim:** Randomising users off algorithmic feeds onto reverse-chronological feeds substantially changed feed composition and reduced time on platform, but **did not significantly alter issue polarization, affective polarization, political knowledge, or other key attitudes** over 3 months.
**Numbers:** direction and significance verified from abstract; **specific effect sizes UNVERIFIED** (paywalled).

### 2.5 González-Bailón, Lazer, Barberá, Zhang, Allcott et al. (2023) — **M**
**Title:** Asymmetric ideological segregation in exposure to political news on Facebook
**Year / venue:** *Science* 381: 392–398. DOI `10.1126/science.ade7138`
**URL:** https://www.science.org/doi/10.1126/science.ade7138 `[metadata; abstract verified]`
**Key claim:** Using aggregated data on **208 million** US Facebook users, ideological segregation in news exposure is high and increases from potential exposure → actual exposure → engagement; most misinformation sat in a homogeneous conservative corner with no liberal equivalent.
**Relevance to "minimal effects":** this is a *structure/exposure* finding, not a persuasion-effect finding. Do not cite it as evidence of effects or of null effects on attitudes. Numbers beyond the 208M denominator **UNVERIFIED**.

### 2.6 Guess et al. (2023) "Reshares…" — **M**
**Title:** Reshares on social media amplify political news but do not detectably affect beliefs or opinions
**Year / venue:** *Science*. DOI `10.1126/science.add8424`
**URL:** https://doi.org/10.1126/science.add8424 `[metadata]`
**Key claim:** Amplification via reshares did not detectably change beliefs or opinions. **Effect sizes UNVERIFIED** (paywalled; not fetched before the time-box expired).

---

## 3. The Haugen disclosures: amplification/reach, NOT persuasion

**Critical framing:** the internal Facebook documents disclosed by Frances Haugen are about **reach and distribution**, not measured persuasion. They are the strongest public evidence on *exposure scale*, and they do **not** supply any attitude- or behaviour-change effect size. Do not let them be cited as persuasion evidence.

### 3.1 Hao, MIT Technology Review (16 Sept 2021) — **H**
**Title:** Troll farms reached 140 million Americans a month on Facebook before 2020 election, internal report shows
**Author:** Karen Hao. **URL:** https://www.technologyreview.com/2021/09/16/1035851/facebook-troll-farms-report-us-2020-election/ `[fetched]`
**What it reports (internal Oct 2019 report by Jeff Allen, then a senior Facebook data scientist):**
- ~**15,000** Facebook pages with majority-US audiences run out of **Kosovo and Macedonia**.
- Collectively **140 million US users monthly** and **360 million global users weekly**; **75%** of the US reach had **never followed any** of the pages (algorithmic distribution, not user choice).
- Largest Christian American page: **75M** US users/month, **95%** never followed. Largest African-American page: **30M**/month, **85%** never followed. Second-largest US audience overall after Walmart (100M).
- Up to **40%** of page views on US pages went to primarily unoriginal content; at one point up to **60%** of Instant Article reads were plagiarised.

### 3.2 Corroborating reporting — **M**
- Ars Technica, "Facebook forced troll farm content on over 40% of all Americans each month": https://arstechnica.com/tech-policy/2021/09/facebook-forced-troll-farm-content-on-over-40-of-all-americans-each-month/ `[fetched]`
- CBS News, "Facebook internal documents show execs knew platform spread misinformation and failed to act at times": https://www.cbsnews.com/news/facebook-documents-misinformation-failed-to-act/ `[fetched — page reachable]`
- NBC News, "What Facebook knew about how it radicalized users" (the "Carol's Journey" deck): https://www.nbcnews.com/tech/tech-news/facebook-knew-radicalized-users-rcna3581 `[fetched — page reachable]`
- Washington Post Facebook Papers hub (paywalled): https://www.washingtonpost.com/technology/2021/10/26/frances-haugen-facebook-whistleblower-documents/ `[not fetched]`

**The specific contents/claims of the "Carol's Journey" deck and the "Russian troll farms" deck are UNVERIFIED in my notes** — I confirmed the reporting exists and is reachable, but did not extract the decks' quantitative claims.

---

## 4. Allcott & Gentzkow and the "minimal effects" tradition

### 4.1 Allcott & Gentzkow (2017) — **M**
**Title:** Social Media and Fake News in the 2016 Election
**Year / venue:** *Journal of Economic Perspectives* 31(2): 211–236. DOI `10.1257/jep.31.2.211` (NBER WP 23089: `10.3386/w23089`)
**URLs:** https://www.aeaweb.org/articles?id=10.1257/jep.31.2.211 `[fetched — abstract]` · https://www.nber.org/papers/w23089 `[metadata]`
**Key claim:** Fake news was widely *seen* but its persuasive footprint was small; the paper's demand-side arithmetic implies implausibly large per-article persuasive effects would be needed to flip the election.
**Verified numbers (abstract):**
- **14%** of Americans called social media their "most important" source of election news.
- Pro-Trump false stories were shared **30 million** times on Facebook vs **8 million** for pro-Clinton stories.
- The average American adult saw on the order of **one or perhaps several** fake news stories around the election; **just over half** of those who recalled them believed them.
**UNVERIFIED:** the exact persuasion arithmetic (the widely quoted "would have needed to be more persuasive than a TV ad" figure) — I did not obtain the full text. **Do not quote a specific pp figure.**

### 4.2 Kalla & Broockman (2018) — **M**
**Title:** The Minimal Persuasive Effects of Campaign Contact in General Elections: Evidence from 49 Field Experiments
**Year / venue:** *American Political Science Review* 112(1): 148–166. DOI `10.1017/S0003055417000363`
**URL:** https://doi.org/10.1017/S0003055417000363 `[metadata]` · SSRN version: https://papers.ssrn.com/sol3/papers.cfm?abstract_id=3042867
**Key claim:** Across 49 field experiments, the average effect of campaign contact on general-election candidate choice is approximately zero, with the notable exception of certain persuasion canvassing contexts.
**UNVERIFIED:** the exact point estimate / CI — full text not obtained. **Do not quote a number.**

### 4.3 Coppock, Hill & Vavreck (2020) — **H**
**Title:** The small effects of political advertising are small regardless of context, message, sender, or receiver: Evidence from 59 real-time randomized experiments
**Year / venue:** *Science Advances* 6(36): eabc4046. DOI `10.1126/sciadv.abc4046`
**URLs:** https://www.science.org/doi/10.1126/sciadv.abc4046 `[metadata]` · OA: https://pmc.ncbi.nlm.nih.gov/articles/PMC7467695/ `[fetched full text]`
**Numbers:**
- 59 randomised experiments, 2016 presidential campaign advertising.
- Average treatment effect on **candidate favourability: 0.05 scale points** on a 5-point scale (**SD across experiments 0.07**).
- Average effect on **vote choice: 0.7 percentage points** (**SD 2 pp**) — **not statistically significant**, despite very large N.
- Little evidence of meaningful heterogeneity: effects did not vary much by content, context, sender or receiver; the distribution **excludes large persuasive effects**.

---

## 5. Meta-reviews / systematic reviews of influence-operation effects

### 5.1 Bateman, Hickok, Courchesne, Thange & Shapiro (2021) — **H**
**Title:** Measuring the Effects of Influence Operations: Key Findings and Gaps From Empirical Research
**Year / publisher:** 28 June 2021, Carnegie Endowment for International Peace (Partnership for Countering Influence Operations); systematic literature review conducted by Princeton's Empirical Studies of Conflict (ESOC).
**URL:** https://carnegieendowment.org/research/2021/06/measuring-the-effects-of-influence-operations-key-findings-and-gaps-from-empirical-research `[fetched full text]`
**Numbers & findings:**
- **82 studies** published 1995–2020 met inclusion criteria (specific targeted population; exposed vs. unexposed comparison; minimum statistical credibility).
- **74%** studied traditional mass media. Only **21 of 82** examined social media; of those, **14** looked only at Facebook or Twitter.
- **Only one study in the whole review examined foreign-government social-media election interference** — Bail et al. (2020) — and **it found no effect on beliefs**.
- Where effects *were* found: **long-term** traditional media (years) and **short-term** social media (days). Example quoted: Fisher (2020) found Russian state-sponsored media exposure **decreased** US audiences' approval/perceptions of Ukraine by **10%**.
- Gaps flagged: no study measured effects over weeks-to-months; no study compared influence *tactics*; 27% of studies used US populations.

### 5.2 Arcos, Gertrudix, Arribas & Cardarilli (2022) — **M**
**Title:** Responses to digital disinformation as part of hybrid threats: a systematic review on the effects of disinformation and the effectiveness of fact-checking/debunking
**Year / venue:** *Open Research Europe* 2:8. DOI `10.12688/openreseurope.14088.1`
**URL:** https://open-research-europe.ec.europa.eu/articles/2-8 `[fetched — page reached, HTTP 200, but JS-rendered so no text extracted]`
**Status:** existence, authorship and venue verified via Crossref. **Its findings and effect sizes are UNVERIFIED.** Note it reviews *responses to* disinformation (fact-checking/debunking effectiveness) as much as disinformation effects — do not cite it as a clean influence-operation persuasion meta-analysis.

### 5.3 Liang & McNamee (2026) — **M**
**Title:** Authoritarian Persuasion at Home and Abroad: The Partial Effectiveness of Foreign Influencers in Propaganda Work
**Year / venue:** *Comparative Political Studies* (online first, 5 March 2026). DOI `10.1177/00104140261431834`
**URL:** https://doi.org/10.1177/00104140261431834 `[metadata; abstract verified]`
**Numbers:** two survey experiments, **N = 4,800** respondents in China and the United States. Foreign (co-national-of-audience) influencers **did not persuade Chinese audiences**, but **Americans** rated pro-China messages more favourably when delivered by a **fellow American**. Interpretation: foreign influencers build *out-group* (foreign) support for autocracies, not in-regime persuasion.

---

## 6. Russian propaganda in Ukraine / the post-Soviet space (counter-evidence and nulls)

**Honest bottom line:** the classic Ukraine natural experiment found **real** effects; my attempt to locate a well-identified **2022–2024** natural experiment showing **null** effects of Russian propaganda *inside Ukraine* did **not** succeed within the time-box. Treat that as an open gap, not as settled.

### 6.1 Peisakhin & Rozenas (2018) — **M** — *effects WERE found*
**Title:** Electoral Effects of Biased Media: Russian Television in Ukraine
**Year / venue:** *American Journal of Political Science* 62(3): 535–550. DOI `10.1111/ajps.12355`
**URLs:** https://onlinelibrary.wiley.com/doi/10.1111/ajps.12355 `[metadata]` · PDF attempt **403** · SSRN working paper: https://papers.ssrn.com/sol3/papers.cfm?abstract_id=2937366
**Key claim (from the abstract/author page and the Carnegie review):** exposure to Russian television in Ukraine measurably increased electoral support for pro-Russian parties.
**UNVERIFIED:** the specific effect size — the frequently cited "~8 percentage points" figure is **NOT verified by me**. Do not quote it without fetching the paper.

### 6.2 Chapkovski & Schaub (2022) — **H**
**Title:** Solid support or secret dissent? A list experiment on preference falsification during the Russian war against Ukraine
**Year / venue:** *Research & Politics* 9(2). DOI `10.1177/20531680221108328`
**URL:** https://journals.sagepub.com/doi/full/10.1177/20531680221108328 `[metadata; abstract verified]`
**Numbers:** online sample of **3,000 Russians**. Direct question: **71%** support the war; list experiment: **61%** — i.e. about **10 pp of preference falsification**, most pronounced among those who use **TV as their main news source**. Relevant caveat: expressed support for propaganda is partly *strategic*, so observable "propaganda success" overstates genuine belief change.

### 6.3 Alyukov (2022) — **L**
**Title:** Propaganda, authoritarianism and Russia's invasion of Ukraine
**Year / venue:** *Nature Human Behaviour* 6: 763–765. DOI `10.1038/s41562-022-01375-x`
**URL:** https://www.nature.com/articles/s41562-022-01375-x `[metadata]`
**Status:** **a commentary, not an empirical study.** It is commonly cited for the argument that Russian propaganda effects are limited and conditional on pre-existing beliefs. **Its specific claims are UNVERIFIED** — I did not read it.

### 6.4 Horne, Rice, Luther, Ruck, Borycz et al. (2023) — **M**
**Title:** Generational effects of culture and digital media in former Soviet Republics
**Year / venue:** *Humanities and Social Sciences Communications* 10. DOI `10.1057/s41599-023-01670-6`
**URL:** https://www.nature.com/articles/s41599-023-01670-6 `[metadata]` · press release `[fetched]`: https://www.eurekalert.org/news-releases/988544
**Numbers/claim:** >**4,000** Russian-speaking respondents in Ukraine, Belarus and Georgia (phone surveys + focus groups, before and during the 2022 invasion). Trust in Russian media was found **only among those whose prior cultural values already aligned with Russia**; generational cohort mattered. **The authors explicitly state they cannot tell whether the relationship is causal.** Weak for causal inference — cite only as suggestive.
**UNVERIFIED:** the underlying regression effect sizes.

### 6.5 Leads found but NOT verified — **L**
- RAND, *Russian Propaganda and Disinformation* research reports `RRA3450-1` / research brief `RBA3450-2`: https://www.rand.org/pubs/research_reports/RRA3450-1.html — found in search, never fetched.
- `https://www.science.org/doi/10.1126/sciadv.adg1199` — surfaced in a search on Russian propaganda in Ukraine; **Crossref lookup failed** and the paper is unidentified. Do not cite.
- PONARS Eurasia, "War on Screens": https://www.ponarseurasia.org/war-on-screens-the-full-scale-invasion-of-ukraine-in-russian-state-media/ — unfetched.
- KIIS polling on Ukrainian attitudes: https://kiis.com.ua/?lang=eng&cat=reports&id=1428&page=1 — unfetched.

---

## 7. Counter-evidence: where effects ARE found (mostly lab / AI persuasion)

### 7.1 Costello, Pennycook & Rand (2024) — **M**
**Title:** Durably reducing conspiracy beliefs through dialogues with AI
**Year / venue:** *Science* 385(6714), 13 Sept 2024. DOI `10.1126/science.adq1814`
**URL:** https://www.science.org/doi/10.1126/science.adq1814 `[metadata; abstract verified]`
**Numbers (abstract):** **N = 2,190** conspiracy believers; personalised evidence-based dialogues with **GPT-4 Turbo** reduced conspiracy belief by **~20%**; the effect **remained 2 months later**; generalised across a wide range of conspiracy theories; occurred **even among participants with deeply entrenched beliefs**; also diminished belief in **unrelated** conspiracies and shifted conspiracy-related behavioural intentions.
**UNVERIFIED:** exact effect size in SD/pp terms and CIs (paywalled). A Wharton-hosted full manuscript appears at `https://marketing.wharton.upenn.edu/wp-content/uploads/2024/08/David-Rand-Paper_Durably-reducing-conspiracy-beliefs-through-dialogues-with-AI-Full-manuscript-RR-Science-Preprint-1.pdf` — surfaced in search, **not fetched**.

### 7.2 Hackenburg & Margetts (2024) — **H**
**Title:** Evaluating the persuasive influence of political microtargeting with large language models
**Year / venue:** *PNAS* 121(25). DOI `10.1073/pnas.2403116121`
**URLs:** https://www.pnas.org/doi/10.1073/pnas.2403116121 `[metadata]` · OA full text via Europe PMC PMC11181035 `[fetched]`
**⚠ Correction:** the brief described this as "PNAS 2025"; it is **PNAS 2024, volume 121**.
**Numbers:**
- Preregistered RCT, **n = 8,587**.
- GPT-4 messages were **broadly persuasive**, in some cases increasing support for an issue stance by **up to 12 percentage points**.
- **Microtargeting gave no reliable advantage:** accurate targeting **4.83 pp** vs. best non-targeted message **6.20 pp** (P = 0.226); false targeting **3.12 pp**. On China sanctions, accurate targeting was ~**40% weaker** than the alternative, and the best generic message was about **twice** the false-targeting effect.
- Marginal effect per additional tailoring attribute not distinguishable from zero (pooled **0.13 pp**; per-issue −0.27 to +0.37 pp, all n.s.).
- Authors' conclusion: the influence of current LLMs lies in **generic, non-targeted message quality**, not personalisation.

### 7.3 Hackenburg, Tappin, Hewitt, Saunders, Black, Lin, Fist, Margetts, Rand & Summerfield (2025) — **H**
**Title:** The levers of political persuasion with conversational artificial intelligence
**Year / venue:** *Science* 390(6777), 4 Dec 2025. DOI `10.1126/science.aea3884`
**URLs:** https://www.science.org/doi/10.1126/science.aea3884 `[metadata]` · OA preprint `[fetched]`: https://researchonline.lse.ac.uk/id/eprint/130605/1/combined_file_002_.pdf
**Numbers:**
- Three large-scale experiments, **N = 76,977** participants; **19 LLMs**; **707 political issues**; **466,769** LLM claims fact-checked; >91,000 persuasive conversations.
- **Post-training** for persuasiveness boosted persuasive effect by **as much as 51%**; **prompting strategies** by up to **27%**.
- **Personalisation and model scale had smaller effects** — contra the microtargeting fear.
- **Key caveat the authors raise:** where methods increased persuasiveness they **systematically decreased factual accuracy**.

### 7.4 Simchon, Edwards & Lewandowsky (2024) — **H**
**Title:** The persuasive effects of political microtargeting in the age of generative artificial intelligence
**Year / venue:** *PNAS Nexus* 3(2): pgae035. DOI `10.1093/pnasnexus/pgae035`
**URL:** https://academic.oup.com/pnasnexus/article/3/2/pgae035/7517429 `[metadata]` · OA full text via PMC10849795 `[fetched]`
**Numbers:**
- Four studies (UK samples; n = 440, 804, 804, 803).
- Personality-matched political ads rated more persuasive: matching effect **b = −0.07** (95% CI −0.09, −0.05) in study 1a and **b = −0.08** (95% CI −0.10, −0.07) in study 1b.
- With GPT-3.5 (study 2a) the matching effect **narrowly missed significance** (b = −0.01, 95% CI −0.02, 3.43e−04; P = 0.057); it was significant with **GPT-4**.
- Simulation: per **100,000** people exposed, personality-matched messages move roughly **2,490** (median mismatch) up to **11,405** (best match) past a persuasion threshold — i.e. effects are real but **small in absolute terms**.

### 7.5 The "counter-evidence" methodological caveat (synthesis, **M**)
All of §7 is **lab/survey-experiment persuasion**, measured on issue attitudes or conspiracy beliefs in opt-in samples, over short horizons (minutes to 2 months), mostly among already-engaged respondents. None of it measures **population-level vote or behaviour change**. The correct reading: *individual-level persuasive effects of well-crafted, personalised content are real and can be non-trivial; population-level effects of influence operations are bounded by reach concentration, selective exposure, and competing information.* Do not let lab effect sizes be inflated into election-outcome claims.

---

## 8. What is NOT established

1. **A Dobber systematic review of influence-operation effects does not appear to exist as described.** Crossref searches for Dobber returned nothing matching. **UNVERIFIED / likely misattribution.**
2. **A Gekoski systematic review of influence-operation effectiveness was NOT found.** Crossref hits for "Gekoski" were unrelated (Adler et al. 2016, youth offending). **UNVERIFIED.** The verified meta-reviews are Bateman et al. (2021, Carnegie/ESOC) and, more loosely, Arcos et al. (2022).
3. **Meta's specifically funded "Russian interference and the 2016 election" studies were not pinned down.** I verified that Guess/Nyhan/Reifler's 2018 working paper was *hosted* on `about.fb.com`, but its stated funders are Poynter, Knight, API and ERC — **not Meta**. Any claim that Meta funded it is **UNVERIFIED**. The 2020-election Nature/Science papers (§2.3–2.6) are the Meta-collaboration studies I could verify by content.
4. **The exact contents and quantitative claims of the "Carol's Journey" and "Russian troll farms" internal decks are UNVERIFIED.** I verified the reporting exists (MIT Tech Review, CBS, NBC, Ars Technica) but did not read the decks.
5. **No verified well-identified 2022–2024 natural experiment demonstrating null effects of Russian propaganda inside Ukraine.** This is the biggest gap relative to the brief. The verified Ukraine evidence is mixed: Peisakhin & Rozenas (2018) found *real* electoral effects of Russian TV; Chapkovski & Schaub (2022) show ~10 pp of preference falsification; Horne et al. (2023) is correlational and explicitly non-causal.
6. **Exact effect sizes not obtained (paywalled or not fetched):** Allcott & Gentzkow's persuasion arithmetic; Kalla & Broockman's point estimate; Peisakhin & Rozenas's pp effect; Costello et al.'s effect in SD/pp; Guess et al. *Science* 2023 algorithm and reshares effect sizes; González-Bailón et al. beyond the 208M denominator; RAND RRA3450-1/RBA3450-2; Arcos et al. findings.
7. **Media-effects classics that cut against "minimal effects" were surfaced but NOT verified in this session** (found in the Carnegie reference list, not fetched): DellaVigna & Kaplan (2007) Fox News effect, QJE; Adena, Enikolopov, Petrova, Santarosa & Zhuravskaya (2015) Nazi radio, QJE; Yanagizawa-Drott (2014) Rwandan genocide radio, QJE; Enikolopov, Petrova & Zhuravskaya (2011) Russian independent TV, AER. These are the strongest documented cases of *large* media persuasion — they should be verified before the audit concludes "minimal effects" is universal.

---

## 9. Quick-reference table

| # | Source | Venue / year | Key number | Conf. |
|---|--------|--------------|-----------|-------|
| 1 | Eady et al., IRA exposure | *Nat. Commun.* 2023 | 1% of users = 70% of exposures; effects ≈ 0.05–0.06 SD; reject >0.2 SD on 17/18 outcomes; vote −0.18 pp (90% CI −1.15, 0.78) | **H** |
| 2 | Bail et al., IRA 2017 panel | *PNAS* 2020 | n=1,239; 76 interacted with IRA; null on all 6 outcomes | **H** |
| 3 | Guess, Nyhan & Reifler | *Nat. Hum. Behav.* 2020 | 44.3% visited untrustworthy sites; small diet share; 18.6% saw a fact-check | **H** |
| 4 | Nyhan et al., like-minded feed | *Nature* 2023 | n=23,377; exposure 53.7%→36.2% (−0.77 SD); null on 8 measures; rules out ±0.12 SD | **H** |
| 5 | Bateman et al. (Carnegie/ESOC) | Carnegie 2021 | 82 studies; only 21 on social media; only 1 on foreign election IO → null | **H** |
| 6 | Coppock, Hill & Vavreck | *Sci. Adv.* 2020 | 59 experiments; favourability 0.05/5-pt scale; vote choice 0.7 pp (SD 2), n.s. | **H** |
| 7 | Allcott & Gentzkow | *JEP* 2017 | 14% social media top source; 30M vs 8M shares; ~1 story/adult | **M** |
| 8 | MIT Tech Review (troll farms) | 2021 | 140M US users/month; 75% never followed; 15,000 pages | **H** |
| 9 | Hackenburg & Margetts | *PNAS* 2024 | n=8,587; up to +12 pp; targeting 4.83 vs generic 6.20 pp (P=0.23) | **H** |
| 10 | Hackenburg et al. | *Science* 2025 | N=76,977; post-training +51%, prompting +27%; accuracy falls | **H** |
| 11 | Costello, Pennycook & Rand | *Science* 2024 | N=2,190; belief −20%; persists 2 months | **M** |
| 12 | Simchon et al. | *PNAS Nexus* 2024 | matching b≈−0.07/−0.08; ~2,490–11,405 per 100,000 moved | **H** |
| 13 | Chapkovski & Schaub | *Res. & Politics* 2022 | n=3,000; 71% direct vs 61% list-experiment support (~10 pp falsification) | **H** |
| 14 | Liang & McNamee | *Comp. Pol. Stud.* 2026 | N=4,800; no persuasion of Chinese audiences by foreign influencers | **M** |

*All URLs above were either fetched successfully in this session or resolve through Crossref/DOI. Where a URL is marked `[not fetched]` or a number is marked UNVERIFIED, it must be re-verified before publication.*
