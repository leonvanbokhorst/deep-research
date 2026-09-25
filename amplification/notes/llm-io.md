# Generative-AI / LLM-Driven Influence Operations — State of the Evidence (c. 2024–2026)

**Compiled:** September 2026 (environment date)
**Scope:** OpenAI & Anthropic threat-intelligence reporting; peer-reviewed and preprint research on LLM-generated propaganda/persuasion; countervailing evidence on reach and effectiveness; agentic AI in influence operations; cost/scale economics.
**Method:** Direct fetches of primary PDFs/pages plus DOI metadata via Crossref. `web_search` was disabled per instructions; searches used the workspace `tools/s.sh` (DuckDuckGo via r.jina.ai), `tools/news.sh` (Google News RSS) and `tools/get.sh`. arXiv abs pages were fetched directly (the arXiv API and OpenAlex were rate-limited on this IP; `r.jina.ai` was intermittently blocked for arxiv.org/openai.com).

**Confidence key**
- **H** = primary source fetched and read directly; numbers quoted verbatim from the document.
- **M** = primary source located and metadata/headline verified, but full text not read (paywall, bot-block, or secondary indexing only); numbers not independently re-derived.
- **L** = obtained only from secondary reporting or search snippets; treat as a lead, not a citable fact.

> **Integrity note:** every URL below was either fetched during this session or returned by a search engine/RSS index. Numbers are quoted from the source text. Where a figure is a vendor's self-reported assessment (e.g., Breakout Scale category) rather than an independent measurement, this is flagged.

---

## 1. OpenAI threat reporting (2024, 2025, 2026 editions)

OpenAI's reports are now branded **"Disrupting malicious uses of our models"** (quarterly case studies), with the 2024 editions explicitly titled **"Influence and cyber operations"**. Author team across the 2025–2026 reports includes Ben Nimmo, Kimo Bumanglag, Michael Flossman, Nathaniel Hartley, Jack Stubbs and Albert Zhang.

