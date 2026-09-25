# 04 — Agentic Capability: What AI Agents Actually Make Newly Possible in the Manipulation of Public Perception Around Ambiguous Events

**Research cut-off: 25 September 2026.** Analytic brief. Capability, evidence and defence only; no operational, prompting, tooling or evasion guidance.

---

## 1. Scope and method

The question is not whether AI writes persuasively — it does. It is what an **agentic** stack (persistent memory, tool use, scheduling, feedback) makes *newly* possible in the contest over an ambiguous event: a shooting, a strike, a disaster, where facts are unsettled for hours or days and the first coherent story tends to become the story.

Four levels are separated throughout: **(1) technical possibility** (lab), **(2) demonstrated capability** (measured, reproducible), **(3) credible evidence of deployment** (first-party disclosure of named networks, actors, dates), **(4) documented real-world impact** (measured reach or behaviour change). Evidence is thin at level 4, thick at 1–3; that asymmetry is the finding.

**Grades:** A = primary/official/first-party; B = peer-reviewed/strong independent; C = reputable journalism/industry; D = weak or inferred; E = vendor marketing. **Vendor reporting** — first-party disclosure by a developer with regulatory and reputational interests — is flagged throughout.

---

## 2. Headline judgement

**The new capability is not persuasion. It is the industrial production of plausibility, and the removal of the editorial labour that was the bottleneck on covert influence.**

Persuasion effects are real but modest, lab-bound and near human parity. Measured *reach* of AI-enabled influence operations is, by the vendors' and platforms' own accounting, close to nil. What changed is that one operator can now generate a fake local newsroom, a fake expert institute and a persona with long-term memory — at near-zero cost, in twenty languages.

The binding constraint has moved from **production** to **distribution and access**. Defensive leverage therefore sits in identity verification, account-acquisition cost, integrity funding and speed-to-correction, not in moderating text.

---

## 3. Capability-by-capability assessment

### 3.1 Persuasion efficacy

**Salvi et al. (2025), *Nature Human Behaviour*** — preregistered, N = 900, short debates. GPT-4 *with* basic sociodemographic personalisation was more persuasive 64.4% of the time: an **81.2% relative increase in the odds of higher post-debate agreement (95% CI +26.0% to +160.7%, p < 0.01)**. Without personalisation GPT-4 still edged humans, but **non-significantly** (p = 0.31). ⚠️ An **Author Correction was issued in *Nature Human Behaviour* on 3 September 2026** whose content could not be retrieved for this review; treat the headline figures as provisional pending verification.

**Costello, Pennycook & Rand (2024), *Science*** — N = 2,190 believers in personalised dialogue with GPT-4 Turbo: **−16.8 points (95% CI 13.8–19.7), d = 1.15 (~20%)**, with **no decay at two months (b = 0.03, p = .98)**; prior correction attempts averaged only **g = 0.16**. This is a **relative reduction on a scale, not a conversion**, and self-reported. A 2025 *PNAS Nexus* follow-up (N = 955) found the effect **held when the dialogue was framed as coming from a human expert**: the active ingredient is personalised, responsive, fact-dense dialogue, which agents scale but did not invent.

**Hackenburg et al. (2025), *Science*** — the largest study to date: **N = 76,977**, 19 LLMs, 707 issues, **466,769 LLM claims fact-checked**. Post-training raised persuasiveness by **up to 51%**, prompting by **up to 27%**; personalisation and model scale mattered less. Most important here: **where these methods increased persuasiveness, they systematically decreased factual accuracy.**

**The pooled average is near zero, but averaging is the wrong estimator.** Hölbling, Maier & Feuerriegel (2025, *Scientific Reports*; 7 studies, N = 17,422) found **g = 0.02 (95% CI −0.048 to 0.093)**, with **I² = 76%**. The *moderators* are the finding: **GPT-3.x < GPT-4.x (b = −0.236)** and **one-shot < interactive (b = −0.494)**. A pooled mean across model generations understates the current state.

