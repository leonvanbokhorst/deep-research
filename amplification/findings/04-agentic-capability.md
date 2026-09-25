# 04 — Agentic Capability: What AI Agents Actually Make Newly Possible in the Manipulation of Public Perception Around Ambiguous Events

**Research cut-off: 25 September 2026.** Analytic brief. Capability, evidence and defence only; no operational, prompting, tooling or evasion guidance.

---

## 1. Scope and method

The question is not whether AI writes persuasively — it does. It is what an **agentic** stack (persistent memory, tool use, scheduling, feedback) makes *newly* possible in the contest over an ambiguous event: a shooting, a strike, a disaster, an unexplained death, where facts are unsettled for hours or days and the first coherent story tends to become the story.

Four levels are separated throughout: **(1) technical possibility** (lab), **(2) demonstrated capability** (measured, reproducible), **(3) credible evidence of deployment** (first-party disclosure of specific networks, named actors, dates), **(4) documented real-world impact** (measured reach, belief or behaviour change). Evidence is thin at level 4, thick at 1–3; that asymmetry is itself the finding.

**Grades:** A = primary/official/first-party; B = peer-reviewed/strong independent; C = reputable journalism/industry; D = weak or inferred; E = vendor marketing. **Vendor reporting** — first-party disclosure by a developer with regulatory and reputational interests — is flagged throughout.

---

## 2. Headline judgement

**The new capability is not persuasion. It is the industrial production of plausibility, and the removal of the editorial labour that was the bottleneck on covert influence.**

Persuasion effects are real but modest, lab-bound and near human parity. Measured *reach* of AI-enabled influence operations is, by the vendors' and platforms' own accounting, close to nil. What changed is that one operator can now generate a fake local newsroom, a fake expert institute, a fake analyst with a byline, and a persona with long-term memory — at near-zero marginal cost, in twenty languages.

The binding constraint has moved from **production** to **distribution and access**. Defensive leverage therefore sits in identity verification, account-acquisition cost, integrity funding and speed-to-correction, not in moderating text.---

## 3. Capability-by-capability assessment

### 3.1 Persuasion efficacy

**Salvi et al. (2025), *Nature Human Behaviour*** — preregistered, N = 900, short multiround debates. GPT-4 *with* basic sociodemographic personalisation was more persuasive 64.4% of the time: a **81.2% relative increase in the odds of higher post-debate agreement (95% CI +26.0% to +160.7%, p < 0.01)**. Without personalisation GPT-4 still edged humans, but **non-significantly** (p = 0.31). The interval is enormous: direction, not magnitude.

**Costello, Pennycook & Rand (2024), *Science*** — the strongest result available. N = 2,190 believers in personalised dialogue with GPT-4 Turbo: **~20% reduction in conspiracy belief, durable at two months**, generalising across theories and shifting behavioural *intentions* — a **relative reduction on a scale, not a conversion**, measured by self-report. A 2025 *PNAS Nexus* follow-up (N = 955) found the effect **held when the dialogue was framed as coming from a human expert**: the active ingredient is personalised, responsive, fact-dense dialogue, which agents scale but did not invent.

**Hackenburg et al. (2025), *Science*** — the largest study to date: **N = 76,977**, 19 LLMs, 707 issues, **466,769 LLM claims fact-checked**. Post-training raised persuasiveness by **up to 51%**, prompting by **up to 27%**; personalisation and model scale mattered less. The finding that matters most here: **where these methods increased persuasiveness, they systematically decreased factual accuracy.**

**Microtargeting is the weakest link.** Hackenburg & Margetts (2024, *PNAS*, n = 8,587) found GPT-4 messages moved issue support by **up to 12 percentage points** — but microtargeted messages were **indistinguishable from non-microtargeted ones (4.83 vs 6.20pp, P = 0.226)**. LLM influence "may reside not in their ability to tailor messages to individuals but rather in the persuasiveness of their generic, nontargeted messages." Bai et al. (2025, *Nature Communications*, N = 4,829) likewise found LLM messages **"similarly effective" to those written by lay humans**.

