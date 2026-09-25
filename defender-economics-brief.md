# Defender Economics: The Cost Asymmetry Between Cheap Uncrewed Systems and Their Defences

**Prepared:** 25 September 2026 · **Scope:** open-source threat/defence economics for civilian-protection understanding. No operational or evasion content.
**Evidence key:** ✅ documented contract/official figure · 🟡 analyst estimate · ⚠️ vendor claim · Confidence: High / Medium / Low.

---

## 1. What the attacking systems cost

| System | Unit cost | Type | Source | Confidence |
|---|---|---|---|---|
| Shahed-136 / Geran-2 (Russian-built, 2025) | **~$70,000** (config-dependent) | 🟡 analyst (Defense Express) | [defence-ua.com](https://en.defence-ua.com/analysis/shahed_136_really_cost_20_50k_iran_sold_them_to_russia_for_200_300k_in_2022_actual_price_far_higher-17764.html) | Medium |
| Shahed-136 / Geran-2 (common citation) | **$20,000–$50,000** | 🟡 estimate range | [Inside Unmanned Systems](https://insideunmannedsystems.com/counter-uas-the-price-of-the-shot/) | Low–Medium |
| Shahed (CSIS modelling assumption, 2025) | **$35,000** midpoint | 🟡 analyst | [CSIS](https://www.csis.org/analysis/calculating-cost-effectiveness-russias-drone-strikes) | Medium |
| Shahed-136 kits sold to Russia, 2022 | **$193,000–$370,000** depending on order size | 🟡 analyst | [Defense Express](https://en.defence-ua.com/analysis/shahed_136_really_cost_20_50k_iran_sold_them_to_russia_for_200_300k_in_2022_actual_price_far_higher-17764.html) | Medium |
| Shahed allegedly used vs US forces, 2026 | **"just $4,000"** | ⚠️ official statement, anomalous | [Breaking Defense](https://breakingdefense.com/2026/05/driscoll-reveals-new-plan-to-buy-cheaper-interceptors-with-army-owned-ip/) | Low |
| Ukrainian FPV strike drone | **~$400–$2,000** | 🟡 trade press | [Kyiv Post](https://www.kyivpost.com/post/72300) | Medium |
| Commercial quadcopter (improvised bomber) | **$1,000–$3,000** | 🟡 estimate | [Inside Unmanned Systems](https://insideunmannedsystems.com/counter-uas-the-price-of-the-shot/) | Medium |

The single most important caveat: **the $20k–$50k "Shahed" figure is repeated far more often than it is substantiated.** CSIS notes the low estimates trace to early-war inspections; Russia has since simplified the airframe while scaling production, and Defense Express argues the true 2025 Geran cost is nearer $70k. The $4,000 figure attributed to the US Army Secretary in 2026 is inconsistent with every other source and probably refers to a cheaper analogue — **treat it as an outlier.** Decoys mixed into salvos also blur per-unit averages.

Attacker unit cost is not *cost per effect*. CSIS found Shaheds reached their targets **less than 10% of the time** and cost Russia roughly **$350,000 per target struck**, versus ~$1m per target for its best missile. Cheap airframes with poor hit rates are still cheap *per launch* — which is what drives the defender's problem.

---

## 2. What interception costs

| Effector | Cost per shot | Type | Source | Confidence |
|---|---|---|---|---|
| THAAD interceptor | **$12–13m** | 🟡 trade press | [War on the Rocks](https://warontherocks.com/2026/06/fences-not-f-35s-drone-attacks-and-the-illogic-of-gulf-procurement/) | High |
| SM-3 Block IB / IIA | **$10m / $22m** | ✅ congressional report | [CRS R44175](https://www.congress.gov/crs_external_products/R/PDF/R44175/R44175.113.pdf) | High |
| Patriot PAC-3 MSE | **~$3–4m** | ✅/🟡 official + press | [Breaking Defense](https://breakingdefense.com/2026/06/army-launches-new-low-cost-interceptor-program-targets-fall-for-first-live-fire-demo/) | High |
| SM-2 (Red Sea) | **~$2m** | 🟡 press/CSIS | [CSIS](https://www.csis.org/analysis/cost-and-value-air-and-missile-defense-intercepts) | High |
| AIM-120 AMRAAM | **~$1m** | 🟡 trade press | [Inside Unmanned Systems](https://insideunmannedsystems.com/counter-uas-the-price-of-the-shot/) | Medium–High |
| AIM-9X (NASAMS) | **~$1m+ / ~$380–400k** (variant-dependent) | 🟡 | [CSIS](https://www.csis.org/analysis/calculating-cost-effectiveness-russias-drone-strikes) / [Defense Express](https://en.defence-ua.com/industries/a_hundred_missiles_by_2030_how_much_an_aim_9x_costs_in_money_and_time-6844.html) | Medium |
| APKWS (laser rocket) | **$15–20k kit; ~$35k all-up** | 🟡 official quote | [Inside Unmanned Systems](https://insideunmannedsystems.com/counter-uas-the-price-of-the-shot/) | High |
| Iron Dome Tamir | **~$40–50k** | 🟡 estimate | [Alma Center](https://israel-alma.org/the-iron-dome-system-the-pillar-of-the-regional-arms-race/) | Medium |
| Coyote / Next-Gen C-sUAS Missile | **$150k ceiling** (RFI); earlier Army target **<$250k**, all-up **<$1m** | ✅ official RFI | [Breaking Defense](https://breakingdefense.com/2026/08/army-launches-search-for-counter-drone-missile-priced-under-150k/) | High |
| Merops interceptor drone | **$15,000/shot** (Lithuania purchase; could fall to $10k) | ✅ contract + official | [Defense News](https://www.defensenews.com/global/europe/2026/05/05/nato-nations-size-up-an-interceptor-drone-bazaar-where-low-price-is-everything/) | High |
| Ukrainian interceptor FPVs (Sting, Bullet, P1-SUN) | **$1,000–$4,000** | 🟡 trade press | [Defense News](https://www.defensenews.com/global/europe/2026/05/05/nato-nations-size-up-an-interceptor-drone-bazaar-where-low-price-is-everything/) / [War on the Rocks](https://warontherocks.com/2026/06/fences-not-f-35s-drone-attacks-and-the-illogic-of-gulf-procurement/) | Medium–High |
| Gepard / Skynex 35 mm gun | **~€4,000 per engagement** | 🟡 trade press | [War on the Rocks](https://warontherocks.com/2026/06/fences-not-f-35s-drone-attacks-and-the-illogic-of-gulf-procurement/) | Medium |
| SmartShooter SMASH sight (on existing guns) | **$10–15k per unit**, cents per round | ⚠️/🟡 vendor + analyst | [War on the Rocks](https://warontherocks.com/2026/06/fences-not-f-35s-drone-attacks-and-the-illogic-of-gulf-procurement/) | Medium |
| Shipboard laser (SSL) | **$1–$10 marginal per shot** | ✅ CRS | [CRS R44175](https://www.congress.gov/crs_external_products/R/PDF/R44175/R44175.113.pdf) | High |
| AeroVironment LOCUST X3 laser | **"under $5 per shot"** | ⚠️ vendor | [Inside Unmanned Systems](https://insideunmannedsystems.com/counter-uas-the-price-of-the-shot/) | Low |
| GA-ASI / Anduril reusable interceptors | Unit prices largely undisclosed; Kuwait FMS **~$2bn** for Roadrunner-M/Anvil | ✅/⚠️ mixed | [Breaking Defense](https://breakingdefense.com/2026/06/us-approves-2b-sale-of-anduril-counter-drone-systems-to-kuwait/) | Medium |

**Procurement price ≠ cost per kill.** Launcher, radar, C2, crew and sustainment dominate real-world totals. The UK's DragonFire laser is a case in point: marginal shots cost ~$13, but the programme and integration run to hundreds of millions, and the US Navy's first real shipboard laser programme would cost ~$1bn before a single destroyer is fitted. Vendors' "$5 per shot" and "20:1 advantage" figures describe marginal energy cost only and should be treated as marketing.

**Documented vs estimated matters.** Merops ($15k) and the Army's $150k RFI ceiling are unusually solid — a government purchase and a solicitation. Tamir, Shahed and Gepard engagement costs are analyst estimates; LOCUST/Epirus performance claims are vendor claims.

---

## 3. Published exchange ratios and official "cost-per-shot" commentary

- **US Navy / DoD (official, on the record):** then-SECNAV Carlos Del Toro told senators the Red Sea had cost the service **"closely approaching $1 billion in expenditures for munitions"**, and that the Navy was firing SM-2s, SM-6s and SM-3s ([CRS R44175](https://www.congress.gov/crs_external_products/R/PDF/R44175/R44175.113.pdf)). Acquisition chief Bill LaPlante said **costs above $100,000 a shot are "getting too expensive"** and the target is "tens of thousands of dollars per round." Vice Chairman Gen. Christopher Grady called multi-million-dollar SM-2s against cheap drones **"a bad exchange."** Congress noted DoD was using "multi-million-dollar missile defense interceptors against $20,000 UAVs."
- **US Army (2026):** Secretary Dan Driscoll launched a **Low-Cost Interceptor** programme and a **Next Generation C-sUAS Missile** RFI capped at **$150,000**, explicitly to stop relying "solely on multimillion-dollar systems to down drones costing a couple thousand dollars" ([Breaking Defense](https://breakingdefense.com/2026/08/army-launches-search-for-counter-drone-missile-priced-under-150k/), [June 2026](https://breakingdefense.com/2026/06/army-launches-new-low-cost-interceptor-program-targets-fall-for-first-live-fire-demo/)).
- **NATO (official, 2026):** Allies announced **over $40bn** in counter-drone capabilities and training in July 2026, with a fast-track C-UAS procurement marketplace ([NATO](https://www.nato.int/), [Jerusalem Post](https://www.jpost.com/)). Secretary General Rutte has publicly argued the alliance "cannot afford" to shoot down drones with expensive missiles.
- **Think tanks:** CSIS's core argument is that the naive cost-exchange ratio is **misleading** — it ignores area-coverage requirements, ship loadouts, production rates and the value of defended assets ([CSIS](https://www.csis.org/analysis/cost-and-value-air-and-missile-defense-intercepts)). But CSIS's own Ukraine work concedes the *production* curve is adverse: ~90% of Shaheds are intercepted yet the low unit cost lets Russia fire mass salvos nightly. War on the Rocks surveys open-source exchange ratios clustering at **~100:1 to 230:1 in the attacker's favour** (a $35k Shahed against a $4m PAC-3 MSE fired in two-shot doctrine), and stresses that the **production-exchange ratio is worse than the cost-exchange ratio** — PAC-3 output ~600/year versus Iran able to produce "hundreds of Shaheds in a week" ([War on the Rocks](https://warontherocks.com/2026/06/fences-not-f-35s-drone-attacks-and-the-illogic-of-gulf-procurement/)).

---

## 4. The other side of the ledger: protecting a civilian site

| Site / event | Cost evidence | Source | Confidence |
|---|---|---|---|
| Gatwick airport, Dec 2018 (33–36 h closure) | Policing **£459,000**; airport **~£1.4m** (own figure; CAP 6210 range £1.4m–£15m); airlines **~£50m**; gross sector loss **>£60m** | [BBC](https://www.bbc.co.uk/news/uk-england-47696499) / [Guardian](https://www.theguardian.com/uk-news/2019/jun/18/gatwick-drone-disruption-cost-airport-just-1-4m) / [Fortune](https://fortune.com/2019/01/22/gatwick-drone-closure-cost/) | High (police/airport); Medium (airline/gross) |
| Copenhagen & Oslo, Sep 2025 | 4-hour CPH closure, 15+ diversions, **~20,000 passengers** disrupted; no official cost published | [AeroTime](https://www.aerotime.aero/articles/copenhagen-oslo-airports-drone-sightings-closure), [EBU](https://spotlight.ebu.ch/p/drone-sightings-close-copenhagen) | High (impact), Low (cost) |
| Berlin Brandenburg (BER), Sep 2026 | Airport halted; no cost published | [UNN](https://unn.ua/) | Medium |
| Vilnius, May 2026; El Paso, Feb 2026; Dubai DXB, Mar 2026 | Airspace closures/suspensions (El Paso: 7 h FAA restrictions, 14 flights cancelled) | [Economic Times](https://economictimes.indiatimes.com/), [El Paso Matters](https://elpasomatters.org/), [Reuters](https://www.reuters.com/) | Medium |
| Large events (2026 FIFA World Cup, US) | Dallas added **$10.3m** to its Axon counter-drone contract; **400+ drone seizures** across host cities | [DroneXL](https://dronexl.co/) | Medium |
| Airports/ports/nuclear/substations/prisons/politicians (general) | **Almost no published, site-specific C-UAS deployment costs.** Radars, RF sensors and cameras are procured under confidential/security-exempt contracts; the strongest public guidance is JIATF-401's Jan 2026 physical-protection guidance for critical infrastructure | [US DoD/JIATF-401](https://www.war.gov/News/Releases/Release/Article/4394552/) | — |

**This is a genuine evidence gap.** Airspace-closure losses are documented in aggregate only for Gatwick; 2025–26 European closures have generated disruption counts but essentially no official cost accounting. Policing a site or event scales with manpower and is rarely itemised. Anyone quoting a precise "cost to protect a stadium/port/prison" is almost certainly extrapolating.

---

## 5. Are cheap defences viable — and against autonomy?

- **Guns:** The Gepard 35 mm remains the strongest empirical counter-Shahed data point, at a few thousand dollars per engagement; Skynex/Skyranger fire programmable 35 mm at ~€4,000 per engagement. Limitation is industrial: Gepard stocks are largely exhausted and 35 mm ammunition supply is narrow ([War on the Rocks](https://warontherocks.com/2026/06/fences-not-f-35s-drone-attacks-and-the-illogic-of-gulf-procurement/)).
- **Electronic warfare:** GPS jamming/spoofing deflects a substantial share of Shaheds — Ukrainian experience suggests **~40% deflection in large attacks**, at near-zero marginal cost ([War on the Rocks](https://warontherocks.com/2026/06/fences-not-f-35s-drone-attacks-and-the-illogic-of-gulf-procurement/)). This is the strongest counter-argument to the "asymmetry is hopeless" narrative.
- **Passive defence:** Physical barriers — tensioned cable, chain-link, industrial netting — defeat a shallow-approach Shahed for the cost of fencing; JIATF-401 recommended exactly this in Jan 2026. Most defence of a fixed site is passive (hardening, dispersal, decoys), and passive measures are cheap and under-counted in "cost-per-shot" debates.
- **Radar/RF/acoustic detection:** RF detection (Dedrone, Sensofusion, MyDefence) is effective and cheap *against radio-controlled drones*, but is a detection layer only. Acoustic detection was credited by CSIS as part of Ukraine's high shoot-down rate. Dedrone, Robin Radar and similar vendors do not publish list prices; figures circulating are dealer/vendor estimates (⚠️ weak).
- **Helicopters and light aircraft:** Ukraine claims **3,000+ Shaheds** downed from helicopters; cost per engagement is ammunition plus flight hours ([War on the Rocks](https://warontherocks.com/2026/06/fences-not-f-35s-drone-attacks-and-the-illogic-of-gulf-procurement/)).
- **Interceptor drones:** The clear cost-curve break. Merops: documented $15k, ~1,000+ Shahed-type kills in Ukraine. Ukrainian Sting/Bullet/P1-SUN: $1k–$4k, produced at up to ~1,000/day across dozens of makers. But the cheapest interceptors require near-fighter-pilot terminal skill, and RF-controlled interceptors share the jamming environment of their targets.
- **Eagles:** The Dutch police eagle programme (2016) was a real trial, but it is a marginal, weather- and scale-limited curiosity, not a defence layer ([Inside Unmanned Systems](https://insideunmannedsystems.com/dutch-police-training-eagles-to-take-down-drones/)).

**The autonomy problem.** Against a **fiber-optic** drone there is no radio link to jam and no RF command link to detect; against **visual/AI terminal navigation** there is no GNSS to spoof. Fiber-optic use is now roughly **10% of Ukrainian production and 15–30% of Russian use in some sectors**, and Russia's Molniya fiber-optic loitering munition has been reported at ~30 km range. IISS documents progressive Shahed hardening through fiber-optic links and GNSS-independent visual navigation ([insideunmannedsystems.com](https://insideunmannedsystems.com/counter-uas-the-price-of-the-shot/); IISS Strategic Dossier, 2026). The practical consequence: **detection and hard-kill matter more, and the cheapest layer (EW) stops working.** Hard-kill answers to autonomy are guns, interceptors and directed energy — and high-power microwave (Epirus Leonidas, Dec 2025) has now demonstrated defeat of a fiber-optic drone. Vendors claim lasers at <$5/shot; these remain early and largely unproven at scale.

---

## 6. Is the asymmetry as bad as claimed? Counter-arguments

1. **EW is cheap and effective — while the link exists.** ~40% deflection is a huge return on a jammer. The claim that "cheap drones beat expensive defences" often ignores the cheapest defensive layer.
2. **Cost-per-shot is not cost-per-effect.** CSIS is explicit: operators choose the cheapest interceptor that will succeed; area coverage, loadout constraints and defended-asset value mean the accounting ratio overstates the problem.
3. **Interception costs are falling fast.** APKWS (~$35k), Merops ($15k, heading to $10k) and Ukrainian interceptors ($1k–$4k) are real, contracted, combat-proven. Purpose-built low-cost interceptors are the single most important development of 2024–26.
4. **Most fixed-site defence is passive and cheap.** Fences, hardening, camouflage and dispersal are not "cost-per-shot" items but they defeat a large share of attacks.
5. **The attacker also bears costs and failure rates.** ~90% of Shaheds are intercepted or fail; Russia's per-target-struck cost is ~$350k; Ukrainian FPV strikes are themselves attritional. The exchange ratio for *effects delivered* is far less lopsided than the per-unit ratio.
6. **Autonomy cuts both ways.** Fiber-optic cable limits range, manoeuvre and salvo size; autonomous terminal guidance is still not fielded at scale, and HPM/lasers specifically target it.

**Balanced conclusion:** the asymmetry is real and severe for the **high-end interceptor tier** (Patriot/THAAD/SM against mass cheap drones and ballistic missiles), and the **production-exchange ratio** is the genuinely dangerous number. It is overstated for the **low-end tier**, where guns, EW, passive barriers and cheap interceptor drones now give defenders weapons that are cost-competitive with the threat.

---

## 7. Implications for budgets, insurance and aviation

- **European/NATO civil-protection budgets:** NATO's **$40bn** counter-drone/training package (July 2026), the EU's **€1bn** Ukraine drone deal, Poland's **PERUN** programme and Baltic EU funding requests show counter-drone becoming a core line item. The strategic risk is **misallocation**: buying exquisite interceptors for low-end threats is the failure mode War on the Rocks describes in the Gulf, where >1,000 Patriot interceptors went in 10 days against stockpiles of 1,800–2,300.
- **Insurance:** War-risk and aviation premiums are repricing — war-risk up ~5x in some corridors (2026), a "drone exposure hiding in commercial insurance portfolios," and structural change in general-aviation underwriting. Airspace-closure and business-interruption cover remains thinly modelled because loss history is sparse.
- **Aviation:** A handful of low-cost drones can close a major airport for hours (Copenhagen/Oslo, Berlin, Vilnius, Leipzig 2025–26). Gatwick remains the only incident with a documented cost stack. The rational airport investment is layered detection plus cheap effectors and rapid airspace-restoration procedures — not missile-based defence.

---

## 8. Limits of what can be concluded

- **Unit costs are mostly estimates, not contract data.** Only Merops, the Army's RFI ceiling and congressional missile figures are documented; Shahed/Geran, Tamir and Gepard figures have wide error bars.
- **Cost per kill is rarely published** and normally excludes platform, sensor, C2, crew and sustainment.
- **Civilian-site costs barely exist.** Apart from Gatwick and the Dallas/World Cup figure, there is almost no official, site-level C-UAS deployment or loss accounting.
- **Vendor claims are weak evidence** ("$5 per shot," "95% hit rate," "20:1 advantage").
- **Exchange ratios depend on doctrine** (interceptors per target, loadouts, area coverage) and can move by an order of magnitude; the 100:1–230:1 cluster is scenario-dependent, not a constant.
- **Decoys and variant mixing** make both attacker-cost averages and intercept ratios systematically noisy.

---

## Full source list

**Primary / official**
- CRS, *Navy Shipboard Lasers* (R44175) — Del Toro, LaPlante, Grady, Kurilla quotes; SM-3/SM-2 costs; laser $1–$10/shot: https://www.congress.gov/crs_external_products/R/PDF/R44175/R44175.113.pdf
- Lockheed Martin / US Army PAC-3 MSE $9.8bn contract (Sep 2025): https://news.lockheedmartin.com/2025-09-03-us-army-awards-lockheed-martin-9-8-b-contract-to-bolster-missile-defense-with-pac-3-mse
- US Army Next Generation C-sUAS Missile RFI (<$150k), Breaking Defense (Aug 2026): https://breakingdefense.com/2026/08/army-launches-search-for-counter-drone-missile-priced-under-150k/
- US Army Low-Cost Interceptor programme (<$250k ideal), Breaking Defense (Jun 2026): https://breakingdefense.com/2026/06/army-launches-new-low-cost-interceptor-program-targets-fall-for-first-live-fire-demo/
- Driscoll on Army-owned IP and "five times the target," Breaking Defense (May 2026): https://breakingdefense.com/2026/05/driscoll-reveals-new-plan-to-buy-cheaper-interceptors-with-army-owned-ip/
- NATO, $40bn counter-drone investment (Jul 2026): https://www.nato.int/
- Gatwick policing costs, BBC: https://www.bbc.co.uk/news/uk-england-47696499
- Gatwick airport cost £1.4m, The Guardian: https://www.theguardian.com/uk-news/2019/jun/18/gatwick-drone-disruption-cost-airport-just-1-4m
- JIATF-401 critical-infrastructure protection guidance (Jan 2026): https://www.war.gov/News/Releases/Release/Article/4394552/
- Anduril/Kuwait $2bn FMS (Jun 2026): https://breakingdefense.com/2026/06/us-approves-2b-sale-of-anduril-counter-drone-systems-to-kuwait/

**Think tanks / analysts**
- CSIS, *Calculating the Cost-Effectiveness of Russia's Drone Strikes* (Feb 2025): https://www.csis.org/analysis/calculating-cost-effectiveness-russias-drone-strikes
- CSIS, *Cost and Value in Air and Missile Defense Intercepts* (Feb 2024): https://www.csis.org/analysis/cost-and-value-air-and-missile-defense-intercepts
- War on the Rocks, *Fences Not F-35s* (Jun 2026): https://warontherocks.com/2026/06/fences-not-f-35s-drone-attacks-and-the-illogic-of-gulf-procurement/
- RUSI, *Cheap Attack, Expensive Defence* (Jul 2026): https://www.rusi.org/
- RAND, *David vs. Goliath: Cost Asymmetry in Warfare* (Mar 2025): https://www.rand.org/pubs/commentary/2025/03/david-vs-goliath-cost-asymmetry-in-warfare.html
- IISS, *UAVs: ISR, Deterrence and War* Strategic Dossier (2026): https://www.iiss.org/publications/strategic-dossiers/2026/uavs-isr-deterrence-and-war/

**Trade press**
- Defense News, *NATO nations size up an interceptor-drone bazaar* (May 2026): https://www.defensenews.com/global/europe/2026/05/05/nato-nations-size-up-an-interceptor-drone-bazaar-where-low-price-is-everything/
- Defense Express, *Shahed-136 really cost $20–50k?* (Mar 2026): https://en.defence-ua.com/analysis/shahed_136_really_cost_20_50k_iran_sold_them_to_russia_for_200_300k_in_2022_actual_price_far_higher-17764.html
- Inside Unmanned Systems, *Counter-UAS: The Price of the Shot* (May 2026): https://insideunmannedsystems.com/counter-uas-the-price-of-the-shot/
- Defense Express, *How much an AIM-9X costs*: https://en.defence-ua.com/industries/a_hundred_missiles_by_2030_how_much_an_aim_9x_costs_in_money_and_time-6844.html
- Alma Research Center, *The Iron Dome System* (Dec 2025): https://israel-alma.org/the-iron-dome-system-the-pillar-of-the-regional-arms-race/
- AeroTime, *Copenhagen, Oslo airports reopen*: https://www.aerotime.aero/articles/copenhagen-oslo-airports-drone-sightings-closure
- Fortune, *Gatwick closure cost airlines $64.5m*: https://fortune.com/2019/01/22/gatwick-drone-closure-cost/
- EBU Spotlight, *How drones shut down Copenhagen/Oslo*: https://spotlight.ebu.ch/p/drone-sightings-close-copenhagen
- Atlantic Council, *Fiber-optic drones*: https://www.atlanticcouncil.org/blogs/ukrainealert/fiber-optics-drones-have-emerged-as-critical-kit-for-both-russia-and-ukraine/
- Inside Unmanned Systems, *Dutch police training eagles*: https://insideunmannedsystems.com/dutch-police-training-eagles-to-take-down-drones/
- Breaking Defense, *Russian hybrid attacks likely to increase* (Sep 2026): https://breakingdefense.com/2026/09/russian-hybrid-attacks-likely-to-increase-in-coming-months-danish-intel-assessment/

*(Note: some 2026 items were located via Google News RSS; publisher homepages are given where a canonical article URL could not be resolved. Figures from vendor pages and research-firm press releases are flagged in-table.)*
