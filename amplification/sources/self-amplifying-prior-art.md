# Self-Amplifying Attack — Prior-Art and Novelty Audit

**Compiled:** 25 September 2026 · Source annex for `../findings/01-concepts.md` §4 and `../../Agentic-Threat-Amplification-2026.md` §3.

**The claim under test.** An attack in which the attacker's action is small and the target's own reaction produces most of the damage; the target — government, media, public, institution — *is* the amplifier. Scored on three axes: **(a) deliberate** (engineered, not emergent); **(b) target-as-amplifier**; **(c) autonomous/AI engine**.

**Method and limits.** `web_search` was broken. Discovery used direct primary-source fetch, the Internet Archive/Open Library full-text API, Crossref, arXiv, the MITRE ATLAS data file, and NIST/CISA/Cloudflare/GitHub originals. Bing, DuckDuckGo, Mojeek, HathiTrust and Google Books were CAPTCHA-walled or rate-limited; OpenAlex and Semantic Scholar returned HTTP 429 all session. Exact-phrase negatives therefore rest on arXiv, Crossref, Europe PMC and a large book corpus — **not a web-wide index**. **H** = verbatim primary retrieved; **M** = reliable secondary; **UNVERIFIED** = not confirmed at source.

---

## 1. Military and strategic prior art

