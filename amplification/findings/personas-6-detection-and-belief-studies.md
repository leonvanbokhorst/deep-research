# Persona 6 — Detection and Belief: Empirical Evidence on Synthetic Corroboration and Synthetic Media

**Research cut-off:** 25 September 2026 · **Framing:** defensive / analytic
**Scope:** detectability of AI faces, text and audio; human deepfake detection; whether repeated exposure — especially from *multiple apparent sources* — increases belief; the "liar's dividend."
**Evidence grades:** A = peer-reviewed primary empirical (incl. peer-reviewed meta-analyses) · B = peer-reviewed review · C = reputable news · D = preprint/vendor · E = unverified.
**Method:** `web_search` was unavailable; every item was verified against publisher abstract pages, Crossref, Europe PMC, or PMC full text. Unverified items are in §9. *The word target applies to narrative prose (§1–§7, §9); the table (§8) and citations (§10) are excluded by convention.*

---

## 1. Bottom line

1. **Human detection of synthetic content is at or barely above chance in every modality.** The largest synthesis (56 papers, 86,155 participants) pools human deepfake detection at **55.5%** — 53.2% images, 52.0% text, 57.3% video, 62.1% audio (Diel et al. 2024). This is the most important number in the area.
2. **Confidence is decoupled from accuracy**; the worst performers are the most confident (Miller et al. 2023; Bray et al. 2023; Köbis et al. 2021).
3. **Detection is trainable, but only via the right cue class.** Artifact/feedback training gives modest, fragile gains; training on *global facial impressions* doubles accuracy (40%→80%) and replicates online (Dawel et al. 2026).
4. **The multiple-source question has a deflationary answer.** Repetition — not the number of apparent sources — drives belief (Foster et al. 2012), and *perceived source variability* is not the mechanism behind the truth effect (Roggeveen & Johar 2002). "Synthetic corroboration" adds less marginal belief than a naive model predicts.
5. **The illusory truth effect is real but small and bounded:** corrected **g = 0.37** over 182 studies (Ye et al. 2026), and **negligible for socio-political opinion statements** (Riesthuis & Woods 2026).
6. **Warnings do not neutralise synthetic media** — a flagged deepfake confession still shifted guilt judgements (Clark & Lewandowsky 2026). **The liar's dividend is demonstrated but bounded:** false "it's fake" claims raise politician support after *text-based* scandal reports but are **largely ineffective against video evidence** (Schiff et al. 2025).

---

## 2. AI-generated faces

**Nightingale & Farid (2022, PNAS)** — the anchor study; 800 faces (400 real FFHQ, 400 StyleGAN2).
- **Exp. 1** (N = 315; 128 faces each): accuracy **48.2%** (95% CI 47.1–49.2) vs 50% chance; d′ = −0.09, β = 0.99 — no sensitivity and no bias. White faces were hardest to classify, consistent with their over-representation in StyleGAN2 training data.
- **Exp. 2** (N = 219; training + trial-by-trial feedback): accuracy rose to **59.0%** (57.7–60.4), d′ = 0.46 — with **no improvement over time** (59.3% on faces 1–64 vs 58.8% on 65–128). Some synthetic faces appear to contain no perceptually detectable artifact.
- **Exp. 3** (N = 223; trustworthiness 1–7): synthetic **4.82** vs real **4.48** — **+7.7%**, t(222) = 14.6, p < .001, **d = 0.49**. Three of the four most-trustworthy faces were synthetic; all four least-trustworthy were real.

**Miller et al. (2023, *Psychological Science*)** — "AI hyperrealism." Exp. 1 (N = 124): **White AI faces were judged human ~2 in 3 times (~66%)**, i.e. *more often than actual human faces*; those who erred most were most confident (Dunning–Kruger). Exp. 2 (N = 610) found distinguishing attributes that participants systematically misread — yet the same attributes permitted high machine accuracy.

**Dawel et al. (2026, PNAS)** — the strongest positive result. N = 45, pre–post design with untrained test faces (StyleGAN3). Training attention to six *global impressions* (distinctiveness, memorability, proportionality, symmetry, attractiveness, expressiveness), **without** telling participants how to use them, **nearly doubled accuracy (40%→80%)**; all improved and high performers neared perfection. A test–retest control ruled out practice effects; an **online replication** showed scalability. Confidence *calibration* emerged only after training.

**McGuire, Bohacek, Farid, Taylor & Nightingale (2026, *Journal of Vision*)** — the key update. Exp. 1 (N = 169), Exp. 2 (N = 87), 96 faces: **diffusion models generate *less* photorealistic faces than GANs, yet those faces are rated *more* trustworthy than both GAN faces and real faces.** The "more trustworthy than real" result replicates across architectures and has not decayed.