**Microtargeting is the weakest link.** Hackenburg & Margetts (2024, *PNAS*, n = 8,587) found GPT-4 messages moved issue support by **up to 12 percentage points**, but microtargeted messages were **indistinguishable from non-microtargeted ones (4.83 vs 6.20pp, P = 0.226)**. Bai et al. (2025, *Nature Communications*, N = 4,829) likewise found LLM messages **"similarly effective" to those written by lay humans**. A distinct GPT-4o-specific "superhuman persuasive writing" result was **not verified** in this review; the GPT-4o-era studies located converge on the same parity finding.

**Does it survive real audiences and competing information?** This is the load-bearing gap. LLM superiority **wanes over repeated interactions, unlike human persuasiveness** (arXiv 2505.09662); LLMs **decouple "sounding persuasive" from "arguing well"** (arXiv 2608.29738); and **no field experiment yet shows AI-generated persuasion shifting real-world behaviour at population scale**. Every headline result is a lab or survey experiment with self-selected participants and self-reported attitudes.

**Defence signal.** A **light-touch AI literacy warning** cut belief change by **roughly half (−48.1%, 95% CI −59.5% to −36.8%, N = 3,208)** without reducing general trust in generative AI (arXiv 2609.16432, September 2026) — the largest defensive effect size in this brief.

### 3.2 Continuous monitoring of public reaction

A mature commercial market (Brandwatch, Meltwater, Sprinklr, NewsWhip, Dataminr, Graphika, Recorded Future), sold by subscription; public list pricing has largely been withdrawn (X was fined **€120M** in December 2025 for DSA researcher-data failures). Accuracy caveat: LLM annotation matches or beats crowd workers on sentiment and political leaning, but both sit near chance on **sarcasm** (α = 0.25) — and these measure agreement, not correctness. The **EEAS 4th FIMI Threat Report (March 2026)** found **AI techniques in 27% of 540 incidents** while calling AI material "low-quality": "the objective is not precision but presence."

### 3.3 Adaptive narrative selection

**Platform ad-delivery optimisation** (real, mature, bandit-driven) is *not* an **adversarial agent that reads response and rewrites narrative to evade counter-messaging**. The first is pervasive; the second is asserted, not shown.

What exists is the apparatus: **persistent agent harnesses** with shared memory files holding banned-word lists, approved sources and evasion rules, plus a Malaysian platform running **~1,000 fake X accounts** whose dashboard tracked *engagement volume*, not message performance (Anthropic, September 2026). Meta's H2 2026 adversarial threat report states that feedback-adapting autonomous agents **"have not yet [been] deployed extensively at scale by threat actors"** — a platform declining to inflate a threat.

### 3.4 Localised and multilingual messaging

One of two capabilities genuinely transformed. Anthropic documents **at least 8,913 articles in about 20 languages**; an Iranian programme in **six languages with a stated plan for 20**; and explicit **audience-tailored rewriting** — the same story rewritten "in opposite ideological directions for different audiences." A PRC-aligned actor with **no Arabic skills** ran a multi-day recruitment operation against Uyghurs in Syria in **Syrian Arabic dialect with real-time translation of replies**. At published rates a short message costs **≈$0.0007–0.0014 — roughly 700–3,000 messages per dollar**.

Caveats: translation leaves **stylistic fingerprints** — operators instructed models to strip linguistic clues to Russian origin — and low-resource quality remains below high-resource.

### 3.5 Long-running persona management

**Technically plausible, commercially enabled, empirically under-tested at the timescale that matters.** Short-horizon consistency is a *known weakness*: persona drift is measurable **within roughly eight conversation rounds** (lab, older models — consistency is not free). At *single-interaction* human-passing, evidence is strong: 2026 work from UC San Diego found AI interlocutors could appear **more human than real humans** in a Turing-test setup. At **months-long persistence**, the best evidence is a *deployment* case: an MEK/NCRI-aligned operation **cloned a real activist's Telegram style from ~8,400 of his posts** and ran live conversations with contacts who **did not know they were speaking to an AI-assisted account** (Anthropic, September 2026) — made possible by **a real person's corpus**, not a synthetic backstory.