**The ambient channel is under-appreciated.** *Science Advances* (2026, N = 2,582) showed a **biased AI writing assistant** shifted users' expressed attitudes toward its own position, that most were **unaware of the bias**, and that the effect exceeded the same suggestions shown as static text — per-user, deniable, not a "campaign" at all.

**Does it survive real audiences and competing information?** This is the load-bearing gap. LLM superiority **wanes over repeated interactions, unlike human persuasiveness** (arXiv 2505.09662); LLMs **decouple "sounding persuasive" from "arguing well"** (9,702 crowdsourced judgments, arXiv 2608.29738); and **no field experiment yet shows AI-generated persuasion shifting real-world behaviour at population scale**. Every headline result is a lab or survey experiment with self-selected participants, self-reported attitudes, and no competing counter-campaign.

**Defence signal.** A **light-touch AI literacy warning** — a brief note that an LLM may be prompted to persuade and may present information selectively — cut belief change by **roughly half (−48.1%, 95% CI −59.5% to −36.8%, N = 3,208)** without reducing general trust in generative AI (arXiv 2609.16432, September 2026). The largest defensive effect size in this brief.

### 3.2 Continuous monitoring of public reaction

A mature commercial market (Brandwatch, Meltwater, Talkwalker, Sprinklr, NewsWhip, Dataminr, Graphika, Recorded Future, Alethea), sold by subscription. Anthropic adds state-side evidence: a PRC municipal cyber-police unit used an agentic coding tool to run a sentiment-monitoring pipeline against a government database. Limits: classification error on political and sarcastic text, GDPR constraints on bulk personal-data processing, DSA researcher-access disputes. Critically, this is **commercially available to defenders too** — not asymmetric. *(Pricing and error rates: `amplification/notes/monitoring-localisation.md`.)*

The best official trend series is the **EEAS 4th FIMI Threat Report (12 March 2026, CY2025)**: 540 incidents across 19 platforms, with **AI techniques in 27% of incidents — rising from 41 to 147 cases year-on-year (~+259%)**. Its own conclusion is the important part: AI material "remains low-quality," with "limited overall impact as organic engagement remains low," and "the objective is not precision but presence."

### 3.3 Adaptive narrative selection

**Platform ad-delivery optimisation** (real, mature, bandit-driven, optimising for engagement) is *not* an **adversarial agent that reads response and rewrites narrative to evade counter-messaging**. The first is documented and pervasive; the second is asserted far more often than shown.

What *is* documented is the apparatus: operations built as **persistent agent harnesses** with shared memory files holding banned-word lists, approved sources and evasion rules, "called in fixed batches," plus a Malaysian commercial platform running **~1,000 fake X accounts with warm-up logic** (Anthropic, September 2026). Scaffolding for closed-loop adaptation, not proof of it.

### 3.4 Localised and multilingual messaging

One of two capabilities genuinely transformed. Anthropic documents **at least 8,913 articles in about 20 languages**; an Iranian programme in **Farsi, Arabic, Urdu, Malay, Spanish and English, with a stated plan for 20 languages**; and explicit **audience-tailored rewriting** — the same story rewritten "in opposite ideological directions for different audiences." A PRC-aligned actor with **no Arabic skills** ran a multi-day recruitment operation against Uyghurs in Syria in **Syrian Arabic dialect with real-time translation of replies**.

Caveats: translation still leaves **stylistic fingerprints** — operators explicitly instructed models to strip linguistic clues to Russian origin, evidence the leak is real enough to require mitigation — and low-resource quality remains below high-resource, so marginal value falls sharply outside major languages.

### 3.5 Long-running persona management

**Technically plausible, commercially enabled, empirically under-tested at the timescale that matters.**