**Proverbio & Dosaikina (2026, *Scientific Reports*)** — N = 30, 440 faces, EEG. AI faces were poorly identified and rated *more* familiar and appealing, yet evoked larger N250, P300, PN400 and late positivity, with reduced ventral-temporal/parietal/limbic engagement for real faces. **Explicit recognition failure dissociates from implicit neural evaluation** — detection failure is genuinely perceptual, not mere inattention.

**Ivory, McGettigan, Nuttall & Nightingale (2026, *Scientific Reports*)** — preregistered: face and voice classification both above chance, but **no domain-general effect** (no cross-modal transfer); confidence tracked accuracy for faces but **not** voices. "Media literacy" is not one skill. **Sulimani et al. (2026, *Perception*)** gives an independent out-of-lab replication.

---

## 3. AI-generated text

- **Jakesch, Hancock & Naaman (2023, PNAS)** — six experiments, **N = 4,600**: participants **could not detect AI-generated self-presentations** in professional, hospitality and dating contexts. Judgements rest on *intuitive but flawed heuristics* (first-person pronouns, contractions, family topics read as human) — which, being knowable, let output be tuned to seem "more human than human."
- **Herbold et al. (2023, *Scientific Reports*)** — expert-rated essay comparison: **ChatGPT essays were rated *higher* on quality than human-written essays**, with distinguishable linguistic signatures. The signal exists; untrained readers do not use it.
- **Dugan et al. (2023, AAAI)** — "Real or Fake Text" (RoFT): where text *transitions* from human to machine, **annotators often struggle**, though skill varies widely and improves with incentives.
- **Altay & Gilardi (2024, PNAS Nexus)** — N = 4,976 (US + UK): labelling headlines "AI-generated" lowered perceived accuracy and sharing **regardless of whether headlines were true, false, human- or AI-made**; the effect was **three times smaller** than labelling them false. Provenance labelling is not a free good.
- **Detectors are the weak link.** **Liang et al. (2023, *Patterns*)**: widely used GPT detectors "consistently misclassify non-native English writing samples as AI-generated, whereas native writing samples are accurately identified," and simple prompting both mitigates the bias *and bypasses the detectors*. **Weber-Wulff et al. (2023, *IJEI*)**: 12 public tools plus Turnitin and PlagiarismCheck — "**neither accurate nor reliable**," biased toward classifying output as **human-written**, with **content obfuscation significantly worsening** performance.

---

## 4. Persuasion and propaganda at scale

- **Hackenburg & Margetts (2024, PNAS)** — preregistered RCT, **n = 8,587**. GPT-4 messages were broadly persuasive (**up to +12 pp**), but **microtargeting was not significantly better than non-microtargeted messaging** (4.83 vs 6.20 pp, P = .226). Persuasive power sits in the *generic* message.
- **Hackenburg, Ibrahim, Tappin & Tsakiris (2026, *AI & Society*)** — n = 4,955: GPT-4 "partisan role-play" was **no more persuasive than non-role-play**, but **rivalled and on some issues exceeded human persuasion experts**.
- **Goldstein, Chao, Grossman, Stamos & Tomz (2024, PNAS Nexus)** — GPT-3 davinci produced **highly persuasive propaganda**; prompt-editing and output curation made it **more** persuasive and, under some conditions, **as persuasive as authentic foreign propaganda** — at limited effort.
- **Simchon, Edwards & Lewandowsky (2024, PNAS Nexus)** — personality-tailored ads beat non-personalised ads and can be **generated and validated automatically at scale**: a feasible "manipulation machine."
- **Hölbling, Maier & Feuerriegel (2025, *Scientific Reports*)** — meta-analysis, **7 studies, 17,422 participants**: **no significant overall difference in persuasiveness between LLMs and humans**.
- **Costello, Pennycook & Rand (2024, *Science*)** — the defensive counterweight: 2,190 conspiracy believers in personalised evidence-based GPT-4 Turbo dialogues showed **~20% belief reduction**, durable at 2 months and generalising to unrelated conspiracies.
- **Bai, Voelkel, Eichstaedt & Willer** — GPT-3/3.5 messages **as persuasive as lay-human messages** (N = 4,836). ⚠️ **Preprint only** (OSF 10.31219/osf.io/stakv); widely cited as published but no journal version found. Grade D.

---

## 5. Repeat exposure, illusory truth, and "multiple sources"