**Detection is structural, not textual** — shared deployment identifiers, clustered creation timestamps, shared hosting. That is also its **vulnerability**: the best-quantified pipeline (4.1M Telegram messages) relied on "**exact message duplication**." Surface-form variation would degrade it, and **no study has measured whether that happens**.

### 3.6 Cross-platform coordination

Agentic tooling makes cross-platform operation easier to *run* and, on present evidence, *easier to detect*: networks are repeatedly tied to single points of failure — **one French agency behind ~70 fake news sites**, **one Istanbul company behind a Malaysian platform**, **one operator rotating 29 accounts over ~16 months**. Reported impact is uniformly low; the 70-site network rated **Breakout Scale Category Two**.

### 3.7 Synthetic corroboration

This is where the genuinely new capability sits, and it does not require deepfakes.

**Fake independent institutions.** OpenAI's August 2026 disclosure is the archetype: a Russia-origin operation promoting the **"International Burke Institute," a fake Israel-based expert community**, complete with a **"Sovereignty Index"** flattering Russia, across X, Facebook, LinkedIn, Telegram and Substack. **34 of 36 sampled articles under expert profiles had been copied from elsewhere**, several misattributed to real academics. Reach was **"relatively small"** — Telegram channels of roughly **10,000–20,000 followers**. (Grade A; the vendor is an interested party.)

**Fabricated evidence.** Anthropic documents **forged government documents** (Central African Republic), **fabricated intelligence dossiers** against named opposition politicians (Malaysia), **AI avatars with Persian audio** posing as ordinary citizens, and **ghost-written testimony delivered in a live UN Human Rights Council session**. Most important for ambiguous events: prompting a model to **strip caveats from claims it had itself flagged as unverified** so material "would read as established fact," and **stripping state attribution** so republished material reads as independently confirmed.

**Why corroboration is a bet on repetition.** The clearest mechanism result (Cognitive Science, 2026; N = 1,015) is that dependent (same source repeated) and independent (genuinely corroborated) consensus persuade **equally at low exposure**, but independent corroboration yields **higher asymptotic belief as exposure accumulates**. Fabricated independence therefore buys nothing in a single encounter and pays off only under sustained repetition — which is precisely what the low-reach networks never achieved.

**The distribution rule.** Across every operation reviewed: **synthetic corroboration fails when it must build its own audience and succeeds when it can ride an existing one.** Anthropic found "most of the content we discovered drew little or no authentic engagement," and that the "widest authentic reach occurred where state media outlets were the distribution mechanism" — matched output ranged from a Telegram post with ~2,000 views to **aired broadcast copy on Sputnik Moldova and RT English**. The AI compressed the newsroom, not the audience. **No audited authentic-audience figure exists for any of these networks** — every reach number is platform-side or actor-side, so all such figures should be read as upper bounds.

**Deepfake robocalls and the legal record.** The January 2024 New Hampshire Biden robocall remains canonical, and its trajectory is instructive. The FCC's **$6M forfeiture** was entered *by default* — no merits holding — and is unpaid; in **June 2025 a jury acquitted the consultant on all 22 counts**, on statutory scope rather than innocence. The **only money collected was $1M from Lingo Telecom**; the voice-maker was paid **$150**. As of September 2026 **no one anywhere has been convicted of a political deepfake**; every custodial deepfake sentence found worldwide concerns sexual content. The statutory picture also moved against defenders: California's AB 2839 was struck down and AB 2655 enjoined.

**Detection and the liar's dividend.** Untrained image detection ran at **48.2%, below chance** (Nightingale & Farid 2022) and listeners accepted the robocall's clone as real **~80% of the time** (Barrington & Farid 2025). Content labelling is a weak remedy: an **"AI-generated" label shifted belief only 2.66pp against 9.33pp for a "False" label**, and labelling **did not reduce persuasion** (N = 1,601). The feared "liar's dividend" is real for *text* (10–12pp, Schiff et al. 2024) but largely **ineffective against video**.

