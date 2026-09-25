# Drone Swarms and Multi-Agent Coordination: A Sceptical Audit

**Date of assessment: 25 September 2026.** Sourcing is open-source. Every claim below is tagged **DEMONSTRATED** (independently observable event, official record, or physical evidence), **CLAIMED** (asserted by an interested party and not independently verified), or **INFERRED** (analyst extrapolation). Confidence is high/medium/low and refers to *the claim as stated*, not to the underlying technology.

**Bottom line.** Coordination of very large numbers of drones is real, cheap and solved — for pre-planned flight in benign conditions. Autonomous cooperation in contested airspace that finds and engages targets is not demonstrated by any publicly documented system. Almost every "swarm" headline from 2023–2026 collapses into one of four much weaker categories once the number of drones, the human ratio, the link assumptions and the test conditions are stated. The most consequential barrier-lowering of the last two years is not leaked swarm software; it is AI-assisted software development and theft of drone perception stacks.

---

## 1. Military swarm programmes: what was actually demonstrated

**DARPA OFFSET (2017–2021) — DEMONSTRATED, high confidence.** The programme envisioned "upwards of 250" small UAS/UGS in complex urban environments. The final field experiment (FX-6, Fort Campbell, December 2021) put **300+ total air and ground platforms** in the field across two Swarm Systems Integrators (Northrop Grumman, Raytheon BBN), used VR/AR/sketch-tablet interfaces, and ran "virtual" swarm agents alongside physical ones. A Sentien HiveXL carrier could auto-launch/recover/charge up to 80 drones. Conditions: instrumented combined-arms training facilities, not contested spectrum. DARPA's own framing was that capabilities were "rapidly nearing availability for future operations." The programme page is now marked **complete and no longer maintained** — no transitioned system is publicly named. Sources: [DARPA OFFICE programme page](https://www.darpa.mil/research/programs/offensive-swarm-enabled-tactics), [DARPA FX-6 release](https://www.darpa.mil/news/2021/offset-swarms-take-flight).