**Clausewitz — the single most literal strategic hit.** *On War*, Bk VI, ch. VII ("Mutual Action and Reaction of Attack and Defence"): "there is a **double solution in the defensive**, consequently a **double kind of reaction**, according as the aggressor is ruined by the sword of the defensive, **or by his own efforts**" (https://www.gutenberg.org/ebooks/1946, **H**). This is the canonical statement of defeat-by-one's-own-exertion. Related: Kahn's escalation ladder, rung 44, "Spasm or Insensate War" (**M**).

**Sun Tzu**, *The Art of War*, ch. III (Giles trans.): "supreme excellence consists in breaking the enemy's resistance without fighting" (https://www.gutenberg.org/files/132/132-0.txt, **H**). The mechanism is the enemy's own political calculation, not an engineered overreaction.

**B. H. Liddell Hart**, *The Strategy of Indirect Approach* — the strongest *verbatim* ancestor. Full text retrieved (Internet Archive `strategyofindire035126mbp`):

- "…in almost all the decisive campaigns the **dislocation of the enemy's psychological and physical balance** has been the vital prelude to a successful attempt at his overthrow." (p. 4)
- "The perfection of strategy would, therefore, be to produce a decision without any serious fighting." (p. 190)
- "…the true aim in war is **the mind of the hostile rulers, not the bodies of their troops**." (p. 287)
- "**Self-exhaustion in war has killed more States than any foreign assailant.**" (p. 205)
- "…instead of seeking to upset the enemy's equilibrium by one's attack, **it must be upset before** a real attack is, or can be successfully, launched." (p. 182) — all **H**.

**On the popular quotations.** Two circulating lines are **not** Liddell Hart's wording. (i) "The best strategy is to make the enemy defeat himself" — Internet Archive full-text search returns **zero** hits, while a control phrase I had already retrieved verbatim ("dislocation of the enemy's psychological and physical balance") returns ~32 hits, so the search works; the maxim *form* circulates ("allow the enemy to defeat himself," 11 hits: Slim in Burma; the Fetterman disaster) but is a maxim, not a named concept. (ii) "the true aim in war is the mind of the **enemy command**, not the bodies of his troops" — his own wording is "**hostile rulers**"; "enemy command and government" appears in Richard B. Gregg's *The Power of Nonviolence* quoting him. Treat both as paraphrases (**H** on (ii); **M** on (i) — no edition anywhere contains it). The 1929 first edition, *The Decisive Wars of History* (https://archive.org/details/decisivewarshistory), carries the same argument at pp. 5–6, 150, 156 and 230, including: "**dislocation is the aim of strategy**" (p. 150) and "to move directly on an opponent is to consolidate his equilibrium, physical and psychological" (p. 156) (**H**).

**Reflexive control** (see `01-concepts.md` §1.1). Lefebvre: "a process in which one adversary hands over to the other the basis for decision-making." Canonical transmission: Diane Chotikul, *The Soviet Theory of Reflexive Control in Historical and Psychocultural Perspective* (Naval Postgraduate School, 1986), https://archive.org/details/DTIC_ADA170613 — reflexive control is "conveying… specially prepared information to incline him to voluntarily make the predetermined decision"; and Timothy L. Thomas, *Journal of Slavic Military Studies* 17(2), 2004, 237–256, doi:10.1080/13518040490450529 (**H**). Komov's taxonomy includes **exhaustion** ("forcing the adversary to expend resources to perform unproductive activities") and **provocation** ("the imposition of an unfavorable scenario of action"). Captures (a) and (b) strongly, not (c); critics call it loosely specified and partly pseudoscientific.

**Cost imposition / "competitive strategies" / offset.** The cleanest explicit "make the adversary react himself worse off" claim comes from the competitive-strategies literature: Davis, DTIC ADA194850 (1988), quoting Weinberger's FY1988 Annual Report — "By adopting competitive strategies we **force the Soviets to perform less efficiently or effectively**," producing "**a reactive vice proactive posture**" (**H**). Origin paper: Marshall & Roche, *Strategy for Competing with the Soviets in the Military Sector* (OSD Net Assessment, 1976; title confirmed, text not publicly retrievable). "Offset strategy" is attributed to SecDef Harold Brown (Carter & White, *Keeping the Edge*, 2001). Russian reflexive-control writing treats **SDI** as the exemplar of making an adversary spend itself. **The frequently cited Krepinevich, "The Origins of Offset Strategy," could not be verified and is likely not a real CSBA report title — UNVERIFIED.** Business analogue: **"judo strategy"** (Yoffie & Kwak, HBS Press, 2001) and the Chinese maxims 借力打力 / 四两拨千斤 (**M**).

**Nuclear strategy and *named* provocation concepts.** Schelling's "threat that leaves something to chance"/brinkmanship (**M**) — ambiguity is chosen, but the model predicts **restraint**, whereas this idea predicts **disproportion**. **"Provocation strategy" is itself a named term**: Shiraev & Zubok, *Current Debates in International Relations* (2015) — "A provocation strategy is an attempt to induce the enemy to respond…" (**M**). **Self-deterrence** is verified as a concept — Keith B. Payne, *Nuclear Deterrence in U.S.-Soviet Relations* (1982); David A. Koplow, *Death by Moderation* (CUP, 2009), ch. 2, doi:10.1017/cbo9780511804816.003 — but it arises from the actor's *own* expected costs, not attacker induction. Snyder's **stability–instability paradox** and **escalation dominance** are verified at summary level; **salami tactics** is attributed to Rákosi (**M**). **Blowback** (Chalmers Johnson, 2000) is the **inverse** — the attacker's action harming *himself*. "Autoimmune," "boomerang" and "own goal" are **not** established strategic terms (**M**).

---

## 2. Economics and complexity prior art

**Merton's self-fulfilling prophecy — the closest general name.** Merton, "The Self-Fulfilling Prophecy," *The Antioch Review* 8(2), 1948, 193–210; free full text of the exact issue retrieved and read: https://archive.org/details/sim_antioch-review_summer-1948_8_2 (**H**). Definition (p. 195): "The self-fulfilling prophecy is, in the beginning, **a false definition of the situation evoking a new behavior which makes the originally false conception come true.** The **specious validity** of the self-fulfilling prophecy perpetuates a reign of error." His illustration is the **bank run**: "Predictions of the return of Halley's comet do not influence its orbit. But the rumored insolvency of Millingville's bank did affect the actual outcome. **The prophecy of collapse led to its own fulfillment**" (p. 193) — the bank "was solvent… it would have survived for many years had not the misleading rumor created the very conditions of its own fulfillment." Antecedent: the **Thomas theorem** (1928), "If men define situations as real, they are real in their consequences"; Popper named it the **Oedipus effect**. Merton also named the complement — the "**suicidal prophecy**… The prophecy destroys itself" (footnote, p. 196). **Capture: (b) fully, (a) not at all — Merton requires no attacker** (his trigger is a rumour). That is exactly the gap this idea fills.

**"Boomerang" and "backfire" effects — a terminology trap, not prior art.** Both mean a message producing *less* of the intended effect than no message, or the reverse: Hovland, Janis & Kelley (1953) named the boomerang effect; Nyhan & Reifler, *Political Behavior* 32(2), 2010, doi:10.1007/s11109-010-9112-2; largely falsified by Wood & Porter, *Political Behavior* 41(1), 2019, doi:10.1007/s11109-018-9443-y — **the DOI in the original brief (`…-018-9453-6`) is wrong (404).** Wood & Porter tested 36 issues on 8,100 subjects and found backfire in one. **Do not use these terms here**: they import the opposite literature. The relevant sense is target *overreaction*, not message failure.

**Soros's reflexivity.** *The Alchemy of Finance* (1994 ed., p. 2; https://archive.org/details/the-alchemy-of-finance-george-soros): "there is a two-way interaction between the participants' thinking and the situation in which they participate… I envision reflexivity as a **feedback loop**… Reflexivity renders the participants' understanding imperfect and ensures that their actions will have unintended consequences." Independently formalised as "reflexive prediction" by Grunberg & Modigliani and Herbert Simon (1954). **No security or defence application found** (**M** as a negative).

**Panics, cascades, crowds.** Diamond & Dybvig, *JPE* 91(3), 1983, doi:10.1086/261155: the trigger "could be a bad earnings report… or even sunspots. **It need not be anything fundamental about the bank's condition.**… the good equilibrium is very fragile" — the best formal statement of disproportionate self-amplifying overreaction to a small signal. Related: Obstfeld's self-fulfilling currency crises; Calvo/Cole–Kehoe self-fulfilling debt crises; Minsky's financial-instability hypothesis (https://www.levyinstitute.org/pubs/wp74.pdf). Bikhchandani, Hirshleifer & Welch, *JPE* 100(5), 1992, doi:10.1086/261849: "an informational cascade… does not depend on his private information signal… a cascade once started will last forever, **even if it is wrong**." Helbing, Farkas & Vicsek, *Nature* 407, 2000, doi:10.1038/35035023 give the **"faster-is-slower effect"** in crowd disasters: "fleeing people reduce their own chances of survival" (**H**). **Deviancy amplification** (Wilkins 1964; Young) and **moral panic** (Cohen 1972) are already correctly downgraded in `01-concepts.md` §3.

---

## 3. Security, terrorism and influence prior art

**Strategy of tension (*strategia della tensione*) — the closest *named* prior art for engineered ambiguity.** "A political policy where violent struggle is encouraged rather than suppressed. The purpose is to create a general feeling of insecurity in the population and make people seek security in a strong government" (https://en.wikipedia.org/wiki/Strategy_of_tension, **H**). Coined in *The Observer*, 14 December 1969, reporting Piazza Fontana, per Franco Ferraresi, *Threats to Democracy* (Princeton UP, 1996/97); monograph: Juan Avilés, *The Strategy of Tension in Italy* (Liverpool UP, 2021), doi:10.2307/j.ctv3029r39 (**H** via Crossref). Italian Wikipedia adds the operative clause: bombings meant to make the public "justify, request or hope for authoritarian political turns," and "committing bomb attacks and attributing their authorship to others." A 2000 Italian parliamentary report held that "those massacres, those bombs, those military actions had been organized or promoted or supported by men inside Italian state institutions." **Confidence: H for the term, coinage and attributed purpose; M that a central state/NATO strategy explains the massacres; L for individual attributions.** Ganser's *NATO's Secret Armies* (2004) rests partly on US Army Field Manual 30-31B, which the State Department calls a 1976 Soviet forgery. **Capture: (a) yes, (b) yes, (c) no** — and its objective was a *domestic* authoritarian turn, not a small external attacker's payoff.

**"Terrorism is theatre."** Brian Jenkins, *International Terrorism: A New Kind of Warfare* (RAND P-5261, 1974), https://www.rand.org/pubs/papers/P5261.html, frames terrorism explicitly as amplification ("the difference between the actual amount of violence and the greatly amplified effects of that violence"). The 1975 line "terrorists want a lot of people watching, not a lot of people dead" is attributed to *Will Terrorists Go Nuclear?* (RAND P-5541, 1975) (**M**; exact wording **UNVERIFIED**).

**Mueller's threat inflation — the best quantified cost asymmetry.** "Six Rather Unusual Propositions about Terrorism," *Terrorism and Political Violence* 17(4), 2005, 487–505, http://politicalscience.osu.edu/faculty/jmueller/6PROPS.PDF: "**The costs of terrorism very often come mostly from the fear and consequent reaction (or overreaction) it characteristically inspires… not from its direct effects which are usually comparatively limited**"; "the costs of reaction outstripped those inflicted by the terrorists even in the case of the September 11 attacks." See also *Overblown* (2006), *The Stupidity of War* (2021). Decisively, Mueller quotes **bin Laden's own 2004 statement**: it is "easy for us to provoke and bait… All that we have to do is to send two mujahidin… to make the generals race there to cause America to suffer human, economic, and political losses." **H**; the "$500,000 → $500 billion" asymmetry is bin Laden's claim as reported, **not an audited estimate: UNVERIFIED as accounting.**

**Overreaction economics and security theatre.** Frey, Luechinger & Stutzer, *Journal of Economic Surveys* 21(1), 2007, doi:10.1111/j.1467-6419.2007.00505.x; Enders & Sandler (CUP, 2006/2012) (**M**). Schneier, "Beyond Security Theater" (2009): "it's only our reaction to that attack that can do that kind of damage… the more we're doing the terrorists' job for them" (**M**). The **ratchet effect** (Peacock & Wiseman 1961; Higgs 1987) describes non-reversible post-crisis state growth (**M**).

**Provocation and false flag.** *Agent provocateur* — inciting an act that would not otherwise occur, to compromise a target group; the Okhrana's *provokatsiya* tradition (Azef, Malinovsky) is documented. Mukden (18 Sep 1931) is the purest documented small-incident → disproportionate-state-action case; Gleiwitz (31 Aug 1939) likewise; Operation Northwoods (1962) was a declassified *proposal*, never executed. **M**; the term is heavily contaminated by conspiracy usage. **Propaganda of the deed** has reaction logic, but the reactor is the public and the intent is emulation, not state overreaction (**M**).

**No named term for the exact idea was found in this domain.** Nearest: strategy of tension (state-attributed, domestic), reflexive control (intelligence-hungry), and Mueller's unlabelled "costs of reaction."

---

## 4. The cyber structural analogy — amplification and reflection attacks

The best *structural* match, and the most under-used resource.

- **CISA/US-CERT TA13-088A (2013)**: an attacker queries an open resolver "**with the source address spoofed to be the target's address**… **an attacker can create an immense amount of traffic with little effort.**" https://www.cisa.gov/news-events/alerts/2013/03/29/dns-amplification-attacks (**H**.)
- **NIST SP 800-189 §3.2**: spoofing plus reflection "to **multiply the attack traffic volume by a factor of 50 or more**." https://doi.org/10.6028/NIST.SP.800-189 (**H**.)
- **Cloudflare, "Memcrashed" (2018)**: "An IP-spoofing capable attacker sends forged requests to a vulnerable UDP server. The UDP server, not knowing the request is forged, politely prepares the response… allows an attacker with limited IP spoofing capacity (such as 1Gbps) to launch very large attacks (reaching 100s Gbps)." GitHub recorded **1.35 Tbps** at peak and an amplification factor up to **51,000**: https://github.blog/news-insights/company-news/ddos-incident-report/ (**H**.)

**The disanalogy, stated precisely.** In DNS/NTP/memcached amplification the **amplifier is a third party** (open resolvers), not the victim; the victim contributes only its **forged identity**. This idea puts the **target itself** in the amplifier role — so "amplification attack" supplies the small-input→large-output structure and the weaponised-identity trick, **but not target-as-amplifier**.

**The closer cyber analogue is the authentication *reflection attack*.** "The essential idea of the attack is to **trick the target into providing the answer to its own challenge**." Sources: Tanenbaum, *Computer Networks*, 4th ed., pp. 787–790; Anderson, *Security Engineering*, 1st ed., p. 21; https://en.wikipedia.org/wiki/Reflection_attack (**H** on the definition). Here the target's own output *is* the attack material — the closest structural fit in computing. **Capture: (a) yes, (b) yes, (c) no.**

**Algorithmic amplification** — "increases in the distribution or visibility of content on digital platforms, arising from a combination of automated ranking by recommendation systems and users' own sharing" (https://en.wikipedia.org/wiki/Algorithmic_amplification, **H**) — is *platform* amplification, not adversary-engineered target self-harm.

---

## 5. AI/agent prior art (2024–2026) and exact-phrase mining

**The negative evidence is the most important result.** Internet Archive full-text search returns **NO RESULTS** for "self-amplifying attack," "reaction force multiplication," "social amplification attack," "weaponised overreaction," "autonomous narrative warfare," "agentic influence operations" and "cognitive amplification attack." arXiv and Crossref return **zero** for "**agentic threat amplification**," "self-amplifying threat," "reaction force multiplication," "target-operated attack," "cognitive amplification attack," "informational/narrative amplification attack," "AI-driven reflexive control," "AI-generated emergency misinformation" and "AI-generated panic."

**But some near-misses exist, and must be acknowledged.**
- **"Threat amplification"** is already used in 2026 agent-safety papers — *Cascade: Composing Software-Hardware Attack Gadgets for Adversarial Threat Amplification in Compound AI Systems* (arXiv:2603.12023) and *Safety in Self-Evolving LLM Agent Systems: Threats, Amplification, and Case Studies* (arXiv:2606.23075). Neither defines an attack class; the phrase is incidental. **M.**
- **"Self-amplifying attack"** appears once, incidentally (arXiv:2512.06674).
- **MITRE ATLAS `AML.T0034 "Cost Harvesting"`** (`.002 Agentic Resource Consumption`) is the closest **named** AI-era pattern: the attacker induces the target system to "trigger autoscaling mechanisms that provision additional resources, further **amplifying** cost and exposure." Small input → disproportionate target cost — but framed as resource abuse, **not** self-inflicted overreaction. **H.**
- **"Agentic influence operations"** exists as of 2026 (IEEE S&P, doi:10.1109/msec.2026.3725886); **"AI-enabled influence operations"** likewise (doi:10.2139/ssrn.6574547).

**Taxonomies checked.** MITRE ATLAS names no amplification/reflection/reflexive/cascade **technique** (nearest: Cost Harvesting; **AML.T0061 "LLM Prompt Self-Replication"**). **OWASP LLM Top 10 (2025)** names none (nearest LLM09 Misinformation, LLM10 Unbounded Consumption). **NIST AI 100-2e2025** uses Availability/Integrity/Privacy/Misuse; "amplif*" appears only in technical senses, "cascad*" and "reflexiv*" zero — **the pattern is not named**. The **International AI Safety Report 2026** is descriptive only ("errors can propagate and amplify through agent interactions"). All **H**. The key capability datum remains Anthropic's September 2026 threat-intelligence report (8,913 articles in ~20 languages; "most of the content we discovered drew little or no authentic engagement"): https://www.anthropic.com/threat-intelligence-report-september-2026 (**H**).

**"Agentic threat amplification."** No external use found (arXiv 0, Crossref 0). It is this project's own working label, and `01-concepts.md` is right to treat it as a **configuration name, not an established concept**.

---

## 6. Novelty verdict

| Candidate term | (a) Deliberate | (b) Target = amplifier | (c) AI engine |
|---|---|---|---|
| Sun Tzu, "without fighting" | partial | yes | no |
| Liddell Hart, indirect approach | **yes** | **yes** | no |
| Reflexive control | **yes** | **yes** | no |
| Cost imposition / offset strategy | **yes** | **yes** | no |
| Schelling brinkmanship | yes | partial (restraint, not disproportion) | no |
| **Provocation strategy** | **yes** | **yes** | no |
| Self-deterrence | no (target deters itself) | partial | no |
| Merton, self-fulfilling prophecy | **no** | **yes** | no |
| Soros reflexivity | no | **yes** | no |
| Diamond–Dybvig bank run | no | **yes** | no |
| Information cascades | partial | **yes** | no |
| **Strategy of tension** | **yes** | **yes** | no |
| Jenkins, terrorism as theatre | yes | yes (audience) | no |
| Mueller, threat inflation | yes (observation) | **yes** | no |
| Security theatre / ratchet | no | **yes** | no |
| DNS/NTP/memcached amplification attack | **yes** | **no** (third party amplifies) | no |
| Reflection attack (auth protocols) | **yes** | **yes** | no |
| Algorithmic amplification | no | partial (platform, not target) | partial |
| MITRE ATLAS "Cost Harvesting" | **yes** | partial (target's autoscaling) | **yes** |
| "Threat amplification" (2026 papers) | yes | partial | **yes** |

**Already named** — see the table: deliberate target-self-harm (Liddell Hart, reflexive control, provocation strategy, cost imposition, strategy of tension); the reaction as the locus of harm (Merton; Mueller); small-input→large-response weaponised (amplification attack; the authentication reflection attack); provocation as method (*agent provocateur*, *provokatsiya*, false flag, propaganda of the deed).

**Not named anywhere found.** A single term combining (a) deliberate engineering + (b) target-as-amplifier + (c) an autonomy/AI engine, applied to **ambiguous physical incidents** and scored on **institutional behaviour rather than belief**. Specifically unnamed: "**agentic threat amplification**" (arXiv 0, Crossref 0) and every near-synonym tested; **AI-mediated reflexive control**; **AI-generated emergency misinformation/panic**; and the **cyber→cognitive mapping** of amplification/reflection attacks onto influence (arXiv 0, Crossref 0, Europe PMC 0). The AI-era near-misses — ATLAS Cost Harvesting, 2026 "threat amplification" papers, algorithmic amplification — are cost/resource or platform-distribution framings, not attacker-engineered target overreaction.

**Bottom line — stated plainly.** The *mechanism* is fully named and has been for decades. Depending on emphasis, this idea is Liddell Hart's indirect approach (1954), reflexive control (1960s–70s), the strategy of tension (1969), Merton's self-fulfilling prophecy (1948), or a DNS/NTP reflection-amplification attack (2013). **There is no new causal mechanism.** What is genuinely un-named is narrow and technical: (i) an AI/agent engine that removes the historical labour constraint on reflexive operations, (ii) continuous closed-loop coupling to the target's reaction within one news cycle, and (iii) the contested good being **institutional behaviour** rather than belief. That leaves a **configuration claim, not the discovery of a threat class**. "Agentic threat amplification" should be presented explicitly as a coined analytic term for an AI-automated, institution-targeted configuration of reflexive control and amplification attacks — not as a novelty. Remaining gaps: primary Krepinevich/Schelling/Kahn/Snyder texts and several journal full texts were not reached; OpenAlex/S2 were rate-limited all session.