**Foundations.** Pennycook, Cannon & Rand (2018): **prior exposure increases perceived accuracy of fake news**, including implausible headlines and when the source is discounted. Fazio, Brashier, Payne & Marsh (2015): **knowledge does not protect against illusory truth**. Fazio, Rand & Pennycook (2019): repetition raises perceived truth **about equally for plausible and implausible** statements. Begg, Anas & Farinacci (1992): the effect survives **even when the source is known to be unreliable** (all *JEP: General* / *PB&R*).

**Scale and limits (2026).** Ye, Attali, Ghazi, Cachia, Cassotti & Borst (2026, *Nature Communications*): **182 studies, 366 effect sizes, N = 31,184**, 1977–2025. Corrected for small-study effects, **g = 0.37 (95% CI 0.30–0.44)** — small, with substantial heterogeneity; moderators include item type, first-exposure instructions, **presence of veracity cues**, and first-exposure duration. Riesthuis & Woods (2026, *Consciousness and Cognition*) then bound it sharply: two preregistered experiments (N = 457) plus a mini meta-analysis found repetition **did not reliably increase subjective truth for socio-political *opinion* statements**.

**Does source plurality matter? — the core question.**
- **Foster, Huthwaite, Yesberg, Garry & Loftus (2012, *Acta Psychologica*)** — the title states the result: "**Repetition, not number of sources, increases both susceptibility to misinformation and confidence**." The cleanest direct test, and a **null for source plurality**.
- **Roggeveen & Johar (2002, *Journal of Consumer Psychology*)** — holding source credibility constant, experiments manipulating **number of sources** implicated **subjective familiarity, not perceived source variability**, as the mechanism. A third study showed source variability *can* enhance belief under some conditions — but familiarity is the default.
- **Pillai & Fazio (2025, *JARMAC*)** — the most targeted recent study: "**Repeated by many versus repeated by one: Examining the role of social consensus in the relationship between repetition and belief.**" ⚠️ APA blocked automated abstract retrieval; title, authors, venue and DOI verified, but **not** the effect size or direction. **Priority read** — it is the one paper framed exactly as the synthetic-corroboration hypothesis.
- **Mattavelli, Brambilla & Unkelbach (2026, *PSPB*)** — four preregistered experiments (N = 90, 65, 180, 435): repetition increased the **credibility of the *source***, generalising to novel statements from that source. Repetition launders *publisher* credibility — the actual enabling condition for synthetic corroboration.
- **Ingendahl, Vaz, Schulte, Woitzel & Alves (2025, *JEP: General*)** — people integrate **multiple repeated and nonrepeated items** into global truth assessments; truth is computed over an aggregate of exposures, not item-by-item.
- **Jiang, Schwarz, Reynolds & Newman (2024, *PLOS ONE*)** — repetition increased belief in **climate-skeptical** claims **as much as climate-science claims, even among climate-science endorsers**.
- **Udry & Barber (2024)** (review) and **Walter & Tukachinsky (2020)**, meta-analysing the **continued influence effect**, confirm corrections reduce but do not eliminate reliance on misinformation.
- ⚠️ **Preprints:** Orchinik, Bhui & Rand — "Repetition Does Not Increase Belief in Claims From Distrusted Politicians"; Orchinik, Rand, Pennycook & Fazio — repetition raises belief **more for implausible** than plausible statements.

**Net reading:** the marginal belief gain from a *second apparent source* is substantially smaller than from a *second exposure*, because fluency — not perceived corroboration — is the default mechanism. Plurality bites indirectly, via **source-credibility laundering** (Mattavelli et al. 2026) and any route producing **perceived social consensus**. I found **no peer-reviewed study demonstrating a large, robust "N fake sources > 1 fake source" belief multiplier**. Such claims are **inferred, not demonstrated**.

---

## 6. Human deepfake detection