**DoD Replicator → DAWG — DEMONSTRATED as a procurement/rename story, CLAIMED as a capability.** Replicator promised thousands of attritable systems within two years, drew Hill criticism, and was folded into the Defense Autonomous Warfare Group. Adm. Paparo, December 2025: "It's alive." What "alive" means, per his own words, is wargames and simulation — "We are simulating to it. We're exercising to it, live — not in any space in the Western Pacific, but in secure spaces." A parallel Drone Dominance effort handles small drones; DAWG focuses on *larger* one-way attack drones. Source: [Breaking Defense, Dec 2025](https://breakingdefense.com/2025/12/its-alive-biden-era-replicator-drone-initiative-lives-on-as-dawg-looking-at-bigger-uass/). The recurring "swarm of attack drones" framing substantially outran delivery ([Responsible Statecraft](https://responsiblestatecraft.org/replicator/)). Replicator 2's first purchase (Jan 2026) was **counter-drone**, not swarm.

**Swarm Forge / "Crucible" (2026) — DEMONSTRATED admission of shortfall, high confidence.** The Pentagon's own CDAO solicitation states: *"The United States currently lacks the inventory and the doctrine to deploy massed, coordinated, low-cost robotic systems… The absence of integrated doctrine, training, and operational concepts for large-scale robotic employment leaves the joint force at risk."* The June 2026 Crucible required a **minimum of four UAS operating simultaneously**, with desired attributes including decentralised control, multi-class automatic target recognition, "adaptive and emergent behaviours", in-field learning and GPS-denied/EW resilience. Sources: [DefenseScoop, Mar 2026](https://defensescoop.com/2026/03/31/pentagon-preparing-drone-swarm-crucible/); [DefenseScoop, Jan 2026](https://defensescoop.com/2026/01/15/drone-swarm-forge-demonstration-us-military-camp-blanding/).

**"First kinetic drone swarm on U.S. soil" (Camp Blanding, 8 January 2026) — DEMONSTRATED, but it was four drones.** A single operator commanded **four** FPV drones (some with plastic explosive) against a column of **inflatable tanks**; one drone acted as "leader" for the other three. Official would not say whether or how AI was used. Auterion's Nemyx system was implicated. Sources: [DefenseScoop](https://defensescoop.com/2026/01/15/drone-swarm-forge-demonstration-us-military-camp-blanding/). No public evidence of a contested-environment rerun.

**UK — DEMONSTRATED at small scale, high confidence.** Dstl's Software Defined Swarms Concept Demonstrator Phase 1 (September 2026) tested two industry options — BlueBear (Saab) and the Disruptor Group led by Applied Intuition — in "realistic operational environments," building on AUKUS Pillar 2. The Swarm Capability Test Bed comprises **8 uncrewed aerial vehicles**, with eight weeks of experimentation since May 2026. Source: [GOV.UK](https://www.gov.uk/government/news/dstl-drone-swarm-accelerates-army-autonomy-ambition); [The Defense Post](https://thedefensepost.com/2026/09/18/british-army-drone-swarm/).

**China "Atlas" swarm operations system — CLAIMED with footage, medium confidence.** State media (March 2026) showed a Swarm-2 ground vehicle launching **48 fixed-wing drones** at three-second intervals, with a command vehicle controlling **up to 96** from one operator, striking one of three "visually similar" targets after autonomous identification. Source: [China Military / Global Times](http://eng.chinamil.com.cn/2025xb/C_251453/F_251462/16451202.html). Test-range conditions, staged target discriminability, state-media framing. The separate "200-drone swarm controlled by a single soldier" report is lower-grade.

**NATO:** the visible activity is maritime/robotics experimentation (REP MUS) and counter-drone work (Project Flytrap). No evidence of an operational large autonomous strike swarm.

---

## 2. Wartime "swarm" claims

**Israel/Gaza 2021 — CLAIMED as "world's first AI-guided combat drone swarm"; the contemporaneous sceptical reading is better evidenced.** New Scientist, Times of Israel and Forbes ran the swarm framing. Defense One's analysis (July 2021) concluded reporting "does not suggest the IDF deployed any particularly sophisticated capability. It seems a small number of drones manufactured by Elbit Systems coordinated searches," used with mortars and ground-based missiles, with data relayed to an app — and that *"there is no indication the swarm made autonomous decisions on who to kill."* Source: [Defense One](https://www.defenseone.com/ideas/2021/07/israels-drone-swarm-over-gaza-should-worry-everyone/183156/). **Demonstrated:** coordinated search/strike package. **Not demonstrated:** autonomy, scale, emergent cooperation. Confidence in the debunk: high.

**Ukraine — mass raids are real; "swarms" mostly aren't.** Operation Spiderweb (1 June 2025) put roughly **100 small drones** onto Russian airbases across several time zones, launched from trucks smuggled inside Russia ([Lieber Institute, Jul 2026](https://lieber.westpoint.edu/whose-decision-was-it-drone-swarms-accountability-gap-ukraine/)). The achievement was logistics, concealment and pre-programmed terminal attack — not inter-drone cooperation. FT ("Ukraine's drone swarms test Moscow air defences," Jul 2026), The Atlantic (Aug 2026) and Forbes (May 2026) lean on Ukrainian official framing that is not independently verifiable in wartime. **Inferred:** most 2026 "swarm" reporting describes large simultaneous raids of *individually tasked* drones — category (b) at best. Treat all 2026 "swarm in Ukraine" claims with explicit scepticism.

**Lancet-on-Kyiv "AI swarm tech" (16 March 2026) — INFERRED from debris markings; low confidence.** Defense Express deduced "swarm use, autonomous navigation, target search and strike without operator connection" largely from **coloured circle markings** on wreckage, and conceded the 200 km+ range was "an open question." A Ukrainian MoD adviser countered that no Lancet can reach Kyiv and suggested the debris was dropped from a Shahed as an information operation. Source: [Defense Express](https://en.defence-ua.com/news/russia_drops_kamikaze_drone_on_central_kyiv_using_ai_swarm_tech_debate_erupts_over_200km_range_mystery-17845.html). This is inference presented as evidence, by both sides.

**Russia V2U — the strongest autonomous-drone evidence, medium confidence.** CSIS (April 2026) reports that Ukrainian technical analysis of intercepted V2U airframes found **no communication components required for operator control** alongside onboard computing sufficient for AI perception, with observed autonomous flight in denied environments, independent target selection, and coordinated group activity using **visual markings** for "swarm-like coordination." CSIS concludes Russia has "likely fielded a fully autonomous unmanned system in combat." Note the hedges: "swarm-like", single-source intercept analysis. Source: [CSIS](https://www.csis.org/analysis/how-russia-building-sovereign-drone-ecosystem-ai-driven-autonomy).

---

## 3. The terminology problem

| Category | What it requires technically | Best public evidence | Status |
|---|---|---|---|
| **(a) Pre-programmed simultaneous flight, fixed trajectories** | Time-synchronised clocks (GNSS/RTK), pre-computed deconflicted paths, near-zero uplink per vehicle | 22,580 UAVs (EHang, Feb 2026) | **Solved, commodity, civil** |
| **(b) Centrally controlled many-drone ops, one operator** | Continuous command link with adequate bandwidth/latency, telemetry aggregation, one UI | 4 FPV drones (Camp Blanding), 8 UAVs (UK), 6 KARGU (Turkey), 96 claimed (China Atlas) | **Demonstrated at single/low double digits** |
| **(c) Decentralised autonomous cooperation, task allocation, collision avoidance** | Inter-agent comms *or* onboard sensing, consensus/task allocation, deconfliction, shared situational awareness | OFFSET FX-6 partial; vendor demos on instrumented ranges | **Partial, demonstration-only** |
| **(d) Adaptive swarms reacting to a threat** | Perception + classification in clutter + re-planning + rules of engagement | None public | **Aspirational** |

The honest human-factors anchor is old and unhelpful to vendors: a 2008 study found **one operator could handle only about four drones** before mission effectiveness degraded; by 2018 DARPA was demonstrating neural-interface control of a swarm as the workaround. Vendor claims of "hundreds of UAVs" describe architecture capacity, not demonstrated simultaneous tactical control under jamming. **DoD's own 2026 solicitation asks for category (c)/(d) behaviour with a four-UAS minimum — that is the tell.**

---

## 4. Light shows: the accessible end of multi-drone coordination

- **Scale (DEMONSTRATED):** China 15,947 drones (Liuyang, Oct 2025); **EHang 22,580 GD4.0 UAVs** at the Spring Festival Gala (Feb 2026), a Guinness record — operated by a commercial eVTOL/drone company, not a defence prime ([EHang](https://news.google.com/rss/articles/CBMiTEFVX3lxTE1JblU5elJBcFNRdUlIaFBmZ0IxU1ZheEZ1dE45eE1JQkxXbU9KWnAxMi1ReUdValFtNTdQNGJVaXNsd0dTTkpsLXQ1dXg?oc=5)).
- **Cost (DEMONSTRATED):** DIY build ≈ **$1,000/drone** (PiHawk kit $899 + LEDs + RTK); UVify IFO ≈ **$1,700/drone** including ground control, software, support; DroneBlocks kit $7,500 for 10; commercial shows from **$15,000**. Source: [The Drone Girl](https://www.thedronegirl.com/2024/04/10/drone-light-show-kit/).
- **Open source (DEMONSTRATED):** **Skybrush** (CollMot, Budapest) is open-core under **GNU GPL v3** with source for Live, Server, Studio-for-Blender and Viewer on GitHub, plus forked Crazyflie/ArduCopter firmware. The **free community edition is capped at 10 drones**. Skybrush Live 2.14 (Sept 2026) added "collective RTH" — coordinated, collision-free show termination. Sources: [Skybrush](https://skybrush.io/), [Skybrush DIY](https://skybrush.io/diy/), [GitHub](https://github.com/skybrush-io).
- **How much is commodity:** essentially all of category (a) and the operator UX. What light shows do *not* contain: perception, target classification, task allocation under uncertainty, or contested-comms resilience. **Accessibility to non-state actors: high** for (a)/basic (b); the binding constraints are regulatory (BVLOS/waivers, Part 107) and RF spectrum, **not technical skill**.

---

## 5. One operator, many systems: the honest ratio

- **Auterion Nemyx:** single operator commanding three different FPV types with kinetic payloads, near-simultaneous strike (Camp Blanding, Jan 2026); Janes reported the architecture is "capable of supporting hundreds of UAVs" — a **capacity claim, not a control demonstration** ([Inside Unmanned Systems](https://insideunmannedsystems.com/), [Janes](https://www.janes.com/)).
- **Shield AI** selected to integrate swarm software into the LUCAS one-way attack drone (May 2026); **Anduril Lattice for Mission Autonomy** (2023) and Lattice for Army IBCS-Manuever (Nov 2025) — programme wins, not fielded swarm proof.
- **Helsing HX-2:** Bloomberg reported Ukraine and Germany **paused further orders after technical issues** (Jan 2026); Helsing disputed it ([The Defense Post](https://thedefensepost.com/)). Helsing's own Lithuania wargame concluding HX-2 "could prevent the fall of Vilnius" is **vendor-run analysis — marketing, not evidence**. The 88% effective-hit figure from Lithuanian exercises is company-sourced.
- **Swarmer** (Ukraine-born swarm-autonomy software) IPO'd on Nasdaq in March 2026 and rose 450–520% on debut. That signals commercial appetite, **not** verified capability.
- **Legal/practice reality:** Lieber Institute (Aug 2026) states the requirement for a human to approve every lethal engagement is *"effectively dead"* in practice — while US solicitations simultaneously insist on "meaningful human command."
- **Assessment:** sustained 1:N tactical control above single digits in contested EW is **unproven publicly**. Treat every "one operator, hundreds of drones" headline as architecture marketing until the number of simultaneously controlled, reacting vehicles and the link conditions are specified.

---

## 6. Communications: the constraint that decides everything

Category (b) needs a continuous link — precisely what is jammed first. Category (c)/(d) trades link dependence for onboard compute, which costs payload, endurance and money. Light shows achieve 22,580 vehicles by making per-drone uplink **near zero** (timing plus a preloaded trajectory). A hundred drones each streaming video in one urban grid is a spectrum and bandwidth problem, not an AI problem.

The Pentagon's own requirements acknowledge this: Swarm Forge demands visual/inertial navigation and resilient comms for GPS-denied and EW environments, "mindful that adversaries might employ jamming tactics, as seen during the Ukraine-Russia war." Mesh and anti-jam claims (e.g. Skydagger Toyca 05, Nov 2025) are **vendor-grade**. Urban clutter adds multipath, GNSS degradation, civilian RF congestion and ROE constraints on autonomous engagement.

**Consequence:** Ukrainian mass raids work because each drone is individually tasked and expendable — one-way, single-use — not because they cooperate. That is the honest state of "swarm" warfare today.

---

## 7. The gap between a light show and a target-finding swarm

Air-show logic is deterministic, GNSS/RTK-anchored, pre-flown, adversary-free, perception-free and ROE-free. A swarm that finds and engages in cluttered civilian terrain needs automatic target recognition with tolerable false-positive rates, re-identification, dynamic deconfliction with non-combatants, and comms resilience. DoD's Swarm Forge asks for multi-class ATR with dynamic operator control and in-field learning — **an admission the problem is open**. The two most-cited Western demonstrations used **inflatable tanks on a range** (Camp Blanding) and **three visually similar targets** with a designed-in command vehicle (China Atlas). That is staged discriminability, not clutter. **Confidence: high** that no publicly documented system closes this gap at scale; **medium** regarding classified state.

---

## 8. Leakage, open-sourcing and commercial repurposing

- **Open-source coordination (DEMONSTRATED):** Skybrush GPL v3; ArduPilot/PX4 and MAVLink as the de facto open autopilot stack; published DIY light-show build guides; Chinese researchers released open-source flight-control software for "bamboo drones" (Apr 2026). None of these provide perception or contested autonomy.
- **The real barrier-lowering is AI uplift (DEMONSTRATED, high confidence).** Anthropic's September 2026 threat report describes a Russian-linked freelance group (GTG-27005) using Claude to build a small model for single-board computers enabling a drone to **select targets (including a "person" class) and issue detonation commands without a human in the loop**, plus software letting autonomous drones **communicate with each other to improve targeting**. It was hardware-in-the-loop tested, **not fielded**. Anthropic also disrupted Chinese and Yemeni groups working on conventional weapons. Source: [Anthropic](https://www.anthropic.com/threat-intelligence-report-september-2026); [Defense One](https://www.defenseone.com/technology/2026/09/russia-weaponizing-us-built-ai-make-killer-drones-cyberattack-bots-and-fake-news/415949/). Caveat: the "swarm" element here is drone-to-drone comms as a *targeting aid* — not demonstrated emergent coordination. Do not over-read it.
- **Theft of the perception stack (DEMONSTRATED):** the same report documents Russian espionage group GTG-20006 stealing a **complete proprietary software development kit for a drone vision system**, reverse-engineering its architecture, bill of materials and supplier dependencies, and bulk-exporting mailboxes from at least two drone component manufacturers.
- **Component dependency:** CSIS found that **over 50%** of AI-enabling components recovered from Russian unmanned systems originate from US-headquartered firms (≈69% of memory, 57% of processors, 38% of sensors); China supplies under 9%. Commercial dual-use electronics remain the backbone despite sanctions.
- **Accessibility to non-state actors:** **high** for show-grade coordination; **medium** for autonomy/ATR (needs data, hardware, iterative testing); **rising** wherever a frontier model can substitute for scarce engineering skill.

---

## 9. Country claims, assessed

| Actor | Claim | Verdict | Confidence |
|---|---|---|---|
| **Russia** | V2U fully autonomous, group-coordinated | Strongest evidence base; single-source intercept analysis; "swarm-like" not swarm | Medium |
| **Russia** | Lancet AI swarm in central Kyiv, 200 km+ | Inference from debris markings; officially disputed; range unresolved | Low |
| **Ukraine** | Swarms striking Moscow, Spiderweb | Mass raids and smuggling logistics real; adaptive cooperation not evidenced | High (raid) / Low (swarm) |
| **China** | Atlas: 96 drones, one operator, autonomous target pick | Footage exists; test-range, staged discriminability, state media | Medium |
| **China** | 22,580-UAV show proves swarm capability | Real coordination, **category (a) only**; not military capability | High (show) / Low (inference) |
| **Turkey** | STM KARGU live-fire swarm, 3 targets, one operator, distributed, no central node | Most concrete live-fire "swarm strike"; state-owned vendor; "no central node" inconsistent with a single operator | Medium-High (event) / Low (architecture) |
| **Turkey** | Baykar Sivrisinek 10-drone GPS-denied swarm | Test footage; V-formation; press applied the swarm label | Medium-Low |
| **India / Germany / UK** | ARMANET, STARK, Swarms CD | Demonstration/claim stage | Medium |

---

## What is genuinely accessible, and to whom

- **Show-grade coordination (a)/(b):** commodity, ~$1,000–1,700 per drone, open-source tooling with a 10-drone free tier. Barriers are regulatory and spectrum-related. Reachable by a well-funded individual or small group.
- **Autonomy and target recognition:** gated by data, compute, testing and iteration — but AI assistance and theft of vision SDKs are measurably eroding that gate. Reachable by a state or state-adjacent group today; plausibly reachable by a capable non-state actor within the assessment horizon.
- **Adaptive, contested-environment lethal swarms (d):** not publicly demonstrated by anyone, including the United States.

**Name the hype:** "swarm" is routinely used for (i) four drones on a range, (ii) a mass one-way raid of individually tasked drones, and (iii) a 22,580-drone light show. None of those is a swarm in the militarily meaningful sense. The programmes that would know — DARPA OFFSET, Replicator, Swarm Forge — are the same programmes whose own documents say the inventory, doctrine and control concepts do not yet exist.

---

## Source URLs

1. https://www.darpa.mil/research/programs/offensive-swarm-enabled-tactics
2. https://www.darpa.mil/news/2021/offset-swarms-take-flight
3. https://www.darpa.mil/news/2020/offset-swarm-urban-raid
4. https://breakingdefense.com/2025/12/its-alive-biden-era-replicator-drone-initiative-lives-on-as-dawg-looking-at-bigger-uass/
5. https://responsiblestatecraft.org/replicator/
6. https://defensescoop.com/2026/01/15/drone-swarm-forge-demonstration-us-military-camp-blanding/
7. https://defensescoop.com/2026/03/31/pentagon-preparing-drone-swarm-crucible/
8. https://defensescoop.com/2026/08/14/northcom-general-warning-weak-drone-defense-homeland/
9. https://defensescoop.com/2026/05/20/pentagon-selects-shield-ai-to-plug-swarm-software-into-lucas-drone-company-says/
10. https://www.gov.uk/government/news/dstl-drone-swarm-accelerates-army-autonomy-ambition
11. https://thedefensepost.com/2026/09/18/british-army-drone-swarm/
12. http://eng.chinamil.com.cn/2025xb/C_251453/F_251462/16451202.html
13. https://www.defenseone.com/ideas/2021/07/israels-drone-swarm-over-gaza-should-worry-everyone/183156/
14. https://en.defence-ua.com/news/russia_drops_kamikaze_drone_on_central_kyiv_using_ai_swarm_tech_debate_erupts_over_200km_range_mystery-17845.html
15. https://www.csis.org/analysis/how-russia-building-sovereign-drone-ecosystem-ai-driven-autonomy
16. https://lieber.westpoint.edu/whose-decision-was-it-drone-swarms-accountability-gap-ukraine/
17. https://lieber.westpoint.edu/beyond-human-loop-battlefield-maps-drone-autonomy/
18. https://skybrush.io/
19. https://skybrush.io/diy/
20. https://github.com/skybrush-io
21. https://www.thedronegirl.com/2024/04/10/drone-light-show-kit/
22. https://www.anthropic.com/threat-intelligence-report-september-2026
23. https://www.defenseone.com/technology/2026/09/russia-weaponizing-us-built-ai-make-killer-drones-cyberattack-bots-and-fake-news/415949/
24. https://thedefensepost.com/2026/02/03/turkey-swarm-drone-test/
25. https://thedefensepost.com/2026/04/28/baykar-mosquito-swarm/
26. https://thedefensepost.com/2026/03/17/baykar-swarm-k2/
27. https://thedefensepost.com/2026/05/06/germany-ai-drone-stark-trial/
28. https://thedefensepost.com/2026/09/07/india-drone-swarm-system/
29. https://thedefensepost.com/2026/05/06/germany-ai-drone-stark-trial/
30. https://news.google.com/rss/articles/CBMiTEFVX3lxTE1JblU5elJBcFNRdUlIaFBmZ0IxU1ZheEZ1dE45eE1JQkxXbU9KWnAxMi1ReUdValFtNTdQNGJVaXNsd0dTTkpsLXQ1dXg?oc=5 (EHang 22,580-UAV record)
