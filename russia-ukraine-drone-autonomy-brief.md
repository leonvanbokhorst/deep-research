# Autonomous & Semi-Autonomous Drone/Robotics Capability in the Russia–Ukraine War

**Threat-assessment evidence brief — compiled 25 September 2026**
**Scope note / method:** The `web_search` tool was degraded throughout this task (upstream JSON errors). Evidence was instead gathered via Google News RSS (discovery) plus direct HTML retrieval of publishers, WordPress REST/feed search, and decoded publisher URLs. Every substantive claim below is tied to a retrievable URL. Where I could only verify a *headline/date/source* (not full article text), this is stated as "headline-level only." I flag source quality and confidence for each cluster and avoid any operational detail.

**Central analytical point:** across all ten sub-topics, the gap between *marketing* ("autonomous", "AI", "fully robotic") and *demonstrated capability* is large and persistent. The dominant real capability is **human-supervised, jam-resistant terminal guidance** — a human or a mission plan selects *what* to strike; software increasingly handles the last seconds or metres. True "human-off-the-loop target selection" is documented in only a handful of single-source, contested claims and is not fielded at scale.

---

## 1. FPV strike drones: scale, cost, evolution 2023→2026

- **Scale (high confidence, official/reputable):** Ukraine now produces on the order of **7–10 million drones per year**, across all classes. Deputy Defence Minister Serhii Boiev announced >7 million planned for 2026 (Jan 2026); Zelensky stated 10 million/year with a 20 million target (Kyiv Post, 15 Jul 2026, headline-level); MWI cites ~9,000 drones deployed **per day** (Oct 2025, EW directorate chief Ivan Pavlenko) and "~10 million this year" ([MWI, 20 Jul 2026](https://mwi.westpoint.edu/build-at-scale-innovate-at-the-edge-close-the-feedback-loop-fast-transforming-acquisition-for-the-drone-age/)). Caveat: these headline totals include reconnaissance and interceptor types, not only strike FPV.
- **Russian scale:** Russian officials claim strike-drone output grew roughly **30× over three years** ([Aviation21 via search](https://aviation21.ru/denis-manturov-za-tri-goda-rossiya-narastila-proizvodstvo-udarnyx-dronov-v-30-raz/)) — a government claim (vendor/state claim quality).
- **Unit cost (medium-high):** improvised Ukrainian FPV strike drones are widely assessed at **~$400–800 per unit** ([SWJ, 11 Jun 2026](https://smallwarsjournal.com/2026/06/11/guerrillas-drones-lessons-kurdish-warfare/)); interceptor types at **~$2,000–3,000**; Russian Shahed-type one-way attack drones at **~$10,000** (Euromaidan Press, 24 Apr/1 Jul 2026, headline-level). Costs fell through 2023–2025 as commercial components scaled, then **fibre-optic spool prices rose ~8×** in 2026, attributed to AI data-centre demand for optical fibre (DroneXL, 11 May 2026, headline-level; vendor-adjacent, treat as contested).
- **Evolution:** 2023 = improvised quadcopters and early "kamikaze" FPV; 2024 = mass production, analogue-video jamming war, first machine-vision lock-on experiments; 2025 = fibre-optic and AI terminal guidance; 2026 = industrialised procurement (Brave1, DOT-Chain, brigade-level budgets) and platform families. **Confidence: high** on direction of travel, medium on exact totals.

## 2. "AI terminal guidance" / machine-vision lock-on — demonstrated vs claimed

- **What is genuinely fielded (medium-high):** modules that **track a target and guide the final ~500 m** after a human selects it; Russian machine-vision auto-tracking on fixed-wing "Molniya" drones to preserve guidance when the radio link drops at low altitude ([UNITED24/Defense Express, 27 Oct 2025](https://united24media.com/latest-news/russian-molniya-drones-add-machine-vision-tracking-boosting-range-and-overcoming-signal-loss-12839)); Russian Geran/Shahed variants with seeker packages that take over the **final phase** after human target assignment; Ukrainian modular AI packages installable across platforms ([The Conversation, McAuliffe, 22 Sep 2026](https://theconversation.com/russia-ukraine-war-is-accelerating-the-dangerous-race-toward-fully-autonomous-drones-290877)). A Ukrainian FPV used AI-assisted guidance to strike a probable tank **after its control link was disrupted** (Nov 2025).
- **Named systems:** Ukrainian **SAKER** family (Scout/Hunter/Hetman) by Kyiv-based **Twist Robotics** — a Ukrainian–Danish JV with Vidar Industries will build **~12,000 units/year** in Denmark ([The Defense Post, 27 Jul 2026](https://thedefensepost.com/2026/07/27/ukraine-denmark-saker-drones/)). This is a **named, exportable product line**, but public sourcing does not substantiate the "autonomous" label beyond terminal assistance. I could **not** verify named Russian "Ovod"/"KVS" systems in accessible sources — treat those labels as **unverified**. Russian **V2U** is the best-documented autonomy case: recovered airframes reportedly contained a small Nvidia computer running AI decision software; late-2025 variants reportedly **lacked external comms hardware** ([The Conversation, 22 Sep 2026](https://theconversation.com/russia-ukraine-war-is-accelerating-the-dangerous-race-toward-fully-autonomous-drones-290877)). Evidence is Ukrainian exploitation analysis — **strong but one-sided**.
- **Vendor/marketing flags:** company claims of modules offering "full autonomy" and the "64-drone autonomous intercept battery" (developer Alexander Kokhanovskyy) are **development claims**, not demonstrated at scale. Former Defence Minister Fedorov said (Jul 2026) Ukraine used a drone that autonomously chose targets with no radio link in Crimea, but explicitly said it is **not mass-produced** — a single official statement, no independent verification.
- **The key sceptical case:** the July 2026 Zaporizhzhia strike that killed three civilians was widely headlined as "guided entirely by A.I." (NYT, 24 Aug 2026, headline-level). The technical substance is narrower: **humans selected the gas station as the target area; onboard software independently picked the final aim point.** That is terminal aim-point refinement, *not* autonomous target selection ([The Conversation, 22 Sep 2026](https://theconversation.com/russia-ukraine-war-is-accelerating-the-dangerous-race-toward-fully-autonomous-drones-290877)). **Flag this distinction explicitly in any downstream product.**

## 3. Fibre-optic FPV drones

- **Why they matter (high confidence):** a physical cable removes the radio link, so **electronic warfare jamming cannot sever control**; effectively unjammable, with clear video and ranges **>30 km** ([Atlantic Council, 24 Feb 2026](https://www.atlanticcouncil.org/blogs/ukrainealert/fiber-optics-drones-have-emerged-as-critical-kit-for-both-russia-and-ukraine/)). Russia introduced them at scale in **August 2024** in Kursk; they contributed to Ukraine losing 25% more vehicles than Russia there.
- **Scale (medium-high):** 80+ Ukrainian fibre-optic systems approved by mid-2025; Ukraine's Birds of Magyar unit fields a ~40 km model; Russia demonstrated ~50 km types. By **April 2026 fibre-optic drones were ~32% of all Ukrainian strike drones** ([MWI, 20 Jul 2026](https://mwi.westpoint.edu/build-at-scale-innovate-at-the-edge-close-the-feedback-loop-fast-transforming-acquisition-for-the-drone-age/)). NATO made countering them the theme of its 2025 Innovation Challenge.
- **Cost/accessibility (medium):** broadly comparable to radio FPV plus spool cost; spool prices reportedly surged in 2026 (see §1). Environmental externality: discarded cable is a persistent plastic/microplastic pollutant (Conflict and Environment Observatory, May 2025).
- **Diffusion flag:** Atlantic Council states **Sudanese militias, Mexican cartels and the Chinese PLA** are reportedly incorporating fibre-optic drones — a reputable-institution claim, but derived from secondary reporting (**medium confidence**).

## 4. EW / GNSS jamming as the driver of autonomy

- **Cause and effect (high confidence):** intense Russian jamming and electronic fratricide degrade radio control; Starlink links can fall to ~10 Mbps, degrading video and control ([MWI](https://mwi.westpoint.edu/networked-for-war-lessons-from-ukraines-ground-robots/)). Autonomous navigation and terminal guidance are adopted precisely **to survive link loss** — the single most consistent driver across every source ([The Conversation, 22 Sep 2026](https://theconversation.com/russia-ukraine-war-is-accelerating-the-dangerous-race-toward-fully-autonomous-drones-290877)). GNSS spoofing/jamming in the region is well documented (e.g. Baltic incidents; BBC on Middle East GPS jamming, Mar 2026).
- **Implication:** autonomy here is largely *defensive-engineering* driven (keep the weapon working under jamming), not a deliberate push to remove humans from decisions. That framing matters for assessing intent and for regulation.

## 5. Uncrewed ground vehicles (UGVs)

- **Scale/economics (medium-high):** Ukrainian industry delivered **15,000 UGVs in 2025 vs 2,000 in 2024**; a demining UGV (Rovertec Zmiy) costs **~$20,000**; mobile repair vehicles ~$36,000 ([MWI, 9 Mar 2026](https://mwi.westpoint.edu/networked-for-war-lessons-from-ukraines-ground-robots/)). UGVs reportedly conduct **80–90% of logistics** in some brigades, with ~450 lb payloads. UAV-report claims "112,000 logistics/evacuation missions in 2026" (UNITED24, Sep 2026, headline-level).
- **Armed UGVs (medium):** the most-cited armed platform is **Droid TW 12.7** (Devdroid), a 12.7 mm machine-gun UGV with ~1 km range and night vision. Crucially, peer-reviewed academic assessment is that it is **remotely operated, not fully autonomous**, with limited pre-programmed functions ([The Conversation, Olumba, 27 Apr 2026](https://theconversation.com/ukraines-killer-robots-show-how-war-is-changing-280936)). Ukraine approved its first grenade-launcher-armed ground robot in Dec 2025 (Business Insider, headline-level).
- **"First fully robotic" claims — evidence quality is weak:** Zelensky stated (14 Apr 2026) that a Russian position was captured using **only ground robots and aerial drones, without infantry**; a separate Jan 2026 report describes three Russians captured by a single ground robot in Zaporizhzhia. These rest on **presidential statements and brigade releases**, with no independent verification, and the platforms are remote-controlled. The "world's first sea-drone-to-ground-robot assault" on the Kinburn Spit (13 Jul 2026) is likewise a **brigade claim** ([UNITED24](https://united24media.com/war-in-ukraine/ukraine-carries-out-worlds-first-sea-drone-to-ground-robot-assault-mission-20695)). Treat "first fully robotic" as **PR framing (low-medium confidence)** — capability is real, autonomy is not.

## 6. Uncrewed surface vessels (USVs)

- **Autonomy reality (high confidence):** Ukraine's USVs are **predominantly remotely piloted by humans ashore**, enabled by Starlink. Naval News describes the Magura lineage as relying on "human pilots, safely ashore, hundreds of miles behind the action," and assesses the 2024 Black Sea attacks as showing **"low autonomy support, remote-controlled maneuvers"** with swarm-style sequential approaches ([Naval News, 18 Feb 2024](https://www.navalnews.com/naval-news/2024/02/analysis-an-operational-view-on-the-usv-attacks-in-the-black-sea-from-an-admirals-eyes/); [Naval News, 22 Jul 2025](https://www.navalnews.com/naval-news/2025/07/under-wraps-no-more-ukraines-original-naval-drone-revealed/)).
- **Capability:** Magura V5 (~5.5 m) is credited with at least 17 naval targets destroyed; later V7/W6 variants have carried air-to-air missiles and downed aircraft. **Sea Baby** is a parallel SBU line. Public evidence supports **remote control with some autonomous/terminal waypointing**, not autonomous target selection. Cost figures are often cited around a few hundred thousand dollars, but I could not verify a primary figure — treat as **unverified**.
- **Diffusion:** Magura-derived USVs are to be built in the US (UForce/ReconCraft, Jul 2026, headline-level); Türkiye markets ULAQ KAMA as an equivalent; Estonia fields Euromite.

## 7. Interceptor / counter-drone drones as autonomy

- **Scale and economics (medium-high):** Ukraine fields families such as **P1-Sun** (3,000+ Shahed-type intercepts in 2026 at ~$2,000–3,000 each), **STING**, and increasingly AI-assisted turrets ("Sky Sentinel"; one-button fibre-optic-drone killers, May 2026). Claimed kill rates up to **95%** (UNITED24, Apr 2026, headline-level) are **vendor/PR-grade and should not be quoted as fact**.
- **Autonomy:** interceptors are the leading edge of *practical* autonomy because the target class is narrow and defensive, and because terminal-phase AI ("human verifies in final stages") is explicitly permitted under Ukrainian rules. A USV launched an intercepting drone against a Shahed for the first time (Defense News, 23 Apr 2026, headline-level). This is the **most plausible near-term route to genuine autonomy at scale**.

## 8. Ukraine's June 2025 "Spiderweb" operation

- **Established facts (medium-high; single major investigation):** 1 June 2025; 18 months of planning by the SBU; a husband-and-wife front operation inside Russia (Artem and Kateryna Tymofeyev) built front companies, rented warehouses, recruited unwitting truck drivers; **150 FPV drones assembled and eight disguised launch cabins with remotely opening roofs**; **117 drones launched simultaneously** across **five oblasts and five time zones**, including Belaya air base ~2,700 miles from Ukraine. Drones were **guided remotely by Ukrainian pilots**, who were told targets at the last minute ([Forces News summarising WSJ, 11 Dec 2025](https://www.forcesnews.com/ukraine/operation-spiderweb-most-audacious-covert-mission-ukraine-war-nearly-went-very-wrong)).
- **Significance:** the hard part was **logistics, concealment and covert resupply inside the target state — not autonomy**. Damage claims (~41 aircraft; est. $7bn/£5bn) are **hard to verify**; satellite imagery of burned aircraft at Irkutsk/Murmansk is corroborating but partial. **Cost was dominated by logistics, not hardware.**

## 9. Fully autonomous target engagement — documented cases and evidence strength

| Claim | Evidence | Source quality | Confidence |
|---|---|---|---|
| Ukrainian "Terminator mode" test, ~mid-2024, near Chasiv Yar/Bakhmut: 10 quadcopters, links cut, 2 Russian soldiers killed, no human in the loop | Single developer (Kokhanovskyy), reported by New Scientist 10 Jun 2026; **Kyiv not confirmed**; Ukraine officially prohibits AI in final targeting stage | Single-source, interested party | **Low–medium** |
| Russian **V2U** fully autonomous UAV (Nvidia computer; late-2025 variants without comms) | Ukrainian exploitation of recovered airframes; configured to select/engage after launch | One-sided technical analysis | **Medium** on hardware, **low** on autonomous employment |
| Zaporizhzhia gas-station strike, Jul 2026, 3 civilians killed, headlined "guided entirely by AI" | Human selected target area; AI selected **final aim point** | Reputable journalism + academic clarification | **High** on what happened; **media framing is overstated** |
| **DronDoc/Serafim** software (Anthropic case GTG-27005, Sep 2026): Russia-based team used Claude to build autonomous FPV-swarm software able to select a "person" target and detonate without human confirmation; trained on scraped Ukrainian combat footage; tested against a simulated Donetsk location | Anthropic threat-intel report (154 pp.; 6 cases: 3 China, 2 Russia, 1 Yemen) | **Primary vendor report** + academic analysis | **Medium** — a software *capability*, not documented battlefield employment |
| Kargu-2, Libya 2020 — first alleged autonomous "hunt" | UN Panel of Experts | UN | **Medium**, widely contested |

**Bottom line:** no case of sustained, at-scale fully autonomous engagement is documented. The strongest genuine case is a **single 2024 Ukrainian field test** and a **2026 Russian terminal-aim-point** strike; both are routinely over-read as "AI decided to kill."

## 10. Diffusion indicators

- **State exports of expertise (medium-high):** Ukraine deployed counter-drone/air-defence teams to **Qatar, the UAE, Saudi Arabia and a US base in Jordan**; at least six regional actors requested support ([SWJ/Reuters, 21 Mar 2026](https://smallwarsjournal.com/2026/03/21/ukrainian-air-defense-expertise-a-global-commodity/)). WaPo describes Ukraine "selling its blood experience to allies" (17 Jul 2026, headline-level). **SkyFall + Calian** will embed Ukrainian tactics in NATO UAV training (Sep 2026). Ukrainian veterans tour the US to brief industry ([SWJ, 15 May 2026](https://smallwarsjournal.com/2026/05/15/ukrainian-veterans-bring-lessons-of-war-to-arizona/)).
- **Industrial export:** SAKER production in Denmark (~12,000/year); F-Drones establishing a US line in Ohio; Magura US manufacture; Ukrainian fibre-optic know-how reportedly reaching **Israel** (Times of Israel, 27 Jul 2026, headline-level).
- **Non-state misuse — documented:** Colombian insurgent/criminal groups have moved to FPV strike drones, thermal imaging and **fibre-optic** platforms, compressing innovation cycles "from years into months," explicitly drawing on Ukraine ([SWJ, 4 Jun 2026](https://smallwarsjournal.com/2026/06/04/how-armed-groups-are-contesting-colombias-airspace-with-drones/)); Mexican cartels and Sudanese militias are reported to use fibre-optic drones (Atlantic Council); an FPV drone struck US Victory Base in Iraq during the 2026 US–Iran conflict; the Anthropic report documents a **Yemen** case. Kurdish insurgent groups are assessed as well-positioned to adopt these methods ([SWJ, 11 Jun 2026](https://smallwarsjournal.com/2026/06/11/guerrillas-drones-lessons-kurdish-warfare/)).
- **Open-source/commercial kit:** the enabling base is **commercial components and local assembly**; ~$400–800 per FPV; guidance modules are increasingly modular. Barriers are now **components, software and training**, not exotic technology. A leaked report alleging **Western special-forces veterans trained Russian forces** (NV, 10 Sep 2026, headline-level) is **unverified** but illustrates the expertise market.

---

## Contested / hype-driven claims to flag downstream

1. **"Fully autonomous"** usually means *AI terminal guidance after human target selection*. Reserve the term for target selection and engagement authority.
2. **"First fully robotic assault" / "first robot-only capture"** — brigade/presidential claims, no independent verification, platforms are remote-controlled.
3. **95% interceptor kill rates** and **"full autonomy" module claims** — vendor/PR grade.
4. **Spiderweb damage totals** and **fibre-spool price rises** — plausible, single-source.
5. **Russian "30× production"** and **Ukrainian "10–20 million drones"** — state claims, directionally credible, numerically soft.
6. **Named Russian "Ovod"/"KVS" systems** — could not be verified here; treat as unconfirmed.

## What does NOT transfer to a civilian European context

- **Scale economics.** Ukraine's advantage is 7–10 million units/year, ~9,000 flights/day, brigade-level budgets and a combat feedback loop measured in days. No European civil-protection, police or critical-infrastructure operator has that industrial base, casualty tolerance or legal latitude — so "drone swarm" scenarios modelled on Ukraine are not transferable as a civil-security threat forecast.
- **The autonomy driver.** Autonomy here is a response to military-grade RF jamming and GNSS denial. Civilian Europe does not face that EW environment; the same autonomy is therefore neither as necessary nor as likely to be fielded by civilian actors.
- **Fibre-optic relevance.** Fibre-optic drones are a counter-EW answer; without peer jamming, their main advantage (and their cable-pollution and mobility penalties) does not carry over.
- **USV/UGV "autonomy."** Both are predominantly **remote-controlled** with narrow autonomous functions. Copying the label without the operator, comms and sustainment tail overstates what a non-state or lone actor could field.
- **The real transferable risk** is the **low-cost FPV + commercial components + modular guidance** package diffusing to non-state actors in permissive, low-EW environments (documented in Colombia, Mexico, Sudan, Iraq, Yemen) — not "killer robots" in European cities.

## Source list

**Peer-reviewed / academic & institutional**
- https://theconversation.com/russia-ukraine-war-is-accelerating-the-dangerous-race-toward-fully-autonomous-drones-290877
- https://theconversation.com/ukraines-killer-robots-show-how-war-is-changing-280936
- https://theconversation.com/russian-team-misused-claude-ai-to-train-a-killer-drone-on-scraped-ukrainian-war-footage-291965
- https://theconversation.com/war-in-ukraine-accelerates-global-drive-toward-killer-robots-198725
- https://mwi.westpoint.edu/networked-for-war-lessons-from-ukraines-ground-robots/
- https://mwi.westpoint.edu/build-at-scale-innovate-at-the-edge-close-the-feedback-loop-fast-transforming-acquisition-for-the-drone-age/
- https://smallwarsjournal.com/2026/08/17/fully-autonomous-drones-reportedly-kill-in-ukraine/
- https://smallwarsjournal.com/2026/06/12/line-crossed-fully-autonomous-drones-kill-russian-soldiers/
- https://smallwarsjournal.com/2026/06/11/guerrillas-drones-lessons-kurdish-warfare/
- https://smallwarsjournal.com/2026/06/04/how-armed-groups-are-contesting-colombias-airspace-with-drones/
- https://smallwarsjournal.com/2026/03/21/ukrainian-air-defense-expertise-a-global-commodity/
- https://smallwarsjournal.com/2026/05/15/ukrainian-veterans-bring-lessons-of-war-to-arizona/
- https://www.atlanticcouncil.org/blogs/ukrainealert/fiber-optics-drones-have-emerged-as-critical-kit-for-both-russia-and-ukraine/
- https://www.fpri.org/article/2026/06/inside-rubicon-the-structure-of-russias-elite-drone-center/

**Reputable journalism / defence press**
- https://www.forcesnews.com/ukraine/operation-spiderweb-most-audacious-covert-mission-ukraine-war-nearly-went-very-wrong
- https://www.navalnews.com/naval-news/2024/02/analysis-an-operational-view-on-the-usv-attacks-in-the-black-sea-from-an-admirals-eyes/
- https://www.navalnews.com/naval-news/2025/07/under-wraps-no-more-ukraines-original-naval-drone-revealed/
- https://united24media.com/latest-news/russian-molniya-drones-add-machine-vision-tracking-boosting-range-and-overcoming-signal-loss-12839
- https://united24media.com/war-in-ukraine/ukraine-carries-out-worlds-first-sea-drone-to-ground-robot-assault-mission-20695
- https://thedefensepost.com/2026/07/27/ukraine-denmark-saker-drones/

**Headline/date verified only (Google News RSS; full text not retrievable in-session)**
- New York Times, 24 Aug 2026 — "A Drone Killed Three Ukrainians. It Was Guided Entirely by A.I."
- New Scientist, 10 Jun 2026 — "Fully autonomous drones have killed human soldiers for the first time"
- Reuters, 11 Sep 2026 — "Behind the killer robots of Ukraine"
- Anthropic, 10 Sep 2026 — "Detecting and countering misuse of AI: September 2026"
- Washington Post, 17 Jul 2026 — "After years of drone warfare, Ukraine is selling its 'blood experience' to allies"
- Kyiv Post, 15 Jul 2026 — Zelensky: 10 million drones/year, targeting 20 million
- Euromaidan Press, 24 Apr 2026 — P1-Sun 3,000+ Shahed intercepts at ~$3,000 each
- Defense News, 23 Apr 2026 — first USV-launched interceptor drone
- DroneXL, 11 May 2026 — fibre-optic spool prices up >8×
- Times of Israel, 27 Jul 2026 — Ukraine's fibre-optic drone war reaching Israel
- Aviation21 — Russian strike-drone production up 30× in three years