- **Diel, Lalgi, Schröter, MacDorman, Teufel & Bäuerle (2024, *Computers in Human Behavior Reports*)** — **56 papers, 86,155 participants, k = 137 effects**. Pooled detection: **total 55.54% [48.87, 62.10]**; image **53.16%**, text **52.00%**, video **57.31%**, audio **62.08%**. The default citation for "humans cannot detect deepfakes."
- **Köbis, Doležalová & Soraperra (2021, *iScience*)** — preregistered, **N = 210**: people cannot reliably detect deepfakes; **awareness-raising and financial incentives did not improve accuracy**; participants were **biased toward mistaking deepfakes as authentic** ("seeing-is-believing") and **overestimated their own ability**.
- **Groh, Epstein, Firestone & Picard (2022, PNAS)** — **15,016 participants**, DFDC stimuli. Exp. 1 (2AFC, 882 analysed): **82% of individuals outperformed the leading model** (65% on the full holdout). Exp. 2: recruited participants **66%**, non-recruited **69%**, model **80%**; crowd mean **74–86%**. Machine-informed crowds improved **66%→73%** (P < .001), but **inaccurate model predictions decreased** accuracy. Accuracy fell **5.6 pp** for inverted face pairs (P = .004), **8.8%** with a person of dark skin present, and **1.1 pp per additional 10 s** of response time.
- **Pehlivanoglu et al. (2026, *Cognitive Research: Principles and Implications*)** — the key 2026 nuance: **algorithms reached ~97% on still deepfake face images while humans performed at chance; on video, machines fell to near chance while humans correctly identified real and fake videos about two-thirds (~66%) of the time.** Higher analytical thinking and internet skill, and **lower positive affect**, predicted better human video detection. The human/machine advantage is **modality-specific and currently reversed between stills and video**.
- **Bray, Johnson & Kleinberg (2023, *Journal of Cybersecurity*)** — N = 280, StyleGAN2/FFHQ: overall accuracy **62%**, per-image range **85%→30%**, below 50% for **one in five images**; **none of three assistance interventions significantly improved accuracy**; **confidence was high and unrelated to accuracy**.
- **Diel, Bäuerle & Teufel** — feedback training improved accuracy **~20%** (n = 48 vs 48 control), but the training group showed **increased arousal and anxiety, decreased valence, and decreased self-efficacy**. ⚠️ **Preprint.** Detection training carries a psychological cost that can undermine sustained participation.
- **Somoray & Miller (2023)** and **Geissler, Robertson & Feuerriegel (2026, ACM CHI)** test explicit strategy interventions. ⚠️ CHI effect sizes not retrieved.

---

## 7. The liar's dividend, warnings and transparency

- **Schiff, Schiff & Bueno (2025, *American Political Science Review*)** — **five survey experiments, >15,000 US adults**. False claims of misinformation ("crying wolf"), via both **informational uncertainty** and **oppositional rallying**, **raised politician support across partisan subgroups**; they were **effective against text-based scandal reports but largely ineffective against video evidence**; they **did not reduce general trust in media**; and they yielded **greater dividends than silence or apology**. The strongest empirical test — and notably bounded.
- **Vaccari & Chadwick (2020, *Social Media + Society*)** — synthetic political video increased **uncertainty** and reduced trust in news more than it changed factual beliefs. (Frequently mis-cited as an HKS *Misinformation Review* paper; the verified venue is *Social Media + Society*.) **Dobber et al. (2021)** found **limited** attitude effects from microtargeted deepfakes, concentrated among the already-predisposed.
- **Clark & Lewandowsky (2026, *Communications Psychology*)** — three preregistered experiments (N = 175, 275, 223): after a deepfake video of a crime or moral-transgression confession, sometimes preceded by an explicit warning, **most participants relied on the video's content even when explicitly warned** — and **even among those who believed the warning and knew the video was fake**. **Transparency is insufficient.**
- **Grohmann, Halle & Appel (2026, *Psychology of Popular Media*)** — "Deepfake! A liar's dividend for audiovisual material" ⚠️ abstract not retrieved. **Huang & Hu (2025, *Science Communication*)** — "'A Warning is Not Enough. Teach Me How to Spot Deepfakes'" — consistent: warnings alone are weak, skill-building is required. **Lewis et al. (2022)** ⚠️ **preprint**.

---

## 8. Key numbers and effect sizes