- Short-horizon consistency is a *known weakness*: measurable instruction/persona drift **within roughly eight conversation rounds** in self-chat benchmarks, attributed to attention decay — a lab result on older models, not to be over-read, but consistency is not free.
- At *single-interaction* human-passing, evidence is strong: 2026 work from UC San Diego found AI interlocutors could appear **more human than real humans** in a classic Turing-test setup.
- At **months-long, multi-platform persistence**, the best evidence is a *deployment* case, not a study: an MEK/NCRI-aligned operation **cloned a real activist's Telegram style from ~8,400 of his posts** and ran live conversations with contacts who **did not know they were speaking to an AI-assisted account** (Anthropic, September 2026). What made it work was **a real person's corpus**, not a synthetic backstory. The closest academic equivalent — University of Zurich researchers running **undisclosed AI accounts inside a live moderated subreddit** (April 2025) — was caught by *self-disclosure*, not detection, and Reddit called it "unethical."

**Detection is structural, not textual.** Platforms connect networks via shared deployment identifiers, account-creation timestamps clustered to the minute (Anthropic lists twelve sockpuppets with one shared creation timestamp), AI-generated profile photos and shared hosting. This is also the **key vulnerability of current detection**: the best-quantified real-world pipeline — 4.1M Telegram messages across 6,503 channels — relied on "highly stringent criteria, including **exact message duplication** and simultaneous posting" (posts 0–5 seconds apart). Detection depends on verbatim form; an agent that varies surface form while preserving the narrative degrades it, and **no study has measured whether that happens**. That is a mechanism-plausible, empirically unmeasured risk — and a reason not to build policy on AI-text detectors.

### 3.6 Cross-platform coordination

Agentic tooling makes cross-platform operation easier to *run* and, on present evidence, *easier to detect*. Networks are repeatedly tied to single points of failure: **one French advertising agency behind ~70 fabricated news sites**; **one Istanbul company behind a Malaysian platform**; **a single Bangladesh-based operator rotating 29 accounts over ~16 months**. Reported impact is consistently low — the 70-site network rated **Breakout Scale Category Two**, "no evidence of breakout beyond its own activity."

### 3.7 Synthetic corroboration

This is where the genuinely new capability sits, and it does not require deepfakes.

**Fake independent institutions.** OpenAI's August 2026 disclosure is the archetype: a Russia-origin operation promoting the **"International Burke Institute," a fake Israel-based expert community**, complete with a **"Sovereignty Index"** flattering Russia, across X, Facebook, LinkedIn, Telegram and Substack. **34 of 36 sampled articles under expert profiles had been copied from elsewhere online**, several misattributed to real academics. Reach was **"relatively small"** — Telegram channels of roughly **10,000–20,000 followers** each. (Grade A; the vendor is an interested party.)

**Fabricated evidence.** Anthropic documents **forged government documents** built from original design files (Central African Republic), **fabricated intelligence dossiers** against named opposition politicians (Malaysia), **AI avatars with Persian audio** presented as ordinary citizens, and **ghost-written testimony delivered in a live UN Human Rights Council session**. Most important for ambiguous events: prompting a model to **strip caveats from claims it had itself flagged as unverified** so material "would read as established fact," and **stripping state attribution** so republished material reads as independently confirmed.

**The distribution rule.** Across every operation reviewed: **synthetic corroboration fails when it must build its own audience and succeeds when it can ride an existing one.** Anthropic states that "most of the content we discovered drew little or no authentic engagement," that the "widest authentic reach occurred where state media outlets were the distribution mechanism," and that matched AI output ranged from "a Telegram post with roughly 2,000 views" to **aired broadcast copy on Sputnik Moldova, RIA Novosti, Sputnik en Español, Sputnik Africa and RT English**. The AI compressed the newsroom, not the audience.

