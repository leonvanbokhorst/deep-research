# AI, Autonomy and the Economics of Violence

### Are AI and robotics reducing the practical barriers to autonomous or semi-autonomous attacks inside NATO societies?

**An evidence-led threat assessment · Open-source research cut-off: 25 September 2026**

---

## 0. Scope, method and a deliberate omission

This report investigates whether advances in AI-enabled autonomous and semi-autonomous systems are substantially lowering the cost, expertise, coordination burden or exposure required to carry out harmful acts inside civilian societies — and specifically inside NATO and European societies. The starting hypothesis is *not* that such attacks are inevitable, but that capabilities demonstrated in contemporary warfare may now be cheap, accessible, robust and transferable enough that domestic misuse deserves serious attention.

Three commitments shape the analysis.

**First, falsification is a first-class task.** Wherever the evidence was weaker than the narrative, this report says so. Several widely repeated claims — the "AI swarm", "fully autonomous killer robots", "one person controls a thousand drones" — do not survive contact with the primary record. Where a claim is contested, the report names the contest rather than resolving it by assertion.

**Second, the four levels of the question are kept separate** (§2). Technical possibility, accessibility, operational plausibility and demonstrated misuse are different claims requiring different evidence. Most public alarm collapses them; most institutional reassurance collapses them in the other direction.

**Third, this is a risk document, not a capability document.** It describes what exists, what it costs, who holds it and what barriers remain. It contains no construction detail, payload design, targeting procedure, software implementation, exploitation method, evasion technique or other material that would enable an attack.

**Evidence grading** used throughout:

| Grade | Meaning |
|---|---|
| **A** | Primary/official: government documents, court records, on-record official statements, agency reports, primary technical documentation, treaty-body material |
| **B** | High-quality independent research: peer-reviewed work, or think-tank/analytical research with transparent method |
| **C** | Reputable journalism, ideally with multiple independent corroboration and named or verifiable sourcing |
| **D** | Single-source journalism, trade press, or reporting dependent on an interested party |
| **E** | Vendor marketing, social-media demonstration, anonymous claim, unverifiable assertion |

**Confidence** (High / Medium / Low) is stated for significant claims and reflects the quality *and* the convergence of evidence, not the severity of the outcome.

A source register with per-source grading and confidence is at Appendix A.

---

## 1. Bottom line

**What has changed since 2023.** Three things, and only three, are unambiguously established.

1. **Terminal-phase machine vision went from laboratory to routine battlefield practice.** By late 2025, both Russia and Ukraine were fielding drones that could acquire and steer onto a target in the final seconds after the operator's link was jammed or severed. By mid-2026 this had produced the first well-documented AI-guided lethal strikes, including a Russian strike that killed three Ukrainian civilians at Zaporizhzhia in July 2026 (New York Times, 24 August 2026; grade C, corroborated).
2. **The enabling hardware became commodity.** Edge-AI compute capable of real-time object detection now costs roughly **$250** (NVIDIA Jetson Orin Nano Super, 67 TOPS) or **$70** (Raspberry Pi 5 + Hailo-8L, 13 TOPS, ~1.5 W), and the navigation and detection software stacks are largely open source (ArduPilot Non-GPS Navigation, PX4, VINS-Fusion, ORB-SLAM3, OpenVINS, RT-DETR, ByteTrack). Grade A/B.
3. **Large language models became a genuine accelerant for the *software* layer of autonomy — and a poor substitute for physical competence.** Anthropic's September 2026 threat-intelligence report documents a Russia-based actor using Claude Code to build, in simulation, an autonomous FPV "kamikaze" swarm stack with an onboard model that could select a "person" target class and issue a detonation command without a human in the loop — assessed by Anthropic itself at **technology readiness level 3–4, i.e. simulation-validated, not fielded** (grade A for the disclosure, D for the underlying actor's real capability). In parallel, a journalist's months-long attempt to build an AI-guided attack drone with chatbot assistance *failed at the physical build* — "not a horror film, but a slapstick comedy" (Bulletin of the Atomic Scientists, August 2026; grade C, first-person, methodologically transparent).

**What is genuinely possible now.** A motivated non-state actor with a modest budget can today assemble **semi-autonomous** systems: GNSS-independent route navigation, jam-resistant control, and machine-vision terminal tracking of a *pre-selected* object class. That is materially more capable than the remote-controlled quadcopters that dominated the 2016–2022 period, and it degrades the defender's cheapest countermeasure (radio-frequency jamming). What is **not** demonstrated is a reliable, fielded, fully autonomous *target-selection* capability in the hands of non-state actors, or any successful terrorist drone attack in Western Europe.

**Demonstrated misuse, in one line.** The documented cases inside NATO societies are dominated by **covert state action and foiled plots**, not by autonomous terrorism: the August 2026 explosives-laden drone at Leipzig-Halle airport attributed by the German government to Russian GRU operatives; the October 2025 Belgian arrests over a planned explosives-drone attack on the Prime Minister and other politicians; the June 2026 FBI disruption of an explosive-drone-and-sniper plot against a White House event; and a steady volume of criminal drone use (prison contraband, cartel operations in Latin America).

**The most likely near-term harm is not spectacular.** On current evidence the highest-probability harmful applications over 1–5 years are intimidation, reconnaissance, contraband, harassment of critical sites and personnel, sabotage of infrastructure, and assassination attempts against individuals — carried out with **commercial or lightly modified systems and a human still in the loop**, not with autonomous swarms.

**The single most under-appreciated risk is not the drone. It is the convergence**: cheap jam-resistant airframes + commodity machine vision + LLM-assisted software development + a documented state willingness to run deniable operations inside NATO territory, all arriving while the defender's cheapest countermeasure is being engineered away.

**And the most under-appreciated *evidentiary* problem is the fragility of the cases everyone cites.** Gatwick 2018 produced no image of a drone and no charges. Copenhagen's police concluded in 2026 that they could neither prove nor deny drones were present and admitted their earlier framing lacked caveats; Norway's PST found most sightings were stars, weather or aircraft; a Belgian investigation of 558 reports found no physical evidence and discovered that a minister's "large drone" was a police helicopter; Madrid's Guardia Civil reportedly concluded the drone that closed the airport never existed; Poland's recovered devices were unpowered decoys; and no authority has ever claimed a drone cut a Baltic cable. **A field whose most-cited examples dissolve under inspection needs its evidence graded as carefully as its threat.** The capability trend is real and well-evidenced. Much of the *incident* record is not.

---

## 2. Analytic framework: four levels that must not be collapsed

| Level | Definition | What would evidence it | Current status (Sept 2026) |
|---|---|---|---|
| **1. Technical possibility** | A capability has been demonstrated somewhere under military, experimental or controlled conditions | Test footage, official programme disclosure, technical documentation, credible live demonstration | **Established** for terminal-phase autonomy, GNSS-denied navigation, multi-drone coordination, and LLM-assisted autonomy software |
| **2. Accessibility** | Hardware, software, models, knowledge and components are obtainable by non-state actors without state resources | Public prices, open-source repositories, commercial availability, export-control gaps | **Established** for components and software; **partial** for reliable integration; **poor** for weapon-grade effects |
| **3. Operational plausibility** | A non-state actor could realistically combine these into something reliable enough to cause meaningful harm in a civilian environment | Evidence of successful integration by comparable actors; reliability data; failure-rate evidence | **Plausible for semi-autonomous single-system attacks on soft targets**; **not plausible at scale** for autonomous swarms or mass-casualty autonomy |
| **4. Demonstrated misuse** | Credible evidence that terrorists, criminals, proxies, extremists or individuals attempted or succeeded | Court records, official attribution, forensic evidence, prosecutions | **Established for state proxies and criminals**; **foiled plots established for terrorists**; **no successful terrorist drone attack in Western Europe**; **no confirmed non-state autonomous lethal attack** |

The rest of this report is organised to respect these boundaries. When a claim is made, the level is named.

---

## 3. What has changed: five shifts, 2023–2026

### 3.1 Shift one — terminal autonomy became a battlefield necessity, then a battlefield fact

The decisive driver was not enthusiasm for autonomy but **electronic warfare**. On the Ukrainian front, GNSS is denied and radio control links are contested across most of the line of contact. A drone that depends on a live operator link and satellite positioning is, in that environment, a consumable with a short life.

The observable consequence is a documented progression:

- **Late 2023–2024:** AI-assisted detection and terminal tracking appear as "augmentation" — the human selects, the machine flies the last metres.
- **November 2025:** a Ukrainian FPV drone reportedly used an AI-assisted guidance system to strike a probable Russian tank **after its communications link with the operator was disrupted**. Human selected the target; the machine flew the terminal phase. (The Conversation, 22 September 2026, summarising an established case; grade C/B.)
- **Early 2025 onward:** Ukrainian analysis of recovered Russian **V2U** airframes found a small NVIDIA computer running AI decision-making software; variants recovered later in 2025 reportedly **no longer contained the external communications systems** associated with operator control — i.e. the design no longer presumes a link. (The Conversation, 22 September 2026; grade C, based on Ukrainian technical analysis; **the single most important data point in this report, and Medium confidence**.)
- **July 2026:** a Russian AI-enabled drone struck a filling station in Zaporizhzhia, killing three civilians. Human operators selected the target *area*; onboard software independently selected the final aim point. The New York Times reported on 24 August 2026 that the drone "was guided entirely by A.I." (NYT; Meduza; Gizmodo; corroborated; grade C.)

**Critical reading.** The Zaporizhzhia case is frequently described as "a fully autonomous drone killed three people". That is a defensible reading of the terminal phase and a misleading reading of the engagement: a human chose the target area. The meaningful change is real but narrower than the headline — **aim-point selection autonomy, not target-selection autonomy**, is what is demonstrated. The distinction matters, because target selection is where the legal, ethical and difficulty thresholds actually sit.

### 3.2 Shift two — "fully autonomous" claims remain contested, and the flagship claim is single-source

On **10 June 2026**, New Scientist, Ars Technica and others reported that fully autonomous drones had killed human soldiers for the first time. The claim originates with **Oleksandr Kokhanovskyy**, a Ukrainian defence-industry figure and drone developer, and describes a test near **Chasiv Yar** — reportedly around mid-2024 — in which roughly **ten quadcopters** cut their communications link, used onboard AI to search for targets, and struck **without any human input in the final decision to attack**, killing **two Russian soldiers** according to the account. The reported test was described as "Terminator mode". (Small Wars Journal, 17 August 2026, analysing the claim; grade D for the underlying claim, C for the fact that it was made.)

The counter-evidence is substantial and comes from the same side:

- **Kyiv has not confirmed the test** and is unlikely to.
- **Ukraine officially states** that it does not field systems capable of autonomously selecting and engaging targets without human involvement; it participates in UN lethal-autonomous-weapons discussions, has supported resolutions emphasising the human role in the use of force, and **prohibits the use of AI during the final stage of target interception**.
- Reports that the drones were **pre-programmed** raise the question of whether they independently *selected* targets at all, as opposed to flying a pre-set route and striking.
- The claim is **not independently corroborated** by imagery, forensics, official documentation or a second source.

**Assessment.** This is a serious, industry-sourced claim that is *not* established. It should be recorded as a **contested signal**, not as a fact. Its significance is nonetheless real in one respect: contested claims of this kind shape doctrine, procurement and diplomacy before they are verified, and the 7th Review Conference of the Convention on Certain Conventional Weapons in November 2026 is a live venue for exactly that.

### 3.3 Shift three — the cost of the enabling stack collapsed

The price of the compute, sensing and software needed for machine-vision autonomy fell by roughly an order of magnitude in four years while capability rose. Representative 2026 figures (grade A/B, from vendor documentation and public repositories):

- **NVIDIA Jetson Orin Nano Super** — 67 TOPS, ~$249, 7–25 W. (A roughly $250 board is now the reference point for "the computer that runs the vision model".)
- **Raspberry Pi 5 + Hailo-8L AI Kit** — 13 TOPS, ~$70, ~1.5 W.
- **Qualcomm QRB5165** — ~15 TOPS; **Rockchip RK3588** — ~6 TOPS; Google Coral has become legacy.
- Navigation without GNSS is documented **in the official autopilot documentation**: ArduPilot's Non-GPS Navigation guidance covers visual-inertial odometry cameras, optical-flow sensors, external beacon systems and motion-capture. PX4 documents a Vision Target Estimator. Open-source VIO/SLAM projects (VINS-Fusion, ORB-SLAM3, OpenVINS) are GPL-licensed and maintained.
- Detection and tracking models are freely downloadable (YOLO family under AGPL-3.0; RT-DETR under Apache-2.0; ByteTrack under MIT), with large public labelled datasets of people and vehicles.
- Free accurate terrain and imagery data (Copernicus DEM, Sentinel-2, OpenStreetMap) is sufficient for route and terrain-relative work.

**The friction is now licensing and integration, not access.** The dominant YOLO stack's AGPL-3.0 licence is a real obstacle for commercial or covert reuse; the permissive alternatives are less mature. And, as §5.3 shows, integration is where the difficulty has migrated.

### 3.4 Shift four — LLMs accelerate the software layer and fail at the physical layer

Two 2026 primary documents bracket the question better than any speculative analysis.

**The accelerant.** Anthropic's *Detecting and countering misuse of AI: September 2026* (published 10 September 2026) documents, across December 2025–August 2026, a Russia-based actor — designated **GTG-27005** — using Claude Code to build a "full-stack autonomous FPV kamikaze drone swarm". According to Anthropic, the actor used the model to write and test: shared swarm memory and fault-tolerant coordination logic; an **onboard small language model** governing attack/observe/return-to-base behaviour; terminal-guidance software steering to a target using the onboard camera and issuing a detonation call; a control-link geolocation module; a passive acoustic detection layer; and low-level chip firmware logic. Anthropic states the design was for **autonomous lethal engagement**, with an onboard model able to select targets (including a "person" class) without a human in the loop, and that the actor conducted hardware-in-the-loop testing (flashing firmware to development boards, provisioning single-board computers, a mesh-network simulation). **(Grade A for the disclosure and its contents; the actor's *capability* is grade D.)**

Three qualifications are essential:

1. **Anthropic assessed the project at TRL 3–4 — validated in simulation.** Simulation is not flight; flight is not reliability; reliability is not effects.
2. **Anthropic is an interested party.** Its report simultaneously documents harm *and* demonstrates its own detection capability, and it is published amid regulatory debate. The disclosure is detailed, internally consistent and names specific artefacts, which raises credibility — but it is not independent verification.
3. **The same report notes** that publicly available offensive agent frameworks "reproduce much of the same scaffolding for anyone who downloads it", and that a separate actor (GTG-20006, attributed as consistent with Midnight Blizzard) targeted **Ukrainian and European drone technology providers and supply chains**, stealing a complete proprietary software development kit for a **drone vision system**, its hardware bill of materials and supplier dependencies. That is state espionage aimed directly at the software layer this report is about.