| Finding | Study | Value | Grade | Conf. |
|---|---|---|---|---|
| Human accuracy, StyleGAN2 vs real faces | Nightingale & Farid 2022, PNAS | **48.2%** (47.1–49.2); d′ = −0.09 | A | High |
| Same, with training + trial-by-trial feedback | Nightingale & Farid 2022, PNAS | **59.0%**; no within-session learning | A | High |
| Synthetic faces rated more trustworthy than real | Nightingale & Farid 2022, PNAS | 4.82 vs 4.48 (**+7.7%**), d = 0.49 | A | High |
| White AI faces judged human | Miller et al. 2023, *Psych. Sci.* | **~66%** — more often than real faces | A | High |
| Impression-based face-detection training | Dawel et al. 2026, PNAS | **40% → 80%**, N = 45; online replication | A | High |
| Diffusion faces vs GAN and real faces | McGuire et al. 2026, *J. Vision* | Less photorealistic, **more trustworthy** | A | High |
| Explicit vs neural discrimination | Proverbio & Dosaikina 2026, *Sci. Rep.* | Behavioural failure; distinct N250/P300/PN400/LPP | A | Med |
| Face→voice detection transfer | Ivory et al. 2026, *Sci. Rep.* | Above chance; **no domain-general effect** | A | High |
| Human LLM-text detection | Jakesch et al. 2023, PNAS | Failed (N = 4,600); manipulable heuristics | A | High |
| ChatGPT vs human essays (expert-rated) | Herbold et al. 2023, *Sci. Rep.* | **ChatGPT rated higher quality** | A | High |
| GPT detectors vs non-native English writers | Liang et al. 2023, *Patterns* | Consistent misclassification as AI | A | High |
| AI-text detector reliability (14 tools) | Weber-Wulff et al. 2023, *IJEI* | **Neither accurate nor reliable**; biased to "human" | A | High |
| LLM microtargeting vs generic messaging | Hackenburg & Margetts 2024, PNAS | Up to **+12 pp**; microtargeting null (P = .226) | A | High |
| GPT-4 vs human persuasion experts | Hackenburg et al. 2026, *AI & Society* | Rivals/exceeds experts (n = 4,955) | A | High |
| LLM vs human persuasiveness (meta) | Hölbling et al. 2025, *Sci. Rep.* | **No significant difference**; 17,422 participants | A | High |
| GPT-3 propaganda persuasiveness | Goldstein et al. 2024, PNAS Nexus | Curated output **as persuasive as real propaganda** | A | High |
| AI dialogues reduce conspiracy belief | Costello et al. 2024, *Science* | **−20%**, durable at 2 months (N = 2,190) | A | High |
| GPT-3 political persuasion vs lay humans | Bai et al. (preprint) | Equally persuasive (N = 4,836) | **D** | Med |
| **Illusory truth effect, corrected** | Ye et al. 2026, *Nat. Commun.* | **g = 0.37** (0.30–0.44); 182 studies, N = 31,184 | A | High |
| Illusory truth for opinion statements | Riesthuis & Woods 2026, *Consc. & Cogn.* | **No reliable effect** (N = 457) | A | High |
| Repetition vs number of sources | Foster et al. 2012, *Acta Psychologica* | **Repetition matters; source count does not** | A | High |
| Truth-effect mechanism test | Roggeveen & Johar 2002, *J. Consum. Psych.* | **Familiarity, not source variability** | A | High |
| Repeated by many vs by one | Pillai & Fazio 2025, *JARMAC* | ⚠️ Effect size **not retrieved** | A | Low |
| Repetition → source credibility | Mattavelli et al. 2026, *PSPB* | Generalises to novel statements (4 exps) | A | High |
| Climate-skeptic claim repetition | Jiang et al. 2024, *PLOS ONE* | Increases belief **even among science endorsers** | A | High |
| **Human deepfake detection (pooled)** | Diel et al. 2024, *CHBR* | **55.54%** (48.87–62.10); 56 papers, 86,155 participants | A | High |
| Detection by modality | Diel et al. 2024, *CHBR* | Image **53.2%** · text **52.0%** · video **57.3%** · audio **62.1%** | A | High |
| Detection unaffected by training/incentives | Köbis et al. 2021, *iScience* | At chance; overconfidence; "seeing-is-believing" | A | High |
| Human vs machine, DFDC | Groh et al. 2022, PNAS | Human 66% vs model 80%; crowd 74–86% | A | High |
| Human vs machine, stills vs video (2026) | Pehlivanoglu et al. 2026, *CRPI* | Stills: machine **~97%**, humans **chance**; video: machine **chance**, humans **~66%** | A | High |
| Per-image spread of detection | Bray et al. 2023, *J. Cybersecurity* | Overall **62%**; per-image **30–85%**; <50% for 1 in 5 | A | High |
| Deepfake detection training | Diel et al. (preprint) | **+~20%** accuracy; distress ↑, self-efficacy ↓ | **D** | Med |
| Liar's dividend | Schiff et al. 2025, *APSR* | Raises support; **ineffective against video**; N > 15,000 | A | High |
| Warning does not neutralise a deepfake | Clark & Lewandowsky 2026, *Comm. Psych.* | Reliance persists despite believed warnings | A | High |
| "AI-generated" labelling | Altay & Gilardi 2024, PNAS Nexus | Lowers perceived accuracy regardless of truth; 3× smaller than "false" | A | High |

---

## 9. Could NOT be verified — do not cite as established