**Deepfake robocalls and the legal record.** The January 2024 New Hampshire Biden robocall remains canonical, and its trajectory is the instructive part. The FCC's **$6M forfeiture** was entered *by default* — Kramer never substantively answered, so there was no adjudicated merits holding — and he publicly refuses to pay, with no recorded collection action. In **June 2025 a jury acquitted him on all 22 counts** (11 felony voter-suppression, 11 misdemeanour impersonation), on statutory scope rather than innocence; a **November 2025 civil default judgment** of $22,500 plus a nationwide injunction is also unpaid. The **only money collected was $1M from Lingo Telecom**, settled at half the proposed penalty; the voice-maker was paid **$150**. As of September 2026 **no one anywhere has been convicted of a political deepfake**; every custodial deepfake sentence found worldwide concerns sexual content. The statutory picture also moved *against* defenders: California's AB 2839 was struck down and AB 2655 enjoined, the FCC's AI-robocall disclosure rule has sat at "next action undetermined" since October 2024, and the EU AI Act's Article 50 transparency duties (from 2 August 2026) rest on a **voluntary** marking code. (Grade A; full timeline in `amplification/notes/synthetic-corroboration.md`.)

**Liar's dividend and detection.** Synthetic media also costs defenders the **discounting of true evidence**. The best-powered experiment (Schiff et al. 2024, *APSR*, n = 15,287) found the effect works for *text* claims (10–12pp) but is largely **ineffective against video**, and the largest synthesis of deepfake persuasion studies (22 studies, 2025) finds effects **inconclusive**. Detection is poor where it matters: untrained image detection ran at **48.2%, below chance** (Nightingale & Farid 2022, N = 315), and with the same voice engine used in the Biden robocall, listeners accepted the AI clone as the real speaker **~80% of the time** (Barrington & Farid 2025, N = 604).

### 3.8 Automated rebuttal evasion

**No credible evidence of deployment. This is the weakest claim in the set.** What exists is *static* evasion rules embedded in agent memory — banned words, approved sources, "ways to avoid detection" — and refusal negotiation, where actors reword requests a model declined. What does **not** exist in any source reviewed is an agent that **detects an incoming fact-check and reroutes a narrative around it**.

The defensive side is now quantified, and it points at **latency, not evasion**. Roitero et al., *Nature Communications*, May 2026: across **237,180 annotated cascades and >431M reposts over 20 months**, displaying a Community Note produced a **61.2% reduction in reposting (DiD ATT = −0.612)** and a **94.3% increase in the odds the author deleted the post**. But notes appeared at an average lag of **62.9 hours (median 18.1)** against a post half-life of **6.25 hours**, yielding a **system-wide effect of only 14.9% (median 10.1%)**. At a two-hour lag it would have been **52.3%**; after 24 hours the effect is statistically insignificant, and it is **significantly weaker for high-follower, verified and political accounts**.

The reading is not that actors evade fact-checks. It is that **the correction pipeline is structurally too slow to catch virality, so facts arrive after the interpretive frame has set** — an argument for prebunking and speed, not better AI detection.

### 3.9 Exploitation of emerging narratives ("newsjacking")

Evidence is **documentary, not measured**, and consistently **event-timed**: fabricated defamatory claims about Moldova's president ahead of the September 2025 election; fake grassroots content prepared ahead of Kenya's 2027 general election; a serialised campaign around the 2026 US–Israel–Iran war. The Iranian case notably **attributed false claims to Western research institutions (CSIS, Brookings, RAND)** during an active conflict.

One person's response latency is now the model's, not a newsroom's. But no source reviewed gives a measured **time-to-first-narrative** comparison against a human baseline, and the automation described is **batched and scheduled, not reactive**. Treat autonomous newsjacking as demonstrated at the level of event-timing, not closed-loop reactivity.

### 3.10 Cost and access

Verified on live 2026 pricing: a 500-word post costs roughly **$0.0001–$0.04** to generate depending on model tier; **1,000 posts cost $0.38–$38**. A persona at 50 messages/day for a month (≈1,500 turns) costs **$0.71 cheap-tier to $71 frontier**.