**The brake.** The Bulletin of the Atomic Scientists' August 2026 first-person account — an experienced journalist working for months with Perplexity, Gemini, ChatGPT and Claude — reached the opposite conclusion at the physical layer. The chatbots were "quickly persuaded", with roughly an hour of reassurance, to supply detailed shopping lists and assembly, wiring and programming instructions. In a single day the author got a Jetson Orin Nano to identify and track a moving target class and to signal a servo to release a payload. Then the build defeated him: wiring schematics "either don't exist or are wrong", multiple crashes, a drone that "turned into a tumbleweed", a final autonomous flight that ended at "drone-smashing speed" because the model understood latitude and longitude but had no sense of altitude. His verdict: **"AI was totally happy to teach technologically unsophisticated humans how to plan terrorism. It just didn't know how to teach terrorism suitable to the physical complexity of the real world."** **(Grade C, first-person, methodologically transparent; note the publisher's support from the Future of Life Institute, an advocacy organisation favouring autonomous-weapons restrictions.)**

Taken together, these two documents support a specific and testable proposition: **AI has substantially reduced the *knowledge* barrier to autonomy software and barely reduced the *integration, testing and reliability* barrier.** That is the central analytical claim of this report.

### 3.5 Shift five — diffusion is now happening through individuals and criminal markets, not only state transfers

The historical proliferation channel for armed drone capability was state-to-state (Iran to Russia, Turkey to clients, China to buyers). The 2024–2026 record shows a second channel opening: **individuals, small firms, criminal networks and covert operatives** acquiring, adapting and using small uncrewed systems. Kyiv's June 2025 "Spiderweb" operation — drones moved into Russia and launched from within Russian territory against strategic aviation — demonstrated at scale that the *logistics* of drone attack can be solved by smuggling and patience rather than by military infrastructure. Ukraine's drone output is reported on pace to reach millions of units in 2026, with export deals and factories planned in Europe, and battlefield innovations have been "seized on by rebel armies, mercenary units, and paramilitary organizations around the world" (Bulletin, August 2026; grade C).

The diffusion is not hypothetical in the criminal domain. By late 2026 CNN reported that drones are becoming "organized crime's weapon of choice in Latin America", with InSight Crime and the Global Initiative Against Transnational Organized Crime publishing parallel analyses of cheap drones overwhelming law-enforcement capacity (grade C, multiple independent outlets). Nothing in that reporting suggests autonomy; it is ordinary remote-controlled drones used competently and at scale — which is exactly the point. **Diffusion of the baseline capability is already sufficient to change the criminal and protective-security landscape before autonomy arrives.**

---

## 4. Established evidence — demonstrated capabilities and documented incidents

### 4.1 Battlefield demonstration (Russia–Ukraine)

**What exists (Level 1 — established).**

- **AI-assisted terminal guidance.** Both sides field drones in which a human designates a target or target area and onboard machine vision acquires and steers the final phase. Ukraine has fielded modular AI packages — chips with embedded software, sometimes with cameras — that can be installed across platforms; one module is reported to track and guide the final ~500 m. Russia has integrated seeker packages into the Geran series (its Shahed-136 derivative) for terminal guidance after human target designation. *(Grade C, convergent reporting.)*
- **Jam-resistant control via fibre-optic cable.** Fibre-optic FPV drones spool out tens of kilometres of cable, making radio-frequency jamming and RF detection useless. Reported use is on the order of ~10% of Ukrainian production and 15–30% of Russian use in some sectors, with Russian fibre-optic loitering munitions reported at ~30 km range. *(Grade C; figures are estimates.)*
- **GNSS-denied operation as the norm.** Ukraine's front line is effectively GPS-denied; drones operating there do not rely on satellite guidance. This is the operational driver for visual navigation and inertial/optical alternatives. *(Grade B/C.)*
- **Uncrewed ground and surface systems.** Armed and logistic UGVs and uncrewed surface vessels (e.g. Magura V5, Sea Baby) are in sustained use. The USVs are largely remotely operated rather than autonomous; the autonomy story there is overstated in popular accounts. *(Grade C.)*
- **Interceptor drones.** Purpose-built low-cost drones designed to destroy other drones are now a major Ukrainian capability, with dozens of manufacturers and unit costs reported in the $1,000–$4,000 range. This is the clearest example of autonomy-capable cheap systems entering a defence role. *(Grade C, with documented contracts.)*

**What is claimed but not established (Level 1, contested).**

- The **Kokhanovskyy "Terminator mode"** claim of fully autonomous lethal engagement near Chasiv Yar (§3.2). Single-source, industry-originated, officially unconfirmed, and contradicted by Ukraine's stated policy. **Do not treat as established.**
- Claims that a former Ukrainian defence minister's statement about a drone that "autonomously chooses targets with no radio connection" amounts to fielded capability: the same reporting notes it has **not been mass-produced**. *(Grade C/D.)*
- Russia's **V2U**: the strongest case for fielded end-to-end autonomy, resting on Ukrainian technical analysis of recovered airframes showing an onboard AI computer and the removal of external communications systems in later variants. **Medium confidence** — technically specific, consistent with the trend, but sourced through a warring party and not independently inspected in the public domain.

**The scale, and what the numbers actually show.**

- **Production.** Ukraine is reportedly on pace for **7–10 million drones a year** in 2026 (figures from Ukrainian officials, January and July 2026), with roughly 9,000 drone sorties a day at the 2025 peak — on the order of seventy times US output. **FPV strike drones cost roughly $400–$800**; interceptor drones **$2,000–$3,000**; Shahed-class one-way attack drones are cited anywhere from **~$10,000 to $50,000** depending on the source and year. *(Grade C for official statements; the Shahed figure is genuinely unstable and should be quoted as a range.)*
- **Fibre-optic FPV became a real capability, and is now spreading.** It emerged at scale around the Kursk operation in **August 2024**, reaches ranges beyond 30 km, is effectively unjammable, and by **April 2026 accounted for roughly 32% of Ukrainian strike drones**, with 80+ Ukrainian systems approved by mid-2025. **Diffusion is already documented** — Atlantic Council reporting links fibre-optic FPV to Sudanese militias, Mexican cartels and Chinese military interest. This is the single clearest example of a battlefield technique escaping the battlefield within about two years.
- **A European production tie-in.** The Ukrainian company Twist Robotics (SAKER family) formed a Ukrainian–Danish joint venture reportedly building around **12,000 drones a year in Denmark** — evidence that the industrial base, not just the technique, is relocating into NATO territory.
- **Interceptors are the most plausible route to autonomy at scale.** Ukrainian P1-Sun interceptors are credited with 3,000+ Shahed kills in 2026 at roughly **$2,000–$3,000** each. Claimed 95% kill rates are vendor/press-grade and should be discounted.
- **The "robot" claims need heavy discounting.** Armed UGVs such as Droid TW 12.7 are **remotely operated**, not autonomous. Uncrewed surface vessels such as Magura are **predominantly remote-controlled over satellite links**, with analysts assessing "low autonomy support". Claims of a "first fully robotic assault" and a "first robot-only capture" (April 2026) originate with brigades and the presidency and have no independent verification — they are PR framing, not demonstrated autonomy.
- **Operation Spiderweb (1 June 2025), correctly understood.** Roughly **117 drones launched from concealed cabins inside Russia across five regions and five time zones**, after about 18 months of planning, striking strategic aviation. The drones were **remotely guided by Ukrainian pilots**. The achievement was **covert logistics and inside-Russia resupply**, not autonomy. The widely cited ~$7 bn damage figure is unverified. *(Grade C.)*

**The correct vocabulary.** Across every topic examined, the gap between "autonomous" marketing and demonstrated capability is large. The dominant real capability is **human-supervised, jam-resistant terminal guidance**: a human or a mission plan decides *what* to strike, and software handles the last seconds or metres. "Autonomous" should be reserved for **target-selection and engagement authority** — and on that definition, the fielded evidence is thin everywhere.



**Who holds it.** States, and primarily two states at war, plus their defence-industrial ecosystems. Not non-state actors at this level. The documented *non-state* use of FPV and modular guidance packages (Colombia, Mexico, Sudan, Iraq, Yemen) is of the cheap commercial variant in low-electronic-warfare environments — a different and much lower capability tier than the Ukrainian front.

**What does *not* transfer to a European civilian context.**

- **Scale.** Six million drones a year and a 1,000 km front is not a template. The Ukrainian ecosystem is sustained by continuous combat feedback, national mobilisation of engineering talent, and a permissive legal/ethical environment for testing.
- **Time-to-feedback.** Ukraine's iteration speed comes from using a design operationally within days. A criminal or terrorist group has no such loop; its first attempt is likely to be its test.
- **Legal permissiveness.** Western European forces operate under rules of engagement and airspace law that constrain where and how autonomous systems may be tested or used; Ukraine's environment is exceptional.
- **Support infrastructure.** Recovery, repair, resupply, spectrum management, intelligence support and trained operators are the real capability; the airframe is the cheapest part.
- **Density of targets.** A front line is a target-rich, consenting-adversary environment. A stadium, a substation or a politician is not, and misidentification risk is far higher.

### 4.2 Other theatres and the AI-targeting question

**Israel/Gaza.** The most consequential AI-targeting controversy of the period concerns Israel's use of systems reported as "Lavender" and "Gospel" to generate and prioritise targets. Investigative reporting describes extensive automated target generation with limited human review time. The IDF characterises such tools as **"auxiliary"**, used "in accordance with international law", and states that humans make the decision. *(Grade C for the reporting; grade A for the IDF's characterisation of its own position.)*

This case matters to the central question in two ways, and both are easy to get wrong:

1. It demonstrates that **AI-assisted target *generation* at scale is technically real** in a state military. It does not demonstrate that the AI made the kill decision, and the reporting itself describes human sign-off in a compressed review window. The honest formulation is that AI compressed human judgement rather than replaced it, and the dispute is about the *quality* of that review, not about who pulled the trigger.
2. It demonstrates **the governance gap rather than the accessibility gap**. Nothing about Lavender is available to a non-state actor; it is a state intelligence-fusion system requiring a total-surveillance data regime and a permissive legal-policy environment. Treating it as evidence that "autonomous terrorism is here" is a category error, and the mass-civilian-target-generation practice does not transfer to NATO legal and data-protection frameworks.

**The 7 October 2023 attacks — the most instructive non-state case.** Small commercial quadcopters were the **first wave** of the Hamas assault, used to destroy border observation towers, cameras and communications before ground forces moved, and to drop munitions on tanks, soldiers and responders. Israel's own Nahal Oz investigation found Hamas combined drones with social-media mapping to overwhelm the base, with 53 soldiers killed and 10 captured. Hamas also claimed to have fired domestically produced "Al-Zawari" loitering munitions. *(Grade C — IDF investigation, think-tank analysis and video corroboration.)* **The drones were commercial, remote-piloted, and decisive.** Nothing about the case required autonomy; the achievement was tactical imagination against a complacent defence.