### 3.8 Automated rebuttal evasion

**No credible evidence of deployment. This is the weakest claim in the set.** What exists is *static* evasion rules embedded in agent memory — banned words, approved sources, "ways to avoid detection" — and refusal negotiation, where actors reword requests a model declined. What is **absent from every source reviewed** is an agent that **detects an incoming fact-check and reroutes a narrative around it**.

The closest artefact is **XARELLO** (WASSA@ACL 2024), a reinforcement-learning attacker that "learns from previous successes and failures" — but it is **offline**, attacks *classifier robustness on a fixed dataset*, and targets credibility assessment, not a live verdict on its own fresh claim. OpenAI's assessment is "evolution rather than revolution."

The defensive side is quantified, and it points at **latency, not evasion**. Roitero et al., *Nature Communications*, May 2026: across **237,180 cascades and >431M reposts over 20 months**, displaying a Community Note produced a **61.2% reduction in reposting** and a **94.3% increase in the odds the author deleted the post**. But notes appeared at an average lag of **62.9 hours** against a post half-life of **6.25 hours**, yielding a **system-wide effect of only 14.9%**. At a two-hour lag it would have been **52.3%**; it is **weakest for high-follower, verified and political accounts**. Independent monitoring found only **10% of high-engagement false claims** about Hurricanes Helene and Milton received a visible Note, at an average delay of **46 hours**.

### 3.9 Exploitation of emerging narratives ("newsjacking")

Evidence is **documentary, not measured**, and consistently **event-timed** — fabricated claims about Moldova's president before the September 2025 election; a war-time campaign that **attributed false claims to CSIS, Brookings and RAND**.

But the tempo asymmetry runs the other way from the hype. The fastest documented false narrative around a genuinely ambiguous event was **human**: the false "Muslim immigrant" claim after the Southport stabbings appeared on X **about two hours** after the attack, reaching **6.7 million views**. Machine tempo is proven only at **production** — ~70 fabricated sites publishing near-identical articles **within three minutes**. The decisive gap is defensive: Ofcom's first public statement came **days** after the claim peaked, and it could not determine platform breaches because Online Safety Act duties were not yet in force. **Hours for the attacker, days for the regulator.**

### 3.10 Cost and access

Verified on live 2026 pricing: a 500-word post costs **$0.0001–$0.04**; **1,000 posts cost $0.38–$38**; a persona at 50 messages/day for a month costs **$0.71 (cheap tier) to $71 (frontier)**.

Account access — not generation — sets the floor: SMS-verified accounts run **$0.08–$0.10** in some markets but **$4.93 in Japan**, and procurement spikes by **12–15% in the 30 days before national elections** (Cambridge COTSI index, *Science*, December 2025). Proxies cost **$1.75–$4.00/GB**.

Against that, **distribution is two to three orders of magnitude more expensive**: X's pay-per-usage API prices a post at **$0.015**, but **$0.200 when it contains a URL** — a deliberate 13× link penalty. **1,000 posts with links therefore costs $200 in platform fees against $0.38 of generation — a 524× asymmetry.** Account acquisition, phone verification, proxies and platform fees — not inference — are the true cost of influence at scale. **CAPTCHA solving, at $0.10–$1.00 per 1,000, has fallen only ~1.8× in sixteen years**: it is the one defensive cost that has *not* collapsed, and therefore the highest-leverage place to invest. One inversion matters: a cloned-voice agent at **$3.00–$4.80/hour** beats US labour by 6–10× but **loses to Philippine offshore labour (<$2.00/hour)** by 1.5–2.4×. The correct comparator is offshore labour, not US salaries. *(Full pricing and human baselines: `amplification/notes/cost-access.md`.)*