- **Clark et al. (2023), "All the News That's Fit to Print? Language Models and the Fourth Estate"** — **could not be verified to exist.** The title returned no matching record in Crossref, Europe PMC, or bibliographic search. **Do not cite** without independent confirmation of authors, venue and DOI.
- **Pillai & Fazio (2025)** — citation verified (10.1037/mac0000166); **effect size and direction not retrieved** (publisher blocks automated access).
- **Geissler et al. (2026, CHI** 10.1145/3772318.3790428**)** and **Grohmann et al. (2026** 10.1037/ppm0000665**)** — existence, venue and authors verified; abstracts/effect sizes not retrieved.
- **Simchon, Edwards & Lewandowsky** — the verified paper concerns **political microtargeting** (*PNAS Nexus* 2024), **not** the liar's dividend. The brief's premise that they authored a liar's-dividend paper in *Nature Communications* is **not supported**; the strongest liar's-dividend evidence is Schiff et al. (2025), APSR.
- **Liang et al. (2023)** — the widely quoted "61% of TOEFL essays / 97.8% of US 8th-grade essays" figures were **not** re-verified; only the qualitative abstract claim was. **Herbold et al. (2023)** — direction verified from the abstract; exact effect sizes not retrieved.
- **Preprints (grade D):** Bai et al.; Orchinik et al. (×2); Diel et al. training study; Lewis et al.; Yang, Berinsky & Rand ("Misinformation Distorts Perceived Social Consensus").

---

## 10. Citations

