# Sub-brief: Audience Detection of, and Response to, Synthetic Corroboration

**Date:** 25 September 2026
**Scope:** Defensive measurement only. Question addressed: do audiences detect, and are they moved by,
*synthetic corroboration* — the appearance of multiple independent sources (fake blogs, fake "independent"
analysts, fake eyewitnesses, pseudo-news sites, fabricated expert consensus) all supporting one claim?

**Method note / source availability.** OpenAlex (`api.openalex.org`) and Semantic Scholar were **rate-limited
(HTTP 429) for most of this session**; Semantic Scholar intermittently recovered and was used. Crossref returned
`429` for most of the session. Working sources were **Europe PMC REST (discovery + full text)**, **PubMed
E-utilities**, and `web_fetch`/`curl` on publisher and PMC pages. All figures below were read from the paper's own
abstract or its open full text; nothing is taken from memory or from an unresolvable secondary claim.

**Evidence grades.** A = primary/official; B = peer-reviewed/strong empirical; C = reputable journalism/industry;
D = weak/inferred/preprint (preprints graded D even when widely cited); E = vendor/advocacy.

---

## 1. False consensus / social proof / perceived-consensus effects on belief

| Study (authors, year, venue) | N | Exact effect size / percentage | DOI / URL | Grade |
|---|---|---|---|---|
| Ross, Greene & House (1977), *J. Experimental Social Psychology* — origin of the "false consensus effect" | Not verified in this session | Definitional paper; **no effect size verified** (paywalled; not in Europe PMC) | 10.1016/0022-1031(77)90049-5 | B (existence) / **figure unverified** |
| Mullen et al. (1985), *J. Experimental Social Psychology* — "The false consensus effect: A meta-analysis of 115 hypothesis tests" | 115 hypothesis tests | **Mean r NOT verified** — abstract not retrievable; the widely repeated "r ≈ .31" could not be confirmed | 10.1016/0022-1031(85)90020-4 | B / **figure unverified — do not cite** |
| Robbins & Krueger (2005), *Personality and Social Psychology Review* — social projection review/meta-analysis | Not stated in abstract | Projection stronger for ingroups than outgroups; outgroup projection "positive, but small"; **exact r not in abstract** | 10.1207/s15327957pspr0901_3 | B |
| Asch (1951, 1955, 1956) — conformity to a unanimous majority; Wikipedia synthesis of primary sources | 123 male students (1955/1956) | **Conformity ≈ one-third of all critical trials**; 64.3% of responses stayed correct vs **35.7% conformed**; **74%** of participants gave ≥1 wrong (conforming) answer; 12% conformed on nearly all trials; 26% never conformed; control error <0.7% | 10.1037/h0093718 | B (secondary synthesis of primary) |
| Asch — **majority size / "majority of three"** | same | Single opponent → high independence; **increasing to two or three confederates increased conformity substantially; increases beyond three did not further increase conformity** (a plateau, not a cliff) | 10.1037/h0093718 | B |
| Asch — presence of one dissenting "true partner" | same | Conformity fell to **only 5%** continuing to answer with the majority; "extremist" dissenter → **9%** conformity | 10.1037/h0093718 | B |
| Franzen & Mader (2023), *PLOS ONE* — preregistered replication + extension of Asch (5 confederates) | **N = 210** | Standard line task error rate **33%** (replicates Asch); incentivised condition **25%**; **political-opinion conformity 38%**; none of intelligence/self-esteem/need-for-approval/Big-Five convincingly related except openness | 10.1371/journal.pone.0294325 | B |
| Muchnik, Aral & Taylor (2013), *Science* — "Social influence bias: a randomized experiment" (manipulated up/down votes) | Large-scale field RCT (N not stated in abstract) | **Positive social influence increased the likelihood of a positive rating by 32%; created accumulating positive herding that increased final ratings by 25% on average**; negative influence was *corrected* by users (**asymmetric herding**) | 10.1126/science.1240466 | B |
| Heuristic credibility cues meta-analysis (2026), *Behavioral Sciences* — source cues and social cues (likes/shares/popularity) | **18 studies; N = 14,188** (19 independent effect sizes) | Pooled **g = 0.307, 95% CI [0.217, 0.396], p < 0.001** on perceived credibility. **Source cues > social-endorsement cues**; authoritative sources most effective; students more susceptible than non-students. Trim-and-fill found no missing studies; fail-safe N = 856 | 10.3390/bs16071184 | B |
| Stefkovics & Gere (2026), *PNAS Nexus* — 27-country preregistered experiment on Russo-Ukrainian headlines, perceived veracity (1–4 scale) | **N = 27,227** (27 countries) | Fake vs real: perceived veracity **2.15 vs 2.60**; 34% vs 57% rated "mostly/completely real". Standardised: **Human-fake −0.50 (SE 0.01)**, **AI-fake −0.43 (SE 0.01)**. Source (AI vs human) effect **β = 0.08 (SE 0.01)** — negligible. Sharing intent: Human-fake −0.20, AI-fake −0.18; source β = 0.02 | 10.1093/pnasnexus/pgag032 | B |

