# Human Detection Accuracy for Synthetic Media & the "Liar's Dividend"

**Sub-brief — evidence base for a DEFENSIVE threat assessment**
**Date of analysis:** 25 September 2026
**Analyst note:** All figures below were extracted from the primary source (published abstract or full text) wherever possible. Figures marked **[UNVERIFIED]** could not be confirmed against a primary source and must not be quoted as established. All percentages are as reported by the study authors; no figure in this document is rounded or reconstructed from memory.

**Evidence grade key**

| Grade | Meaning |
|---|---|
| **A** | Primary / official source; authoritative or official record |
| **B** | Peer-reviewed, strong empirical design (pre-registered or high-powered) |
| **C** | Reputable journalism, industry report, or non-peer-reviewed preprint / working paper |
| **D** | Weak or inferred; secondary citation; figure not directly verified |
| **E** | Vendor / advocacy material |

---

## 1. Human detection accuracy

### 1.1 Master table — images (faces)

| # | Study (authors, year, venue) | N | Modality / stimuli | Exact metric | DOI | Grade |
|---|---|---|---|---|---|---|
| I1 | Nightingale & Farid, 2022, *PNAS* 119(8) e2120481119 — "AI-synthesized faces are indistinguishable from real faces and more trustworthy" | **315** participants (128 faces each; 800-face pool) | GAN-synthesised faces (still images) | **Average accuracy 48.2%** (95% CI 47.1–49.2) vs **chance 50%**; no response bias: d′ = −0.09, β = 0.99 | 10.1073/pnas.2120481119 | **B** |
| I2 | Nightingale & Farid, 2022 (Exp. 2, same paper) | **219** new participants | Same face pool; **training + trial-by-trial feedback** | **Average accuracy 59.0%** (95% CI 57.7–60.4), d′ = 0.46, β = 0.99. **No improvement over time**: 59.3% first 64 faces vs 58.8% second 64 | 10.1073/pnas.2120481119 | **B** |
| I3 | Nightingale & Farid, 2022 (Exp. 3, same paper) | **223** participants | Trustworthiness ratings, 1–7 scale | Real faces **4.48** vs synthetic **4.82** — **7.7% more trustworthy**, t(222) = 14.6, p < 0.001, d = 0.49. Top-3 most trustworthy faces were synthetic; bottom-4 least trustworthy were real | 10.1073/pnas.2120481119 | **B** |
| I4 | Miller, Steward, Witkower, Sutherland, Krumhuber & Dawel, 2023, *Psychological Science* — "AI Hyperrealism" | Exp. 1 **N = 124**; Exp. 2 **N = 610** adults | AI-generated faces (StyleGAN2) | White AI faces judged **human more often than actual human faces** ("AI hyperrealism"). Paradoxically, those making the most errors were the **most confident** (Dunning–Kruger pattern) | 10.1177/09567976231207095 | **B** |
| I5 | Seabrooke, Pattni & Higham, 2025, PsyArXiv preprint — "Enhancing Human Detection of Real and AI-Generated Hyperrealistic Faces" | Total **N = 661** (4 pre-registered experiments) | StyleGAN2 faces | **Below-chance** discrimination in pre-test and control conditions (AI hyperrealism); after the DISCERN-AI training intervention, **consistently above-chance**, retained at 20-day follow-up | 10.31234/osf.io/xjemh_v1 | **C** (preprint) |
| I6 | Dunn, White, Sutherland, Miller, Steward & Dawel, 2025, PsyArXiv preprint — "Too good to be true: Synthetic AI faces are more average than real faces and super-recognizers know it" | Super-recognizers **N = 36**; high-performing motivated controls **N = 89** | AI vs real faces | Super-recognizers outperformed a typical sample by **15%** and high-performing controls by **7%** (Cohen's d = 0.55) | 10.31234/osf.io/fwjsb_v2 | **C** (preprint) |
| I7 | Pehlivanoglu et al., 2026, *Cognitive Research: Principles and Implications* — "Is this real? Susceptibility to deepfakes in machines and humans" | **[UNVERIFIED — N not extracted]** | Static face images (Study 1) and dynamic videos (Study 2) | Study 1: **human accuracy at chance** for static images (machines excellent); accompanied by truth bias and low confidence. Study 2: **machines near chance on video; humans outperformed machines** | 10.1186/s41235-025-00700-y | **B** (N unverified) |

### 1.2 Master table — audio / voice

| # | Study (authors, year, venue) | N | Modality / stimuli | Exact metric | DOI | Grade |
|---|---|---|---|---|---|---|
| A1 | Mai, Bray, Davies & Griffin, 2023, *PLoS ONE* 18(7) e0285333 — "Warning: Humans cannot reliably detect speech deepfakes" | **N = 529** (English 281; Mandarin 248) | Speech deepfakes (VITS); 100 clips | **Unary task** (is this clip real or fake?): n = 5,120 responses, **overall accuracy 70.35%**; **real clips correct 67.78%**; **fake clips correct 73.0%**. **Binary task** (2AFC with reference audio): **85.59%** of fakes correctly identified (5,380 trials). No significant language difference (+1.79% Mandarin, n.s.) | 10.1371/journal.pone.0285333 | **B** |
| A2 | Mai et al., 2023 (training condition, same paper) | Subsets of the 529 | Familiarisation with deepfake examples | **Familiarisation increased detection accuracy by 3.84% on average (p = 0.001)**; unary +3.76% (p = 0.017), binary +3.85% (p = 0.032). With familiarisation, unary accuracy at mean clip length (5.76 s) reached only **52.31% — slightly above chance**. Spending more time did not help | 10.1371/journal.pone.0285333 | **B** |
| A3 | Barrington, Cooper & Farid, 2025, *Scientific Reports* 15 — "People are poorly equipped to detect AI-powered voice clones" | **N = 604** (identity study 304; naturalness study 300); 220 speakers | ElevenLabs voice clones (the engine used in the Jan 2024 Biden robocall); DeepSpeak dataset | **Identity task:** participants judged an AI clone to have the **same identity as its real counterpart ~80% of the time** (chance = 50%). **Naturalness task:** real voices correct **67.4%** (SD 14.8); AI clones correct **60.8%** (SD 16.7). **9.7%** (real) and **21.0%** (AI) of participants performed at or below chance | 10.1038/s41598-025-94170-3 | **B** |
| A4 | Lavan, Irvine, Rosi & McGettigan, 2025, *PLoS ONE* — "Voice clones sound realistic but not (yet) hyperrealistic" | **[UNVERIFIED — N not extracted]** | Voice clones + latent-space TTS voices | Voice clones **can sound as real as human voices**, making discrimination difficult. **No hyperrealism effect** for voices (contrast with faces). Both AI voice types rated **more dominant**; some also more trustworthy | 10.1371/journal.pone.0332692 | **B** (N unverified) |

### 1.3 Master table — video / audiovisual

| # | Study (authors, year, venue) | N | Modality / stimuli | Exact metric | DOI | Grade |
|---|---|---|---|---|---|---|
| V1 | Köbis, Doležalová & Soraperra, 2021, *iScience* 24(11) 103364 — "Fooled twice: People cannot detect deepfakes but think they can" | **N = 210** (pre-registered); 16 videos | Video deepfakes (MIT DetectDeepfake set; hardest-to-classify clips) | **Overall accuracy 57.6%** (SD 11.6), t(209) = 9.539, p < 0.001, Cohen's d = 0.658; **d′ = 0.484**. For **most deepfakes, accuracy was below chance**; for 13 of 16 authentic videos, above chance. **Neither raising awareness nor financial incentives improved accuracy.** Participants **overestimated their own detection ability** and were biased toward mistaking deepfakes as authentic | 10.1016/j.isci.2021.103364 | **B** |
| V2 | Groh, Epstein, Firestone & Picard, 2022, *PNAS* 119(1) e2110013119 — "Deepfake detection by human crowds, machines, and machine-informed crowds" | **15,016 participants** across two online studies; Exp. 1 analysis n = 882 recruited + 1,879 non-recruited | DFDC-derived video deepfakes | **Crowd mean 86% accurate** vs **leading model 80% accurate**. Context: the winning DFDC Kaggle model scored **65%** on the 4,000-video holdout set. **82% of participants outperformed the leading model.** Exp. 2 single-video: accurate identification rose **from 66% to 73%** after the model prediction was shown (model-consistent updates in 24% of trials) | 10.1073/pnas.2110013119 | **B** |
| V3 | Groh et al., 2022 (interventions, same paper) | Exp. 1/2 samples | Pre-registered randomised interventions | Inverting videos reduced accuracy by **5.6 percentage points** (p = 0.004); inverted authentic videos **9.1 pp lower** (p < 0.001). **Anger elicitation increased false-positive "real video is a deepfake" identifications by 5.2 percentage points** (p = 0.032). Every extra 10 s of response time associated with **1.1 pp lower accuracy** (p < 0.001) | 10.1073/pnas.2110013119 | **B** |
| V4 | Groh, Sankaranarayanan, Singh, Kim, Lippman & Picard, 2024, *Nature Communications* 15 — "Human detection of political speech deepfakes across transcripts, audio, and video" | **N = 2,215**; 5 pre-registered randomised experiments | Fabricated political speeches (Presidential Deepfakes Data) | Exp. 1a: real PDD videos correct in **85%** of observations, deepfakes **87%**. Exp. 2: real PDD **86%**, enhanced **voice-actor** deepfakes **83%**, enhanced **text-to-speech** deepfakes **72%**, other real videos **85%**, other deepfakes **83%** (chance = 50%). **14 stimuli (10 TTS PDD, 2 voice-actor PDD, 2 prior-study deepfakes) were accurately identified in under 75% of observations** | 10.1038/s41467-024-51998-z | **B** |
| V5 | Groh et al., 2024 (modality, same paper) | 16,004 observations | Transcript vs silent video vs audio | Confidence scores: transcripts lowest at **58%**; silent video **+7 pp**; silent video with subtitles **+9 pp**; **audio (with/without subtitles) +19 pp**. Audio-visual cues drove discernment more than speech content | 10.1038/s41467-024-51998-z | **B** |
| V6 | Lewis, Vu, Duch & Chowdhury, 2023, *Royal Society Open Science* 10 — "Deepfake detection with and without content warnings" | **n = 1,093** UK participants (Lucid) | High-quality deepfake among sets of videos | **Natural setting, no warning:** 32.9% of those exposed to a deepfake reported "anything out of the ordinary" vs **34.1%** in the all-authentic control — difference small and **not statistically significant at 5%**. **With a warning** that ≥1 of 5 videos was a deepfake, only **21.6%** correctly identified the deepfake as the *only* inauthentic video; nearly half also wrongly flagged genuine videos | 10.1098/rsos.231214 | **B** |
| V7 | **Media-literacy training benchmark** — figure cited *within* Groh et al. 2024 (their ref. 52) | **94** participants (per Groh et al.'s description) | 25 deepfake + 4 real videos | Overall discernment accuracy **51%**; **media-literacy training increased discernment accuracy by 24 percentage points** vs control | Secondary citation — see Groh et al. 2024, 10.1038/s41467-024-51998-z | **D** (secondary; primary source not retrieved) |

### 1.4 Master table — multi-modal benchmark

| # | Study (authors, year, venue) | N | Modality / stimuli | Exact metric | DOI | Grade |
|---|---|---|---|---|---|---|
| M1 | Cooke, Edwards, Barkoff & Kelly, 2025, *Communications of the ACM* — "As Good as a Coin Toss: Human Detection of AI-Generated Content" | **N = 1,276** | Images, audio, video, audiovisual; online-platform-like ecological conditions | **Mean detection performance close to chance-level 50%.** Accuracy **worsens** when stimuli contain any synthetic content, feature foreign languages, or are a single modality; worse for synthetic images **featuring human faces**, and for audiovisual stimuli of heterogeneous authenticity. **Higher prior knowledge about synthetic media did not significantly improve accuracy**; **older individuals performed worse** | 10.1145/3729417 | **B** |
| M2 | Chandra et al., 2025, arXiv:2503.02857 — "Deepfake-Eval-2024" (context: **machine** detectors, not humans) | Benchmark: 45 h video, 56.5 h audio, 1,975 images; 88 websites, 52 languages | In-the-wild 2024 deepfakes | Open-source SOTA detector performance **drops precipitously** vs prior benchmarks: **AUC −50% video, −48% audio, −45% image**. Commercial models better but **do not yet reach deepfake forensic analysts** | 10.48550/arXiv.2503.02857 | **C** (preprint) |

---

## 2. Liar's dividend — conceptual origin and empirical tests

### 2.1 Conceptual origin

| Item | Detail | Grade |
|---|---|---|
| **Chesney & Citron, 2019** — "Deep Fakes: A Looming Challenge for Privacy, Democracy, and National Security" | **107 *California Law Review* (Vol. 107, December 2019).** Verified on the California Law Review site. SSRN version 2018, DOI 10.2139/ssrn.3213954. | **A** (citation verified); **note: theoretical, no empirical data** |

**Definition as used in the literature:** the "liar's dividend" is the benefit a bad actor derives from the *mere existence* of deepfake technology — the ability to dismiss **authentic** evidence as fake. It is a claim *about* misinformation, not misinformation itself. This distinction matters: the empirical tests below measure whether *false claims of falsification* move political attitudes.

### 2.2 Empirical evidence table

| # | Study (authors, year, venue) | N | Design | Exact finding / effect size | DOI | Grade |
|---|---|---|---|---|---|---|
| L1 | Schiff, Schiff & Bueno, 2024, *American Political Science Review* — "The Liar's Dividend: Can Politicians Claim Misinformation to Evade Accountability?" | **Total 15,287 US adults** across 5 pre-registered survey experiments: Study 1 n = 2,503; Study 2 n = 2,518; Study 3 n = 2,996; Study 4 n = 4,432; Study 5 n = 2,838. **Text treatments n = 11,820; video treatments n = 3,467** | 5 survey experiments; hypothetical politician responses to **real** politician scandals; two strategies — *informational uncertainty* and *oppositional rallying* | **Text:** in Study 1's control ~**44%** of respondents were opponents of the politician; text misinformation claims reduced opponents to ~**32–34%** — a **10–12 percentage point reduction**. Both strategies raise politician support across partisan subgroups. **Video:** strategies are **largely ineffective against video evidence**. Claims did **not** reduce general trust in media. False claims produced **greater dividends than remaining silent or apologising** | 10.1017/s0003055423001454 | **B** |
| L2 | Vaccari & Chadwick, 2020, *Social Media + Society* 6(1) — "Deepfakes and Disinformation: Exploring the Impact of Synthetic Political Video on Deception, Uncertainty, and Trust in News" | **"A large representative sample of the United Kingdom population" — [UNVERIFIED: exact N not retrieved; SAGE returned HTTP 403 and no open-access copy was reachable]** | Experimental treatments embedded in a representative UK survey | People are **more likely to feel uncertain than to be misled** by deepfakes; this resulting **uncertainty, in turn, reduces trust in news on social media**. Authors conclude deepfakes "may contribute toward generalized indeterminacy and cynicism" | 10.1177/2056305120903408 | **B** for the finding; **N unverified** |
| L3 | Dobber, Metoui, Trilling, Helberger & de Vreese, 2020, *The International Journal of Press/Politics* — "Do (Microtargeted) Deepfakes Have Real Effects on Political Attitudes?" | **N = 278** | Online experiment with a constructed political deepfake (video + audio) | Attitudes toward the **depicted politician were significantly lower** after seeing the deepfake; attitudes toward the politician's **party remained similar to control**. In the **microtargeted subgroup**, both politician *and* party attitudes were significantly lower — "microtargeting techniques can indeed amplify the effects of a deepfake, but for a much smaller subgroup than expected" | 10.1177/1940161220944364 | **B** |
| L4 | Wittenberg, Tappin, Berinsky & Rand, 2021, *PNAS* 118(50) — "The (minimal) persuasive advantage of political video over text" | **n = 7,609 Americans; 26,584 observations**; 72 clips | Two high-powered survey experiments; video vs transcript vs control | Clear evidence of **"seeing is believing"**: individuals are **more likely to believe an event occurred** when shown video vs text. But the advantage of video over text for **attitudes and behavioural intentions is markedly less pronounced** — comparable to, or smaller than, the text-vs-control difference | 10.1073/pnas.2114388118 | **B** |
| L5 | Twomey, Ching, Aylett, Quayle, Linehan & Murphy, 2023, *PLoS ONE* 18(9) e0291668 — "Do deepfake videos undermine our epistemic trust?" | **4,869 relevant tweets**, first 7 months of 2022 (Russo-Ukrainian war) | Thematic analysis of real-world social media discourse | **"Much of the misinformation in our dataset came from labelling real media as deepfakes."** Novel deepfake scepticism observed, including conspiratorial beliefs that leaders were dead/replaced by deepfakes. Notably, efforts to raise awareness **did not** remedy this | 10.1371/journal.pone.0291668 | **B/C** (qualitative, real-world) |
| L6 | Chen, Hagmann, Pang & Loewenstein, 2026, SSRN working paper — "Labeling Deepfake Videos Reduces Exposure But Not Persuasiveness" | **N = 7,107**; four large-scale experiments | Warning labels on AI-generated videos | Participants watching realistic AI-generated persuasive videos **were persuaded regardless of warning label** — labels "did not diminish the video's persuasiveness." Viewers rated labeled deepfakes as **less deceptive**, but otherwise evaluated them and their senders no differently. Labels worked only at the **extensive margin**: less likely to *watch* or *share* | 10.2139/ssrn.6230518 | **C** (working paper) |

---

## 3. Counter-evidence / null results

| # | Study | What it undercuts | Exact finding | Grade |
|---|---|---|---|---|
| N1 | **Ching, Twomey, Aylett, Quayle, Linehan & Murphy, 2025, *PLoS ONE* 20(4) e0320124 — "Can deepfakes manipulate us? Assessing the evidence via a critical scoping review"** | The strong-form claim that deepfakes are uniquely persuasive / that the liar's dividend is large and established | Five databases searched; **2,004 papers screened → 22 relevant**. "The early studies on this topic have often produced **inconclusive findings** regarding the existence of **uniquely persuasive or convincing effects of deepfake exposure**." Many experiments had **poor methodology and no non-deepfake comparator** (e.g. text-based misinformation). Conclusion: "**speculation and scare mongering about dystopian uses of deepfake technologies has far outpaced experimental research that assess these harms**" | **B** |
| N2 | **Schiff, Schiff & Bueno, 2024, *APSR*** (same as L1) | The liar's dividend as a general-purpose shield | Dividend is **"largely ineffective against video evidence."** The mechanism works against **text** reports of scandal (10–12 pp), not against video | **B** |
| N3 | **Köbis et al., 2021, *iScience*** (same as V1) | That exposure to deepfakes primarily produces generalised distrust of real media (the liar's dividend channel) | The dominant bias observed was **"seeing-is-believing"** — mistaking deepfakes for authentic — **not** the reverse. The paper explicitly tests the two competing biases ("liar's dividend versus seeing is believing") and finds the seeing-is-believing bias prevails. Raising awareness and financial incentives had **no** effect | **B** |
| N4 | **Groh et al., 2024, *Nature Communications*** (same as V4) | That priming about misinformation base rates changes discernment | "**We do not find base rates of misinformation have statistically significant effects on discernment**" — across 5 pre-registered experiments | **B** |
| N5 | **Nightingale & Farid, 2022, *PNAS* Exp. 2** (same as I2) | That training closes the gap | Trial-by-trial feedback + explicit awareness of rendering artefacts lifted accuracy only to **59.0%**, with **no improvement over time** (59.3% → 58.8%). Authors: "overall performance remained only slightly above chance…**some synthetic faces simply do not contain perceptually detectable artifacts**" | **B** |
| N6 | **Mai et al., 2023, *PLoS ONE*** (same as A2) | That awareness training is a viable defence | Familiarisation improved accuracy by only **3.84%**; unary accuracy with familiarisation reached only **52.31%**. Authors: "**attempting to improve human detection capabilities is unrealistic**" | **B** |
| N7 | **Cooke et al., 2025, *CACM*** (same as M1) | That knowledge/literacy is protective | "**Higher degrees of prior knowledge about synthetic media does not significantly impact detection-accuracy rates**" | **B** |
| N8 | **Chen et al., 2026, SSRN** (same as L6) | That disclosure/labelling mitigates persuasion | Labelling did **not** reduce persuasiveness of deepfake videos (N = 7,107) | **C** |
| N9 | **Simon, Altay & Mercier, 2023, *Harvard Kennedy School Misinformation Review* — "Misinformation reloaded? Fears about the impact of generative AI on misinformation are overblown"** | Alarmist framings of generative-AI misinformation impact | Argues, from evidence in communication studies, cognitive science and political science, that "current concerns about the effects of generative AI on the misinformation landscape are **overblown**." **Note: argument synthesis — no new primary data** | **C** |
| N10 | **Barrington, Cooper & Farid, 2025, *Scientific Reports*** (same as A3), and **Lavan et al., 2025, *PLoS ONE*** (A4) | That synthetic voice is *more* convincing than real human voice (the "hyperrealism" generalisation from faces) | Voice clones **can sound as real as** human voices, but **no hyperrealism effect was observed** for voices. Both AI voice types were rated *more dominant*, and some *more trustworthy* — a caution flag, but not hyperrealism | **B** |
| N11 | **Lavan et al., 2025** and **Adank & Wang, 2026, *JASA*** (adjacent finding) | That clones are simply "worse" audio | Cloned voices were **up to 13.4% more intelligible than their human originals across all noise levels**; human listeners identified human voices with **70.4%** accuracy. Suggests clone audio can carry a *quality* advantage in adverse conditions | **B** (Adank & Wang N = 80 listeners) |

---

## 4. FAILED SEARCHES / NEGATIVE FINDINGS

### 4.1 Tool and API failures

| Tool | Status | Impact |
|---|---|---|
| **OpenAlex API** (`api.openalex.org`) | **HTTP 429 — rate-limited for the entire session/IP** (reported ~14 h retry). Initial queries succeeded; all subsequent OpenAlex queries failed | Switched to Europe PMC, Crossref, Semantic Scholar, arXiv. All OpenAlex-only fields (e.g. abstract-inverted-index) were re-sourced. **No finding in this document depends on OpenAlex alone** |
| **Semantic Scholar Graph API** | **Intermittent HTTP 429** on the majority of queries | Several planned queries could not be run (see 4.2). Working queries returned abstracts only |
| **Crossref REST API** | Worked reliably but **rate-limited (429) under rapid succession**; required ~5–20 s spacing | Some lookups required retries |
| **Europe PMC REST API** | **Most reliable source used.** Full-text XML retrieved successfully for Nightingale & Farid, Mai, Köbis, Groh 2022, Barrington, Lewis |
| **SAGE Journals** | **HTTP 403** on article page and PDF (bot protection), including via r.jina.ai and with browser-like headers | Direct blocker on the Vaccari & Chadwick N (see 4.3) |
| **PNAS PDF** (`pnas.org`) | Bot-protection block; downloaded file was HTML, not PDF | **Worked around** via Europe PMC full-text XML — figures obtained |
| **`web_search` tool** | **Deliberately not used** — declared broken in task brief | Replaced by Google News RSS (`tools/news.sh`), Crossref, Europe PMC, arXiv |
| **Google News redirect URLs** | Redirect URLs do not resolve; only headline + source + date are usable | Used for **lead generation only**; every news lead was then verified against a primary source or not reported |
| **PMC (`pmc.ncbi.nlm.nih.gov`) HTML via `tools/get.sh`** | Returned JavaScript/CSS boilerplate rather than article text | Worked around via Europe PMC `fullTextXML` endpoint |

### 4.2 Queries that yielded nothing usable

1. **"meta-analysis human deepfake detection accuracy"** — **No genuine peer-reviewed meta-analysis of human deepfake detection accuracy was found.** This query and the variants below returned only *machine* detector performance papers or unrelated medical AI meta-analyses:
   - `meta-analysis deepfake detection accuracy human perceivers` → **zero relevant results**
   - `meta-analysis human ability detect deepfakes review effect size` → returned *An Analysis of the Human Ability to Detect Deepfakes With Geopolitical Content* (Brienza et al., 2026, *IEEE TCSS*, DOI 10.1109/tcss.2026.3667623) — **no abstract available via any working API; N and effect sizes NOT VERIFIED**
   - `human accuracy detecting AI-generated images meta-analysis` → returned dentistry/endoscopy/odontogenic meta-analyses (irrelevant)
   - **Assessment:** as of 25 Sep 2026 I could **not locate a pooled-effect-size meta-analysis** of human synthetic-media detection. The closest substitutes are **Cooke et al. 2025** (primary study, N = 1,276, *CACM*) and **Ching et al. 2025** (scoping review of 22 studies, *PLoS ONE*). **Any brief asserting a meta-analytic pooled accuracy figure for human deepfake detection would be unsupported.**

2. **"liar's dividend deepfake"** (Semantic Scholar) → **all queries failed with HTTP 429.** Recovered via Crossref and Europe PMC.

3. **A dedicated experiment on whether voice-cloned robocalls fool voters — NOT FOUND.** Targeted searches for `voice clone robocall voters experiment`, `voters voice clone robocall experiment` returned only:
   - a journalism/commentary item on the **fake Biden robocall** (Donovan, 2024, DOI 10.64628/aai.qnwxcqhu9 — **no abstract, Grade C/E, not an experiment**);
   - unrelated voice-authentication engineering papers.
   The **closest empirical substitute** is **Barrington, Cooper & Farid 2025** (A3), which explicitly frames its study around the Biden robocall and used the same ElevenLabs engine, but tests **perceptual detection of clones**, not **voter behaviour after receiving a robocall**.

4. **The "Groh et al. 2023" AI-image study — DOES NOT APPEAR TO EXIST.** Groh and colleagues have two relevant works, both verified: **2022 *PNAS*** (video deepfake detection; V2/V3) and **2024 *Nature Communications*** (political speech deepfakes; V4/V5). No 2023 Groh study on AI-image detection was found. The AI-image hyperrealism literature is **Miller et al. 2023** (I4), a different author group.

5. **Counts/percentages requested for Pehlivanoglu et al. 2026 and Lavan et al. 2025 — N NOT EXTRACTED.** Abstracts verified and directional findings confirmed, but sample sizes were not obtained within the available tool budget. They are flagged **[UNVERIFIED]** in the tables rather than guessed.

6. **Gizmodo, 29 June 2026, "Scientists Think This Is the Best Way to Detect AI Slop Imagery"** — surfaced via Google News but **the underlying study was not identified or verified**. Not reported as a finding.

7. **"The Deepfake Confidence Gap" (Hardware Secrets, 22 Sep 2026)** — surfaced via Google News; underlying study not identified. Not reported as a finding.

8. **"2024 Deepfake Statistics," "Deepfake Statistics 2026 Reveal a 3,892% Fraud Surge" (Memeburn), vendor detection-tool rankings (Resemble AI, Incode/Deepsight)** — industry/vendor material surfaced in news search. **Deliberately excluded** as Grade E (vendor/advocacy) and not verified against primary data.

### 4.3 Figures I could NOT verify — do not quote

| Claim | Status |
|---|---|
| **Vaccari & Chadwick (2020) sample size and any effect sizes** | **NOT VERIFIED.** Abstract confirms design ("large representative sample of the UK population") and the directional finding (uncertainty > deception; uncertainty reduces trust in social-media news). SAGE 403; Unpaywall returned **no OA location** despite Semantic Scholar listing the paper as GOLD OA; LSE Research Online redirect failed; CORE PDF empty. **The exact N and any percentage-point effects for this study are unknown to me.** |
| **Nightingale & Farid "~50–60%" range** (as posed in the brief) | **RESOLVED — the range is correct but the figures are specific:** **48.2%** (Exp. 1, untrained, below the 50% chance floor) and **59.0%** (Exp. 2, with training + feedback). "~50–60%" is an acceptable paraphrase; **48.2%** is the figure for the untrained condition. |
| **Media-literacy training "+24 percentage points"** | **Grade D — secondary citation only.** The figure appears in **Groh et al. 2024** describing a third-party study (their ref. 52, 94 participants). I did **not** retrieve that primary study. Treat as indicative, not established. |
| **Brienza et al. 2026, *IEEE TCSS*** on human detection of geopolitical deepfakes | **No abstract retrievable** (OpenAlex 429; no EPMC/Crossref abstract). Existence confirmed via Crossref metadata only. |
| **Pehlivanoglu et al. 2026 N; Lavan et al. 2025 N; Chandra et al. 2025 human N (n/a)** | **NOT VERIFIED** — flagged inline. |
| **Adank & Wang 2026, *JASA*** clone-intelligibility study | Abstract verified (80 listeners; clones up to 13.4% more intelligible; humans identified human voices at 70.4%). Included only as adjacent context to A4/N11. |

---

## 5. Bottom line for the threat assessment

**High-confidence (Grade B) headline figures with N:**

1. **Still-face images:** untrained humans score **48.2%** (N = 315) — *below* the 50% chance floor — against GAN faces; with training and feedback only **59.0%** (N = 219), with no learning over time (Nightingale & Farid 2022, *PNAS*).
2. **Speech deepfakes:** overall accuracy **70.35%** (N = 529; 5,120 unary responses), with **73.0%** of fakes caught but only **67.78%** of *real* clips correctly accepted; a realistic 2AFC with reference audio reaches **85.59%** (Mai et al. 2023, *PLoS ONE*).
3. **Voice clones (modern commercial engine):** identity of an AI clone mistaken for the real speaker **~80%** of the time; naturalness detection only **67.4%** on real / **60.8%** on AI audio (N = 604; Barrington, Cooper & Farid 2025, *Scientific Reports*).
4. **Video deepfakes:** **57.6%** (N = 210; Köbis et al. 2021) to a crowd mean of **86%** vs a model's **80%** (15,016 participants; Groh et al. 2022, *PNAS*); political-speech TTS deepfakes drop to **72%** correct (N = 2,215; Groh et al. 2024, *Nature Communications*).
5. **Multi-modal, platform-like conditions:** mean detection **≈ chance, 50%** (N = 1,276; Cooke et al. 2025, *CACM*).
6. **Warnings are weak or counterproductive:** no-warning detection 32.9% vs 34.1% control (n.s.); with a warning only **21.6%** correctly identified the sole deepfake (n = 1,093; Lewis et al. 2023, *Royal Society Open Science*).

**Liar's dividend, verified:** the strongest empirical test (Schiff, Schiff & Bueno 2024, *APSR*; 15,287 adults) finds false misinformation claims cut opponents from **~44% to ~32–34%** (**10–12 pp**) for **text** scandals — but are **largely ineffective against video evidence**, and do **not** reduce general media trust. Real-world corroboration exists (Twomey et al. 2023: much war-related "deepfake" misinformation was **real media labelled fake**).

**Most important caveat:** there is **no verified meta-analytic pooled accuracy figure** for human deepfake detection, and the strongest review (Ching et al. 2025, *PLoS ONE*; 22 studies from 2,004 records) finds the empirical literature **inconclusive** about uniquely persuasive deepfake effects, with "speculation and scare mongering… far outpaced" the evidence.