Against that, **distribution is two to three orders of magnitude more expensive**: X's pay-per-usage API prices a post at **$0.015**, but **$0.200 when it contains a URL** — a deliberate 13× link penalty. **1,000 posts with links therefore costs $200 in platform fees against $0.38 of generation — a 524× asymmetry**; even on a frontier model the platform fee dominates by ~5×. Account acquisition, phone verification, proxies and platform fees, not inference, are the true cost of influence at scale. *(Full pricing and human baselines: `amplification/notes/cost-access.md`.)*

The relevant human comparison is not AI versus a professional copywriter but **AI versus the cost of building a credible institution** — years of editorial reputation, real bylines, real archives. That is what is now being counterfeited, and it was never cheap.

---

## 4. The limits

- **Guardrails raise friction and shape tactics; they do not prevent the operation.** Anthropic refused its most aggressive request (naming real individuals as militants) and a fabricated defamation dossier — after which the actor "negotiated sanitized wording to keep building toward the same capability." Guardrails also create **detection surface**: vendors see operations at the production stage, upstream of the platform, which is why many are disrupted before building an audience.
- **Rate limits and identity verification are the effective chokepoints.** Warm-up logic, rotated cookies and IPs, VPNs and foreign phone numbers are documented countermeasures — precisely why **access cost, not generation cost, dominates**.
- **Enforcement works, on a lag.** Large networks are taken down; operators also roll one banned account into 29 more over sixteen months. The economics favour the attacker on identity, the defender on structure.
- **AI-text detection is not a defence** — unreliable, false-positive-prone against human writers, and largely irrelevant because networks are connected structurally.

---

## 5. Are audiences more resilient than assumed?

Substantially, on the best available evidence — with one caveat. The strongest nulls are precise:

- **Bail et al. (2020, *PNAS*)**: 1,239 US Twitter users in late 2017 linked to non-public IRA data; Bayesian regression-tree models found **no evidence that interaction with IRA accounts substantially affected any of six measures of political attitudes and behaviour** over one month. Interaction concentrated among users *already* highly polarised and politically engaged.
- **Eady et al. (2023, *Nature Communications*)**: longitudinal survey linked to Twitter feeds. Exposure was extremely concentrated — **1% of users accounted for 70% of exposures** — skewed to strong Republicans and **eclipsed by domestic news media and politicians**. **No evidence of a meaningful relationship** with changes in attitudes, polarisation or voting behaviour.

Vendors agree: OpenAI's May 2024 assessment of **"no significant audience increase"**; Anthropic's September 2026 finding that most content **"drew little or no authentic engagement."**

The caveat: **this evidence concerns national elections**, where audiences are saturated, priors strong and counter-messaging abundant. Ambiguous local events are a different regime — weak priors, slow verification, and a vacuum the first coherent account fills. No resilience study tests that regime directly, and §3.8 suggests the vacuum is real and lasts roughly a day.

---

## 6. Capability table