**Reading for the brief.** The *robust* consensus/social-proof numbers are: Asch-family conformity ≈ **one-third of
critical trials** (replicated at 33%, N=210, 2023) with a **plateau at ~3 confederates**; one dissenting ally cuts
conformity to ~5–9%; real-world vote manipulation moved ratings **+32% / +25%**; and heuristic source/social cues
move perceived credibility by **g ≈ 0.31** (N=14,188). No verified meta-analytic effect size for the false-consensus
effect itself was obtainable — see FAILED/UNVERIFIED.

---

## 2. Multiple-source / independent-corroboration effects, and illusory truth

| Study (authors, year, venue) | N | Exact effect size / percentage | DOI / URL | Grade |
|---|---|---|---|---|
| **Illusory truth meta-analysis (2026), *Nature Communications*** — 3-level meta-analysis, PEESE-corrected | **182 studies, 366 effect sizes, N = 31,184** | **g = 0.37, 95% CI [0.30, 0.44]** (small, robust). Egger's test t(364)=9.77, p<0.001 → small-study effects present; effect survives correction. Moderators: item type, instructions at first exposure, veracity cues, presentation duration; moderator set explains ~37% of between-study variance | 10.1038/s41467-026-70041-x | B |
| Dechêne, Stahl, Hansen & Wänke (2010), *Personality and Social Psychology Review* — "The truth about the truth" | **51 studies** | **Between-items effect larger than within-items effect**; exact d/r **NOT in abstract and not retrieved** — commonly cited values could not be verified here | 10.1177/1088868309352251 | B / **effect size unverified** |
| **"The Limits of Repetition in the Illusion of Consensus" (2026), *Cognitive Science*** — dependent (same source repeated) vs independent (corroborated) consensus in a mock social network | **N = 1,015** (2 studies) | At **low exposure, dependent and independent consensus persuaded equally**; as exposures accumulated, **independent consensus produced a higher asymptotic belief level and more rapid belief revision**. Repetition by a secondary source is read as a proxy for credibility | 10.1111/cogs.70266 | B |
| **"Explaining away the illusion of consensus" (2026), *Memory & Cognition*** — 4 experiments, political poll-reporting task | Not stated in abstract (4 experiments) | **Independent consensus was more persuasive than dependent consensus.** Dependent-consensus persuasiveness rose with a *positive* explanation for repetition and fell with a *negative* explanation (explanations supplied by experimenter or self-generated) | 10.3758/s13421-025-01831-9 | B |
| **"Repeating Statements Increases Source Credibility" (2025), *Personality and Social Psychology Bulletin*** — 4 preregistered experiments | **N = 90 / 65 / 180 / 435** across Exps 1–4 | Repetition significantly increased **both statement truth and source credibility**; the source-credibility boost generalised to *novel* statements from the same source. Exp 3 failed to replicate without initial truth ratings; Exp 4 resolved it | 10.1177/01461672251347420 | B |
| "Limits of the illusory truth effect for social-political opinions" (2026), *Consciousness and Cognition* | **N = 457** (2 preregistered exps) | Repetition did **NOT** reliably increase truth judgments for **opinion** statements; equivalence tests bounded effects below the smallest effect size of interest | 10.1016/j.concog.2026.104119 | B (**important negative/scope finding**) |
| **"Accuracy prompts protect professional content moderators from the illusory truth effect" (2024), *PNAS Nexus*** | **N = 199** (lab-in-field, global moderation company) + 997 (India) + 1,184 (Philippines) + a 2nd moderator experiment | Exposure to false claims **while working as a content moderator increased subsequent belief by 7.1%**; an accuracy-mindset prompt mitigated the effect | 10.1093/pnasnexus/pgae481 | B |

