# Self-Amplifying Attack — Prior-Art and Novelty Audit

**Compiled:** 25 September 2026 · Source annex for `../findings/01-concepts.md` §4 and `../../Agentic-Threat-Amplification-2026.md` §3.

**The claim under test.** An attack in which the attacker's action is small and the target's own reaction produces most of the damage; the target — government, media, public, institution — *is* the amplifier. Scored on three axes: **(a) deliberate** (engineered, not emergent); **(b) target-as-amplifier**; **(c) autonomous/AI engine**.

**Method and limits.** `web_search` was broken. Discovery used direct primary-source fetch, the Internet Archive/Open Library full-text book API, Crossref, arXiv, the MITRE ATLAS data file, and NIST/CISA/Cloudflare/GitHub originals. Bing, DuckDuckGo, Mojeek, HathiTrust and Google Books were CAPTCHA-walled or rate-limited; OpenAlex, Semantic Scholar and arXiv returned HTTP 429 for most of the session, so **the AI-side enumeration is incomplete** and exact-phrase negatives rest on a large book corpus plus Crossref, not a full web index. **H** = verbatim primary retrieved; **M** = reliable secondary; **UNVERIFIED** = not confirmed at source.

## 1. Military and strategic prior art

**Sun Tzu**, *The Art of War*, ch. III (Giles trans.): "supreme excellence consists in breaking the enemy's resistance without fighting" (https://www.gutenberg.org/files/132/132-0.txt, **H**). Captures (a) partly and (b) in substance, but the mechanism is the enemy's own political calculation, not an engineered overreaction.

**B. H. Liddell Hart**, *The Strategy of Indirect Approach* — the strongest *verbatim* ancestor. Full text retrieved (Internet Archive `strategyofindire035126mbp`):

- "…in almost all the decisive campaigns the **dislocation of the enemy's psychological and physical balance** has been the vital prelude to a successful attempt at his overthrow." (p. 4)
- "The perfection of strategy would, therefore, be to produce a decision without any serious fighting." (p. 190)
- "…the true aim in war is **the mind of the hostile rulers, not the bodies of their troops**." (p. 287)
- "**Self-exhaustion in war has killed more States than any foreign assailant.**" (p. 205)
- "…instead of seeking to upset the enemy's equilibrium by one's attack, **it must be upset before** a real attack is, or can be successfully, launched." (p. 182) — all **H**.

**On the popular quotation.** "The best strategy is to make the enemy defeat himself" is **not verbatim Liddell Hart**. Internet Archive full-text search returns **zero** hits for it, while a control phrase I had already retrieved verbatim ("dislocation of the enemy's psychological and physical balance") returns ~32 hits — so the search works. The maxim *form* does circulate ("allow the enemy to defeat himself," 11 hits: Slim in Burma; the Fetterman disaster), but it is a maxim, not a named concept. Treat the line as a fair paraphrase, not a citation (**H** on the negative; **M** that no edition contains it).

**Reflexive control** (see `01-concepts.md` §1.1). Lefebvre: "a process in which one adversary hands over to the other the basis for decision-making." Canonical transmission: Timothy L. Thomas, *Journal of Slavic Military Studies* 17(2), 2004, doi:10.1080/13518040490450529 (**H**). Komov's taxonomy includes **exhaustion** ("forcing the adversary to expend resources to perform unproductive activities") and **provocation** ("the imposition of an unfavorable scenario of action"). Captures (a) and (b) strongly, not (c); critics call it loosely specified and partly pseudoscientific.

**Cost imposition / offset strategy.** An offset "seek[s] to deliberately change an unattractive competition to one more advantageous for the implementer… a type of competitive strategy" (https://en.wikipedia.org/wiki/Offset_strategy, **M**). Lineage: Marshall & Roche (1976); Krepinevich; Reagan-era competitive strategies. Russian reflexive-control writing treats **SDI** as the exemplar of making an adversary spend itself. Primary texts **UNVERIFIED**.

**Nuclear strategy.** Schelling's "threat that leaves something to chance"/brinkmanship (**M**) — ambiguity is chosen, but the model predicts **restraint**, whereas this idea predicts **disproportion**. Snyder's **stability–instability paradox**, **escalation dominance** and **salami tactics** are verified at summary level (**M**). **"Self-deterrence," "fait accompli," Mao/PLA "winning without fighting," Qiao & Wang's *Unrestricted Warfare*: UNVERIFIED** here.

---

## 2. Economics and complexity prior art

**Merton's self-fulfilling prophecy — the closest general name.** Merton, "The Self-Fulfilling Prophecy," *The Antioch Review* 8(2), 1948, 193–210 (https://www.jstor.org/stable/4609267). Canonical wording, confirmed by corpus search (177/243 hits): "The self-fulfilling prophecy is, in the beginning, **a false definition of the situation evoking a new behavior which makes the originally false conception come 'true.'** The **specious validity** of the self-fulfilling prophecy perpetuates a reign of error." (**H**.) His illustration is a **bank run** — "the prophecy of collapse led to its own fulfillment." Antecedent: the **Thomas theorem** (1928), "If men define situations as real, they are real in their consequences"; Popper named it the **Oedipus effect**. **Captures (b) fully, (a) not at all: Merton has no attacker** — exactly the gap this idea fills. The mirror concept, **self-defeating prophecy**, is **UNVERIFIED** here.

**"Boomerang" and "backfire" effects — a terminology trap, not prior art.** These mean a message producing *less* of the intended effect than no message, or the reverse: Hovland, Janis & Kelley (1953); Nyhan & Reifler, *Political Behavior* 32(2), 2010, doi:10.1007/s11109-010-9112-2; largely falsified by Wood & Porter, *Political Behavior* 41, 2019, doi:10.1007/s11109-018-9453-6 (**M**). **Do not use these terms here** — they import the opposite literature and a contested effect. The relevant sense is target *overreaction*, not message failure.

**Soros's reflexivity.** *The Alchemy of Finance* (1987): prices influence fundamentals, the altered fundamentals change expectations, "thus influencing prices; the process continues in a **self-reinforcing pattern**" — two-way perception–reality feedback, tending to disequilibrium and boom-bust (**M**). Independently formalised as "reflexive prediction" by Grunberg & Modigliani and Herbert Simon (1954). **No application to security or defence was found** (**M** as a negative).

**Panics, cascades, crowds.** Diamond & Dybvig, *JPE* 91(3), 1983, doi:10.1086/261155 — panic as a **self-fulfilling bad equilibrium**, so expectation alone can destroy a solvent institution (**M**, metadata). Bikhchandani, Hirshleifer & Welch, *JPE* 100(5), 1992, doi:10.1086/261849 — **information cascades** (**M**); see also Kuran & Sunstein's **availability cascades** (`01-concepts.md` §1.3). In crowd disasters the crowd's own motion causes the deaths — Helbing, Farkas & Vicsek, *Nature* 407, 2000, doi:10.1038/35035023 ("crowd turbulence") — against the debunking of "mass panic" by Drury et al. (**M**). **Deviancy amplification** (Wilkins 1964; Young) and **moral panic** (Cohen 1972) are already correctly downgraded in `01-concepts.md` §3.

---

## 3. Security, terrorism and influence prior art

**Strategy of tension (*strategia della tensione*) — the closest *named* prior art for engineered ambiguity.** "A political policy where violent struggle is encouraged rather than suppressed. The purpose is to create a general feeling of insecurity in the population and make people seek security in a strong government" (https://en.wikipedia.org/wiki/Strategy_of_tension, **H**). Coined in *The Observer*, 14 December 1969, reporting Piazza Fontana, per Franco Ferraresi, *Threats to Democracy* (Princeton UP, 1996/97); monograph: Juan Avilés, *The Strategy of Tension in Italy* (Liverpool UP, 2021), doi:10.2307/j.ctv3029r39 (**H** via Crossref). Italian Wikipedia adds the operative clause: bombings meant to make the public "justify, request or hope for authoritarian political turns," and "committing bomb attacks and attributing their authorship to others." Vincenzo Vinciguerra, convicted for Peteano (1972), told the 1992 BBC *Operation Gladio* documentary that the state needed such attacks so people would "turn to the state and ask for security." A 2000 Italian parliamentary report held that "those massacres, those bombs, those military actions had been organized or promoted or supported by men inside Italian state institutions." **Confidence: H for the term, coinage and attributed purpose; M that a central state/NATO strategy explains the massacres; L for individual attributions.** Ganser's *NATO's Secret Armies* (2004) rests partly on US Army Field Manual 30-31B, which the State Department calls a 1976 Soviet forgery — contested. **Capture: (a) yes, (b) yes, (c) no** — and its objective was a *domestic* authoritarian turn, not a small external attacker's payoff.

**"Terrorism is theatre."** Brian Jenkins, *International Terrorism: A New Kind of Warfare* (RAND P-5261, 1974), https://www.rand.org/pubs/papers/P5261.html, frames terrorism explicitly as amplification ("the difference between the actual amount of violence and the greatly amplified effects of that violence"). The 1975 line "terrorists want a lot of people watching, not a lot of people dead" is attributed to *Will Terrorists Go Nuclear?* (RAND P-5541, 1975) (**M**; exact wording **UNVERIFIED**).**Mueller's threat inflation — the best quantified cost asymmetry.** "Six Rather Unusual Propositions about Terrorism," *Terrorism and Political Violence* 17(4), 2005, 487–505, http://politicalscience.osu.edu/faculty/jmueller/6PROPS.PDF: "**The costs of terrorism very often come mostly from the fear and consequent reaction (or overreaction) it characteristically inspires… not from its direct effects which are usually comparatively limited**"; "the costs of reaction outstripped those inflicted by the terrorists even in the case of the September 11 attacks." See also *Overblown* (2006), *The Stupidity of War* (2021). Decisively, Mueller quotes **bin Laden's own 2004 statement**: it is "easy for us to provoke and bait… All that we have to do is to send two mujahidin… to make the generals race there to cause America to suffer human, economic, and political losses." **H** on quotes and URLs; the "$500,000 → $500 billion" asymmetry is bin Laden's claim as reported by Mueller, **not an audited estimate: UNVERIFIED as accounting.**

**Overreaction economics and security theatre.** Frey, Luechinger & Stutzer, *Journal of Economic Surveys* 21(1), 2007, doi:10.1111/j.1467-6419.2007.00505.x; Enders & Sandler (CUP, 2006/2012) (**M**). Schneier, "Beyond Security Theater" (2009), https://www.schneier.com/essays/archives/2009/11/beyond_security_thea.html: "it's only our reaction to that attack that can do that kind of damage… the more we're doing the terrorists' job for them" (**M**). The **ratchet effect** (Peacock & Wiseman 1961; Higgs 1987) describes non-reversible post-crisis state growth (**M**).

**Provocation and false flag.** *Agent provocateur* — inciting an act that would not otherwise occur, to compromise a target group; the Okhrana's *provokatsiya* tradition (Azef, Malinovsky) is documented. Mukden (18 Sep 1931) is the purest documented small-incident → disproportionate-state-action case; Gleiwitz (31 Aug 1939) likewise; Operation Northwoods (1962) was a declassified *proposal*, never executed. **M**; the term is heavily contaminated by conspiracy usage. **Propaganda of the deed** has reaction logic, but the reactor is the public and the intent is emulation, not state overreaction (**M**).

---

## 4. The cyber structural analogy — amplification and reflection attacks

The best *structural* match, and the most under-used resource.

- **CISA/US-CERT TA13-088A, "DNS Amplification Attacks" (2013)**: an attacker sends a query to an open resolver "**with the source address spoofed to be the target's address**… Because the size of the response is considerably larger than the request, the attacker is able to increase the amount of traffic directed at the victim. **By leveraging a botnet to produce a large number of spoofed DNS queries, an attacker can create an immense amount of traffic with little effort.**" https://www.cisa.gov/news-events/alerts/2013/03/29/dns-amplification-attacks (**H**.)
- **NIST SP 800-189 §3.2, "Reflection Amplification Attacks"**: spoofing combined with reflection "to **multiply the attack traffic volume by a factor of 50 or more**." https://doi.org/10.6028/NIST.SP.800-189 (**H**.)
- **Cloudflare, "Memcrashed" (2018)**: "An IP-spoofing capable attacker sends forged requests to a vulnerable UDP server. The UDP server, not knowing the request is forged, politely prepares the response… allows an attacker with limited IP spoofing capacity (such as 1Gbps) to launch very large attacks (reaching 100s Gbps)." GitHub recorded **1.35 Tbps** at peak and an amplification factor up to **51,000**: https://github.blog/news-insights/company-news/ddos-incident-report/ (**H**.)

**The disanalogy, stated precisely.** In DNS/NTP/memcached amplification the **amplifier is a third party** (open resolvers), not the victim; the victim contributes only its **forged identity**. This idea puts the **target itself** in the amplifier role. "Amplification attack" therefore supplies the small-input→large-output structure and the weaponised-identity trick, but **not** target-as-amplifier.

**The closer cyber analogue is the authentication *reflection attack*.** "The essential idea of the attack is to **trick the target into providing the answer to its own challenge**" — the attacker opens a second connection, returns the target's own challenge to it, and replays the answer on the first. Sources: Tanenbaum, *Computer Networks*, 4th ed., pp. 787–790; Anderson, *Security Engineering*, 1st ed., p. 21; https://en.wikipedia.org/wiki/Reflection_attack (**H** on the verbatim definition; pagination **M**). Here the target's own output *is* the attack material — the closest structural fit in computing. **Capture: (a) yes, (b) yes, (c) no.**

**Algorithmic amplification** — systems amplifying content because engagement is the objective — is established; Chirag Shah, "Agentic Algorithmic Amplification and the Choices We Face" (SSRN 2025), doi:10.2139/ssrn.5925582, extends it to agentic systems (**H** via Crossref). That is *system* amplification, not adversary-engineered target self-harm.

---

## 5. AI/agent prior art (2024–2026) and exact-phrase mining

**The negative evidence is the most important result.** Internet Archive full-text search returns **NO RESULTS** for: "self-amplifying attack," "reaction force multiplication," "social amplification attack," "weaponised overreaction," "autonomous narrative warfare," "agentic influence operations," and "cognitive amplification attack."

**MITRE ATLAS** (https://raw.githubusercontent.com/mitre-atlas/atlas-data/main/dist/ATLAS.yaml) contains **no** technique named or described with "amplification," "reflection," "reflexive" or "cascade"; its nearest entries are **AML.T0061 "LLM Prompt Self-Replication"** and **AML.T0060 "Publish Hallucinated Entities"** (**H**). The established AI threat taxonomy therefore does **not** name the small-action / disproportionate-target-reaction pattern. OWASP LLM Top 10 and NIST AI 100-2 were **not** checked at source: **UNVERIFIED**.

**What does exist:** "algorithmic amplification"; **"agentic influence operations"**, recorded in the parent audit as the emerging adjacent term (NYT, 18 Sept 2026); "autonomous AI influence campaigns" in vendor reporting (OpenAI, Anthropic, Google TAG, 2024–26). Anthropic's September 2026 threat-intelligence report is the key first-party datum for the *capability* claim (8,913 articles in ~20 languages; "most of the content we discovered drew little or no authentic engagement"): https://www.anthropic.com/threat-intelligence-report-september-2026 (**H** as first-party disclosure).

**"Agentic threat amplification."** No external use found. It is this project's own working label, and `01-concepts.md` is right to treat it as a **configuration name, not an established concept** (**M**; search access degraded, API corpora rate-limited).---

## 6. Novelty verdict

| Candidate term | (a) Deliberate | (b) Target = amplifier | (c) AI engine |
|---|---|---|---|
| Sun Tzu, "without fighting" | partial | yes | no |
| Liddell Hart, indirect approach | **yes** | **yes** | no |
| Reflexive control | **yes** | **yes** | no |
| Cost imposition / offset strategy | **yes** | **yes** | no |
| Schelling brinkmanship | yes | partial (restraint, not disproportion) | no |
| Merton, self-fulfilling prophecy | **no** | **yes** | no |
| Soros reflexivity | no | **yes** | no |
| Diamond–Dybvig bank run | no | **yes** | no |
| Information / availability cascades | partial | **yes** | no |
| **Strategy of tension** | **yes** | **yes** | no |
| Jenkins, terrorism as theatre | yes | yes (audience) | no |
| Mueller, threat inflation | yes (observation) | **yes** | no |
| Security theatre / ratchet | no | **yes** | no |
| DNS/NTP/memcached amplification attack | **yes** | **no** (third party amplifies) | no |
| Reflection attack (auth protocols) | **yes** | **yes** | no |
| Algorithmic amplification | no | partial (system, not adversary) | partial |

**Already named** — see the table: deliberate target-self-harm (Liddell Hart, reflexive control, cost imposition, strategy of tension); the reaction as the locus of harm (Merton; Mueller); small-input→large-response weaponised (amplification attack; the authentication reflection attack); and provocation as method (*agent provocateur*, *provokatsiya*, false flag, propaganda of the deed).

**Not named anywhere found.** A single term combining (a) deliberate engineering + (b) target-as-amplifier + (c) an autonomy/AI engine, applied to **ambiguous physical incidents** and scored on **institutional behaviour rather than belief**. Specifically unnamed: "**agentic threat amplification**" and every synonym tested; the **AI-mediated reflexive control** (automated, model-free, pointed at institutions); and the **cyber→cognitive mapping** of amplification/reflection attacks onto influence (**M**; arXiv enumeration incomplete).

**Bottom line — stated plainly.** The *mechanism* is fully named and has been for decades. Depending on emphasis, this idea is Liddell Hart's indirect approach (1954), reflexive control (1960s–70s), the strategy of tension (1969), Merton's self-fulfilling prophecy (1948), or a DNS/NTP reflection-amplification attack (2013). **There is no new causal mechanism.** What is genuinely un-named is narrow and technical: (i) an AI/agent engine that removes the historical labour constraint on reflexive operations, (ii) continuous closed-loop coupling to the target's reaction within one news cycle, and (iii) the contested good being **institutional behaviour** rather than belief. That is a **configuration claim, not the discovery of a threat class**. "Agentic threat amplification" should be presented explicitly as a coined analytic term for an AI-automated, institution-targeted configuration of reflexive control and amplification attacks — not as a novelty. Remaining gaps: primary Krepinevich/Schelling/Kahn/Snyder texts and several journal full texts were not reached; OpenAlex/arXiv/S2 were rate-limited throughout, so the AI-side enumeration needs re-running with API keys.