| Capability | Technical possibility | Demonstrated | Deployed | Measured impact | Confidence | Source |
|---|---|---|---|---|---|---|
| **Persuasion efficacy** | Yes, ~human parity | Yes, preregistered RCTs | Yes (state-media copy) | +81.2% odds of post-debate agreement (CI +26 to +161); ~20% conspiracy-belief cut, durable 2 months | **High** lab / **Low** field | Salvi 2025; Costello 2024; Hackenburg 2025 |
| **Microtargeting uplift** | Claimed | **Not shown** | Assumed by operators | **4.83 vs 6.20pp, P = 0.226** (null) | **High** (negative) | Hackenburg & Margetts 2024 |
| **Continuous monitoring** | Yes | Yes | Yes, commercial | Vendor-priced; no public error rates | **High** availability / **Low** adversary use | Commercial market 2026 |
| **Adaptive narrative selection** | Plausible | Only A/B analogues | Scaffolding only | None measured | **Low** | Anthropic Sep 2026 |
| **Localised / multilingual** | Yes | Yes | **Yes** | 8,913 articles / ~20 languages; MT fingerprints leak | **High** | Anthropic Sep 2026 |
| **Long-running personas** | Partial (drift ~8 rounds, lab) | Single-interaction passing | **Yes** — impersonation from ~8,400 posts | Contacts unaware; no reach measure | **Moderate** | Anthropic Sep 2026; UCSD 2026 |
| **Cross-platform coordination** | Yes | Yes | **Yes** | ~1,000 accounts one platform; ~70 sites + 320 accounts another; **Breakout Scale Cat. 2** | **High** | Anthropic Sep 2026 |
| **Synthetic corroboration** | Yes | Yes | **Yes** | Fake think tank: **34/36 sampled articles** copied or misattributed; 10–20k followers | **High** | OpenAI Aug 2026 |
| **Deepfake audio/video** | Yes | Yes | Yes (NH robocall 2024) | **No political-deepfake conviction anywhere**; acquittal on all 22 counts; $6M order entered by default and unpaid; only $1M collected (carrier) | **High** | FCC / NH courts / AP |
| **Synthetic-media detection** | — | Yes | — | Untrained image detection **48.2% (below chance)**; voice clone accepted as real **~80%** | **High** | Nightingale & Farid 2022; Barrington & Farid 2025 |
| **Automated rebuttal evasion** | Not shown | **No** | **No** | None | **Low** — negative finding | Absent across sources |
| **Newsjacking automation** | Plausible | Event-timed content, yes | Yes (scheduled only) | No time-to-first-narrative data | **Low–Moderate** | Anthropic Sep 2026 |
| **Cost of generation** | — | — | — | ~$0.0001–$0.04/post; 1,000 posts $0.38–$38 | **High** | Vendor pricing, 25 Sep 2026 |
| **Cost of distribution** | — | — | — | X API $0.015/post, **$0.200 with URL** → **524×** generation cost | **High** | X API pricing, 25 Sep 2026 |
| **Audience resilience** | — | Yes | — | **Null** IRA effects on 6 measures (n=1,239); **1% of users = 70% of exposures** | **Moderate** | Bail 2020; Eady 2023 |
| **Correction speed (defence)** | — | Yes | Yes | 61.2% repost cut *when displayed*; only **14.9% system-wide** at 62.9h lag vs 6.25h half-life | **High** | Roitero 2026 |
| **Literacy warning (defence)** | — | Yes | Not yet | **−48.1% belief change** (95% CI −59.5 to −36.8) | **Moderate–High** | arXiv 2609.16432 |

---

## 7. Bottom line

1. **Persuasion is not the new capability.** Effects are real, lab-bound and near human parity; personalisation — the most feared mechanism — is the least supported in the best-powered study.
2. **Manufacturing apparent corroboration is the new capability.** Fake institutions, fake bylines, forged documents, stripped attributions and caveat-free "established facts," at near-zero marginal cost, in twenty languages.
3. **Reach has not scaled with production.** Every first-party 2026 disclosure puts AI-enabled networks at Breakout Scale Category Two or Three, with little or no authentic engagement — except where they ride **existing state-media distribution**.
4. **Distribution and identity, not inference, are the binding constraints** — a 524× asymmetry between generation and platform access fees.
5. **Warnings work better than they should have to.** A one-paragraph AI-literacy warning halves AI persuasion; the cheapest high-leverage intervention identified here.
6. **The correction pipeline is too slow, and that — not AI evasion — is the exploitable gap** around ambiguous events. Facts arrive a day after the frame sets.
7. **Deterrence is currently absent, not merely weak.** No one anywhere has been convicted of a political deepfake, the largest fine was entered by default and remains unpaid, and the only collected money came from a carrier rather than the operative.

**Where claims rest on thin ground:** adaptive narrative selection, automated rebuttal evasion, autonomous newsjacking, and any specific estimate of real-world belief change attributable to an AI-enabled influence operation. All vendor deployment evidence is first-party, self-selected, and published by parties with regulatory and reputational interests. The most important unmeasured quantity remains **whether AI-enabled influence changes behaviour in the field**; on present evidence, no one has shown that it does.