**Reading for the brief.** Repetition reliably inflates perceived truth (**g = 0.37**, N=31,184) — but the
*synthetic-corroboration-relevant* finding is more specific: **repetition by an apparently different source is more
persuasive than repetition by the same source**, and this gap **widens with exposure count**, not at first exposure.
The dissenting result is that repetition does **not** move **opinion** statements (N=457), so the effect is strongest
for putatively factual claims. No verified Harkins & Petty (1981) "multiple source effect" effect size was retrieved —
see FAILED/UNVERIFIED.

---

## 3. AI-generated vs human content: persuasiveness and trust penalty/premium

| Study (authors, year, venue) | N | Exact effect size / percentage | DOI / URL | Grade |
|---|---|---|---|---|
| **Meta-analysis of LLM persuasive power (2025), *Scientific Reports*** | **7 studies, 12 effect sizes, N = 17,422** | **No significant overall difference in persuasiveness between LLMs and humans** (Hedges' g not significant); substantial heterogeneity; no single moderator significant alone; combined moderators explained most between-study variance. Trim-and-fill imputed **0** missing studies (low publication-bias risk) | 10.1038/s41598-025-30783-y | B |
| **"Labeling messages as AI-generated does not reduce their persuasive effects" (2026), *PNAS Nexus*** | **N = 1,601** US adults | AI-generated policy messages shifted views by **9.74 percentage points on average**. **92.0%** believed the authorship label. Labels had **no significant effect** on attitude change, perceived accuracy, or sharing intention | 10.1093/pnasnexus/pgag008 | B |
| **Altay & Gilardi (2024), *PNAS Nexus*** — labelling headlines "AI-generated" vs "False" | **N = 4,976** (US+UK, 2 preregistered exps) | AI-generated label reduced perceived accuracy and sharing — but the effect (**2.66 pp**) was **three times smaller** than a "False" label (**9.33 pp**). Participants did **not** equate "AI-generated" with "False"; aversion driven by assuming zero human supervision | 10.1093/pnasnexus/pgae403 | B |
| Costello, Pennycook & Rand (2024), *Science* — personalized GPT-4 dialogues with conspiracy believers | **N = 2,190** | Conspiracy belief **reduced by ~20%**; effect **persisted at 2 months**, generalised across conspiracy topics, and occurred among deeply entrenched believers | 10.1126/science.adq1814 | B |
| "Dialogues with LLMs reduce conspiracy beliefs even when the AI is perceived as human" (2025) | **N = 955** (preregistered) | Belief reduction occurred **even when the AI was believed to be human** — i.e. the effect is carried by the *evidence*, not by AI-as-messenger status | DOI not resolved in-session (record surfaced via Europe PMC/Semantic Scholar; journal version exists) | **D** (preprint; journal version exists) |
| "Biased AI writing assistants shift users' attitudes on societal issues" (2026), *Science Advances* | **N = 2,582** (2 preregistered exps) | Participants' expressed attitudes **converged toward the AI assistant's position**; most were **unaware** of the bias or the influence; effect **stronger than the same suggestions shown as static text**; warnings before or after exposure **did not mitigate** | 10.1126/sciadv.adw5578 | B |
| "When news is 'written by artificial intelligence'" (2026), *Frontiers in Artificial Intelligence* — PRISMA systematic review of provenance/disclosure cues | **47 studies** synthesised (from 492 records) | **No consistent "AI penalty"**: most extractable results showed **no difference** between AI-attributed and human-attributed news; effects conditional on topic, baseline trust, outlet cues, and human-oversight signalling. Disclosure-cue evidence limited (10 studies) and dominated by **null or conditional** findings | 10.3389/frai.2026.1815243 | B (systematic review) |
| Stefkovics & Gere (2026), *PNAS Nexus* (see §1) | N = 27,227 | **AI-generated headlines were rated slightly MORE credible than human-written (2.40 vs 2.34; 47% vs 44% "mostly/completely real")**; sharing 31% vs 29% | 10.1093/pnasnexus/pgag032 | B |
| "Chatbots reduce health-related conspiracy beliefs not because of but despite being perceived as AI" (2026) | Not retrieved | Direction: **despite** perceived AI status | (Europe PMC record) | D (abstract only retrieved here) |
| "AI-Generated 'Slop' in Online Biomedical Science Educational Videos" (2025), *JMIR Medical Education* | YouTube/TikTok corpus across 10 search terms | Prevalence/characteristics of AI "slop" competing with authoritative science education content; mixed-methods | 10.2196/80084 | B |

**Reading for the brief.** The AI-trust picture is **not a simple penalty or premium**. The best-powered synthesis
finds LLMs are **not reliably more or less persuasive than humans** (7 studies, N=17,422), and a 47-study review finds
**no consistent AI penalty**. Where a penalty exists it is **small (2.66 pp) and much weaker than an explicit "False"
label (9.33 pp)**. Conversely, **AI-written influence can work while being undetected** (writing assistants, N=2,582)
and **AI-generated content can be rated marginally more credible than human content** (N=27,227).

---

## 4. Synthetic eyewitness / fabricated first-person testimony

**This section is thin.** No study was found that directly tests belief in *fabricated eyewitness/victim accounts as
synthetic corroboration*, and **no 2024–2026 "deepfake witness" believability study was retrieved**. The closest
verified evidence concerns false memory for deepfaked video events and is a **negative finding**.

| Study (authors, year, venue) | N | Exact effect size / percentage | DOI / URL | Grade |
|---|---|---|---|---|
| **"Deepfake false memories" (2022), *Memory*** — fake news stories as text / text+photo / text+deepfake video | **N = 682** (2 experiments) | Participants rated deepfake videos convincing/dangerous/unethical and some did report false memories, **but the deepfake video format did NOT consistently increase false-memory rates relative to text-only or text+photograph** | 10.1080/09658211.2021.1919715 | B |
| **"Face/Off: Changing the face of movies with deepfakes" (2023), *PLOS ONE*** — deepfakes of fictitious movie remakes | **N = 436** | **Average false-memory rate 49%**; many remembered the fake remake as better than the original. However, **deepfakes were no more effective than simple text descriptions at distorting memory** | 10.1371/journal.pone.0287503 | B |
| "Wired to believe: source-authority cues shape perceived AI capability and neural persuasion" (2026), *Ergonomics* — same corrections attributed to social-media users / local news / national regulators, delivered by a Pepper robot; fNIRS | **N = 70** | Judgement change occurred after correction, **but source condition did not significantly predict post-correction accuracy or successful correction**; between-condition prefrontal differences did not survive statistical correction | 10.1080/00140139.2026.2734930 | B (small N) |

**Reading for the brief.** The only well-powered relevant signal is that **deepfaked audiovisual "testimony" is not
automatically more belief-shifting than plain text** (N=682 and N=436). This is a *negative* finding and should not be
over-read: both studies tested *memory for public events*, not *eyewitness credibility in a corroboration cascade*.
That specific experiment appears not to exist in the retrievable literature — flag it as a real evidence gap.

---

## 5. Audience detection of pseudo-news / AI-generated news sites

| Study (authors, year, venue) | N | Exact effect size / percentage | DOI / URL | Grade |
|---|---|---|---|---|
| Stefkovics & Gere (2026), *PNAS Nexus* — cross-national detection of AI- vs human-written war headlines | **N = 27,227** | Respondents **rarely distinguished human- from AI-generated content**: source effect on veracity **β = 0.08** and on sharing **β = 0.02**; fake news detected (34% vs 57% "real" ratings). AI-generated items were **slightly more credible**, not less | 10.1093/pnasnexus/pgag032 | B |
| "An evaluation of online information acquisition in US news deserts" (2024), *Scientific Reports* — Edge-browser engagement by millions of users | Millions of users | **Little evidence** that those in news deserts consume more low-quality sites or are referred to them more from search/social; *some* evidence they consume more national news | 10.1038/s41598-024-77303-y | B |
| "Beyond source vs. content: how people combine multiple cues in news credibility assessment" (2026) | **N = 82** (within-subject; 32 headlines × 64 sources) | **Both news veracity and source reliability independently informed** credibility assessment | (Europe PMC record) | B (small N) |
| "AI-Generated 'Slop' in Online Biomedical Science Educational Videos" (2025), *JMIR Medical Education* | YouTube/TikTok corpus, 10 search terms | Documents prevalence and learner hazards of AI-generated "slop" competing with authoritative content | 10.2196/80084 | B |

**Reading for the brief.** Audience **detection of AI authorship is near-zero** at scale (N=27,227), and this is the
single most robust and most threat-relevant detection finding: *provenance cues do not function as a detection
mechanism*. Detection of **falsity** is better but weak (34% of fake headlines still rated largely/completely real).
**No study measuring whether audiences distinguish AI-generated/"pink slime" local-news *sites* from real local news
was found** — see FAILED/UNVERIFIED.

---

## FAILED SEARCHES / NEGATIVE FINDINGS / CONTESTED CLAIMS

**Figures I could NOT verify (do not cite these without re-checking):**
1. **Mullen et al. (1985) false-consensus meta-analysis mean effect size.** The paper (115 hypothesis tests) exists
   (`10.1016/0022-1031(85)90020-4`) but the abstract is not available via Crossref or Europe PMC. The widely repeated
   "r ≈ .31" is **unverified in this session**.
2. **Dechêne et al. (2010) illusory-truth effect sizes.** The abstract confirms **51 studies** and that the
   **between-items effect exceeds the within-items effect**, but reports **no numeric effect size**. Commonly cited
   d ≈ 0.4 / within ≈ 0.2 values are **unverified here**.
3. **Bond & Smith (1996)** *Psychological Bulletin* meta-analysis (133 Asch-type studies) — record confirmed
   (1,443 citations, `10.1037/0033-2909.119.1.111`) but **abstract elided by publisher**; the mean conformity rate
   could not be confirmed from a primary/authoritative source.
4. **Harkins & Petty (1981), "The multiple source effect in persuasion"** — **not retrieved at all**. The specific
   claim that "repetition by different sources is stronger than by the same source" is supported here only via the
   2026 *Cognitive Science* illusion-of-consensus study (N=1,015), not via the classic paper.
5. **"Phantom community" / "phantom majority" cue studies** — the specific 2024–2025 literature named in the task
   brief was **not located**. Searches on "phantom community", "phantom majority", "bot majority shift belief", and
   "fake accounts experiment" returned no directly on-point experimental study. The nearest verified item is a 2025
   *"Irrational herding persists in human-bot interactions"* study (N=1,997, minority game) found via Europe PMC, but
   its exact effect sizes were **not extracted before time ran out** — treat as **unverified**.
6. **The "10,000 followers" credibility heuristic** — **no study testing this specific figure was found.** The
   broader effect is only supported by the heuristic-cues meta-analysis (g = 0.307, N=14,188), which pooled source
   and social cues generally. **Do not attribute a "10,000 followers" threshold to any source.**
7. **Munger's bot work and Bail et al. exposure studies** — **not retrieved** in the time available.
8. **Salganik, Dodds & Watts (2006)** artificial cultural market — **not retrieved**; the social-influence-condition
   effect size is unverified. Use Muchnik 2013 (+32% / +25%) instead as the verified vote-manipulation anchor.
9. **Bot/fake-account "only appear numerous" experiments** — the 2024–2026 literature specifically on *phantom
   majorities made of bots* was **not found** in retrievable sources. This is a genuine gap, not a null result.
10. **Fabricated-eyewitness / deepfake-witness believability (2024–2026)** — **no such study found.**
11. **Pseudo-news *site* discrimination** ("pink slime", AI-generated local news sites) — **no audience-discrimination
    study with percentages found**; only the news-desert consumption study (null-ish) and the *slop-prevalence* study.
12. **Gateway Belief Model / "97% consensus" percentage-point effects** — only a 2021 review abstract was retrieved
    (`10.1016/j.copsyc.2021.01.005`); **the van der Linden et al. (2015, PLOS ONE) percentage-point effects and the
    Ding et al. (2011) figures were NOT verified.** A 2026 paper on "The gateway (mis)belief model" was surfaced but
    not extracted.

**Contested / cautionary items:**
- **Illusory truth appears NOT to generalise to opinion statements** (N=457, *Consciousness and Cognition* 2026) —
  this bounds the synthetic-corroboration threat to putatively *factual* claims.
- **The "AI trust penalty" is contested.** Altay & Gilardi find a small penalty (2.66 pp); the 47-study systematic
  review finds mostly **null** AI-provenance effects; the 27-country experiment finds a small **premium** (+0.06 on a
  4-point scale). The honest summary is **near-zero net effect on average, with conditional variation**.
- **Two 2026 meta-analyses used here are very recent** (*Nature Communications* 10.1038/s41467-026-70041-x;
  *Behavioral Sciences* 10.3390/bs16071184). Both report publication-bias diagnostics (Egger's test significant for
  the former). They are peer-reviewed (grade B) but young and not yet independently replicated.
- **Preprint-flagged items:** the "Dialogues with LLMs… perceived as human" line of work appears first as PsyArXiv
  preprints (grade D) with later journal versions; the illusion-of-consensus work also existed as an OSF preprint
  (10.31234/osf.io/9hnm7) **before** the 2026 *Memory & Cognition* publication — cite the journal version.
- **Tooling failure:** OpenAlex was 429 for the whole session; Semantic Scholar intermittently 429; Crossref mostly
  429. The absence of particular studies above may therefore reflect **retrieval failure rather than true absence**,
  and should be re-run against OpenAlex/Semantic Scholar once rate limits reset.

---
*End of sub-brief.*