1. Nightingale, S. J., & Farid, H. (2022). AI-synthesized faces are indistinguishable from real faces and more trustworthy. *PNAS*, 119(8), e2120481119. https://doi.org/10.1073/pnas.2120481119
2. Miller, E. J., Steward, B. A., Witkower, Z., Sutherland, C. A. M., Krumhuber, E. G., & Dawel, A. (2023). AI hyperrealism. *Psychological Science*, 34(12). https://doi.org/10.1177/09567976231207095
3. Dawel, A., George, T., Mah, E. Y., Dunn, J. D., Sutherland, C. A. M., Argument, N., & Tanaka, J. W. (2026). Training humans to detect AI-generated faces. *PNAS*. https://doi.org/10.1073/pnas.2602122123
4. McGuire, A. A., Bohacek, M., Farid, H., Taylor, P. J., & Nightingale, S. J. (2026). AI-generated faces are becoming more trustworthy. *Journal of Vision*, 26(7), 3. https://doi.org/10.1167/jov.26.7.3
5. Proverbio, A. M., & Dosaikina, M. (2026). Neural signatures of hyper-realistic AI-generated faces. *Scientific Reports*, 16. https://doi.org/10.1038/s41598-026-59487-7
6. Ivory, M., McGettigan, C., Nuttall, H. E., & Nightingale, S. J. (2026). Human detection of AI-generated faces and voices is not domain-general. *Scientific Reports*, 16. https://doi.org/10.1038/s41598-026-59364-3
7. Sulimani, N., van Hunenstijn, A., & Albonico, A. (2026). Recognition of real and artificial intelligence-generated faces. *Perception*, 55(10), 924–937. https://doi.org/10.1177/03010066261442089
8. Jakesch, M., Hancock, J. T., & Naaman, M. (2023). Human heuristics for AI-generated language are flawed. *PNAS*, 120(11). https://doi.org/10.1073/pnas.2208839120
9. Herbold, S., Hautli-Janisz, A., Heuer, U., Kikteva, Z., & Trautsch, A. (2023). A large-scale comparison of human-written versus ChatGPT-generated essays. *Scientific Reports*, 13. https://doi.org/10.1038/s41598-023-45644-9
10. Dugan, L., Ippolito, D., Kirubarajan, A., Shi, S., & Callison-Burch, C. (2023). Real or fake text? *AAAI*, 37(11). https://doi.org/10.1609/aaai.v37i11.26501
11. Liang, W., Yuksekgonul, M., Mao, Y., Wu, E., & Zou, J. (2023). GPT detectors are biased against non-native English writers. *Patterns*, 4(7), 100779. https://doi.org/10.1016/j.patter.2023.100779
12. Weber-Wulff, D., Anohina-Naumeca, A., Bjelobaba, S., Foltýnek, T., Guerrero-Dib, J., Popoola, O., et al. (2023). Testing of detection tools for AI-generated text. *International Journal for Educational Integrity*, 19. https://doi.org/10.1007/s40979-023-00146-z
13. Hackenburg, K., & Margetts, H. (2024). Evaluating the persuasive influence of political microtargeting with large language models. *PNAS*, 121(24). https://doi.org/10.1073/pnas.2403116121
14. Hackenburg, K., Ibrahim, L., Tappin, B. M., & Tsakiris, M. (2026). Comparing the persuasiveness of role-playing LLMs and human experts. *AI & Society*, 41(1). https://doi.org/10.1007/s00146-025-02464-x
15. Goldstein, J. A., Chao, J., Grossman, S., Stamos, A., & Tomz, M. (2024). How persuasive is AI-generated propaganda? *PNAS Nexus*, 3(2), pgae034. https://doi.org/10.1093/pnasnexus/pgae034
16. Simchon, A., Edwards, M., & Lewandowsky, S. (2024). The persuasive effects of political microtargeting in the age of generative AI. *PNAS Nexus*, 3(2), pgae035. https://doi.org/10.1093/pnasnexus/pgae035
17. Hölbling, L., Maier, S., & Feuerriegel, S. (2025). A meta-analysis of the persuasive power of large language models. *Scientific Reports*, 15. https://doi.org/10.1038/s41598-025-30783-y
18. Costello, T. H., Pennycook, G., & Rand, D. G. (2024). Durably reducing conspiracy beliefs through dialogues with AI. *Science*, 385(6714). https://doi.org/10.1126/science.adq1814
19. Altay, S., & Gilardi, F. (2024). People are skeptical of headlines labeled as AI-generated. *PNAS Nexus*, 3(10), pgae403. https://doi.org/10.1093/pnasnexus/pgae403
20. Bai, H., Voelkel, J. G., Eichstaedt, J. C., & Willer, R. (n.d.). Artificial intelligence can persuade humans on political issues. **Preprint.** https://doi.org/10.31219/osf.io/stakv
21. Pennycook, G., Cannon, T. D., & Rand, D. G. (2018). Prior exposure increases perceived accuracy of fake news. *JEP: General*, 147(12). https://doi.org/10.1037/xge0000465
22. Fazio, L. K., Brashier, N. M., Payne, B. K., & Marsh, E. J. (2015). Knowledge does not protect against illusory truth. *JEP: General*, 144(5). https://doi.org/10.1037/xge0000098
23. Fazio, L. K., Rand, D. G., & Pennycook, G. (2019). Repetition increases perceived truth equally for plausible and implausible statements. *Psychonomic Bulletin & Review*, 26. https://doi.org/10.3758/s13423-019-01651-4
24. Begg, I. M., Anas, A., & Farinacci, S. (1992). Dissociation of processes in belief. *JEP: General*, 121(4), 446–458. https://doi.org/10.1037/0096-3445.121.4.446
25. Ye, S., Attali, D., Ghazi, M., Cachia, A., Cassotti, M., & Borst, G. (2026). Systematic review and meta-analysis of the evidence for an illusory truth effect and its determinants. *Nature Communications*, 17. https://doi.org/10.1038/s41467-026-70041-x
26. Riesthuis, P., & Woods, J. (2026). Limits of the illusory truth effect for social-political opinions. *Consciousness and Cognition*, 144, 104119. https://doi.org/10.1016/j.concog.2026.104119
27. Foster, J. L., Huthwaite, T., Yesberg, J. A., Garry, M., & Loftus, E. F. (2012). Repetition, not number of sources, increases both susceptibility to misinformation and confidence in the accuracy of eyewitnesses. *Acta Psychologica*, 139(2). https://doi.org/10.1016/j.actpsy.2011.12.004
28. Roggeveen, A. L., & Johar, G. V. (2002). Perceived source variability versus familiarity. *Journal of Consumer Psychology*, 12(2). https://doi.org/10.1207/s15327663jcp1202_02
29. Pillai, R. M., & Fazio, L. K. (2025). Repeated by many versus repeated by one. *Journal of Applied Research in Memory and Cognition*. https://doi.org/10.1037/mac0000166
30. Ingendahl, M., Vaz, A., Schulte, A., Woitzel, J., & Alves, H. (2025). Truth assessment on a global level. *JEP: General*. https://doi.org/10.1037/xge0001819
31. Mattavelli, S., Brambilla, M., & Unkelbach, C. (2026). Repeating statements increases source credibility. *Personality and Social Psychology Bulletin*. https://doi.org/10.1177/01461672251347420
32. Jiang, Y., Schwarz, N., Reynolds, K. J., & Newman, E. J. (2024). Repetition increases belief in climate-skeptical claims, even for climate science endorsers. *PLOS ONE*, 19(8), e0307294. https://doi.org/10.1371/journal.pone.0307294
33. Udry, J., & Barber, S. J. (2024). The illusory truth effect: A review. *Current Opinion in Psychology*, 56, 101736. https://doi.org/10.1016/j.copsyc.2023.101736
34. Lewandowsky, S., Ecker, U. K. H., Seifert, C. M., Schwarz, N., & Cook, J. (2012). Misinformation and its correction. *Psychological Science in the Public Interest*, 13(3). https://doi.org/10.1177/1529100612451018
35. Walter, N., & Tukachinsky, R. (2020). A meta-analytic examination of the continued influence of misinformation in the face of correction. *Communication Research*, 47(2). https://doi.org/10.1177/0093650219854600
36. Diel, A., Lalgi, T., Schröter, I. C., MacDorman, K. F., Teufel, M., & Bäuerle, A. (2024). Human performance in detecting deepfakes: A systematic review and meta-analysis of 56 papers. *Computers in Human Behavior Reports*, 16, 100538. https://doi.org/10.1016/j.chbr.2024.100538
37. Köbis, N. C., Doležalová, B., & Soraperra, I. (2021). Fooled twice: People cannot detect deepfakes but think they can. *iScience*, 24(11), 103364. https://doi.org/10.1016/j.isci.2021.103364
38. Groh, M., Epstein, Z., Firestone, C., & Picard, R. (2022). Deepfake detection by human crowds, machines, and machine-informed crowds. *PNAS*, 119(1), e2110013119. https://doi.org/10.1073/pnas.2110013119
39. Pehlivanoglu, D., Zhu, M., Zhen, J., Gagnon-Roberge, A. A., Kern, R. K., Woodard, D., Cahill, B. S., & Ebner, N. C. (2026). Is this real? Susceptibility to deepfakes in machines and humans. *Cognitive Research: Principles and Implications*, 11. https://doi.org/10.1186/s41235-025-00700-y
40. Bray, S. D., Johnson, S. D., & Kleinberg, B. (2023). Testing human ability to detect "deepfake" images of human faces. *Journal of Cybersecurity*, 9(1). https://doi.org/10.1093/cybsec/tyad011
41. Somoray, K., & Miller, D. J. (2023). Providing detection strategies to improve human detection of deepfakes. *Computers in Human Behavior*, 149, 107917. https://doi.org/10.1016/j.chb.2023.107917
42. Diel, A., Bäuerle, A., & Teufel, M. (2024). Inability to detect deepfakes: Detection training improves accuracy but increases emotional distress and reduces self-efficacy. **Preprint.** https://doi.org/10.31219/osf.io/muwnj
43. Geissler, D., Robertson, C., & Feuerriegel, S. (2026). Designing effective digital literacy interventions for boosting deepfake discernment. *ACM CHI 2026*. https://doi.org/10.1145/3772318.3790428
44. Schiff, K. J., Schiff, D. S., & Bueno, N. S. (2025). The liar's dividend: Can politicians claim misinformation to evade accountability? *American Political Science Review*, 119(1). https://doi.org/10.1017/s0003055423001454
45. Vaccari, C., & Chadwick, A. (2020). Deepfakes and disinformation. *Social Media + Society*, 6(1). https://doi.org/10.1177/2056305120903408
46. Dobber, T., Metoui, N., Trilling, D., Helberger, N., & de Vreese, C. (2021). Do (microtargeted) deepfakes have real effects on political attitudes? *International Journal of Press/Politics*, 26(1). https://doi.org/10.1177/1940161220944364
47. Clark, S., & Lewandowsky, S. (2026). The continued influence of AI-generated deepfake videos despite transparency warnings. *Communications Psychology*, 4. https://doi.org/10.1038/s44271-025-00381-9
48. Grohmann, L., Halle, F. A., & Appel, M. (2026). Deepfake! A liar's dividend for audiovisual material. *Psychology of Popular Media*. https://doi.org/10.1037/ppm0000665
49. Huang, G., & Hu, B. (2025). "A warning is not enough. Teach me how to spot deepfakes." *Science Communication*. https://doi.org/10.1177/10755470251382889
50. Orchinik, R., Bhui, R., & Rand, D. G. (n.d.). Repetition does not increase belief in claims from distrusted politicians. **Preprint.** https://doi.org/10.31234/osf.io/y7pn5
51. Orchinik, R., Rand, D. G., Pennycook, G., & Fazio, L. (n.d.). Repetition increases belief in implausible statements more than for plausible statements. **Preprint.** https://doi.org/10.31234/osf.io/b97hs