---

## 4. The limits

- **Guardrails raise friction and shape tactics; they do not prevent the operation.** Anthropic refused its most aggressive request and a fabricated defamation dossier — after which the actor "negotiated sanitized wording to keep building toward the same capability." Guardrails also create **detection surface**: vendors see operations upstream of the platform, so many are caught early.
- **Rate limits and identity verification are the effective chokepoints**, because **access cost, not generation cost, dominates**. Warm-up logic, rotated IPs, VPNs and foreign phone numbers are documented countermeasures.
- **Enforcement works where speech is unprotected and stalls where it is political.** NCII regulation is viewpoint-neutral and now yields convictions, court orders and live platform duties; political-deepfake regulation must adjudicate election speech, and has produced acquittals, uncollected fines, defied judgments and struck-down statutes. The defensive opening is **carriage, not content**: carrier-level liability (Lingo's $1m — the only money collected) and caller-ID integrity are the only mechanisms with a demonstrated financial consequence in the best-documented case anywhere.
- **AI-text detection is not a defence** — false-positive-prone against human writers (one Stanford suite flagged **61% of human TOEFL essays**) and largely irrelevant because networks are connected structurally. **Behavioural detection does work**: Reddit reports ~**23M spam views/day blocked before exposure**, ~**2M fake votes/day revoked**, and a **40% reduction in false positives**. But **integrity capacity is contracting**: TikTok shed **439 UK trust-and-safety roles** in October 2025 while UK/European revenue grew 40%, and Meta is replacing third-party enforcement vendors with AI. Attacker and defender cost curves are moving in opposite directions.

---

## 5. Are audiences more resilient than assumed?

Substantially, on the best available evidence — with one caveat. **Bail et al. (2020, *PNAS*)** linked 1,239 US Twitter users to non-public IRA data and found **no evidence that interaction with IRA accounts substantially affected any of six measures of political attitudes and behaviour**; interaction concentrated among users *already* highly polarised. **Eady et al. (2023, *Nature Communications*)** report an **explicit null with equivalence bounds**: TOST **rejects effects larger than 0.2 SD for 17 of 18 outcomes**; the vote-for-Trump estimate was **−0.18pp (90% CI −1.15 to 0.78)**, below 0.7pp in 95% of simulations against a 0.77pp Wisconsin margin. Exposure was extremely concentrated — **1% of users accounted for 70% of exposures** — skewed to strong Republicans, and **eclipsed by domestic media (~4 IRA posts/day vs ~106 news posts/day)**.

The caveat: **this evidence concerns national elections**, where audiences are saturated and counter-messaging abundant. Ambiguous local events are a different regime — weak priors, slow verification, a vacuum the first coherent account fills. No resilience study tests that regime, and §3.8 suggests the vacuum lasts about a day. The pivotal distinction: the nulls measure *passive exposure*, whereas Costello and Salvi measure *interactive dialogue* — they should not be generalised to conversational agents.

---

## 6. Capability table

| Capability | Technical possibility | Demonstrated | Deployed | Measured impact | Confidence | Source |
|---|---|---|---|---|---|---|
| **Persuasion efficacy** | Yes, ~human parity | Yes, preregistered RCTs | Yes (state-media copy) | +81.2% odds of post-debate agreement (CI +26 to +161); ~20% conspiracy-belief cut, durable 2 months | **High** lab / **Low** field | Salvi 2025; Costello 2024; Hackenburg 2025 |
| **Microtargeting uplift** | Claimed | **Not shown** | Assumed by operators | **4.83 vs 6.20pp, P = 0.226** (null) | **High** (negative) | Hackenburg & Margetts 2024 |
| **Continuous monitoring** | Yes | Yes | Yes, commercial | EEAS: AI in **27% of incidents, +259% YoY**; sarcasm α = 0.25 | **High** availability / **Low** impact | EEAS Mar 2026 |
| **Adaptive narrative selection** | Plausible | A/B analogues only | Scaffolding only | None measured; Meta: "not yet deployed extensively at scale" | **Low** | Anthropic Sep 2026; Meta H2 2026 |
| **Localised / multilingual** | Yes | Yes | **Yes** | 8,913 articles / ~20 languages; **~700–3,000 messages per $1** | **High** | Anthropic Sep 2026 |
| **Long-running personas** | Partial (drift ~8 rounds, lab) | Single-interaction passing | **Yes** — impersonation from ~8,400 posts | Contacts unaware; no reach measure | **Moderate** | Anthropic Sep 2026; UCSD 2026 |
| **Cross-platform coordination** | Yes | Yes | **Yes** | ~1,000 accounts one platform; ~70 sites another; **Breakout Scale Cat. 2** | **High** | Anthropic Sep 2026 |
| **Synthetic corroboration** | Yes | Yes | **Yes** | Fake think tank: **34/36 sampled articles** copied or misattributed; 10–20k followers | **High** | OpenAI Aug 2026 |
| **Deepfake audio / video** | Yes | Yes | Yes (NH robocall 2024) | **No political-deepfake conviction anywhere**; all 22 counts acquitted; $6M order unpaid; detection **48.2%** (below chance) | **High** | FCC / NH courts; Nightingale & Farid 2022 |
| **Automated rebuttal evasion** | Not shown | **No** | **No** | None (XARELLO is offline, classifier-level) | **Low** — negative finding | Absent across sources |
| **Newsjacking automation** | Plausible | Event-timed, yes | Production only | Fastest false narrative **human (~2h)**; site sync **3 min**; regulator **days** | **Low–Moderate** | Anthropic Sep 2026; Ofcom |
| **Cost: generation vs distribution** | — | — | — | ~$0.0001–$0.04/post; X API **$0.200/post with URL** → **524×** generation cost | **High** | Vendor pricing, 25 Sep 2026 |
| **Audience resilience** | — | Yes | — | **Null** IRA effects on 6 measures (n=1,239); **1% of users = 70% of exposures** | **Moderate** | Bail 2020; Eady 2023 |
| **Correction speed (defence)** | — | Yes | Yes | 61.2% repost cut *when displayed*; only **14.9% system-wide**; Helene false claims **10% noted** | **High** | Roitero 2026; ISD |
| **Literacy warning (defence)** | — | Yes | Not yet | **−48.1% belief change** (95% CI −59.5 to −36.8) | **Moderate–High** | arXiv 2609.16432 |

---

## 7. Bottom line

1. **Persuasion is not the new capability.** Effects are real, lab-bound and near human parity; personalisation — the most feared mechanism — is the least supported in the best-powered study.
2. **Manufacturing apparent corroboration is the new capability.** Fake institutions, bylines, forged documents, stripped attributions and caveat-free "established facts," at near-zero cost, in twenty languages.
3. **Reach has not scaled with production.** Every first-party 2026 disclosure puts AI-enabled networks at Breakout Scale Category Two or Three — except where they ride **existing state-media distribution**.
4. **Distribution and identity, not inference, are the binding constraints** — a 524× asymmetry between generation and platform access fees.
5. **Warnings work better than they should have to.** A one-paragraph AI-literacy warning halves AI persuasion — the cheapest high-leverage intervention identified here.
6. **The correction pipeline is too slow, and that — not AI evasion — is the exploitable gap** around ambiguous events. Facts arrive a day after the frame sets.
7. **Deterrence is absent, not merely weak.** No one has been convicted of a political deepfake; the largest fine was entered by default and is unpaid; the only money collected came from a carrier.

**Where claims rest on thin ground:** adaptive narrative selection, automated rebuttal evasion, autonomous newsjacking, and any estimate of real-world belief change attributable to an AI-enabled influence operation. All vendor deployment evidence is first-party, self-selected and published by interested parties. The most important unmeasured quantity remains **whether AI-enabled influence changes behaviour in the field**; no one has yet shown that it does.