**The Binyamina strike, 13 October 2024 — the single best case study in why detection matters more than sophistication.** A drone struck the dining hall of the Golani Brigade training base, killing **4 soldiers** and wounding **58**. The Israeli Air Force investigation found that one drone was downed by the Navy off Haifa and one by Iron Dome; the surviving drone was pursued by fighters and helicopters, **two intercept attempts failed, electronic warfare failed**, it dropped off radar, briefly reappeared, and was **not identified as a drone, so no warning sirens sounded**. It is assessed to have flown very low, and the timing (dinner) and location appear intentional. The IAF stated that roughly **1,200 drones were fired at Israel** during the 2023–24 Lebanon war, of which **221 penetrated** defences — about an 18% leakage rate against a layered defence. *(Grade C/D — IDF investigation as reported. Hezbollah's claim of a coordinated "swarm" with missile diversions should be treated as *claimed*; the penetration is demonstrated.)*

**The lesson that transfers:** a cheap, slow, low-flying platform defeated a multi-billion-dollar air-defence architecture through altitude, timing and a **target-classification gap**. That is a sensor-and-decision problem, and NATO airspace has it.

**Houthi campaign and the cost asymmetry.** From 19 November 2023 the Houthis conducted 111+ attacks on shipping; US Navy testimony records roughly 400 drones and missiles defended against with 380 defeated, two merchant vessels sunk and four mariners killed. Drone types include Samad-2/3 and Qasef-1/2K, with peer-reviewed flight analysis concluding the Samad-3 can exceed 1,800 km. Purpose-built uncrewed surface vessels carrying substantial warheads sank the *Tutor* in June 2024. Critically, the **US Navy restructured its intercept economics under pressure** — moving to roughly two rounds per threat and to lower-cost effectors including APWKS laser-guided rockets fired from aircraft. This is the clearest documented case of a military changing its procurement and tactics because cheap mass was draining expensive magazines. *(Grade A/C.)* There is **no confirmed successful USV or UUV attack on a coalition warship**, and Houthi claims of hits on major US vessels were unsubstantiated — a reminder to grade belligerent claims.

**Tower 22, Jordan, 28 January 2024.** A one-way attack drone killed **3 US soldiers** and wounded 41–47 at a logistics base, attributed by the United States to Islamic Resistance in Iraq / Kataib Hezbollah. The public US account emphasises that the drone approached at **low altitude on a path coincident with returning US drones**, delaying identification. The Army's investigation adds a sharper and more transferable detail: the air-defence cell was **distracted by the recovery of a Scan Eagle** and **dismissed the radar track as "birds or trash"**. This is not a technology failure. It is a **human-factors and classification failure** — exactly the pattern that recurred at Binyamina, and the one most likely to recur at a civilian site where operators are few, tasks are many, and the cost of a false alarm is high. *(Grade A/C.)*

**Attempted drone attack on Iraq's Prime Minister, 7 November 2021.** Two drones attacked the Baghdad residence of Mustafa al-Kadhimi; he was unhurt; Iraqi officials blamed Iran-aligned militias. *(Grade C/D.)* Together with the 2018 Caracas attempt on President Maduro, this is the clearest evidence that **drones have been used, or attempted, against heads of government** — long before any question of autonomy arose.

**Iranian proliferation.** Iranian Shahed-class production has been transferred or licensed to Russia (as Geran-2) and derivatives have appeared in Ethiopia, Sudan, Venezuela, Tajikistan, Belarus and Algeria. This is **state-to-state and state-to-proxy transfer**, not a black market: it is how a patron equips a non-state actor with strategic-range effects without fielding its own forces. *(Grade A/B.)*

**The Kargu-2 claim — how a hedge became a fact.** This is the most-cited and most-misread item in the autonomy debate. The primary source is the UN Panel of Experts on Libya final report **S/2021/229**, paragraph 63, describing a March 2020 engagement in which logistics convoys and retreating forces "were subsequently hunted down and **remotely engaged** by the unmanned combat aerial vehicles **or** the lethal autonomous weapons systems **such as** the STM Kargu-2 **and other** loitering munitions", which "were programmed to attack targets without requiring data connectivity between the operator and the munition: in effect, a true 'fire, forget and find' capability."

The passage does **not** state that anyone was killed autonomously; it uses "possible"; the phrase "remotely engaged" sits oddly with a claim of no data link; and it aggregates several different systems into one narrative rather than documenting a forensically verified engagement. The Kargu-2's publicly described autonomy is anti-personnel target recognition **with a human selecting the target** — the manufacturer's own material shows an operator selecting and engaging. **Assessment: the claim that a Kargu-2 autonomously killed a human in Libya in 2020 is CLAIMED/INFERRED, not demonstrated. Confidence that a lethal autonomous engagement occurred: Low.** Its significance is that a UN primary document introduced the concept into state discourse without verification, and repetition has since laundered it into near-fact. *(Grade A for the document; grade D/E for the derived claim.)*

**Loitering munitions on the open market.** Purpose-built systems (Switchblade 300/600, Hero-120, Warmate, Lancet, Harop/Harpy, Kargu-2, Shahed-136) are **state-market goods** sold government-to-government under export control. Contract *values* are sometimes public (a ~$1 bn five-year Switchblade award; a $982 m Hero-120 IDIQ) but per-unit prices are almost never disclosed, and most circulating unit costs are vendor or press estimates; there is **no credible open unit price** for Switchblade, Hero, Warmate or Kargu-2 at all. Lancet is reported at roughly **$35,000**; Shahed-class figures are contested across an order of magnitude (see §5.5). **Two distinct negative findings matter here.** First, **no well-documented case was found of a non-state actor acquiring purpose-built Western or Israeli loitering munitions** — any claim that "terrorists bought Switchblades" should be rejected. Second, **no case was found of a non-state group independently purchasing a purpose-built loitering munition on the open market, or capturing and reusing a Western or Israeli one**; the documented transfers are **state-supplied** (Iranian Ababil-2T derivatives — "Shihab"/"Al-Zawari" — to Hamas, and "Mirsad-1" to Hezbollah). State custody, export controls and the absence of a functioning black market in these specific items are a real barrier. *(Grade B/C; absence-of-evidence finding, checked carefully.)*

**Evidence of AI or autonomy in non-state hands.** No credible public evidence was located of any non-state group using **machine-vision terminal guidance or autonomous target selection**. Historical ISIS drone operations were substantial — an industrialised bomb-dropping quadcopter programme running at **60–100+ attacks a month by spring 2017**, which the coalition answered with a counter-UAS effort costing on the order of **$700 m** — but they were **remote-piloted or waypoint-based** and declined under that pressure. Hezbollah is now reported to **3D-print fibre-optic FPV drones at roughly $300–400 each** — an unjammable but explicitly **human-piloted** capability, and a reminder that "jam-resistant" and "autonomous" are different things. Where "AI" is attributed to non-state drones, it is almost always waypoint navigation (not autonomy), a state-supplied system's autopilot, or vendor/journalistic conflation.

Two widely repeated claims should be dropped. The **UN Panel of Experts on Somalia recorded no confirmation of weaponised UAV use by Somali non-state groups**; al-Shabaab's offensive drone use is *inferred*, and the better-documented Somali story is ISIS-Somalia operating more than a hundred UAVs by late 2024. And **no evidence was found of encrypted-app marketplaces trading drone components**, despite the claim circulating. The documented Sahel drone operator is **JNIM**, with more than two dozen incidents, about 82% of them since March 2025. *(Grade B, absence-of-evidence where stated.)*

**Sudan, Myanmar, Haiti.** The Bulletin's August 2026 account cites ~1,000 civilians killed by drones in Sudan in the first half of 2026; Myanmar junta purchases of thousands of drones from Russia and China used against schools, hospitals and monasteries; and reporting that a private contractor used drones to target alleged gang members in Haiti, with over 1,200 killed. *(Grade C/D — multiple outlets, uneven verification.)* The dominant harm from drones in the 2020s is being inflicted with **ordinary, human-controlled systems in weak-governance environments** — a warning about the trajectory of diffusion, not evidence of an AI threat to NATO societies.

**The most consequential 2026 development in this domain is that the cheap-mass model is being copied, not merely resisted.** After the 2026 Iran war, Gulf states moved to buy cheap Ukrainian-designed interceptor drones because Iranian attacks were draining high-end missile stocks, while Saudi Arabia began pursuing Shahed-style one-way attack drones of its own. *(Grade C.)* When both sides of a conflict adopt the cheap-mass model, the economics become self-reinforcing.


### 4.3 Demonstrated misuse inside NATO societies (Level 4)

This is where the evidence is thinnest for autonomy and strongest for the ordinary use of drones by states and criminals.

**a. Covert state action — Leipzig-Halle airport, August 2026 (the most significant single case).**

On the evening of **4 August 2026**, a small quadcopter — described as roughly the size of a microwave oven — carrying explosives was found near a Ukrainian transport aircraft at Leipzig-Halle Airport, a major cargo hub for military aid to Ukraine. CCTV reportedly showed the drone striking the wing of a parked Antonov cargo aircraft before falling to the ground, where a bus driver found it and raised the alarm; bomb-disposal specialists disarmed it. A second drone is thought to have struck an inbound cargo aircraft. The airport was temporarily closed.

- **German intelligence attributed the attempt to Russia's GRU**, and the German government officially blamed Russia in early September 2026, with reports naming **two suspects with Russian ties** and describing a Russian national responsible for operational logistics who entered from Turkey and later left via Serbia.
- **The EU's foreign policy chief described the attempt as having "all the hallmarks of state-sponsored terrorism."** Germany closed the Russian Consulate General in Bonn; the Netherlands summoned the Russian ambassador; France took parallel steps.
- **Forensics linked the case to earlier Russian operations**: explosives reportedly smuggled in by truck from Bulgaria and Serbia, and DNA traces on the drone's control antenna matching samples from a July 2024 arson attack at a Leipzig DHL logistics facility.
- **Interpretation:** this is a *failed* attack, *human-controlled*, using a *commercial-class quadcopter*, intended against a *military-logistics target* in a NATO state, attributed to a *state intelligence service*. It is the clearest demonstration that the barrier to running armed drones inside Europe has been crossed **by a state proxy**, not by a terrorist group.

*(Sources: DW, Euronews, Reuters, Bild/Welt am Sonntag reporting as summarised by DW; grade A for the German government attribution and the fact of the recovery; grade C for the operational details.)*

Technical details reported subsequently sharpen the picture: the device was an **FPV drone carrying roughly 800 g of explosive** and is reported to have struck an **An-124** near Ukrainian cargo aircraft **without detonating**; a second device struck a Boeing 757 on go-around; and a **third device containing ~50 g of RDX** was found on 14 August. The drone reportedly used **two SIM cards and a 5G router**, which is significant for defenders: to radio-frequency counter-drone systems looking for a drone control link, it presented as ordinary mobile-phone traffic. *(Grade C.)*

**b. Contested and debunked flagship cases — the discipline this field requires.**

The most important corrective in this report is that several of the incidents most often cited as evidence of a European drone threat **do not withstand scrutiny**:

- **Gatwick, December 2018.** The runway closed for about 33 hours, affecting ~1,000 flights and ~140,000 passengers. But **no photograph or video of a drone was ever produced**; two recovered drones were ruled out; the couple arrested were released without charge and received a £200,000 settlement from Sussex Police; the investigation closed in September 2019 after **£790,000** with no charges; the independent review remains unpublished eight years on; and a 2024 freedom-of-information request found that the National Police Air Service recorded **no drone sightings at Gatwick** during the period. The *cost* of the closure is well documented — the *cause* is not. *(Grade A for the documents; the hostile-drone attribution is unresolved and contested.)*
- **Copenhagen, September 2025.** The Prime Minister called it "the most serious attack on Danish critical infrastructure to date". On **25 June 2026 Copenhagen Police concluded they could neither prove nor deny** that drones were present; **no suspects were identified and the investigation closed**. Norway's PST found **no established foreign-state link**. *(An earlier draft of this report quoted police as conceding they "were not clear enough with our reservations". **That quotation has been removed** — it could not be traced to any primary source across repeated checks. The verifiable finding — that the case closed unresolved — does not depend on it.)*
- **Madrid-Barajas, 2025.** Reporting indicates the Guardia Civil believes the drone that forced the closure **never existed** — a near-replica of Gatwick.
- **Poland, September 2025.** Lublin prosecutors classified the recovered drones as **unpowered decoys carrying no explosives** — which is more consistent with a navigation-failure drift than a deliberate attack.
- **Most 2026 Baltic incursions** were **Ukrainian strike drones driven off course by Russian electronic warfare**, not Russian attack drones — a distinction Baltic governments themselves emphasise.
- **Sweden's "nuclear plant drones"**, widely recycled as a 2024–26 incident, date from **January 2022**.
- **Norway.** The Police Security Service (PST) found that **most reported sightings were stars, weather phenomena or aircraft**.
- **Belgium.** A VRT *Pano* investigation examined **558 reports and found no physical evidence**; the "large drone" cited by a minister turned out to be a **police helicopter**.
- **The 2024 north-east United States drone wave** was attributed by the FAA to **its own research aircraft**.
- **An officially denied chemical-weapon claim that reputable outlets still repeat.** An alleged chemical drone attack at Coahuayana, Michoacán (3–4 April 2024) was **officially denied on 10 April 2024 by the Michoacán interior ministry**: hazardous-materials police and SEDENA found **no trace** and there were **no hospital admissions**. The claim nonetheless persists in secondary reporting. This is a useful illustration of how a single unverified allegation can enter the literature and stay there.
- **Vilnius, 13 September 2026.** An airport closure attributed to a drone turned out to have been caused by **birds**.
- **Only two cases have a prosecution record, and both suggest carelessness rather than hostility.** Dublin (February 2023) led to two men being charged; Cologne/Bonn (12 August 2026) led to a drone pilot being detained. Both are consistent with illegal or careless recreational flying.

**Against that, two incidents carry confirmed state attribution.** The Leipzig case is one. The other is a February 2026 incident in the Øresund in which a Swedish warship is reported to have jammed a drone launched from a Russian spy vessel. These two — not the airport panics — are the incidents on which the state-proxy threat assessment should rest.
- **Undersea infrastructure.** In **every** attributed Baltic cable or pipeline incident the mechanism was a **ship's anchor dragged across the seabed**. **No authority has ever claimed that a drone or uncrewed device cut a Baltic cable.** Any narrative that fuses "drones" and "undersea sabotage" is unsupported.
- **The IISS shadow-fleet thesis is contested.** The IISS judged it "highly likely" that the Kremlin ran a UAV campaign over Europe, with some sorties possibly launched from shadow-fleet vessels — but **the IISS itself notes that no European government has publicly attributed a UAV sighting to Russia**, and specialist outlets have criticised the analysis as dependent on assumptions and previously debunked sightings.

This matters enormously for policy. **The gap between the confidence of official warnings and the quality of the underlying evidence is the largest single weakness in the European drone debate** — larger, on the evidence assembled here, than the capability gap. The Dutch AIVD's caution is the correct posture: a detected drone is not always a threat, and a sighted drone is not always attributable.

**c. Foiled terrorist plots.**

- **Antwerp, 9 October 2025.** Belgian police arrested three men over a plan to attach an explosive to a drone and attack **Belgian politicians — reportedly including the Prime Minister** — with three politicians in the target set. Reporting indicated the device could have been made active at short notice. The NCTV's June 2026 assessment describes the plan as involving a **3D-printed drone and an improvised explosive device**. *(Grade A/C — official NCTV characterisation plus Belgian prosecutorial reporting.)* This is the single most important European terrorist drone plot in the record.
- **United States, June 2026.** The FBI disrupted a plot against a White House UFC event involving **an explosive drone and sniper fire**, with multiple arrests including a juvenile, and with legislators reportedly named as targets in court records. *(Grade A/C — court records plus FBI statements reported by NPR, PBS, NYT, ESPN.)*
- **Netherlands, August 2026.** A 28-year-old man from Ede was arrested over an alleged threat of an attack on military personnel, following a tip from US intelligence. *(Grade C.)*

**d. Criminal misuse — the best-quantified domain, and the one where autonomy is absent.**

- **Prison contraband is now an industrial-scale problem with official statistics.** The United Kingdom has the best series: **1,712 incidents in the year to March 2025, up 43%**, with counter-drone spending of about £900,000 and nine arrests; a seven-person gang received **22 years combined** in March 2026 after more than fifty drops in three months, and 13,000 prison windows were fitted with steel grilles. **Ireland** recorded **384 deliveries in 2025** at three Dublin prisons, with seizures of 1,647 phones, 1,325 drug items and 441 weapons, and a €5 m mesh installation cutting incursions at one prison by 73%. The **Netherlands** has court-established cases (~70 flights over nearly three years, proved on flight-log and cell-tower data) and granted prisons powers to take down drones from 1 July 2026. **Belgium** dismantled a multi-prison supply network. *(Grade A/C.)*
- **Every documented prison case is a remotely piloted commercial quadcopter with a release mechanism. No autonomous contraband delivery was found anywhere.** Belgium's purchase of an autonomous "drone-in-a-box" system for prisons is **state-side** autonomy on the defence side, not attacker autonomy.
- **Latin America — the strongest official statistics anywhere, and a lesson in counting carefully.** The authoritative series is a **Colombian military intelligence report** (updated 7 September 2026, reported by El Tiempo on 11 September 2026): **690 drone attacks since 21 July 2023** — 119 in 2024, **277 in 2025**, and **292 in January–September 2026**, already exceeding all of 2025. Across the series, **487 people were affected, with 22 soldiers, 3 police officers and 6 civilians killed**. Attribution for 2025–26 is 382 to "Iván Mordisco"/EMC dissident structures, 155 to the ELN, 30 to "Calarcá" and 4 to Comandos de la Frontera. The Ministry of Defence separately reports **8,395 drone *incidents* in 2025, of which only about 4% were *attacks*** — and the distinction between incidents and attacks is exactly the kind of category error this report warns against. Both series are official; the 277-attack figure is the one to use for capability, and the roughly 4% ratio remains the best available evidence that **most drone use is ineffective**. ACLED separately records roughly **670 armed-drone events in Latin America since 2018, over 72% of them between January 2025 and August 2026**.
  - **Attribution and control remain human.** Every documented Colombian case was **remotely piloted** — on 20 February 2026 the Army downed an ELN drone and **captured its operator**, which is direct proof of a human pilot. Mexican cartel drones are commercial airframes with payloads lashed on "with plastic and ropes", and imagery shows operators holding controllers.
  - **Infrastructure strikes are real but narrow.** Two radar stations have been struck: Cerro Santana (25 April 2026) and Candelaria, Valle (16 September 2026), the latter prompting a Colombian human-rights ombudsman finding of an IHL violation.
  - **Colombia's pipeline campaign is not a drone campaign.** There were **8 pipeline bombings in the first half of 2026 against 21 in the same period of 2025** — a 62% fall — and all were conventional. The only drone-specific oil events were two failed explosive drones at Caño Limón and Banadía, Arauca (22–23 July 2026), unattributed.
  - **Mexico: official escalation data, and the clearest case of cross-border expertise transfer.** SEDENA figures record drone attacks rising from **5 (2020) to 107, then 233, then 260 in the first half of 2023 alone — 605 to mid-2023**; drone **seizures rose from 12 (2024) to 139 (2025)**, with 46 in the first half of 2026, concentrated in Sinaloa, Michoacán and Tamaulipas. A CJNG drone-borne IED strike on an Army helicopter at **Apatzingán (27–28 January 2025)** is now confirmed. A Tijuana attack in October 2025 prompted the state prosecutor to open an **official terrorism file** and is attributed to drones. Most consequential for the diffusion question: **Los Viagras is on the official record through arrests, not merely reporting** — in September 2023 eight Colombians and a drone-IED workshop were seized, and in September 2024 an ex-Colombian soldier was detained. That is direct evidence of **foreign drone expertise transferring into a criminal network**, the same mechanism identified in Ecuador and, reportedly, in a Brazilian case where a detained navy sailor had built release attachments and trained gang members. Eight Mexican organisations are now designated foreign terrorist organisations. *(Grade A for the arrests and official statistics; grade C for the contested incidents.)*
  - **Autonomy is confirmed absent across the region.** CNN's September 2026 survey reports an expert consensus of **no kamikaze-drone use by organised crime** in the region; the International Crisis Group states drones there "don't have too much autonomy"; Spanish-language reporting that uses "vuelo autónomo" describes **GPS waypoint flight, not machine vision**; and InSight Crime invokes AI-guided drones only as a *Ukraine/Russia precedent*, not a regional finding. A circulated "AI drone" claim in fact concerned fraud recruitment on social media, not flight autonomy. *(Grade B.)*
  - **Announced is not delivered.** Colombia's *Escudo Nacional Antidrones* programme (announced 10 January 2026, COP 6.3 bn) **stalled**: only 1 of 119 bidders qualified, the Contraloría flagged critical risks, it remained unfunded, and the enabling directive was **annulled on 8 September 2026**. Colombia still has **no law specifically criminalising weaponised drone use and no convictions**.
  - **Ecuador's problem is prison-centric, not military.** Verified incidents include the La Roca bombing (12 September 2023) and a Monte Sinaí seizure (15 August 2026) of a drone, a remote-activation system and a printed plan of the Litoral prison; the Interior Minister says roughly **600 organised-crime-linked drones attempted to reach the Cárcel del Encuentro**. But **ACLED logs only eight Ecuadorian drone incidents between September 2023 and July 2026, with zero drone-caused deaths**, there is **no confirmed gang drone attack on Ecuadorian police or military**, and there was **no drone role in the January 2024 TC Television attack**. *(Grade A/B.)*
- **The single most useful capability statement from this domain** comes from a Colombian FPV pilot who told the Financial Times that criminal groups still lack **encrypted pilot–drone communications and correct payload mounting**. The frontier for these actors is **piloting and payload engineering, not autonomy**.
- **Critical infrastructure reconnaissance.** Germany's Federal Criminal Police Office has reported on the order of **a thousand drone incidents a year in Germany**, mostly over military sites, airports, ports and defence firms, treated as surveillance or harassment rather than attacks. **The German series should be used cautiously**: different BKA publications circulate figures that some reporting assigns to the wrong year, and the dating of the widely quoted counts is contested across sources. Notably, Dutch police DJI data logged **298 drone detections in 2023, of which only 55 were assessed as suspicious** — a low signal-to-noise ratio that is itself a caution against treating all sightings as threats. *(Grade A for the existence of a substantial German incident series; grade C for any specific annual total.)*
- **A striking negative finding.** An academic study by Leiden University, *Tussen mogelijkheid en realiteit* (June 2026), counted only **34 drone-related attack incidents in Europe in 2010–2025**, with **over half never executed**, and concluded that "criminal organisations and state actors play hardly any role". Separately, **no credible drone-borne attempt on a politician was found in Germany, France, the Netherlands, Spain or Italy**; the reported Iranian and Russian plots in those countries involved firearms, arson, acid or criminal proxies. The Iranian case is instructive: a **14-state statement in July 2025** condemned Iranian intelligence attempts to "kill, kidnap, and harass" journalists, dissidents, Jewish citizens and officials — and **did not mention drones at all** — while German prosecutions in 2026 charged suspects over arson and surveillance plots, not drone plots. **No public European case was located in which police seized Iranian drone components in a plot context.** *(Grade B.)*

**e. Assassination and attempted assassination.** The record is real but thin, and **in every case the device was remotely piloted, with no allegation of autonomous target selection**:

| Date | Target | Outcome | Autonomy |
|---|---|---|---|
| Aug 2018 | President Maduro, Caracas | C-4 detonated; 7–9 injured; authorship unestablished and contested | None alleged |
| Nov 2021 | PM al-Kadhimi, Baghdad | Residence hit; he was unhurt | None alleged |
| Jul 2024 | Gen. al-Burhan, Sudan | Five killed; Burhan unharmed | None alleged |
| Oct 2024 | PM Netanyahu, Caesarea | Drone hit residence; failed to penetrate | None alleged |
| Oct 2025 | **PM De Wever, Belgium** | **Plot foiled pre-attack**; 3D printer and target list seized | None alleged |
| Jun 2026 | **Trump, Vance, Netanyahu (US event)** | **Plot foiled**; five charged, later eight indicted; snipers and bomb-equipped drones | None alleged |

Two clarifications matter. The **2020 Mexico City ambush** on the police chief was a **shooting with no drone involved**, and it is frequently miscited as a drone attack. The **July 2024 Butler, Pennsylvania** assassination attempt **used no drone in the attack**; the shooter had flown a drone for about eleven minutes roughly two hours earlier for reconnaissance only.

**f. The counter-example that must be preserved.** Multiple official sources emphasise what has *not* happened:

- **"In Western Europe, as far as is known, no attack has ever been successfully carried out with a drone."** (NCTV, *Dreigingsbeeld Terrorisme Nederland*, June 2026.)
- "To date no major terrorist attacks by drone have taken place, only some thwarted plans, which is surprising." (ECFR, August 2026.)
- The Danish police **retracted** an earlier claim about "verified drones" during the September 2025 airport disruption — an important warning that even official drone claims can be wrong.
- The head of Dutch intelligence has cautioned that a detected drone "is not always a threat" and that alleged Russian involvement in drone sightings is "complicated" to establish and "often cannot be confirmed" (AIVD *Jaarverslag 2025*, April 2026).

### 4.4 What institutions actually say

**Netherlands — NCTV, *Dreigingsbeeld Terrorisme Nederland*, June 2026 (grade A).** A dedicated box on drones concludes: no successful terrorist drone attack in Western Europe to date; multiple drone attack plans foiled in the past five years; an effective drone attack still requires *extensive* knowledge of explosives, delivery and detonation mechanisms, and operational planning; access to explosives and precursors is a significant obstacle; therefore **an attack with simple means remains more likely**. It simultaneously warns that the **terrorist threat from drones "may increase in the coming years"** because of Ukraine-driven proliferation, widely circulating online conversion manuals, and active ISIS and Al-Qaeda encouragement of drone use. This is the most carefully balanced official statement located, and it supports both the threat and the sceptic.

**Netherlands — AIVD *Jaarverslag 2025*, April 2026 (grade A).** A growing number of drone reports near critical infrastructure, airports and military facilities; but attribution is hard and frequently unconfirmed. Contains the key 2026 formulation: **"Technology makes methods of attack more accessible and threats more complex."**

**Netherlands — NCTV, *Dreigingsbeeld Terrorisme Nederland*, December 2025 (grade A).** Records that ISIS propaganda increasingly calls for attacks with knives and vehicles "but increasingly also arson, explosives and drones", and that ISKP's media arm may use AI to mass-produce propaganda. It documents the **October 2025 Belgian case** in operational terms: three men arrested over a plot against, among others, the Belgian Prime Minister; searches found homemade explosives, a **3D printer** and a target list — *"they wanted to make a drone with the 3D printer to attach explosives to it."* This is the most specific official description of a European drone-assassination plot in the record.

**Netherlands — joint AI warning, 24 September 2026 (grade A for signatories).** The AIVD, MIVD, NCSC, NCTV, police, Public Prosecution Service and the government CIO issued a joint open letter warning that AI "is making cyber threats faster and lowering the barrier for more malicious actors to launch attacks", and that commonly available models "can already provide enough capabilities for malicious purposes". This is a domestic official statement that **AI lowers the barrier to malicious action** — framed around cyber rather than kinetic threats, which is itself informative about where Dutch agencies currently place the near-term risk.

**EU — European Parliament research service (EPRS), on institutional disagreement (grade A).** Notes that many recovered drone devices "were unarmed and some merely decoys", records open member-state disagreement on the cost, feasibility and strategic value of the "drone wall", and quotes an expert stating the initiative is primarily about **reassurance**. At least **ten** countries reported airport or military drone sightings in the 2025 wave. This is a valuable corrective to threat inflation: the *political* function of counter-drone investment is partly reassurance, and the evidence base for some incidents is weaker than the response implies.

 The strongest official "lowered threshold" language found: emerging attack methods include 3D-printed weapons, bladed weapons designed to evade metal detection, and drones; **"Wider access to the required materials and technical guidance is deemed to have lowered the threshold for would-be perpetrators to explore these options, especially when reinforced by propaganda promoting their use."** Five terrorist attacks occurred in the EU in 2025. AI is reported as abused for deepfakes, chatbots and attack research.

**EU — Europol, *The Unmanned Future(s)*, December 2025 (grade A).** A dedicated assessment of drones and robotics, and the most operationally specific EU document located. Its findings:

- Criminal and terrorist groups "are often early adopters of technology", and hobby drones meet the criteria of being good, cheap, easy and freely obtainable.
- Organised-crime actors "are now capable of producing professional and advanced drones in an artisanal way"; **2022 is identified as a turning point**, including the first known malicious **unmanned underwater** systems.
- **"Crime-at-a-distance"**: drone pilots selling reconnaissance or attack services online to criminal networks — a service market that lowers the skill barrier for the buyer.
- Hamas's 7 October 2023 attacks "involved extensive use of UAS", demonstrating their relevance "for criminal and terrorist purposes".
- Attribution: unmanned systems "can offer state actors certain plausible deniability… (mis-)categorisation of these activities as mere criminal acts".
- The capability gap, verbatim: **"the capability to counter them at scale is limited. The relative distance between the threat and the capability to mitigate and protect has grown into a substantial gap."**

**EU — Eurojust, June 2026 (grade A).** Convened an expert meeting on "the judicial response to threats caused by drones" in response to "the growing threat posed by malicious use of drones across Europe", including international cooperation — evidence that drone cases are now crossing borders and reaching the judicial system, not just the police report.

**EU — European Commission, *Action Plan on Drone and Counter Drone Security*, COM(2026) 81 final, 11 February 2026 (grade A).** Names the threat actors explicitly: **"state and state-linked hostile actors, terrorist organisations, organised crime networks and individuals"**, across a spectrum "from criminal or negligent behaviour to hybrid operations and military-type activities". Proposes extending registration and identification to all drones above 100 g. Notably identifies a genuinely new logistics vector: **hundreds of meteorological balloons launched from outside the EU** used for smuggling, described as "a strategic and largely uncontrollable threat".

**EU — European Union Serious and Organised Crime Threat Assessment (SOCTA) 2025 (grade A).** Frames serious and organised crime as "progressively destabilising, increasingly nurtured online, and strongly accelerated by Artificial Intelligence and other new technologies", with AI expected to "refine cyber-attacks' modi operandi and target identification". Notably, the executive summary does **not** centre drones — a useful corrective to the assumption that European organised-crime institutions uniformly rank drone-enabled violence as a top-tier threat.

**NATO.** Operation Eastern Sentry was launched after roughly 20 Russian military drones entered Polish airspace in September 2025, prompting Poland to invoke Article 4. The alliance runs layered counter-UAS exercises (the "Crucible" series; over 250 systems in one iteration). Its 2026 counter-drone commitments and doctrinal gap are set out below. The NATO Secretary General has publicly argued the alliance "cannot afford" to shoot down cheap drones with expensive missiles. *(Grade A/C.)*

**United Kingdom.** The MoD reported **266 UAV incidents near Defence sites in 2025 against 126 in 2024** — roughly a doubling — with counter-UAS spending quadrupled to **over £200 m** in the year, restricted airspace at 40 defence sites, and the Armed Forces Bill introduced on 15 January 2026 to give Defence personnel powers to defeat aerial, land and maritime drones. Press reporting in September 2026 put the figure at about **340 drone incidents near military sites in the year through August 2026** — on the order of one a day. *(Grade A for the MoD release; grade C for the later figure.)*

**Germany — official warning and official caution, side by side.** Beyond the Leipzig case, Germany has amended its Aviation Security Act (in force 17 March 2026) to permit the armed forces to use force against drones "as a last resort", is standing up a federal drone-defence centre and expanding its federal police drone-defence unit from about 130 to 300 staff with roughly €100 m, and plans mobile drone-defence units and a protective shield over critical sites. Reported incident counts include 1,072 incidents involving 1,955 drones in 2025 (secondary provenance) and 144 airport incidents to August 2025.

**But the German institutional record also contains the strongest official caution found anywhere.** The **BfV's *Verfassungsschutzbericht 2025*** explicitly warns against **"Überattribution"** (over-attribution) and **"Überschätzung der Fähigkeiten des russischen Staates"** (overestimating Russian state capabilities), speaks only of "**mutmaßliche** Drohnenüberflüge" (presumed drone overflights), and states that **"es gibt bisher keine Beweise"** — there is as yet no evidence — that Russian state bodies instrumentalised extremists for sabotage. The **BKA's cybercrime report for 2025** states that **no police metrics on concrete AI use exist** ("Bislang liegen keine polizeilichen Kennzahlen zum konkreten KI-Einsatz… vor"). And there is open **institutional disagreement inside Germany**: the federal government's FAQ of 2 September 2026 says many drone flights "do not primarily aim at direct attacks, but at creating uncertainty", which sits awkwardly beside the Chancellor's public presumption of Russian responsibility.

**A correction to an earlier draft of this report.** An earlier version cited a Bundestag paper (Drucksache 21/7725) as classifying *German* airport intrusions as **"technische Fehlfunktionen"**. **That is wrong and has been removed.** The phrase is genuine but refers to **Ukrainian drones in Finnish and Baltic airspace**, not German airport sightings; a check of 53 Bundestag papers containing "Drohn" found no such finding about German airports. The closest defensible primary German statement is **Drucksache 21/3236 (December 2025)**, which holds that **no reliable general statements are derivable** from the sightings data and that foreign intelligence involvement **"is to be presumed"** for a non-quantifiable portion. *(The correction is recorded rather than silently applied, because the withdrawn version understated the German government's own uncertainty.)*


**France** has passed a law allowing private companies to protect civilian infrastructure against drones. **Poland** announced an "anti-drone wall" in January 2026 estimated at **€3.8 bn**, with 18 batteries, 52 firing platoons and interceptor drones. **Finland** allocated €44 m to the Border Guard in April 2026. *(Grade A/B.)*

**NATO — the primary text, and a notable silence.** NATO's official "Drone Edge" text of 7 July 2026 states that "drone incidents affecting Allies, in particular on the Eastern Flank, have increased in recent months" and commits to "**investing over USD 40 Billion in counter-drone capabilities over the next five years**", a counter-drone procurement marketplace, and training **five times as many drone operators by end-2027**. Three qualifications matter. First, the $40 bn is an **aggregate Allied pledge over five years**, not a NATO contract value. Second, the **Hague Summit Declaration of 25 June 2025 contains no occurrence of "drone", "unmanned", "uncrewed" or "UAS"** — the counter-drone push is a response to September 2025, not a summit-driven programme. Third, **no public NATO counter-UAS policy doctrine or STANAG exists**; the alliance's public framing is air defence and capability development, not internal security. *(Grade A for the text; the doctrinal gap is itself the finding.)*

**A significant negative finding on the EU judicial record.** A systematic review of Eurojust's published material found **no drone-specific case release** and **no drone or UAS content in its annual reports for 2023–2025**, and no joint Eurojust–Europol drone case. Frontex's 2026–2027 risk analysis describes criminal fixed-wing drone use from Morocco toward Cadiz as "rising sharply… expected to intensify" but supplies **no counts, seizures or case numbers**, and Frontex itself operates only two UAVs of its own. **The EU criminal-use evidence base is therefore assertion-heavy and case-poor** — a pattern that should temper any claim about the scale of the criminal drone threat in Europe, even as the prison and contraband data establish that the phenomenon is real.

**France, the Nordics and Belgium — where the official record is *weaker* than the public debate assumes.** This is one of the most important findings in the report, and it runs against the grain of most English-language commentary.

- **No security institution in France, Sweden, Denmark, Norway or Belgium claims that AI lowers the barrier to terrorism, sabotage or assassination.** France's national security posture plan VIGIPIRATE (June 2026) contains **no mention of AI at all**. Denmark's PET says it is "too early to assess the more specific effects". Norway's PST frames AI as a cyber and information-gathering enabler. No AI reference was retrieved from Sweden's Säpo; Swedish government studies, Belgium's OCAM and French strategic bodies frame AI as a *propaganda* or *systemic model* risk. Across all five states, **AI appears only as a reach, cyber, reconnaissance or defensive multiplier** — never as a claim that it lowers the kinetic threshold. The one official-record barrier-lowering claim concerns **online propaganda**, not AI. This is a direct, citable counterweight to the Europol and Commission framing, and it suggests the "AI lowers the barrier" proposition is currently **more institutionalised at EU level than in national threat assessments**.
- **Three Norwegian police districts publicly retracted autumn-2025 drone sightings**: Ørland ("stars and planets"), Sleipner (ship traffic) and Gardermoen (insufficient evidence). Denmark's Centre for Terror Analysis concluded the Danish flights aimed "primarily… at creating insecurity and disrupting our infrastructure" and created **no public risk**. Sweden's Säpo stated that "no physical sabotage has yet been linked to a foreign power" and that "Sweden is currently not the primary target"; **Sweden lowered its terror threat level from 4 to 3 on 23 May 2025**. **No primary document in any of the five states establishes state attribution for the autumn-2025 wave.**
- **Allied institutions contradict each other about the same events, sometimes inside the same country.** Belgium's OCAM recorded 157 threat reports in 2025 — **down 26%** — with zero level-4 threats and a modus operandi of "explosives, physical violence and firearms"; **drones are not mentioned**. Yet Belgium's defence ministry acknowledges overflights at Elsenborn and "very limited anti-drone capabilities", calling it an "acute hybrid threat". Norway explicitly *down*-assesses drone use; France and Denmark treat it as rising.

The epistemic lesson is worth stating plainly: **the strongest "barrier-lowering" wording in the entire French record** — expert testimony before the Senate in June 2026 that "the barrier to entry for the attacker is very low… [including] towards terrorist groups" — appears in a report that **expressly excludes internal-security counter-UAS**, and is expert testimony rather than agency doctrine. The genuine agency doctrine (VIGIPIRATE) says nothing about AI at all. Elsewhere the pattern repeats: a 2024 British query that found no drone nexus to UK terrorism, and a Dutch assessment that no successful drone attack has occurred. **Strongest wording, weakest evidence, is a recurring signature of this field.**

**Analytical consensus.** The International Institute for Strategic Studies assessed in June 2026 that it is **"highly likely"** that Russia conducted a drone campaign against Europe, largely toward the end of 2025, with some drones possibly launched from Russian shadow-fleet vessels. The ECFR's August 2026 policy brief describes a "dual drone threat" — small drones over critical infrastructure everywhere, and military drone incursions on the eastern flank — and notes the defender is often reduced to "the costliest means possible, namely missiles fired from fighter jets". *(Grade B.)*

---

## 5. Emerging signals — developments that increase accessibility or plausibility without demonstrated domestic misuse

### 5.1 The commodity stack (Level 2)

The barrier to a *semi-autonomous* system has fallen to the level of "a competent hobbyist with money and time". Concretely:

- **Compute:** a $249 board delivers 67 TOPS; a $70 board delivers 13 TOPS at ~1.5 W, which is airframe-relevant.
- **Software:** ArduPilot and PX4 are mature, documented, permissively licensed autopilots with official non-GNSS navigation guidance; VIO/SLAM stacks are GPL and maintained; detection and tracking models are freely downloadable.
- **Data:** free global terrain elevation, satellite imagery and map data are adequate for route planning and terrain-relative navigation.
- **Bill of materials:** a small GNSS-free drone with vision capability is repeatedly estimated at roughly **$300–$1,500**; the scarce input is person-time, not parts.

**Barriers that remain, and they are not trivial.** Compute at 7–25 W creates thermal and endurance problems on small airframes. Camera–IMU calibration and time synchronisation are fiddly and failure-prone. GNSS-free flight accumulates drift without periodic visual or terrain fixes. Detection models produce false positives on clutter and decoys, and a targeting system that cannot distinguish a civilian from a combatant is dangerous to its user's cause as well as to the public. ArduPilot itself warns that cheap inertial sensors drift and cannot provide position unaided. And the dominant YOLO stack's **AGPL-3.0 licence** is a genuine obstacle to covert or commercial reuse. **Accessibility is high; reliable field performance is not.**

### 5.2 "AI swarms": an evidence audit (Level 1 vs Level 3)

This is where public discussion is most detached from evidence, so the categories must be separated sharply.

| Category | What it actually is | Requires | Evidence status |
|---|---|---|---|
| **A. Synchronised mass flight** | Many drones flying pre-programmed trajectories simultaneously | GPS timing, choreography software, safety case | **Established, commercial, commodity.** Drone light shows routinely fly hundreds to thousands of airframes; the coordination logic is largely open source |
| **B. One operator, many drones** | Centralised control of several systems by one human | Multi-link radio, workload management, delegation | **Demonstrated in military programmes; limited human-machine ratios in practice** |
| **C. Decentralised autonomous cooperation** | Drones allocate tasks, avoid collision, adapt to losses without a central node | Mesh networking, distributed consensus, resilient autonomy | **Demonstrated in controlled trials and simulations; fragile in contested, cluttered environments** |
| **D. Adaptive lethal swarms that find and engage targets in a civilian environment** | The "Slaughterbots" scenario | C, plus robust machine vision, plus target discrimination, plus reliability, plus logistics | **Not demonstrated by any actor. Speculative.** |

The critical confusion is between **A** (real, cheap, and irrelevant to targeting) and **D** (the imagined threat). Public commentary routinely uses the language of D while the evidence supports A and, at most, C in a laboratory.

**What the actual programmes deliver, when you read their own numbers.**

- **DARPA OFFSET** (2017–2021) envisioned "upwards of 250" air and ground platforms. Its capstone demonstration (FX-6, December 2021) used 300+ total platforms across two integrators — but at **instrumented training facilities, not in contested spectrum**. The programme is closed, and no transitioned system has been named.
- **Replicator → DAWG.** The initiative was renamed and, on the public record, not delivered. A senior commander described it in December 2025 as "alive" — meaning wargames and simulations "in secure spaces", not fielded mass.
- **Swarm Forge / "Crucible"** (2026). The solicitation itself is the most revealing document: *"The United States currently lacks the inventory and the doctrine to deploy massed, coordinated, low-cost robotic systems… The absence of integrated doctrine, training, and operational concepts for large-scale robotic employment leaves the joint force at risk."* The June 2026 exercise minimum was **four UAS** operating simultaneously.
- **"First kinetic drone swarm on U.S. soil"**, Camp Blanding, January 2026: **four** FPV drones, one acting as leader for three, against inflatable tanks. Officials would not say whether or how AI was used.
- **UK Dstl** Software Defined Swarms Concept Demonstrator (2026): a capability test bed of **eight** UAVs.
- **China "Atlas"**: 48 fixed-wing drones launched at three-second intervals, with a claimed capacity of 96 from one operator — on a test range, against three visually similar targets plus a command vehicle to make discrimination feasible.

**The human-ratio anchor.** A 2008 study found that a single operator's mission effectiveness degrades beyond roughly **four** drones. Vendor claims of "hundreds" describe architectural capacity, not demonstrated simultaneous tactical control under jamming. The one-operator-many-drones frontier in 2026 is a documented three-system near-simultaneous strike (Auterion Nemyx, January 2026); "hundreds" remains a specification, not a demonstration.

**The light-show end.** In February 2026, 22,580 UAVs flew a coordinated display in China (a Guinness record); commercial shows fly thousands. DIY show drones cost on the order of $1,000–$1,700 each, and the open-source Skybrush platform (GPL v3) provides choreography, with a free community edition capped at ten drones. This is category **A** only. It contains no perception, no classification, no task allocation under uncertainty and no contested communications. Accessibility is high; the binding constraints are regulatory and spectrum-related, not skill. The practical consequence is nonetheless real and under-discussed: **the coordination of hundreds of airframes is no longer exotic.** That does not create a weapon, but it removes a barrier analysts once counted as significant and normalises the idea that many drones arrive at once.

**The anti-hype datapoints that matter most** come from people with no incentive to minimise the threat:

- Elke Schwarz (Queen Mary University of London), an advocate of autonomous-weapons restrictions: *"In the context of Ukraine, full autonomy is actually not that desirable. It's not really that reliable. It's not really used that often."*
- The most-cited "first AI-guided combat drone swarm" — Israel/Gaza 2021 — resolves on closer reading into *a small number of Elbit drones coordinating searches* with other fires. Contemporaneous sceptical analysis found no indication that the swarm made autonomous decisions about who to kill.
- The March 2026 claim of a "Lancet AI swarm" over central Kyiv was inferred largely from **coloured circle markings on debris**, with the 200 km+ range conceded as "an open question" and a Ukrainian ministry adviser suggesting the debris had been dropped from another platform as an information operation. **Low confidence; do not cite as established.**
- Most 2026 reporting of Ukrainian "swarms" describes **large simultaneous raids of individually tasked, expendable drones** — a logistics and production achievement, not inter-drone cooperation. Operation Spiderweb's achievement was smuggling and pre-programmed terminal attack, not autonomous cooperation.

**Where the barrier is genuinely falling is not leaked swarm software.** It is (i) LLM-assisted development of autonomy code (GTG-27005), and (ii) the **theft of a complete drone vision-system software development kit**, its hardware bill of materials and supplier dependencies by a state-linked espionage actor (GTG-20006). Both point the same way: **the scarce asset is now the perception-and-guidance software, not the airframe.** CSIS separately assesses that more than half of the AI-enabling components in Russian unmanned systems come from US-headquartered firms (roughly 69% of memory, 57% of processors, 38% of sensors, with China under 9%) — a supply-chain dependency that cuts both ways as an export-control lever and as a proliferation risk.

### 5.3 AI-assisted planning and coordination (Level 2, partially Level 3)

Three evidence streams point in the same direction, with different strengths.

**Stream 1 — documented operational use of AI in real harmful activity.** Anthropic's September 2026 report documents, across seven harm areas, threat actors using its models; the conventional-weapons section describes LLM assistance to weapons software development, including the GTG-27005 autonomous-swarm project (§3.4) and other cases such as guidance software for a rocket programme with a live field test, and targeting software for electronic warfare. Separately, Anthropic disclosed in September 2026 that it had disrupted bioweapons-related research activity; Reuters reported the same. *(Grade A for the disclosures.)* The earlier, widely reported November 2025 case of an AI-orchestrated cyber-espionage campaign — in which an agentic framework ran reconnaissance, exploitation and exfiltration with humans setting targets and reviewing exfiltration — is the best-documented instance of AI *orchestrating* a multi-step harmful operation rather than merely advising. *(Grade A/B.)*

**Stream 2 — the "uplift" research literature, with numbers.** This is the most methodologically contested area, and the honest reading is that **the findings depend heavily on whether the task is cognitive or physical**.

*Studies finding little or no uplift in physical domains:*
- **RAND (January 2024)** ran an expert red-team exercise in which teams planned biological attacks with and without LLM access. Finding: "using the existing generation of LLMs did not measurably change the operational risk of such an attack"; no statistically significant difference in plan viability, with problematic model outputs "generally mirror[ing] information readily available on the internet". Caveats: small sample, and the result is now roughly two and a half years and many model generations out of date. **It should not be used to argue AI is harmless today.**
- **Hong et al. (2026)**, a randomised controlled trial of novice performance in a **real wet laboratory** using mid-2025 frontier models: "mid-2025 LLMs did not substantially increase novice completion of complex laboratory procedures but were associated with a modest performance benefit." The post-hoc estimate was roughly **1.42× uplift with large error bars**, and the study was **underpowered — only about 36% power to detect a doubling of success**.

*Capability evaluations finding steep improvement in cognitive domains:*
- The **UK AI Safety Institute's Frontier AI Trends Report (December 2025)** found cyber apprentice-level task completion rising from just over **10% in early 2024 to 50%**, the first expert-level task completions in 2025, and a human-expert **time horizon doubling roughly every eight months**. In chemistry and biology, models first beat PhD expert baselines in 2024 and now exceed them on some open-ended questions.
- AISI's cyber-range work on a 32-step corporate-network attack (with **no active defenders**) found average steps completed rising from **1.7 (GPT-4o, August 2024) to 9.8 (February 2026)**, with the best single run completing 22 of 32 steps.

*The methodological objections that apply to all of it:* planning is not execution; the strongest real-world human trial is underpowered; the cyber ranges have no defenders; frontier-lab disclosures serve simultaneous marketing purposes; and "no uplift" findings for 2023–24 models do not transfer to 2026 models.

**Stream 3 — documented AI use in real plots.** The Windsor Castle crossbow case (Jaswant Singh Chail, who was encouraged by an AI companion while planning a 2021 attack and was jailed for nine years in 2023) and the January 2025 Las Vegas Cybertruck case (in which the perpetrator used a chatbot to research targets and explosive effects) remain the clearest individual cases. In both, AI was a **motivational and informational factor**; in neither did it supply material capability, and in neither was a drone involved. A third category is emerging from research: a 2026 demonstration showed that publicly available models could write code letting a roughly **$100 consumer drone stalk a person using facial recognition** — a laboratory benchmark with **no seizure, court case or forensic report following**. *(Grade B for the research; grade C for the cases.)*

**Synthesis.** AI has clearly reduced the cost of **knowledge, drafting, coding and analysis** — a real reduction in the *planning, software and coordination* burden. It has **not demonstrably reduced the physical-access or exposure burden**, which is where plots actually fail. Where AI has changed the economics most decisively is in **cyber**, where the "physics" is digital and the agent can act directly; the November 2025 AI-orchestrated espionage campaign is the best-documented illustration, and notably the AI in that case also **hallucinated credentials and overstated findings, materially degrading the operation**. Where the target is physical, the binding constraints remain materials, airspace, reliability and access.

**The most underrated mechanism** is not "AI teaches you to build a bomb". It is **AI compresses the software half of autonomy**, which used to be the hardest half for a non-state actor. Anthropic's GTG-27005 is precisely a demonstration that the software half can now be attempted by a small group or an individual. The remaining half — making it fly, and making it work more than once — is the half that resists LLM assistance, and it is where the assessment should focus.

**The level distinction is essential.** The 2026 evidence indicates that AI is **materially changing the economics of violence at the state and proxy level** — where production, ISR, logistics and legal tolerance already exist — and **much less at the individual level**. Conflating those two levels is the most common error in current policy commentary.


### 5.4 Europe as a live laboratory for covert uncrewed operations

Between 2024 and 2026, Europe moved from sporadic drone incidents to something that resembles a sustained, deniable campaign. The pattern includes:

- **Airport disruption** at Copenhagen and Oslo (September 2025), Munich (March 2025), and Berlin, Vilnius and Leipzig (2026), plus an airspace shutdown in El Paso, Texas.
- **Reconnaissance over sensitive sites**: military bases (including a Bundeswehr Patriot training site), nuclear facilities (French submarine bases, Belgian nuclear plants, Dutch reporting on incursions at Borssele), LNG terminals and defence-industrial firms.
- **Sabotage and violence adjacent to drones**: parcel incendiaries, arson, cable damage, and a reported plot against a German arms-manufacturer chief executive.
- **Official attribution with caveats**: the German government attributes Leipzig to the GRU; the IISS assesses it "highly likely" that Russia ran a drone campaign; the Dutch AIVD cautions that attribution is hard and often unconfirmed.

**Why this matters for the central question.** This is a **demonstrated, low-cost, low-attribution pathway to producing fear, economic disruption and political pressure inside NATO societies** — using systems that are, on the evidence, human-controlled and often commercially derived. It is the strongest available evidence that the *operational plausibility* level has been crossed in Europe. It is also a live experiment that is teaching both attackers and defenders, in public, what works.

### 5.5 Defender economics (Level 2/3 — a strategic, not tactical, threat)

A €1,000 system that forces the deployment of €1,000,000 of protection is strategically significant even if its destructive effect is small. The evidence here is better than most of the rest of this report.

**Attacker costs (estimates unless noted).** FPV strike drones ~$400–$2,000; commercial quadcopters used as improvised bombers ~$1,000–$3,000; Shahed/Geran one-way attack drones commonly cited at **$20,000–$50,000** but poorly substantiated — CSIS models $35,000, while Defence Express argues the true 2025 Russian figure is nearer **$70,000** and that 2022 Iranian kits cost $193,000–$370,000. A widely repeated 2026 "$4,000" figure attributed to a US official is inconsistent with every other source and should be treated as an outlier. *(Grade A for the CSIS estimate methodology; grade B/C for the rest.)*

**Interceptor costs (documented unless noted).** THAAD $12–13 m; SM-3 $10–22 m; PAC-3 MSE ~$3–4 m; SM-2 ~$2 m; AIM-120 ~$1 m; APKWS ~$35 k all-up; Iron Dome Tamir ~$40–50 k (estimate); the US Army's Next Generation C-sUAS Missile solicitation capped at **$150 k** (documented); the **Merops** interceptor drone at **$15 k** with a documented Lithuanian purchase and a path to ~$10 k; Ukrainian interceptor FPVs **$1,000–$4,000**; Gepard/Skynex gun engagements ~€4,000. *(Grade A for congressional and solicitation figures; grade B/C for estimates.)*

**The official acknowledgement.** Then-Secretary of the Navy Carlos Del Toro told senators the Red Sea campaign cost the service "closely approaching $1 billion in expenditures for munitions". Acquisition chief William LaPlante has said costs above $100,000 a shot are "getting too expensive" and that the target is tens of thousands of dollars. The Vice Chairman of the Joint Chiefs called multi-million-dollar interceptors against cheap drones "a bad exchange". The US Army has launched a Low-Cost Interceptor programme explicitly to stop relying "solely on multimillion-dollar systems to down drones costing a couple thousand dollars". *(Grade A.)*

**The scale at which this now operates — the 2026 Iran war.** In the opening phase of the 2026 war (from 28 February), CSIS records the **United Arab Emirates alone absorbing 1,422 drones and 246 missiles between 1 and 8 March**, with drones accounting for roughly **71% of all recorded strikes**; the opening wave was 867 drones and 339 missiles, followed by 190–392 strikes per day. An analyst estimate put daily Iranian drone launches falling from 720 to 60 by 9 March. The United States reportedly expended **about 65% of its 2,330 Patriot interceptors between February and July 2026**. All interception rates in this conflict are **belligerent claims without independent battle-damage assessment**, and should be treated as such — but the *shape* of the problem is unmistakable: a single exchange consumed a substantial share of a superpower's high-end interceptor inventory. This is the clearest demonstration to date that **cheap mass, not sophistication, is what exhausts a modern air-defence enterprise.** *(Grade B for the CSIS aggregation; grade C for the interceptor-expenditure figure.)*

**Where the asymmetry actually bites.** Open-source exchange ratios cluster around **100:1 to 230:1 in the attacker's favour** for high-end interceptors, but the more dangerous number is the **production-exchange ratio**: PAC-3 output of roughly 600 interceptors a year against adversaries able to produce hundreds of cheap drones a week. For the *low end* of the threat — small drones over a civilian site — the asymmetry is far less severe, because guns, electronic warfare, passive barriers and cheap interceptor drones are cost-competitive. This distinction is essential: **the "defender economics" argument is strongest for the military tier and weakest for the airport/government-building tier**, and conflating them produces misleading conclusions in both directions.

**Counter-evidence to the "defenders can't win" narrative.** Roughly 90% of Shaheds are intercepted or fail; electronic warfare deflects a substantial share of them at near-zero marginal cost (Ukrainian experience suggests ~40% in large attacks); passive measures such as netting, hardening, dispersal and decoys are cheap and frequently decisive; and interceptor-drone costs are falling fast. The attacker also carries a poor cost-per-effect: CSIS's estimate for Russia is roughly **$350,000 per target struck**. *(Grade B.)*

**But autonomy degrades the cheapest defence.** Against a fibre-optic drone there is no radio link to jam and no RF signature to detect; against visual terminal navigation there is no GNSS signal to spoof. The practical consequence is that the defender's cost advantage narrows precisely as the attacker adopts the technologies described in §3. **This is the mechanism by which autonomy and defence economics interact, and it is the strongest reason to take the trend seriously.**

**A significant evidence gap.** Civilian-site protection costs are almost entirely unpublished. Gatwick 2018 remains the only well-documented cost stack (policing £459,000; airport ~£1.4 m; airlines ~£50 m; aggregate estimates above £60 m) — **but note that Gatwick's own cause is contested** (§4.3b): no drone was ever evidenced, and the case is a better guide to the *cost of disruption* than to the *cost of defence*. The 2025–26 Copenhagen, Oslo, Berlin, Vilnius, El Paso and Leipzig closures have disruption counts but no official cost accounting. Anyone quoting a precise figure for "the cost of protecting a stadium/prison/port" is almost certainly extrapolating.

---

## 6. Speculative pathways — technically conceivable, evidentially insufficient

These are recorded to be monitored and, where possible, falsified. **None is currently supported by evidence at the operational-plausibility level.**

1. **Autonomous mass-casualty attack on a crowded civilian venue.** Requires category-D swarm behaviour (§5.2) plus reliable target discrimination plus payload effects, none of which is demonstrated outside simulation. The strongest counter-evidence is that no non-state actor has achieved even a *single* confirmed autonomous lethal engagement. **Low plausibility, high impact, monitor.**
2. **LLM-orchestrated multi-vector operation.** An agentic system coordinating reconnaissance, timing and multiple simultaneous attacks. The cyber analogue is documented; the kinetic analogue is not. The binding constraint is physical, not computational. **Low plausibility near-term.**
3. **Autonomous maritime or port sabotage.** Commercial USVs, cheap sonar/vision, and GNSS-denied navigation combine plausibly, and ports are soft targets. No documented case. **Low–moderate plausibility; the most under-studied domain relative to its consequences.**
4. **Autonomous assassination.** An individual-target system needs terminal tracking of a specific person, which is harder than tracking a *class*. The Antwerp plot shows intent and a 3D-printed airframe, but the plan was foiled and there is no evidence of autonomy. **Low–moderate plausibility; this is where the most consequential single event would occur.**
5. **AI-optimised evasion of counter-UAS.** Adaptive route and timing selection to defeat detection. Plausible in principle; no evidence located. **Speculative.**
6. **Weaponised balloons and other novel vectors.** The Commission's February 2026 action plan records hundreds of meteorological balloons used for smuggling. Cheap, deniable, hard to police, and currently treated as a logistics rather than a violence problem. **Emerging, under-analysed.**

---

## 7. Threat landscape

This section deliberately stops short of prediction. It identifies what deserves monitoring, what still protects us, and what would signal that the barriers are being crossed.

### 7.1 The capability combinations that deserve closest monitoring (1–5 years)

Ranked by the product of plausibility and consequence, not by drama.

**Tier 1 — most likely to materialise, moderate consequence.**
1. **Jam-resistant, GNSS-denied reconnaissance over sensitive sites.** Already happening at scale in Europe. Barriers: essentially none for a competent operator. The consequence is intelligence gain, target development and psychological effect rather than casualties.
2. **Contraband and logistics drones.** Already commercialised in criminal markets (prisons, borders, maritime). Consequence: corrosion of custodial and border control, funding for organised crime.
3. **One-way attack drones against infrastructure and transport nodes, human-controlled.** Demonstrated in Europe (Leipzig) and in conflict. Consequence: economic disruption, insurance cost, public fear, possible casualties.
4. **Semi-autonomous terminal-guidance strike on a pre-selected target.** The technology is demonstrated; the constraint is acquisition, integration and reliability, not knowledge.

**Tier 2 — plausible, higher consequence.**
5. **Explosive-drone assassination attempt against a protected individual.** The Antwerp plot shows intent, target set and a 3D-printed airframe. Foiled, but the barrier is intent and access to explosives, not drone skill.
6. **Small-scale coordinated multi-drone attack (2–5 systems, individually tasked) on a soft target.** Coordination of this order needs no autonomy.
7. **AI-assisted reconnaissance and target development** using commercially available imagery, computer vision and open-source data — a low-cost substitute for a state intelligence cycle.

**Tier 3 — lower plausibility, very high consequence, monitor closely.**
8. **Autonomous target-selection in a non-state attack.** No case anywhere. The binding constraints are target discrimination, reliability and cost-per-effect, not compute.
9. **Autonomous mass-casualty attack on a crowded venue.** Requires capabilities no actor has publicly demonstrated (§5.2). Treat any confident claim as rhetoric until forensics exist.
10. **Port, maritime and undersea sabotage with uncrewed systems.** Under-studied relative to consequence; commercial USV and ROV technology is widely available.

**The single most important combination to watch is not a weapon. It is the pairing of (i) cheap jam-resistant airframes and (ii) machine-vision terminal guidance, because together they remove the defender's cheapest countermeasure and force a shift to detection and hard-kill — the expensive end of the defence spectrum.** Everything else in this report is, in strategic terms, downstream of that.

### 7.2 The strongest remaining barriers to misuse

Ranked by how much they actually bind, based on the evidence above.

1. **Access to explosives and precursors.** Named by the NCTV as the principal obstacle to an effective drone attack, and it is the barrier least affected by AI. Knowledge does not manufacture a reliable initiator or a stable explosive.
2. **Physical integration and reliability.** The Bulletin experiment is the cleanest evidence: months of work, expert help, and a novice still produced a machine that destroyed itself. Wiring, calibration, power, thermal management and flight testing resist language models.
3. **Target discrimination in clutter.** Distinguishing a specific person, vehicle or object from look-alikes in a crowded, cluttered, civilian environment is far harder than tracking a class. Staged demonstrations (inflatable tanks; visually similar targets with one command vehicle) illustrate the gap.
4. **Cost per effect, not cost per unit.** Roughly 90% of one-way attack drones are intercepted or fail; the modelled Russian cost is ~$350,000 per target struck. Cheap launches are not cheap results.
5. **Intent, recruitment and operational security.** The binding constraint on terrorism has never been capability alone. A person willing and able to kill at scale is rarer than the technology.
6. **Human control that is not actually a barrier.** Several analysts argue human-in-the-loop approval for every lethal engagement is "effectively dead" in high-intensity practice. That is a *normative* erosion indicator, not a practical barrier for a non-state actor, who faces no doctrine at all.
7. **Detection and passive defence.** Where a radio link exists, jamming and RF detection remain cheap and effective. Most fixed-site defence is passive and under-counted.

### 7.3 Observable indicators that the barriers are being crossed

These are the tripwires. Each is stated so that it can be falsified or confirmed by open reporting.

**Judicial and forensic indicators (highest value).**
- A **prosecution or official finding** in Europe involving a drone with **no radio control link** or with onboard target-classification in a criminal or terrorism case.
- Recovery of a **combined system** — airframe, onboard compute, vision model and payload — in a non-state case, with technical analysis published.
- A **confirmed successful assassination attempt** using a drone in Europe.

**Market and accessibility indicators.**
- A commercial, openly sold **vision module or software package that performs target tracking and terminal guidance** outside geofenced or certified use. (Note: hobby "follow-me" and object-tracking features already exist legitimately; the indicator is the *combination* with payload release and the absence of limits.)
- A **turnkey autonomous kit** advertised below roughly $2,000 with end-to-end autonomy claims, and independent verification of those claims.
- A measurable fall in the price of the enabling compute/vision stack (already roughly $250/$70) or an export-control loosening on AI-enabled drone components.

**Model and software indicators.**
- An **open-source project** that packages perception, tracking and terminal guidance into a deployable stack with documentation at hobbyist level.
- Evidence of **frontier-model jailbreaks marketed specifically for weapons development**, or a documented case of an LLM producing a *working*, fielded autonomy system rather than a simulation.
- Further **state espionage targeting drone-vision supply chains** (as in GTG-20006), suggesting that software, not hardware, is the scarce asset.

**Institutional and procurement indicators.**
- Further **step-change increases in counter-UAS spending** (the UK quadrupled in one year to >£200 m; NATO committed >$40 bn) or the introduction of **mandatory kinetic counter-drone capability at civilian airports, prisons and stadiums**.
- **Insurance repricing** that explicitly names drone exposure in aviation, events or critical-infrastructure cover.
- Legislation granting **new domestic interdiction powers** (the UK Armed Forces Bill; Dutch prison authority from July 2026; the French law for private infrastructure protection). Each is a signal that a state has concluded the existing framework is inadequate.

**Behavioural and narrative indicators.**
- A shift from **state-proxy to criminal or terrorist** use of jam-resistant systems in Europe.
- The appearance of **drone-specific tactical guidance in extremist propaganda** (already present at the manual-sharing level per the NCTV).
- A rise in **contested "first autonomous kill" claims** — itself a sign of normative erosion, because the value of making such a claim exceeds the value of verifying it.
- **Diversion of counter-drone effort from the eastern flank** in a way that leaves civilian protection under-resourced, or the reverse: civilian investment crowding out military defence.

---

## 8. Why the threat may be overstated

A serious assessment must argue its own case. The following are the strongest reasons the hypothesis could be wrong, or at least premature.

**1. The definitive absence of the event.** No successful terrorist drone attack has ever been recorded in Western Europe. Not one. The technology has been cheaply and widely available for roughly a decade. This is not proof of safety — precursor indicators matter — but it is a base rate that any alarmist assessment must explain away, and most do so by assertion.

**2. The substitution problem.** For nearly every harmful outcome imagined here, there is a cheaper, simpler, more reliable method. A vehicle, a knife or an arson attack requires no technical skill, no supply chain, no test flights and no software. Groups that want to kill people overwhelmingly choose these. The NCTV states this explicitly: an attack with simple means "will remain more likely, also for jihadists."

**3. Reliability is genuinely hard, and the evidence says so.** A journalist with months of time, expert subcontractors and frontier models produced a drone that crashed itself. DARPA spent years and closed OFFSET without a named transitioned system. The US Department of Defense's own 2026 solicitation states that it lacks the inventory and doctrine to deploy massed coordinated robotics, and its flagship 2026 demonstration involved **four** drones against inflatable tanks. When the organisations with the largest budgets in the world are still at four, claims that a criminal group is at a hundred should be treated with scepticism.

**4. "Autonomy" is doing a lot of work in most claims.** Many "autonomous drone" claims resolve, on inspection, into pre-programmed flight, GPS waypoint following, or a human selecting the target. The Zaporizhzhia case — the best-documented AI lethal strike — involved a human choosing the target area. The strongest fully autonomous claim (Chasiv Yar) is single-source and officially unconfirmed. The most-cited "first autonomous kill" (Kargu-2 in Libya) is unsupported by its own underlying UN report.

**5. The "swarm" label is systematically inflated.** The same word describes a 22,580-drone light show, a four-drone tactical demonstration, and a mass raid of individually tasked one-way drones. None is a swarm in the militarily meaningful sense. Programmes that would know — OFFSET, Replicator, Swarm Forge — are the ones whose documents say the capability does not yet exist.

**6. Vendor and advocacy incentives run both ways.** Defence firms and autonomy startups have an interest in threat inflation; so do campaigners against autonomous weapons, whose fundraising depends on the imminence of the threat. The Bulletin's investigation was supported by the Future of Life Institute, an advocacy organisation. Anthropic's misuse report simultaneously documents harm and markets its own safeguards. None of this makes the reporting false; all of it requires grading sources rather than accepting them.

**7. The cheapest defence is being under-sold.** The "defender economics" argument is strongest for high-end missiles against mass salvos, and weakest for the airport, prison and critical-site tier where the realistic threat sits. There, guns, jamming, netting, hardening and cheap interceptor drones are cost-competitive. Framing the entire problem as an unwinnable cost asymmetry risks buying the wrong things.

**8. Attribution and threat inflation are entangled.** The AIVD cautions that suspected Russian involvement in drone sightings is hard to establish and often unconfirmed, and that a detected drone "is not always a threat". Danish police retracted a claim about "verified drones". A 2016 drone sighting that helped shape public anxiety was probably a plastic bag. Some European drone panics have been genuine; some have not.

**9. Overreaction carries its own costs.** Airspace closures, mass surveillance, registration regimes and kinetic interdiction over populated areas all impose costs on civil aviation, the legitimate drone economy, privacy and the rule of law. A threat assessment that ignores the cost of its own remedies is incomplete. The most likely failure mode in the next five years may be **over-investing in spectacular defences against a spectacular threat that does not arrive, while under-investing in the mundane protections that would stop the unglamorous attacks that do.**

**10. Several flagship incidents do not survive scrutiny.** Gatwick 2018 produced no photograph or video of a drone, no charges, an unpublished review and a police payout; Copenhagen's police concluded in 2026 that they could neither prove nor deny drones were present and admitted their earlier framing was not adequately caveated; Madrid's Guardia Civil reportedly concluded the drone that closed the airport never existed; Poland's recovered devices were unpowered decoys; Sweden's "nuclear plant drones" date from 2022, not the recent wave; and no authority has ever claimed a drone cut a Baltic cable. A field in which the most-cited examples are this fragile needs its base rates handled with unusual care.

**11. Genuine machine-vision autonomy in non-state hands is a laboratory result, not a criminal one.** A 2026 research demonstration showed that publicly available AI models could write code letting a roughly **$100 consumer drone** stalk a person using facial recognition. **No seizure, court case, forensic report or official assessment has followed.** The gap between "a benchmark exists" and "an actor is using it" is precisely the gap this report is about, and it has not been closed.

**12. The official statistics on criminal drone use show diffusion without lethality escalation.** Colombia — the world's most intense non-conflict drone environment — records **690 drone attacks over more than three years, with 22 soldiers, 3 police officers and 6 civilians killed**, and only about **4% of drone incidents assessed as attacks**. That is a serious law-enforcement and counter-insurgency problem and a comparatively modest casualty problem: roughly **31 deaths across three years**. Cartel and insurgent blast escalation is fastest in **car bombs and ground IEDs**; a single September 2026 car bomb in Zacatecas used roughly 200 kg of explosives and injured eleven — more blast effect than any documented cartel drone attack. Over 60% of cartel drone attacks hit civilians, and casualties per attack remain low relative to firearms and vehicle-borne IEDs. Colombia's own counter-drone programme has meanwhile **stalled** (only 1 of 119 bidders qualified; enabling directive annulled in September 2026), which is a reminder that **declared counter-measures are not delivered counter-measures** — and that the state-side capability gap is often administrative rather than technological.

**13. Defenders are adapting faster than the pessimists assume.** US Northern Command reported **300+ cartel-linked drones stopped in 2026** (~100 in August alone) and roughly a 75% fall in Rio Grande Valley incursions after directed-energy employment; Colombia claims ~96% neutralisation; Rio created a dedicated counter-UAS unit in March 2026; and UK and Irish prison hardening cut incursions sharply. Counter-UAS is not a solved problem, but it is not a losing one either.

**The honest position** is therefore neither alarm nor dismissal. It is that the *accessibility* of a meaningfully more capable class of system has clearly increased; the *operational plausibility* of a serious attack in Europe has increased modestly and is already demonstrated by state proxies; and *demonstrated misuse by non-state actors* remains confined to foiled plots, contraband, reconnaissance and criminal use — with no successful European terrorist drone attack and no confirmed autonomous non-state kill anywhere.

---

## 9. European, NATO and Dutch implications

### 9.1 For NATO and the EU

- **The threat is already inside the perimeter.** The Leipzig case establishes that armed drones have been delivered to a NATO airport by a state intelligence proxy. This is not a future scenario; it is a 2026 precedent, and it changes the planning assumption from "could this happen?" to "how often and against what?"
- **The capability gap is institutional, not just technical.** Europol's assessment is blunt: the gap between the threat and the ability to mitigate it is "not only technological but also relates to regulations, training, data sharing and infrastructure". The Commission's February 2026 action plan names the actors and the vectors — including meteorological balloons — and proposes extending registration to all drones above 100 g. Implementation, not diagnosis, is the constraint.
- **Legal authority is the binding domestic constraint, and it is unsettled at EU level too.** Romania's military could track but not engage a drone over its own territory because of legal uncertainty — "Ukraine is at war, but Romania is at peace". That is not an isolated national failing. **Frontex concedes that "more work [is] needed to address how to deal with neutralisation in terms of competences, both at national and European level", and EASA states plainly that "neutralisation is NOT in the remit of EASA."** The gap is therefore legal and jurisdictional, not technical. Until states resolve who may jam, seize, down or cyber-take-over a drone, over whose property, under whose authority, and with what liability for falling debris, capability will lag intent. The third-country equivalent is the Dutch Public Prosecution Service's pending request for legislative change to treat drone-enabled smuggling as a serious offence. Any European state that buys effectors before resolving competence will own a capability it cannot lawfully use.
- **Counter-drone effort risks being misallocated.** Poland's €3.8 bn programme is aimed at the military eastern flank. The Leipzig-class threat is a quadcopter the size of a microwave oven at a cargo airport. The technologies and the doctrine are not the same, and ECFR warns explicitly against a "hotch-potch" of overlapping national and EU projects. The published EU delivery schedule — a Drone Security Package in Q3 2026, "EU trusted" drone labelling in Q4 2026, rapid counter-drone emergency teams by Q4 2026, and a counter-drone centre of excellence in Q1 2027 — is ambitious relative to the competence questions above.
- **The institutional pull toward automation is present inside NATO even without anyone adopting an autonomous weapon — and it carries a different risk than the one under discussion.** At RUSI on 26 June 2026, an Elbit executive (and IDF reservist major general) presented Israel's Tzayad system as detecting **850,000 "real-time intel targets" — roughly 1,000 a day — between October 2023 and the end of 2025**, and as cutting fire-support timelines from **40–50 minutes to 1–7 minutes**, while stating that a human always made the decision. **NATO's second most senior commander was on that panel.** Whether or not the target figure is contested (Elbit disputes the interpretation), the direction is unmistakable: allied militaries are being sold decision-speed compression, and the foreseeable failure mode is **automation bias** — humans ratifying machine output faster than they can meaningfully review it — rather than the arrival of a "killer robot". That risk is already live; it does not require full autonomy to materialise.
- **Treat the headline funding figures with care.** NATO's "over USD 40 billion" counter-drone commitment **has no published baseline year, breakdown or methodology**, and NATO documents themselves conflict on whether the same contract is denominated in dollars or euros. It is a political pledge aggregated across Allies, not a contract value. The same caution applies to headline EU instruments (roughly €1 bn for drone R&D under the EDF, €240 m under EDIP, €150 m and €250 m calls). The one unusually concrete per-unit figure located — the Merops interceptor at roughly **USD 14,500**, described as about one tenth the cost of a Shahed — is attributed to officials rather than a contract and should be held loosely.
- **Interoperability and information-sharing matter more than any single effector.** A common operating picture and shared incident data would let authorities detect concerted campaigns rather than a sequence of unrelated sightings.

### 9.2 For the Netherlands and neighbouring countries

**The Dutch institutional position is unusually clear and unusually balanced.** The NCTV's June 2026 threat assessment (grade A) states simultaneously that drones are not currently the most likely attack method, that no successful terrorist drone attack has occurred in Western Europe, that an effective attack requires extensive explosive and detonation knowledge and operational planning, and that the threat "may increase in the coming years". The AIVD adds the crucial caveat that drone sightings are not always threats and that alleged Russian involvement is often unconfirmable. **Any Dutch policy response should be built on that dual finding, not on one half of it.**

Dutch academia reinforces the caution. Leiden University's *Tussen mogelijkheid en realiteit* (June 2026) counted **only 34 drone-related attack incidents in Europe between 2010 and 2025**, with **over half never executed**, and concluded that "criminal organisations and state actors play hardly any role". Dutch police data for 2023 logged **298 drone detections with only 55 assessed as suspicious**. The Netherlands therefore has both a real prison-smuggling problem and a documented signal-to-noise problem — and no prosecution specifically for criminal drone overflight has been identified. **The Dutch gap is not primarily technological; it is measurement, legal authority and information-sharing.**

**Concrete Dutch and neighbouring exposures.**

- **Critical infrastructure.** Schiphol and Rotterdam are the obvious high-value nodes. Dutch reporting records drone activity in the no-fly zone around the **Borssele nuclear plant** (July 2026) and describes rising drone-related risk around **embassies in The Hague**, with enforcement lagging (August 2026). European reporting records Russian drone surveillance of nuclear sites generally, with 144 incidents reported in a year.
- **Defence-industrial exposure.** NOS reported in September 2026 that attacks on the European defence sector have put Dutch companies on alert — the same supply chains that GTG-20006 targeted for drone-vision theft.
- **A concentrated wave in November–December 2025.** Dutch military police **opened fire on drones at Volkel air base** on 21 November 2025; the devices escaped and none were recovered, and the Ministry of Defence declined to say what sensors or weapons were used. **Eindhoven Airport** halted flights for about two hours on 22–23 November after drone sightings; a large number of drones were reported over the **Terneuzen port area** on 17 November. Further sightings were reported near the **NATO command centre at Brunssum**, **Maastricht Aachen Airport** and **Schiphol**. The NCTV described the rising number of unexplained sightings as "worrying". On **7 December 2025, two F-35s were scrambled** from Volkel under Quick Reaction Alert against an unidentified aircraft later identified as a drone that had not communicated with air traffic control — and "it is unclear who was behind the drones". *(Grade C, MoD-confirmed.)* This is the clearest evidence that the Netherlands already faces a persistent, unattributed drone-presence problem over sensitive sites, and that the response has escalated to armed force and fighter interception.
- **A Dutch data gap.** Unlike the UK, the Netherlands publishes incident narratives but **no aggregated counter-drone incident series**. Without one, neither the trend nor the effect of policy changes can be measured.
- **Custodial and criminal — already settled, not forecast.** In a Dordrecht case on 22 April 2026 a 34-year-old was convicted of smuggling drugs and phones into prisons by drone — approximately **70 drone flights between April 2021 and February 2024** across the Netherlands, Belgium and Luxembourg, earning about €30,000 — receiving a suspended sentence, community service and a fine. The Public Prosecution Service argues drone deliveries are a growing prison-security problem and is pushing to **reclassify drone-enabled phone smuggling from a minor violation to a criminal offence**, which would grant police stronger investigative powers and **requires a change in legislation**. From **1 July 2026, Dutch prisons were given authority to take down drones carrying drugs or weapons**. Dutch counter-drone enforcement powers therefore remain a live legislative question, not a solved one.

- **Military sites and personnel.** Reported incursions near Dutch military facilities mirror German and UK patterns; the August 2026 arrest in Ede over an alleged threat to military personnel is a reminder that the target set extends to people, not just sites.

**Belgium** is the most instructive neighbour on the terrorist side (the October 2025 Antwerp plot against the Prime Minister and others, involving a 3D-printed drone and an IED) and on the criminal side ("drone-dropping" above Hasselt prison at ~€450 per package). **Germany** carries the most significant state-proxy case (Leipzig), the largest incident volume (>1,000 suspicious flights in 2025) and the most developed response (law change, mobile drone-defence units, protective-shield plans). **The UK** shows the clearest escalation in official reporting: 266 incidents near Defence sites in 2025 against 126 in 2024, counter-UAS spend quadrupled to >£200 m, and roughly 340 incidents in the year to August 2026. **The Nordics** show the sharpest policy reactions (Finland's €44 m Border Guard allocation, the political consequences of the Latvian incursion, the Copenhagen and Oslo closures).

**What the Netherlands should watch specifically.**

1. **The legal-authority gap.** The Dutch model routes threatening-drone incidents through the local "driehoek" (mayor, police, prosecutor) with the police enforcing under the authority of the Public Prosecutor's Office. That is an incident-response model, not a persistent-defence model, and it is untested against a sustained campaign or an armed drone at a civilian airport.
2. **Detection coverage versus the sites that matter.** The Commission and Europol both identify detection and information-sharing as the bottleneck. For the Netherlands the question is whether Schiphol, Rotterdam, Borssele, the embassies and the defence-industrial base have layered detection and a shared picture, or a set of disconnected local arrangements.
3. **The explosives bottleneck as the key preventive lever.** Because the NCTV identifies explosives and precursors as the principal barrier, counter-terrorism effort against drone attack should disproportionately target precursor acquisition, not drone acquisition. Drone ownership is ordinary; precursor acquisition is not.
4. **Attribution discipline.** Dutch intelligence has been commendably cautious publicly. That caution should be preserved: over-attributing incidents to Russia produces both strategic error and a loss of public trust when claims cannot be substantiated.
5. **Not conflating the military and civil threats.** The Dutch contribution of F-35s to the Polish airspace response and the domestic quadcopter-over-a-prison problem are different problems requiring different budgets, legal frameworks and technologies.

---

## 10. Conclusions

### What has changed?

Between 2023 and 2026, four things changed materially and one did not.

**Changed:** (1) machine-vision terminal guidance moved from experiment to battlefield routine, driven by electronic warfare; (2) the compute, sensors, models and navigation software needed for autonomy became commodity items priced in the tens to low hundreds of dollars; (3) large language models became a real accelerant for the *software* half of autonomy, documented in an actual attempted weapons project, while remaining poor at the physical half; and (4) the diffusion channel widened from state transfers to individuals, criminals and covert operatives — visible in Latin American criminal drone use, European prison smuggling, and the GRU-attributed Leipzig attack.

**Unchanged:** making an autonomous weapon *work reliably, repeatedly, and at a chosen target in a cluttered civilian environment* remains hard, expensive and skill-intensive. The organisations with the largest budgets in the world are still demonstrating four drones at a time. Nothing in the 2026 record shows a non-state actor achieving a confirmed autonomous lethal engagement.

### What is genuinely possible now?

- **Possible and cheap:** jam-resistant, GNSS-denied reconnaissance and single-use attack; machinery-vision terminal guidance onto a human-designated target; counter-drone reconnaissance of sensitive sites; contraband delivery; disruption of airports and infrastructure by a handful of small drones.
- **Possible and moderately hard:** semi-autonomous terminal attack integrated by a competent technical group; small coordinated multi-drone operations; AI-assisted reconnaissance and target development.
- **Possible but not demonstrated:** autonomous target selection by any non-state actor; adaptive cooperative swarming; mass-casualty autonomous attack.
- **Not possible on current evidence:** a "Slaughterbots"-style autonomous swarm finding and killing people in a civilian environment.

### What should we start watching before it becomes commonplace?

Watch the **combination**, not the components. Individually, cheap drones, commodity AI, open-source autonomy software and LLMs are all unremarkable. Their combination — into jam-resistant systems that need no operator link and can find a designated target on their own — is what removes the defender's cheapest countermeasures and makes the economics of protection harder.

Watch for the crossing of five specific lines: **(1)** a European prosecution or forensic finding involving a drone with no control link; **(2)** recovery of a non-state system with onboard target classification; **(3)** a commercial target-tracking-and-release package sold without limits; **(4)** a confirmed drone assassination in Europe; and **(5)** evidence of AI-assisted planning inside a European case.

Watch the **state-proxy channel** more closely than the terrorist channel. On the 2026 evidence, a NATO state's adversary is far more likely to be the first to use armed drones inside Europe than any jihadist or criminal group — and each such operation teaches, normalises and diffuses the technique.

And watch the **mundane**, because that is where harm is actually accumulating: reconnaissance, contraband, harassment, disruption and intimidation, carried out with ordinary systems and a human at the controls. The spectacular autonomous attack may never arrive. The erosion of the assumption that a NATO society's airspace above its own infrastructure is safe already has.

---

## Appendix A — Source register (selected, with grading)

**Primary / official (grade A unless noted)**

| Source | Date | What it establishes |
|---|---|---|
| NCTV, *Dreigingsbeeld Terrorisme Nederland* June 2026 | 30 Jun 2026 | No successful terrorist drone attack in Western Europe; extensive knowledge and explosives access still required; threat may increase; Antwerp plot detailed |
| AIVD, *Jaarverslag 2025* | 23 Apr 2026 | Rising drone reports; attribution hard and often unconfirmed; "technology makes attack methods more accessible" |
| Europol, *TE-SAT 2026* | Jul 2026 | "Wider access to the required materials and technical guidance… lowered the threshold"; 5 EU attacks in 2025; AI misuse |
| Europol, *The Unmanned Future(s)* | 8 Dec 2025 | Capability gap is "substantial"; gap is regulatory and training-related as well as technological |
| European Commission, *Action Plan on Drone and Counter Drone Security*, COM(2026) 81 | 11 Feb 2026 | Threat actors named; balloon-borne smuggling vector; registration above 100 g |
| Europol, EU-SOCTA 2025 (executive summary) | 2025 | Organised crime "accelerated by AI"; drones notably **not** central to the executive framing |
| UK MoD, drone powers and incident statistics | 2 Feb 2026 | 266 incidents near Defence sites in 2025 vs 126 in 2024; >£200 m counter-UAS; Armed Forces Bill |
| Anthropic, *Detecting and countering misuse of AI: September 2026* | 10 Sep 2026 | GTG-27005 autonomous FPV swarm software project (TRL 3–4); GTG-20006 theft of a drone vision SDK; conventional-weapons classifiers |
| NCTV, Drones topic page | current | Dutch roles: NCTV coordination, IenW airspace, police enforcement under OM authority, local "driehoek" |
| German government attribution of Leipzig attack to the GRU | Sep 2026 (via DW, Reuters) | Armed drone delivered to a NATO cargo airport by a state proxy |

**Independent research (grade B)**

| Source | Date | Contribution |
|---|---|---|
| CSIS, Russia's drone cost-effectiveness; "Defining Autonomy: Why Software, Not Drones, Will Decide the Next War" | 2025–2026 | Shahed cost per effect (~$350 k/target); V2U autonomy; software as the locus of lethal decision |
| IISS, *Russia's UAV Campaign Over Europe* | Jun–Jul 2026 | "Highly likely" Russian drone campaign against Europe; shadow-fleet launch |
| ECFR, *Buzzkill: How to defend Europe against drones* | Aug 2026 | Dual threat framing; defender cost asymmetry; no major terrorist drone attack to date |
| Bulletin of the Atomic Scientists, "AI helped me (almost) build a killer drone" (with Mother Jones) | Aug 2026 | First-person demonstration that AI lowers the knowledge barrier and not the physical one; note FLI support |
| War on the Rocks, "Fences Not F-35s" | Jun 2026 | Exchange ratios ~100:1–230:1; production-exchange ratio; ~40% EW deflection |
| CRS R44175 | current | Official US cost-per-shot commentary (Del Toro, LaPlante, Grady) |
| Swarm audit (Darpa OFFSET, Replicator/DAWG, Swarm Forge/Crucible, Camp Blanding, Dstl, China Atlas) | 2021–2026 | Swarm claims resolve to 4-, 8- and 96-drone demonstrations or light shows; DoD solicitation concedes the gap |

**Journalism (grade C unless single-source, then D)**

New York Times (24 Aug 2026), Meduza, Gizmodo on the AI-guided Zaporizhzhia strike; New Scientist / Ars Technica / Small Wars Journal on the contested "Terminator mode" claim; DW, Euronews, Reuters, Welt am Sonntag on Leipzig; VRT, NRC, AD, de Volkskrant, NOS on the Antwerp plot; NPR, PBS, NYT, ESPN on the foiled White House plot; CNN, InSight Crime, GI-TOC, WSJ on Latin American criminal drone use; NOS, AD, Dronewatch, Telegraaf, Den Haag Centraal, bnr on Dutch developments; The Independent, Kyiv Independent, Arab News on UK incident counts.

**Weak evidence — flagged (grade D/E)**

Vendor availability, range and hit-rate claims; the "$4,000 Shahed"; laser "$5 per shot"; "one operator controls hundreds"; the Lancet-on-Kyiv "AI swarm" inference from debris markings; all "first AI drone swarm" retrospectives of Gaza 2021; the Kargu-2 autonomous-kill claim.

---

## Appendix B — What does and does not transfer from battlefield to European civil society

| Battlefield feature | Transfers? | Why |
|---|---|---|
| Machine-vision terminal guidance | **Yes, partially** | The software and hardware are commodity; the hard part (integration, testing) is not theatre-specific |
| Fibre-optic jam immunity | **Yes** | A commercial technology; removes RF jamming as a defence |
| GNSS-denied navigation | **Yes** | Relevant to any defended or spoofed environment |
| Mass production and daily iteration | **No** | Requires state industrial mobilisation and a live feedback loop |
| Six-million-drone annual output | **No** | Not reproducible, and not needed for a single attack |
| Large coordinated raids | **Partly** | Coordination of a handful of individually tasked systems is feasible; theatre-scale mass is not |
| Adaptive autonomous swarms | **No** | Not demonstrated even in theatre |
| Interceptor-drone economics | **Partly** | The cost curve transfers; the skilled operators and rules of engagement do not |
| Permissive rules of engagement and test ranges | **No** | Europe's legal and airspace constraints are a genuine barrier — and a genuine policy choice |
| Target-rich, consenting-adversary environment | **No** | Civilian environments raise discrimination difficulty and legal consequence |
| State logistics, intelligence and recovery support | **No** | The real asymmetry between a state and a group |
| Deniable proxy operations | **Yes — and already transferring** | The Leipzig case is proof |

---

## Appendix C — Method, limitations and confidence

**Method.** Eight parallel open-source research strands (battlefield autonomy; Middle East and other theatres; GNSS-denied navigation and edge AI accessibility; swarm claims; criminal and terrorist misuse; NATO/EU/national institutions; defender economics; AI-assisted planning), each required to grade sources and separate demonstrated, claimed and inferred. These were combined with direct retrieval of primary documents — NCTV threat assessments, the AIVD annual report, Europol TE-SAT 2026 and *The Unmanned Future(s)*, the Commission's 2026 drone action plan, NATO's "Drone Edge", the UK MoD release, ECFR and IISS analysis, the Anthropic September 2026 report, and the Bulletin's first-person experiment.

**Supporting evidence base.** The eight underlying strand briefs and their source files are retained in the research workspace: `russia-ukraine-drone-autonomy-brief.md`, `ai-targeting-loitering-munitions-brief.md`, `findings/generic_enablers_brief.md`, `swarm-audit-brief.md`, `criminal-misuse-brief.md`, `drone-ai-threat-brief.md`, `defender-economics-brief.md`, and `ai-planning-uplift-brief.md`, with the consolidated source register in `sources-bibliography.md`. The strand briefs carry additional per-claim confidence ratings and source URLs not reproduced here.


**Principal limitations.**

1. **A major search-tool failure occurred during the research window.** The primary web-search facility failed repeatedly with an upstream error. Discovery fell back to news-RSS search, direct document retrieval, publisher site searches and sitemaps. This introduces **recall bias toward English-language and easily indexed sources**, and toward outlets with accessible site search. Non-English primary material (Chinese, Russian, Turkish, Farsi, Arabic) is a known gap, and the assessments of Chinese and Turkish systems rest on English-language secondary reporting.
2. **Some 2026 items could not have canonical URLs resolved** and are cited by title and publisher; these are graded lower accordingly.
3. **Paywalled sources** (notably the New York Times analysis of the Zaporizhzhia strike, and Financial Times and Bloomberg material) were assessed through corroborating secondary reporting, which is a real constraint on the strongest single case in this report.
4. **Wartime claims are inherently contested.** Ukrainian and Russian statements about autonomy serve information-operations purposes in both directions; Israeli statements about AI targeting likewise. Where a claim rests on one belligerent's technical analysis, that is stated.
5. **Vendor and advocacy incentives are material** in this field and are flagged at each relevant point.
6. **National agency primary sourcing is uneven.** The Dutch, UK, German, EU and NATO material rests on primary documents read directly. **Primary quotations from the French (DGSI), Swedish (Säpo), Danish (PET), Norwegian (PST) and Belgian (OCAM) services were not secured**, and the treatment of those countries rests on agency framing plus secondary reporting. Institutions that publish little in English are systematically under-represented for the same reason. Where a claim depends on this material, it is graded C or lower. This is the weakest part of the evidence base and the first thing to strengthen in any follow-up.
7. **This is a point-in-time assessment.** The rate of change between 2023 and 2026 was high; the indicators in §7.3 are designed to be re-tested rather than assumed to hold.

**Overall confidence.** *High* that the enabling components and software are accessible and cheap; *high* that terminal-phase machine vision is established military practice; *high* that no successful terrorist drone attack has occurred in Western Europe and no non-state autonomous lethal attack is confirmed; *medium* that a Russian fully autonomous system is fielded at low volume; *medium* that the threat from drones to European societies will increase over 1–5 years; *low* that a fully autonomous mass-casualty attack by a non-state actor is plausible in that window; and *low* on any specific claim of a "first autonomous kill" that rests on a single source.

---

*Prepared as open-source threat research for defensive understanding. Contains no operational, constructional or enabling content. Research cut-off 25 September 2026.*