### 1.1 "Disrupting malicious uses of AI by state-affiliated threat actors" — 14 Feb 2024
- **URL:** https://openai.com/index/disrupting-malicious-uses-of-ai-by-state-affiliated-threat-actors
- **Confidence: M** (URL confirmed in OpenAI's own news RSS; page body blocked to curl, not re-fetched this session).
- OpenAI's **first** public threat report. Disrupted five state-linked IO: **"Bad Grammar"** (Russia-linked Telegram comment activity), **IUVM** (Iran), **"Zero Zeno"** (Israel-linked commercial IO), **"Doppelganger"** (Russia, targeting Ukraine), **"Spamouflage"** (China). Also reported the first known LLM-assisted cyber intrusion research by a state actor.
- **Numbers:** OpenAI did not publish effect sizes in the public summary; the report is a qualitative taxonomy of misuse.

### 1.2 "Disrupting deceptive uses of AI by covert influence operations" — 30 May 2024
- **URL:** https://openai.com/index/disrupting-deceptive-uses-of-ai-by-covert-influence-operations/
- **Confidence: H** (fetched and read).
- Disrupted **five** covert IO in the prior three months (languages including English, Chinese, Russian, Spanish, Farsi). Tasks: generating short comments, longer articles, fake names/bios, open-source research, translation/proofreading.
- **Key quantitative effect statement (verbatim):** *"As of May 2024, these campaigns do not appear to have meaningfully increased their audience engagement or reach as a result of our services."*
- **Effect size / scale:** Using Brookings' **Breakout Scale** (1 = lowest, 6 = highest), *"none of the five operations included in our case studies scored higher than a 2 (activity on multiple platforms, but no breakout into authentic communities)."*
- OpenAI also published an accompanying trend-analysis document.

### 1.3 "Influence and cyber operations: an update" — October 2024
- **PDF (verified, downloaded):** https://cdn.openai.com/threat-intelligence-reports/influence-and-cyber-operations-an-update_October-2024.pdf
- **Confidence: H** (PDF downloaded and read).
- **Key quantitative statements (verbatim):**
  - *"we have not seen evidence of this leading to meaningful breakthroughs in their ability to create substantially new malware or build viral audiences."*
  - *"the deceptive activity that achieved the greatest social media reach and media interest was a hoax about the use of AI, not the use of AI itself."*
  - *"So far this year, we have not observed any cases of election-related influence operations attracting viral engagement or building sustained audiences through their use of our models."*
  - *"Using Brookings' Breakout Scale … we assess that all of the election-related operations were in Category Two, meaning that their ability to reach real people across the internet remained limited."*
- **Case-level numbers:** The Iranian operation (Aug 2024) — *"the majority of social media posts … received few or no likes, shares, or comments"*; the Rwanda election network — same pattern; "Zero Zeno" disrupted in **under 24 hours**; "A2Z" posts mainly received few/no likes/shares/comments, though some real users replied.

### 1.4 "Disrupting malicious uses of AI: February 2025" — 21 Feb 2025
- **URL:** https://openai.com/global-affairs/disrupting-malicious-uses-of-ai
- **Case-study index entries (URLs confirmed via OpenAI RSS):**
  - "Iranian influence nexus: Cross-platform activity" — https://openai.com/index/disrupting-malicious-uses-of-ai-iranian-influence-nexus
  - "Covert influence operation: Ghana election activity" — https://openai.com/index/disrupting-malicious-uses-of-ai-ghana-election
  - "Operation 'Sponsored Discontent': Influence activity" — https://openai.com/index/disrupting-malicious-uses-of-ai-sponsored-discontent
- **Confidence: M** (landing page fetched; full PDF not retrieved).
- One year after the first report. Mostly qualitative; the Ghana case involved AI-generated articles, posts and **fake engagement** around Ghana's 2024 presidential election.

### 1.5 "Disrupting malicious uses of AI: June 2025" — 5 Jun 2025
- **URL:** https://openai.com/global-affairs/disrupting-malicious-uses-of-ai-june-2025
- **PDF (verified, downloaded):** https://cdn.openai.com/threat-intelligence-reports/5f73af09-a3a3-4a55-992e-069237681620/disrupting-malicious-uses-of-ai-june-2025.pdf
- **Confidence: H** (PDF downloaded and read).
- **Chinese-origin "Sneer Review" network** (comments in English/Chinese/Urdu; one user claimed to work for the Chinese Propaganda Department — **unverified**).
- **Concrete numbers:**
  - A TikTok video falsely accusing Pakistani activist Mahrang Baloch showed **199 comments**; OpenAI observed **220 comments generated** by the network — i.e., **the majority of visible engagement was AI-generated**.
  - Facebook: Pages had **zero followers/likes**; a video got **0 comments and 21 shares despite >1,000 likes** — OpenAI reads this as inauthentic engagement.
  - Reddit: one post **44 upvotes**; two others **blocked/removed** by subreddit filters.
  - Two TikTok videos amassed a combined **25,000 likes**; the main X account's tweets typically got **~10,000 views each**.
  - **Breakout Scale assessment:** *"low end of Category 3 … if the figures for engagement on X and TikTok were authentic. We would revise this downwards"* if most likes/views were also inauthentic.

### 1.6 "Disrupting malicious uses of AI: October 2025" — 7 Oct 2025
- **URL:** https://openai.com/global-affairs/disrupting-malicious-uses-of-ai-october-2025
- **PDF (verified, downloaded):** https://cdn.openai.com/threat-intelligence-reports/7d662b68-952f-4dfd-a2f2-fe55b041cc4a/disrupting-malicious-uses-of-ai-october-2025.pdf
- **Confidence: H** (PDF downloaded and read).
- **Aggregate:** *"Since we began our public threat reporting in February 2024, we've disrupted and reported **over 40 networks** that violated our usage policies."*
- **Central claim:** *"We continue to see threat actors **bolt AI onto old playbooks to move faster, not gain novel offensive capability** from our models."*
- **"Newstop Africa" case — the strongest reach numbers in OpenAI's corpus:**
  - Core "Newstop Africa" X account: **172 followers**; highest retweets on any post: **4**.
  - TikTok channel: **~1,900 followers**, **5,855 likes across 56 videos** (avg **105 likes/video**); most-viewed **63,300**, least-viewed **87**.
  - YouTube: **~255,000 views across 50 videos** (avg **5,100/video**); most-viewed **37,000**, least **126**.
  - OpenAI: *"we see no evidence of these videos having been re-shared, cited in the media, or otherwise achieved wider resonance."*
  - **Reassessment:** the operation was originally assessed **Category 3** (Oct 2024); after VIGINUM/open-source work showed its "information partnerships" were likely fictional (content injected via technical flaws in third-party sites), OpenAI **downgraded it to Category 2**.
- **"Nine–emdash Line" case (Philippines/Vietnam/Hong Kong/US):** assessed **Category 2** — *"Most of the posts and social media accounts received minimal or no engagements. Often the only replies to or reposts of a post … were by other social media accounts controlled by the operators."* Personas were easily identifiable (stock photos, default handles, reused hashtags).

### 1.7 "Disrupting malicious uses of our models: an update, February 2026" — 25 Feb 2026
- **Landing URL:** https://openai.com/index/disrupting-malicious-ai-uses
- **PDF (verified, downloaded, 60 MB):** https://cdn.openai.com/pdf/df438d70-e3fe-4a6c-a403-ff632def8f79/disrupting-malicious-uses-of-ai.pdf
- **Confidence: H** (PDF downloaded and read).
- **The single most useful natural experiment in the corpus:** a threat actor generated a **batch of seven tweets from one prompt**; six were tweeted by different X accounts.
  - Most-seen tweet: **>150,000 views**. Least-seen: **57 views**.
  - Highest-view account: **>600,000 followers** (as of 26 Jan 2026). Lowest-view account: **827 followers**.
  - OpenAI's conclusion (verbatim): *"Since all the tweets were generated in one batch from one prompt, this suggests that the determining factor in whether each tweet was highly viewed was more likely each account's follower count than the AI nature of the content."*
- **Executive-summary thesis (verbatim):** *"The use of AI-generated content on its own does not appear to have been the decisive factor; rather, other factors were likely the main drivers of engagement, notably the popularity of the accounts which did the posting."*
- **China "Cyber Special Operations" case — scale vs impact gap:**
  - Described as large-scale, sustained: *"at least hundreds of staff, thousands of fake accounts across scores of platforms, and the use of locally-deployed AI models, especially Chinese ones"*; over **100 distinct tactics**.
  - **Impact:** *"In one update, the ChatGPT user recorded that their unit had made over 50,000 posts across over 200 Western platforms. Of those, under 150 posts received over 300 shares or comments."* → **≈0.3%** of posts crossed that engagement threshold (derived ratio; the source gives the two raw counts, not the percentage).
  - A separate identified subset: YouTube videos with **single-digit views**; tweets and Pixiv posts typically **zero engagements**; highest Pixiv meme views: **108**.
  - Also: an operation targeting the Japanese PM was planned with the model, which **refused**; the operation reportedly proceeded without OpenAI's model.
- **"Fish Food" (Rybar-linked content farm):**
  - Rybar's main Russian-language Telegram channel: **~1.4 million subscribers**; many amplifier accounts had tens of thousands of followers.
  - **Cost/scale datapoint:** a prompt asked the model to edit a proposal for a deployed election-interference team in Africa, with *"an estimated annual budget of up to $600,000 for the most ambitious project."*
  - Impact: no observed mainstream-media amplification; no evidence of the described on-the-ground activity.
- **Breakout Scale assessments in this report (vendor judgement, not independent measurement):**
  - "Trolling Stone": **towards the low end of Category 4**, based on placement of some articles in Argentine news sites (Facebook Pages had a few hundred followers; typical posts got **single-digit engagements**).
  - "No Bell": **low end of Category 4** (one Facebook Page ~3,000 followers before Meta took it down; three newer Pages had almost none; more success planting articles in African news sites).
  - "Silver Lining Playbook": **top end of Category 3**, based on spread across social media.

### 1.8 2026 case-study releases (headline verified via OpenAI RSS; bodies not fetched)
- **"Disrupting a new covert influence campaign from Russia"** — 25 Aug 2026 — https://openai.com/index/disrupting-malicious-uses-of-ai-influence-campaign-russia — *"OpenAI banned Russia-origin accounts using AI to promote a fake Israel-based think tank and a 'sovereignty' index praising Russia and criticizing the West."* **Confidence: M** (RSS title + description).
- **"PRC-linked influence operations are targeting AI debates in the US"** — 10 Jun 2026 — https://openai.com/index/prc-linked-influence-operations-ai-debates — **Confidence: M** (listed in RSS with date).
- **"'Tech and Tariffs' Campaign: Influence activity targeting US tech policy"** — 1 Jun 2026 — https://openai.com/index/disrupting-malicious-uses-of-ai-tech-and-tariffs — **Confidence: M**.
- **"'Data Center Bandwagon' Campaign: US-targeted influence activity"** — 1 Jun 2026 — https://openai.com/index/disrupting-malicious-uses-of-ai-data-center-bandwagon — **Confidence: M**.
- **"Operation 'Fish Food': Russia-origin content farm activity"** — 1 Feb 2026 — https://openai.com/index/disrupting-malicious-uses-of-ai-fish-food — **M**.
- **"Operation 'Trolling Stone': Russia-linked influence activity"** — 1 Feb 2026 — https://openai.com/index/disrupting-malicious-uses-of-ai-trolling-stone — **M**.
- **"Operation 'No Bell'"** — 1 Feb 2026 — https://openai.com/index/disrupting-malicious-uses-of-ai-no-bell — **M**.
- **"'Cyber Special Operations': China-linked influence planning"** — 1 Feb 2026 — https://openai.com/index/disrupting-malicious-uses-of-ai-cyber-special-operations — **M**.
- **"'Silver Lining Playbook': Likely China-origin activity targeting US persons"** — 1 Feb 2026 — https://openai.com/index/disrupting-malicious-uses-of-ai-silver-lining-playbook — **M**.
- **"Disrupting a covert Iranian influence operation"** — 16 Aug 2024 — https://openai.com/index/disrupting-a-covert-iranian-influence-operation — **M**.
- **Full 2024/2025/2026 case-study index:** OpenAI news RSS at https://openai.com/news/rss.xml is the reliable enumerator (the site index page is JS-rendered).

---

## 2. Anthropic threat-intelligence reporting

Anthropic brands these **"Threat Intelligence Report"** / **"Detecting and countering misuse of AI"**.

### 2.1 "Detecting and countering malicious uses of Claude" — March 2025
- **URL:** https://www.anthropic.com/news/detecting-and-countering-malicious-uses-of-claude-march-2025
- **Full report PDF:** https://cdn.sanity.io/files/4zrzovbb/website/45bc6adf039848841ed9e47051fb1209d6bb2b26.pdf
- **Confidence: H** for the summary page (fetched and read).
- **"Influence-as-a-service" case:** an actor used Claude to **orchestrate over a hundred social media bot accounts**, deciding *when bot accounts would comment, like, or re-share posts by authentic users* based on politically motivated personas — one of the earliest documented cases of an LLM used as an IO **orchestrator**, not just a text generator.
- **Numbers:** the operation *"engaged with tens of thousands of authentic social media accounts across multiple countries and languages."*
- **Crucial countervailing finding (verbatim):** *"No content achieved viral status, however the actor strategically focused on sustained long-term engagement promoting moderate political perspectives rather than pursuing virality."*
- Attribution to a state actor was **not** confirmed.

### 2.2 "Detecting and countering misuse of AI: September 2026" — 10 Sep 2026
- **URL:** https://www.anthropic.com/threat-intelligence-report-september-2026
- **Confidence: H** (fetched and read in full).
- **Coverage:** activity disrupted **December 2025 – August 2026**; seven harm areas. **Nine influence-operation cases** originating in **Russia, Iran, Turkey, the Gulf, South Asia, Africa and Europe**, targeting audiences on **six continents**. Actors included governments, state-aligned propaganda institutions, state media, private "influence-for-hire" firms, domestic political operators, and one exiled opposition movement.
- **Explicit reach finding (verbatim trend #9):** *"**Influence operations often fail to reach a genuine audience.** … Most of the content we discovered drew little or no authentic engagement, and in several cases we disrupted the operation before it could build an audience. **The widest authentic reach occurred where state media outlets were the distribution mechanism** (including FM radio, satellite and shortwave radio, and global television)."*
- **GTG-54002 — commercial "influence-as-a-service" spanning six continents:**
  - **~70 fabricated news websites**, **8,913+ articles** in **~20 languages**; **70 matching X accounts** plus a network of **250+ inauthentic commenting X accounts**; domains registered in France within a 10-week window in mid-2025; accounts created June–July 2025.
  - Traced to **LKM Company**, a France-based digital advertising agency. No evidence of government direction; possible link to DRC–Rwanda conflict interests (**unconfirmed**).
  - **Impact: Category Two** on the Breakout Scale — *"most of the content we identified generated little observable engagement from real audiences"*; *"We disrupted this operation early, before it could build an authentic audience."*
  - Tactics include rewriting the same source story in **opposite ideological directions** for different audiences and cross-border story laundering.
- **GTG-04001 — Russian FIMI in the Central African Republic:**
  - Production backbone for a Russian state-aligned operation; content pushed through **Radio Lengo Songo (98.9 FM)** and coordinated with **RT, Sputnik Afrique, TASS** and the Russian House in Bangui; traded airtime for SputnikPro training slots.
  - **Impact: Category Four** — the *only* case in the report reaching that level, and it did so via **broadcast media**, not social platforms.
  - Also documented: AI-generated employment contracts encoding political loyalty, scoring rubrics, forged Gendarmerie/Ministry of Defence documents, and surveillance dossiers on opposition figures. **Claude refused** the most aggressive request (naming real individuals as militants).
- **Other notable material:** cloning of a real Iranian activist's account for live conversations with his contacts; ghost-written testimony delivered at a live UN Human Rights Council session; counter-dossiers on UN Special Rapporteurs; fabricated claims about Moldova's president before the **September 2025** vote; fake grassroots posts prepared in Kenya ahead of the **2027** general election.
- **Agentic element (see §5):** persistent Markdown "doctrine" files reused across hundreds of sessions; banned-word lists inside AI agents; shared approved-source files; custom software calling Claude in fixed batches; one actor building a course to teach the workflow.

---

## 3. Academic research: how persuasive is LLM-generated propaganda?

### 3.1 Goldstein, Chao, Grossman, Stamos & Tomz (2024) — "How persuasive is AI-generated propaganda?"
- **Journal:** PNAS Nexus 3(2): pgae034. **DOI:** https://doi.org/10.1093/pnasnexus/pgae034
- **PDF mirror (downloaded):** https://pdfs.semanticscholar.org/fa5e/cfc252236306ff21c574b4251a90926f369d.pdf
- **Stanford HAI policy brief:** https://hai.stanford.edu/policy/how-persuasive-ai-generated-propaganda
- **Confidence: H** (PDF downloaded and read; DOI metadata verified).
- **Design:** preregistered survey experiment, **N = 8,221** US respondents. Six real English-language covert propaganda articles (Russia/Iran origin) vs GPT-3 (davinci) articles on the same theses; three GPT-3 outputs per topic; length-matched.
- **Effect sizes (verbatim from the paper):**
  - Control (no article) agreement with the thesis: **24.4%**.
  - Original human propaganda: **47.4%** — a **+23 percentage-point** increase (*"nearly doubled"*).
  - Raw GPT-3 propaganda: **43.5%** — a **+19.1 percentage-point** increase; **3.9 pp below** the original propaganda.
  - Prompt-edited GPT-3 (fluent-English prompt engineering): **46.4%** vs **47.4%** original — difference **small and not statistically significant**.
  - Prompt-edited **and** curator-selected GPT-3: **52.7%** — **more persuasive than the original propaganda**.
  - Removing the 2 of 18 GPT-3 articles that failed to advance the thesis raised raw GPT-3 agreement to **45.6%**, making the difference from original propaganda non-significant.
- **Headline:** GPT-3 was *"nearly as persuasive"* as real-world propaganda; with minimal human involvement it was *"as persuasive or even more persuasive"*. Effects were consistent across demographic/partisan subgroups.

### 3.2 Salvi, Horta Ribeiro, Gallotti & West (2025) — "On the conversational persuasiveness of GPT-4"
- **Journal:** Nature Human Behaviour (19 May 2025). **DOI:** https://doi.org/10.1038/s41562-025-02194-6
- **Preprint:** arXiv:2403.14380 — https://arxiv.org/abs/2403.14380
- **Confidence: H** (DOI abstract via Crossref; arXiv abstract fetched directly).
- **Design:** preregistered, multiround live debates; **N = 900** (journal) / **N = 820** (preprint); 2×2×3 design (human vs GPT-4 opponent; personalization on/off; low/medium/high opinion strength).
- **Effect sizes:**
  - Where AI and humans were not equally persuasive, **GPT-4 with personalization was more persuasive 64.4% of the time**.
  - **+81.2% relative increase in the odds** of higher post-debate agreement (**95% CI [+26.0%, +160.7%]**).
  - Preprint phrasing: participants who debated GPT-4 with personal data had **81.7% higher odds** (p < 0.01).
  - **Without personalization**, GPT-4 still outperformed humans but the effect was **lower and statistically non-significant (p = 0.31)** — a key nuance often dropped in coverage.

### 3.3 Hackenburg et al. (2025) — "The levers of political persuasion with conversational AI"
- **Journal:** Science (4 Dec 2025). **DOI:** https://doi.org/10.1126/science.aea3884
- **Preprint:** arXiv:2507.13919 — https://arxiv.org/abs/2507.13919
- **Confidence: H** (Crossref abstract + arXiv abstract fetched).
- **Design:** three large-scale experiments, **N = 76,977 participants**; **19 LLMs** (including models post-trained explicitly for persuasion); **707 political issues**; factual accuracy checked on **466,769** resulting LLM claims.
- **Effect sizes (verbatim):** post-training boosted persuasiveness by **as much as 51%**; prompting by **as much as 27%**; **personalization and increasing model scale had smaller effects**.
- **Key trade-off:** *"where they increased AI persuasiveness, they also systematically decreased factual accuracy."* The mechanism is rapid access to and strategic deployment of information, not model size.
- **Relevance:** undercuts the "bigger models = more dangerous persuasion" narrative and locates the risk in **post-training + prompting**, i.e., cheap and widely replicable.

### 3.4 Wack, Ehrett, Linvill & Warren (2025) — "Generative propaganda: Evidence of AI's impact from a state-backed disinformation campaign"
- **Journal:** PNAS Nexus 4(4): pgaf083. **DOI:** https://doi.org/10.1093/pnasnexus/pgaf083
- **Confidence: H** (Crossref abstract fetched).
- **Design:** natural experiment on a state-affiliated (Russia-tied) propaganda website's adoption of generative-AI tooling, plus a survey experiment comparing pre- vs post-adoption articles.
- **Findings:** AI adoption **facilitated larger quantities** of disinformation and shifted the **volume and breadth** of published content; AI-assisted articles **maintained their persuasiveness** in the post-adoption period.
- **Relevance:** the best real-world evidence that AI shifts **output volume/scope** without degrading message effectiveness — i.e., the effect is on the **supply side**, not necessarily on per-message persuasion.

### 3.5 Gallegos, Shani, Shi, Bianchi, Gainsburg, Jurafsky & Willer (2026) — "Labeling messages as AI-generated does not reduce their persuasive effects"
- **Journal:** PNAS Nexus 5(2): pgag008. **DOI:** https://doi.org/10.1093/pnasnexus/pgag008
- **Preprint:** arXiv:2504.09865 — https://arxiv.org/abs/2504.09865
- **Confidence: H** (Crossref abstract + arXiv abstract fetched).
- **Design:** survey experiment, **N = 1,601** diverse US respondents; AI-generated policy messages labeled as (i) expert AI, (ii) human policy expert, (iii) no label.
- **Effect sizes:** messages shifted policy views by **9.74 percentage points on average**; **92.0%** (journal) / **94.6%** (preprint) of labeled-condition participants **believed the authorship labels**; labels had **no significant effect** on attitude change, accuracy judgments, or sharing intentions — robust across knowledge, prior AI experience, party, education and age.
- **Relevance:** directly contradicts the "audiences discount AI content" hypothesis for **labeled** content, and undercuts labeling as a mitigation.

### 3.6 Huang & Wang (2023) — "Is artificial intelligence more persuasive than humans? A meta-analysis"
- **Journal:** Journal of Communication 73(6):552. **DOI:** https://doi.org/10.1093/joc/jqad024
- **Confidence: H** (Crossref abstract fetched).
- **Design:** meta-analysis of **121 randomized experiments, N = 53,977**, comparing AI vs human agency on persuasion outcomes.
- **Findings:** **AI agents were as persuasive as humans overall.** Subsidiarity: AI was **less effective than humans at shaping behavioral intentions**, but did not differ significantly from humans for **perceptions, attitudes, or actual behaviors**.
- **Relevance:** the best single aggregate estimate for "AI ≈ human" persuasion, with the important exception that **intentions** lag.

### 3.7 Spearing, Gile, Fogwill, Prike, Swire-Thompson, Lewandowsky & Ecker (2025) — "Countering AI-generated misinformation with pre-emptive source discreditation and debunking"
- **Journal:** Royal Society Open Science 12(6): 242148. **DOI:** https://doi.org/10.1098/rsos.242148
- **Confidence: H** (Crossref abstract fetched).
- **Design:** two experiments, **total N = 1,223**.
- **Findings:** a misleading AI-generated article **influenced reasoning regardless of whether it was attributed to a human or an AI**. Pre-emptive source inoculation reduced general trust in AI-generated information but **did not significantly reduce the specific article's influence**. A simple "may be misleading" disclaimer had **no impact**. **Debunking worked**; only **inoculation + debunking combined eliminated** the influence entirely.
- **Relevance:** AI provenance is not itself a discount cue; and single-layer countermeasures underperform.

### 3.8 Møller, Romero, Jurgens & Aiello (2026) — "The impact of generative AI on social media: an experimental study"
- **Journal:** Scientific Reports (17 Feb 2026). **DOI:** https://doi.org/10.1038/s41598-026-40110-8
- **Preprint:** arXiv:2506.14295 — https://arxiv.org/abs/2506.14295
- **Confidence: H** (Crossref + arXiv abstract fetched).
- **Design:** controlled experiment with a representative sample of **680 US participants** in a realistic social-media environment; five conditions (control + four AI interventions: chat assistance, conversation starters, draft feedback, reply suggestions).
- **Findings:** some AI tools **increase engagement and content volume** but simultaneously **decrease perceived quality and authenticity**, with a **negative spill-over effect** on conversations.
- **Relevance:** the cleanest experimental statement of the "AI boosts volume, degrades perceived quality" duality.

### 3.9 Simon, Altay & Mercier (2023) — "Misinformation reloaded? Fears about the impact of generative AI on misinformation are overblown"
- **Journal:** Harvard Kennedy School (HKS) Misinformation Review 4(5).
- **URL:** https://misinforeview.hks.harvard.edu/article/misinformation-reloaded-fears-about-the-impact-of-generative-ai-on-misinformation-are-overblown/
- **PDF:** https://misinforeview.hks.harvard.edu/wp-content/uploads/2023/10/simon_generative_AI_fears_20231018.pdf
- **Confidence: H** (article page fetched).
- **Argument (not an experiment):** reviews communication science, cognitive science and political science to argue that the four standard fear claims — increased **quantity**, increased **quality**, increased **personalization**, and degraded detection — do not straightforwardly translate into increased **persuasive impact**. Persuasion depends on **attention, trust and fit with prior beliefs**, and misinformation effects are typically small and heterogeneous. Notes humans already perform near chance at detecting machine-generated text.
- **Confidence caveat:** it is a **theoretical/argumentative** review, and it predates GPT-4-class models and the conversational-persuasion results in §3.2–3.3. It is the strongest normative counterweight, not a measurement.

### 3.10 "Generative Propaganda" (2025) — Taiwan/India field study
- **Preprint:** arXiv:2509.19147 — https://arxiv.org/abs/2509.19147
- **Confidence: H** (abstract fetched).
- **Design:** interviews with defenders (fact-checkers, journalists, officials) in Taiwan and India, and creators (influencers, political consultants, advertisers) in India.
- **Findings:** *"Deception was neither the main driver nor the main impact vector of AI's use"*; Indian creators sought to **persuade rather than deceive**, often making AI use **obvious** to reduce legal/reputational risk. Real gains were **efficiency** in cross-language/multimodal communication and **evasion of human and algorithmic detection**. Proposes a taxonomy (obvious vs hidden; promotional vs derogatory).
- **Relevance:** a direct challenge to the "deepfake-centric" threat model dominant in policy discourse.

### 3.11 Beacken, Trauthig & Woolley (2026) — "Generative AI, propaganda, and digital authoritarianism"
- **Journal:** Big Data & Society (Jun 2026). **DOI:** https://doi.org/10.1177/20539517251410064
- **Confidence: H** (Crossref abstract fetched).
- **Design:** **93 in-depth semi-structured interviews** across **Bolivia, Hungary, India, Nigeria, Tunisia, Turkey**.
- **Findings:** adoption of GenAI for propaganda is shaped **more by local political, economic and social conditions than by GenAI's technical capacities**. Elites adapt existing repertoires (cheapfakes, bots, deepfakes, voice clones) to context.
- **Relevance:** strong evidence against technological determinism; useful for weighting country-specific risk.

### 3.12 Weikmann, Wouters, Tulin, Hameleers, de Vreese, Zarouali & Opgenhaffen (2026) — expert survey
- **Journal:** HKS Misinformation Review 7(2), published 3 Mar 2026. **DOI:** https://doi.org/10.37016/mr-2020-196
- **PDF:** https://misinforeview.hks.harvard.edu/wp-content/uploads/2026/02/weikmann_disinformation_times_Generative_AI_20260303-1.pdf
- **Confidence: H** (PDF downloaded and read).
- **Design:** survey of **N = 92** European disinformation experts (47 academics, 29 fact-checkers, 16 journalists) sampled via EDMO.
- **Findings:** fact-checkers feel **more confident** tackling AI-generated disinformation than academics or journalists; broad agreement on democratic/journalistic risk; **responsibility attribution differs** (fact-checkers → platforms; academics → news users).
- **Relevance:** documents that *expert* consensus on AI-disinformation risk is real but not uniform — useful for avoiding over-claiming a single expert position.

---

## 4. Countervailing evidence: reach, discounting, and the "AI slop" reality

This is the section that most complicates the narrative. The evidence splits sharply.

### 4.1 Evidence that AI-enabled IO reach is minimal
- **OpenAI, May 2024** — none of five IO scored above **Breakout Scale Category 2**. https://openai.com/index/disrupting-deceptive-uses-of-ai-by-covert-influence-operations/
- **OpenAI, Oct 2024** — **all** election-related operations in **Category 2**; no viral engagement or sustained audiences. https://cdn.openai.com/threat-intelligence-reports/influence-and-cyber-operations-an-update_October-2024.pdf
- **OpenAI, Oct 2025** — "Newstop Africa" numbers (172 followers, max 4 retweets, avg 105 TikTok likes/video); downgraded Category 3 → Category 2. https://cdn.openai.com/threat-intelligence-reports/7d662b68-952f-4dfd-a2f2-fe55b041cc4a/disrupting-malicious-uses-of-ai-october-2025.pdf
- **OpenAI, Feb 2026** — the seven-tweets-from-one-prompt experiment: **150,000 vs 57 views** driven by **follower count**, not AI; China's 50,000+ posts with **<150** clearing 300 shares/comments. https://cdn.openai.com/pdf/df438d70-e3fe-4a6c-a403-ff632def8f79/disrupting-malicious-uses-of-ai.pdf
- **Anthropic, Sept 2026** — *"Influence operations often fail to reach a genuine audience"*; Category Two for a 70-site/8,913-article network; the only Category Four case used **broadcast radio**. https://www.anthropic.com/threat-intelligence-report-september-2026
- **Anthropic, Mar 2025** — 100+ bot accounts engaging tens of thousands of authentic accounts, but *"No content achieved viral status."* https://www.anthropic.com/news/detecting-and-countering-malicious-uses-of-claude-march-2025

**Synthesis:** Across ~2.5 years and two major labs, the modal assessed impact of AI-assisted covert IO on the Brookings Breakout Scale is **Category 2**, with occasional **Category 3** and rare **Category 4** (and Category 4 arrives via **traditional mass media placement**, not platform virality). Note that this is a **selection-biased sample**: both labs only observe operations that touched their models, and both are motivated to report disruption efficacy. Treat the direction as credible and the magnitudes as floors, not population estimates.

### 4.2 Evidence that AI-generated content can achieve very large reach (the counterpoint)
- **DFRLab (2026)** — "AI-generated YouTube channels co-opt war coverage to farm nearly two billion views", 23 Mar 2026, https://dfrlab.org/2026/03/23/ai-generated-youtube-channels-co-opt-war-coverage-to-farm-nearly-two-billion-views/ — **Confidence: H** (fetched).
  - **26 YouTube channels**; collectively **~2 billion views** and **~2 million subscribers**; individual channels from **13 subscribers** to **>1 million**; AI scripts, narration, visuals, thumbnails, synthetic news anchors; **LLM prompt artifacts left in video descriptions**; fabricated events inserted into news-style content (e.g., a false claim that the Ukrainian port of Mykolaiv was destroyed).
  - **Critical caveat:** DFRLab documents **coordination indicators** (duplicated videos, synchronized posting/reactivation) but frames the network as **"AI slop" content farming**, not proven state-directed IO. Attribution and intent are **not established**. This is a reach datapoint, not a persuasion datapoint.
- **Graphika (2026)** — "Pundit by Prompt: The Mass Production of AI Personas Weighing In on World Affairs", 21 Jul 2026, https://www.graphika.com/reports/pundit-by-prompt — **Confidence: H** (fetched).
  - **300+ assets** across YouTube, Facebook, TikTok, X; **150+ assets** using a recurring set of AI personas; **140+ YouTube channels** hosting AI deepfakes impersonating journalists/academics/business figures; one persona appeared in **154 channels**.
  - *"they are attracting views and subscribers – who sometimes even engage with comments and questions."* Graphika **could not confirm** a single coordinated network or identify operators; **monetization is a likely motive**.
- **Guardian / Kapwing (2025)** — "More than 20% of videos shown to new YouTube users are 'AI slop', study finds", 27 Dec 2025, https://www.theguardian.com/technology/2025/dec/27/more-than-20-of-videos-shown-to-new-youtube-users-are-ai-slop-study-finds — **Confidence: H** (fetched).
  - Kapwing surveyed **15,000** of the most popular YouTube channels (top 100 per country): **278** are pure AI-slop channels, with **>63 billion views**, **221 million subscribers**, and an estimated **~$117 million/year** in revenue. A fresh account's feed: **104 of its first 500 recommended videos** were AI slop; one third of the 500 were "brainrot." Underlying study: https://www.kapwing.com/blog/ai-slop-report-the-global-rise-of-low-quality-ai-videos/
  - **Caveat:** this measures the **ambient AI-slop economy**, not influence operations. It evidences **platform incentives and distribution**, not adversarial persuasion.

**Synthesis:** there is no contradiction between §4.1 and §4.2 — they measure different things. AI-generated content **can** reach billions when it is attached to **platform-monetization incentives and algorithmic distribution** (slop). AI-assisted **covert influence operations**, which lack those incentives and are optimised for a political message, have mostly **not** broken out. The Feb 2026 OpenAI finding that **follower count, not AI authorship, determines views** is the mechanism that reconciles both.

### 4.3 Evidence on discounting and labeling
- **Spearing et al. 2025** — AI provenance did not reduce the article's influence; only combined inoculation + debunking did. (https://doi.org/10.1098/rsos.242148)
- **Gallegos et al. 2026** — labeling AI authorship did not reduce persuasion (9.74 pp shift; no label effect). (https://doi.org/10.1093/pnasnexus/pgag008)
- **Møller et al. 2026** — AI assistance **decreased perceived quality and authenticity** even while increasing volume/engagement. (https://doi.org/10.1038/s41598-026-40110-8)
- **Interpretation:** audiences may *perceive* AI content as lower quality, but that perception does **not** reliably translate into reduced persuasion, and labels do not help. The "audiences discount it" hypothesis is **not** supported by the best available causal evidence for *labeled, message-level* content.

### 4.4 Vendor/OSINT reporting on real campaigns
- **Graphika & Code for Africa (2026)** — "Umbrae Ex Machina: Mapping Russian Ghostwriting Operations Across African News Outlets", 25 Aug 2026, https://www.graphika.com/reports/umbrae-ex-machina — **Confidence: H** (fetched).
  - **44 inauthentic personas** (**35 ghost reporters**, **9 fake experts**), **658 URLs** across authentic English- and French-language African outlets; **38/44** assessed fabricated with **high confidence**, **6** medium confidence. Ghost reporters placed bylines in **real** outlets; fake experts were quoted as sources in articles by **real** journalists. Overlaps with **Storm-1516**. Supported by Meta.
  - **Relevance:** this is the clearest documented **breakout into authentic media** — AI/LLM-assisted persona fabrication reaching Category 3–4 outcomes via **journalistic distribution**, consistent with Anthropic's "state media/broadcast is where reach happens" finding.
- **Citizen Lab (2026)** — "BlackCore's Influence Operations for Hire", 17 Sep 2026, https://citizenlab.ca/research/blackcores-influence-operations-for-hire/ — **Confidence: M** (URL verified via search; report body not fetched this session). Israeli-linked firm; Angola influence campaign; cross-referenced by OCCRP (https://www.occrp.org/en/news/israeli-firm-may-have-run-angola-influence-campaign) and The Record (https://therecord.media/angola-israel-influence-operations-blackcore). Full numbers not verified here — **do not cite figures from this source without reading it**.
- **DFRLab AI hub** (useful enumerator of 2026 AI-and-IO reporting): https://dfrlab.org/issue/artificial-intelligence/ — includes "China-linked Spamouflage targets Tibetan parliament-in-exile elections" (24 Apr 2026), "AI, memes, and hashtags: How China is battling the US online over Venezuela" (10 Jan 2026), "Inauthentic networks fuel Poland's border vigilante movement" (11 Feb 2026).
- **Recorded Future** — "AI Has Enhanced Iran's Asymmetric Playbook During the 2026 Conflict", 16 Jul 2026 (headline/date via Google News RSS; **Confidence: L/M**, not fetched).
- **Trend Micro** — "One Man, One AI, One Fake Persona: Inside the 5-Year Influence and Fraud 'Patriot Bait' Campaign", 21 May 2026 (headline/date via Google News RSS; **Confidence: L/M**, not fetched).

---

## 5. Agentic AI and influence operations

### 5.1 Demonstrated (real-world, vendor-documented)
- **Anthropic, Sept 2026** — influence operations using **persistent agentic infrastructure**: doctrine Markdown files reused across hundreds of sessions, banned-word lists embedded in agents, shared approved-source/evasion-rule files, batch software calling Claude in fixed pipelines, account-warmup and evasion logic, metadata/codename stripping, VPN/foreign-number/rotated-account access. One actor was **building a course** to teach the workflow. Anthropic's framing: *"Increasingly, operations are not run using individual prompts. Instead, a great deal is embedded within persistent memory files."*
  - **But note the limits:** for influence, Anthropic describes **humans still editing** the pipeline ("AI as a newsdesk", "Claude was slotted into a human-edited pipeline"). The most clearly **autonomous** agentic behaviour Anthropic documents (agent swarms, unattended persistent campaigns, subagent parallelisation) is in **cyber** operations (e.g., GTG-10007 ran "agent swarms" with persistent campaign memory targeting ~50 organisations), **not** influence.
  - Anthropic's own caveat (verbatim): *"humans have retained the decisions that matter most to them … they're still heavily involved in target selection, monetization of findings, and review of results. … autonomy and harm are separate axes."*
- **Anthropic, March 2025** — the strongest real-world agentic-IO datapoint: Claude used as an **orchestrator deciding when 100+ bot accounts should like, share, comment or ignore**, engaging tens of thousands of authentic accounts. This is **demonstrated** task-level autonomy (engagement-timing decisions), while strategic direction remained human.

### 5.2 Demonstrated but simulated (no real-world deployment shown)
- **Orlando, Ye, La Gatta, Saeedi, Moscato, Ferrara & Luceri (2025/2026)** — "Emergent Coordinated Behaviors in Networked LLM Agents: Modeling the Strategic Dynamics of Information Operations."
  - **Preprint:** arXiv:2510.25003 (28 Oct 2025) — https://arxiv.org/abs/2510.25003
  - **Published:** The Web Conference (WWW) 2026 — https://doi.org/10.1145/3774904.3792580
  - **USC Viterbi write-up:** https://viterbischool.usc.edu/news/2026/03/usc-study-finds-ai-agents-can-autonomously-coordinate-propaganda-campaigns-without-human-direction/
  - **Confidence: H** (abstract fetched; USC write-up verified via search).
  - **Design:** generative **agent-based simulation** of a Twitter-like environment: **50 agents** (**10 influence operators, 40 ordinary users**), later expanded to **500** with consistent results. Three regimes: goal-only; team-knowledge; and periodic strategy sessions with collective voting.
  - **Findings:** as regimes become more structured, IO networks become denser/more clustered, interactions more reciprocal and positive, narratives more homogeneous, amplification more synchronised, and hashtag adoption faster and more sustained. **The single most striking result: simply revealing to agents which other agents share their goals produced coordination nearly equivalent to explicit deliberation and voting.**
  - **Critical caveat (verbatim from the researchers):** *"the study was only a simulation."* Luca Luceri: *"Our paper shows that this is not a future threat: It's already technically possible."* — that is an inference from a simulation, **not** an observed campaign.
- **OpenAI, Feb 2026** — semi-automated scam infrastructure (manual ChatGPT prompting **plus** an automated AI chatbot posing as a dating agency targeting Indonesian men); a scaler, semi-automated romance/task scam. **Influence** operations in OpenAI's corpus remain human-prompted, with AI doing generation/translation/status-report editing.

### 5.3 Speculative / not yet evidenced
- Fully autonomous, self-directed **influence** campaigns operating at scale in the wild with no meaningful human direction. The USC work shows it is **technically feasible in simulation**; Anthropic and OpenAI show **partial** autonomy (engagement-timing orchestration, persistent agent memory, batch pipelines) with human framing and target selection. No vendor has published a case of a fully autonomous influence campaign.
- "AI agents amplifying each other" as an observed real-world phenomenon — documented only in simulation (USC) and via proxy behaviours (fake engagement rings in OpenAI/Anthropic cases, which are scripted/LLM-generated rather than emergent).

---

## 6. Cost and scale economics of AI-enabled IO

### 6.1 The foundational quantitative model
- **Musser, M. (2023)** — "A Cost Analysis of Generative Language Models and Influence Operations." arXiv:2308.03740 — https://arxiv.org/abs/2308.03740
- **CSET summary (fetched and read):** https://cset.georgetown.edu/article/how-much-money-could-large-language-models-save-propagandists/
- **Confidence: H** (arXiv abstract + CSET article fetched).
- **Numbers (verbatim / near-verbatim):**
  - LLMs need only produce **usable outputs ~25% of the time** to be as cheap as human authorship; by **50% reliability** it is cheaper in almost all parameter ranges.
  - Potential reduction in content-generation cost: **up to 70%** for a highly reliable model.
  - **Worked example:** over a **ten-million-tweet campaign**, savings from a model reliable **75%** of the time would be expected to top **$3 million**.
  - Monitoring/detection controls have **sharply limited cost-imposition effects when alternative open-source models are available**; a 10% per-output detection probability at ~1 hour of evasion work per detection could wipe out the $3M saving, but that level of detection is described as extremely hard in practice.
  - **Nation-states — even those running many large-scale IO per year — are unlikely to benefit economically from training custom LLMs specifically for influence operations.**
- **Caveat:** 2023 model, GPT-3.5-era price/quality assumptions. Underlying cost assumptions should be treated as an upper-bound-era estimate; inference costs have fallen substantially since.

### 6.2 Qualitative economics from 2025–2026 primary reporting
- **Anthropic, Sept 2026** — *"the economics of the attacks have changed"*; the labour that previously distinguished well-resourced operations (reconnaissance, exploitation, tool development, data processing) is delegated to models; the skill threshold and labour per campaign fall while payoffs are unchanged. *"AI autonomy compresses the cost side of attacker ROI calculations … making previously marginal targets viable and encouraging higher-volume, lower-touch operations."* — **Confidence: H** (fetched), but this is an **analytic claim**, not a measured cost model.
- **OpenAI, Feb 2026** — the Rybar-linked "Fish Food" operation's most ambitious Africa project carried *"an estimated annual budget of up to $600,000."* — **Confidence: H**. This is a **single self-reported planning figure** from one prompt, **not** a measured campaign budget; treat as an anecdote.
- **DFRLab, Mar 2026** — the 26-channel network is characterised as producing *"high volumes of geopolitical commentary at low cost"* and demonstrates *"the scalability and reach of AI slop"* — **Confidence: H** for the framing; **no cost figure is given**.
- **Kapwing/Guardian, Dec 2025** — ~**$117 million/year** in estimated revenue for 278 AI-slop channels with 63bn views — the **revenue** side of the AI-slop economy, not IO cost. **Confidence: H** for the reported estimate (itself a third-party estimate).

### 6.3 Gaps in the cost literature
- There is **no independently measured, 2025–2026 cost-per-article or cost-per-engaged-user figure for AI-enabled IO** that this search surfaced. Claims of "collapsed cost" are analytically sound and directionally supported (Musser 2023; Wack et al. 2025 on volume), but the *magnitude* is not recently re-measured. Any specific "cost per post" number circulating in commentary should be treated as **UNVERIFIED** unless traced to a primary cost model.

---

## 7. What is demonstrated

1. **LLM-generated persuasive text is roughly as persuasive as human-written propaganda, and can exceed it with minimal human involvement.** Goldstein et al. 2024 (PNAS Nexus): GPT-3 +19.1 pp over control vs human propaganda +23 pp; prompt-edited 46.4% vs 47.4% (ns); prompt-edited + curated **52.7% vs 47.4%**. N = 8,221. **Confidence H.**
2. **Conversational, personalized LLMs can out-persuade humans in live debate.** Salvi et al. 2025 (Nature Human Behaviour): GPT-4 with personalization more persuasive **64.4%** of the time; **+81.2%** relative odds (95% CI +26.0% to +160.7%); **without** personalization the effect was **non-significant**. N = 900. **Confidence H.**
3. **At scale, persuasion comes from post-training and prompting, not model size or personalization.** Hackenburg et al. 2025 (Science): N = 76,977; **+51%** from post-training, **+27%** from prompting; gains trade off against factual accuracy. **Confidence H.**
4. **AI adoption increases propaganda volume while preserving per-article persuasiveness.** Wack et al. 2025 (PNAS Nexus): state-backed outlet produced more and broader content post-adoption, with maintained persuasiveness. **Confidence H.**
5. **Labeling AI-generated content does not reduce its persuasive effect.** Gallegos et al. 2026 (PNAS Nexus): +9.74 pp attitude shift; **92%** believed labels; no significant label effect. N = 1,601. **Confidence H.**
6. **AI provenance does not function as a discount cue; only debunking (ideally combined with inoculation) reduced influence.** Spearing et al. 2025 (RSOS): N = 1,223. **Confidence H.**
7. **Across ~2.5 years of the two largest AI-lab threat-report corpora, AI-assisted covert IO mostly did not break out.** OpenAI: all 2024 election-related IO at **Category 2** (May/Oct 2024); "Newstop Africa" 172 followers / max 4 retweets and downgraded **Category 3 → Category 2** (Oct 2025); China's **50,000+ posts, <150** with >300 shares/comments (Feb 2026). Anthropic: *"Influence operations often fail to reach a genuine audience"*; a 70-site/8,913-article network at **Category Two** (Sept 2026). **Confidence H** for the reports' own claims; **M** as a population estimate (selection bias).
8. **Reach is driven by the distribution asset, not AI authorship.** OpenAI Feb 2026 natural experiment: seven tweets from **one prompt** got **150,000 vs 57 views**, tracking accounts with **600,000 vs 827 followers**. **Confidence H.**
9. **The one AI-related item that achieved the greatest real-world reach in OpenAI's 2024 corpus was a hoax about AI, not a use of AI.** Oct 2024 report. **Confidence H.**
10. **Real, large reach for AI-generated content exists — but mostly in the monetization-driven "AI slop" economy, not covert IO.** DFRLab: 26 channels, **~2bn views**, **~2M subscribers** (attribution/intent unproven). Kapwing/Guardian: **278** pure AI-slop channels, **63bn views**, **~$117M/yr**. Graphika: **300+** persona assets, **140+** deepfake channels, one persona in **154** channels. **Confidence H** for the measurements, **M** for the IO link.
11. **Fabricated personas do break into authentic media.** Graphika/Code for Africa: **44** inauthentic personas (**35** ghost reporters, **9** fake experts), **658 URLs** in real African outlets. Anthropic: the only **Category Four** case reached audiences via **FM radio**, and the widest authentic reach generally came from **state media** distribution. **Confidence H.**
12. **Influence-as-a-service is real and is being run by commercial firms.** Anthropic Mar 2025 (100+ bots orchestrating engagement with tens of thousands of authentic accounts); Anthropic Sept 2026 (LKM Company, France; ~70 sites, 8,913 articles, 250+ commenting accounts); Citizen Lab BlackCore (**M**, not verified). **Confidence H/M.**
13. **LLM-as-orchestrator (not just content generator) is demonstrated.** Anthropic Mar 2025: Claude decided **when** bot accounts should like/share/comment based on political personas. **Confidence H.**
14. **LLM-driven IO is economically favourable and scales output volume.** Musser 2023: **~25%** usable-output reliability suffices for cost parity; **up to 70%** cost reduction; **>$3M** saved on a 10M-tweet campaign at 75% reliability; open-source models blunt monitoring deterrents. **Confidence H** for the model, **M** for 2026 applicability.
15. **Autonomous multi-agent influence coordination is technically feasible in simulation.** USC/Orlando et al. (WWW 2026): 50 agents (10 IO + 40 organic), replicated at 500; merely revealing shared goals produced coordination nearly equal to explicit deliberation. **Confidence H** that the simulation shows this; **not** evidence of real-world campaigns.

---

## 8. What is speculative / UNVERIFIED

| Claim | Status | Why |
|---|---|---|
| Fully autonomous AI influence campaigns operating at scale in the wild | **UNVERIFIED / speculative** | Only simulated (arXiv:2510.25003). Vendors document partial autonomy (orchestration, persistent memory, batch pipelines) with humans retaining target selection and framing (Anthropic Sept 2026). |
| "AI agents amplify each other" as an observed real-world emergent phenomenon | **UNVERIFIED** | Emergent amplification shown only in simulation. Real cases show *scripted* fake-engagement rings (OpenAI June 2025: 220 generated vs 199 displayed comments). |
| Specific cost-per-post / cost-per-engaged-user figures for AI-enabled IO | **UNVERIFIED** | No 2025–2026 primary measurement found. Musser 2023 gives % savings and a $3M/10M-tweet example only. Treat dollar-per-post claims as unsourced. |
| OpenAI's "over 40 networks disrupted" as a measure of IO prevalence or impact | **Weak / not a denominator** | It is a count of policy violations touching OpenAI's models, not a population estimate; unknown detection sensitivity and unknown overlap with non-OpenAI activity. |
| Breakout Scale category assignments | **Vendor judgement, partially caveated** | OpenAI and Anthropic apply Brookings' scale themselves; OpenAI explicitly *revised* "Newstop Africa" downward (3 → 2) after third-party research. Treat as informed assessment, not measurement. |
| AI-generated IO causing measurable opinion or vote change | **Not demonstrated** | No study in this corpus links an identified AI-enabled IO to a measured attitudinal or behavioural population-level shift. Lab and survey experiments measure *message-level* persuasion, not campaign effects. |
| DFRLab's 2bn-view YouTube network being state-directed IO | **UNVERIFIED** | DFRLab documents coordination indicators and fabricated events but frames it as AI-slop content farming; operators and intent unidentified. Monetization is plausible. |
| Graphika "Pundit by Prompt" assets being a single coordinated IO network | **UNVERIFIED by Graphika itself** | Graphika explicitly could not confirm coordination, common operators, or state linkage; suggests monetization. |
| Citizen Lab / BlackCore figures | **UNVERIFIED here** | Report URL verified, body not read. OCCRP and The Record corroborate the firm's existence and Angola campaign; **numbers must be read from the primary report before citation**. |
| OpenAI Aug 2026 Russia campaign details (fake Israel-based think tank, "sovereignty index") | **Confidence M** | Taken from OpenAI's own RSS description, not the report body. |
| Recorded Future / Trend Micro 2026 IO reports | **Confidence L/M** | Headlines and dates only (Google News RSS); not fetched. |
| Simon/Altay/Mercier "fears are overblown" | **Argument, not measurement** | Normative review; predates GPT-4-class conversational persuasion results and the 2026 labeling findings. Use as a framing counterweight, not an effect size. |

### Selection-bias and self-report caveats (apply throughout §1, §2, §4.1)
- Both labs observe only operations that **used their models or APIs**; an operation using open-weight/local models or a competitor is invisible to them.
- Both labs have an institutional interest in demonstrating that **disruption works** and that models are **not** the decisive capability. Their reach assessments should be read as *"these specific disrupted operations did not break out"*, not *"AI-enabled IO does not break out."*
- Conversely, the DFRLab/Graphika reach numbers are drawn from **platform-visible** public content and may over-represent monetization slop relative to covert IO.

---

## 9. Recommended citation shortlist (highest confidence, primary, with numbers)

1. OpenAI, *Influence and cyber operations: an update*, Oct 2024 — https://cdn.openai.com/threat-intelligence-reports/influence-and-cyber-operations-an-update_October-2024.pdf
2. OpenAI, *Disrupting malicious uses of AI: June 2025* — https://cdn.openai.com/threat-intelligence-reports/5f73af09-a3a3-4a55-992e-069237681620/disrupting-malicious-uses-of-ai-june-2025.pdf
3. OpenAI, *Disrupting malicious uses of AI: October 2025* — https://cdn.openai.com/threat-intelligence-reports/7d662b68-952f-4dfd-a2f2-fe55b041cc4a/disrupting-malicious-uses-of-ai-october-2025.pdf
4. OpenAI, *Disrupting malicious uses of our models: an update, February 2026* — https://cdn.openai.com/pdf/df438d70-e3fe-4a6c-a403-ff632def8f79/disrupting-malicious-uses-of-ai.pdf
5. Anthropic, *Detecting and countering malicious uses of Claude*, Mar 2025 — https://www.anthropic.com/news/detecting-and-countering-malicious-uses-of-claude-march-2025
6. Anthropic, *Detecting and countering misuse of AI: September 2026* — https://www.anthropic.com/threat-intelligence-report-september-2026
7. Goldstein et al., *How persuasive is AI-generated propaganda?*, PNAS Nexus 3(2) pgae034 — https://doi.org/10.1093/pnasnexus/pgae034
8. Salvi et al., *On the conversational persuasiveness of GPT-4*, Nature Human Behaviour 2025 — https://doi.org/10.1038/s41562-025-02194-6
9. Hackenburg et al., *The levers of political persuasion with conversational AI*, Science 2025 — https://doi.org/10.1126/science.aea3884
10. Gallegos et al., *Labeling messages as AI-generated does not reduce their persuasive effects*, PNAS Nexus 5(2) pgag008 — https://doi.org/10.1093/pnasnexus/pgag008
11. Huang & Wang, *Is AI more persuasive than humans? A meta-analysis*, J. Communication 73(6):552 — https://doi.org/10.1093/joc/jqad024
12. Musser, *A Cost Analysis of Generative Language Models and Influence Operations*, arXiv:2308.03740 — https://arxiv.org/abs/2308.03740
13. Orlando et al., *Emergent Coordinated Behaviors in Networked LLM Agents*, arXiv:2510.25003 / WWW 2026 — https://arxiv.org/abs/2510.25003
14. DFRLab, *AI-generated YouTube channels co-opt war coverage to farm nearly two billion views*, 23 Mar 2026 — https://dfrlab.org/2026/03/23/ai-generated-youtube-channels-co-opt-war-coverage-to-farm-nearly-two-billion-views/
15. Graphika & Code for Africa, *Umbrae Ex Machina*, 25 Aug 2026 — https://www.graphika.com/reports/umbrae-ex-machina

---

## 10. Open questions / where the evidence is weakest

1. **No campaign-level causal estimate of opinion change.** All persuasion effect sizes are from **message-level** experiments (survey/RCT). No study in this corpus links a documented AI-enabled IO to a measured population-level belief or behaviour shift.
2. **Detection denominators are unknown.** Nobody can say what fraction of AI-enabled IO is detected, so "most operations don't break out" may be a statement about the *detected* subset.
3. **Cost magnitudes are stale.** Musser 2023 predates current inference pricing and agentic tooling; no 2025–2026 re-measurement was found.
4. **Agentic autonomy is a simulation result.** The real-world evidence supports **partial** autonomy only; the gap between "engagement-timing orchestration" and "self-directed campaign" is exactly where the risk debate lives and is currently unfilled empirically.
5. **Attribution of high-reach AI content is consistently unresolved.** DFRLab (26 channels, 2bn views) and Graphika (300+ assets) both decline to attribute; this is where "AI slop" and "influence operation" blur.
6. **Mitigation evidence is thin and mostly negative.** Labeling does not reduce persuasion (Gallegos 2026); source inoculation alone does not (Spearing 2025); debunking + inoculation is the only combination shown to eliminate effect, and it is slow relative to diffusion.
