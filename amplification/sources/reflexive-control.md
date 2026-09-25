# Reflexive Control and Cognitive Warfare
### Findings for the "agentic threat amplification" audit

**Method note.** `web_search` was unavailable; research used `tools/news.sh`, DuckDuckGo-via-jina (`tools/s.sh`), `web_fetch`, and `curl`+`pdftotext`. Several primary sites (DTIC, T&F, NATO ACT, FDD, CASI, NDU) sit behind Cloudflare/403 blocks; anything not opened directly is marked **UNVERIFIED**. Research date: September 2026. Confidence key: **(H)/(M)/(L)**, with **UNVERIFIED** = primary document not confirmed.

---

## A. REFLEXIVE CONTROL (рефлексивное управление)

### A1. Origin and canonical sources

- **Origin.** The concept is credited to Soviet mathematical psychologist **Vladimir A. Lefebvre** (1936–2020), working for the Soviet military in the early 1960s as a mathematical alternative to game theory. **(H)** Key early works: *Конфликтующие структуры* (*Conflicting Structures*, 1967; 2nd ed. 1973) and *Алгебра конфликта* (*Algebra of Conflict*). English reissue: https://www.lulu.com/shop/vladimir-lefebvre/conflicting-structures/paperback/product-22116842.html (Lulu 2015); bibliographic record: https://books.google.com/books/about/Conflicting_Structures.html?id=qrl3DQAAQBAJ **(M)**
- **"What is Reflexive Control?"** — I could **not verify** any Lefebvre text with that exact title. **UNVERIFIED.** The two "1973/1977 papers" commonly cited resolve to *Conflicting Structures* (1973) and the later reflexive-process papers collected in the journal *Reflexive Processes and Control*. The canonical Lefebvre definition in English translation is: *"a process in which one of the adversaries transfers to the other the grounds/bases for decision-making."*
- **Canonical English-language expositions (use these, not the "What is…" ghost citation):**
  1. **Timothy L. Thomas**, "Russia's Reflexive Control Theory and the Military," *Journal of Slavic Military Studies* 17(2), 2004: https://www.tandfonline.com/doi/full/10.1080/13518040490450529 (abstract confirmed; full text paywalled). **(H)** An earlier English version, "Reflexive Control in Russia: Theory and Military Applications," is in *Reflexive Processes and Control* No. 2, 2002, Vol. 1: https://www.reflexion.ru/Library/EJ_2002_2.pdf — I extracted the full text of this. Russian translation: http://www.intelros.ru/pdf/stratagemi/Tomas.pdf **(H)**
  2. **Diane Chotikul**, *The Soviet Theory of Reflexive Control in Historical and Psychocultural Perspective: A Preliminary Study*, NPS technical report **NPS55-86-013, July 1986** (made for the CCM Joint Test Force, Kirtland AFB): https://calhoun.nps.edu/server/api/core/bitstreams/f770a2ad-2f1b-48c8-9d8b-a34a5be2df1d/content (full text extracted). **(H)** **Correction to the brief:** the DTIC accession is **ADA170613** (https://apps.dtic.mil/sti/citations/tr/ADA170613), not ADA152240, and the report is dated **1986**, not 1985; ADA152240 does not resolve to this work. Scan: https://archive.org/details/soviettheoryofre00chot.
  3. **Giles, Sherr & Seaboyer**, *Russian Reflexive Control*, RMC Canada / DRDC, 2018: https://publications.gc.ca/site/eng/9.881883/publication.html **(M, catalogue verified).**
  4. **Maria W. R. de Goeij**, "Reflexive Control: Influencing Strategic Behavior," *Parameters* 53(4), 2023: https://press.armywarcollege.edu/parameters/vol53/iss4/14/ **(H, abstract verified).**
  5. **Col. S. A. Komov**, "About Methods and Forms of Conducting Information Warfare," *Military Thought* (English ed.), No. 4 (Jul–Aug 1997), pp. 18–22 — citation from Thomas; full text **UNVERIFIED**.
  6. **John Merriam**, "One Move Ahead — Diagnosing and Countering Russian Reflexive Control," *JSLS* 36(1), 2023: https://www.tandfonline.com/doi/abs/10.1080/13518046.2023.2201113 **(H)**; summarised at https://rusmilsec.blog/2023/12/12/how-to-respond-to-the-challenge-of-reflexive-control/.

### A2. What it claims
Reflexive control (RC) claims that a controller can **transfer the "grounds for decision"** to an adversary so that the adversary "voluntarily" adopts a decision favourable to the controller. **(H)** Thomas's four-stage periodisation: research (early 1960s–late 1970s) → practice-oriented (late 1970s–early 1990s) → psychological-pedagogical (early–mid 1990s) → psychosocial (late 1990s–). **(H)**

Crucially, **RC is claimed to require a model of the enemy's decision process.** Lefebvre requires information on the adversary's situational awareness *and* knowledge of how it will apply its doctrine: "it is possible to form an equation of the perceived alternatives in decision making" (Lefebvre 1962, quoted by Vasara). **(M)** Leonenko: "one has to understand how the adversary thinks," exploiting the enemy's **"filter"** — the concepts, doctrine, experience and psychology through which all data passes. **(H)** Thomas adds that RC "requires information about the enemy with a high degree of detail and quality." **(H)**

Komov's "**intellectual methods of information warfare**" operationalise RC as distraction, overload, paralysis, exhaustion, deception, splitting, appeasement, intimidation, provocation, suggestion and pressure. Several are **keyed to perceived physical threats** — a real or imaginary threat to a flank or rear, or the illusion of pinpointed threats to vital interests. **(H)**

### A3. Deliberate vs emergent — verdict: **deliberate, by definition**
RC is a control action with an intent, a target model, and (in Chausov's principles) "purposefulness," "modelling," "anticipation," plus an explicit **risk assessment** whose worst case is the plan being exposed. Secrecy is constitutive. **(H)** There is **no RC claim of emergent, self-amplifying dynamics**: the theory is top-down, state-centric, and depends on a modelled human decision-maker. Emergent effects are not part of the concept. **(H)**

### A4. Fit to the hypothesis — **Partial (mechanism), Poor (novelty)**
- Fits: RC supplies the *logic* of feeding an adversary selected inputs — including ambiguous physical indicators — to induce a self-defeating decision; Komov's distraction/paralysis/provocation map closely onto "ambiguous physical incident" messaging. **(M)**
- Does **not** fit: (i) RC's target is the **decision-maker**, not a community or media ecosystem that supplies its own disruptive effect; (ii) it requires **deliberate design against a modelled human** ("how the adversary thinks"), whereas the hypothesis's engine is autonomous/cheap AI agents acting on ambiguity; (iii) it has no account of **AI as amplifier**; (iv) it is normally a *state* instrument embedded in a whole-of-government campaign, not a self-serve agentic capability. **(H)**

### A5. Critical literature — is RC pseudoscientific / over-attributed?
- **Sceptical on efficacy.** Vasara (Finnish Defence Command) and Merriam stress that RC's real-world success "has been questionable to say the least," that it is easily derailed once exposed, and that Western pre-bunking in 2022 defeated a reflexive-control operation. **(M)**
- **"Pseudoscientific" attribution.** Wikipedia (citing Sebastian Gorka, *Military Review*, Sep–Oct 2016) records that RC "has even been called pseudoscientific." Gorka's text is not open to me (https://www.armyupress.army.mil/Journals/Military-Review/English-Edition-Archives/September-October-2016/) — **UNVERIFIED; treat as (L).**
- **Over-attribution / "not uniquely Russian."** A 2026 commentary argues RC merely formalises influence principles "recognized for centuries," and that no power has "a reliable method for turning complex societies into predictable machines": https://www.columbusmorningstar.com/2026/06/23/reflexive-control-and-the-search-for-a-science-of-influence/ **(M, popular commentary).** The best-evidenced structural analogy is the debunking of the "Gerasimov Doctrine" — Galeotti, *Foreign Policy*, 5 Mar 2018 (https://foreignpolicy.com/2018/03/05/im-sorry-for-creating-the-gerasimov-doctrine/) and *Critical Studies on Security* (https://www.tandfonline.com/doi/full/10.1080/21624887.2018.1441623). **(H)** Analogy only, **not** a direct RC critique.
- **No direct Michael Kofman or Clint Watts critique of RC was found** — the brief's suggested authors do not appear to have published specifically on it. **Negative finding.**
- **Source-hygiene warning.** Much current RC writing is derivative of Thomas; a 2025 open-access article (doi:10.11648/j.com.20251201.12) restates him near-verbatim and adds unverified claims (e.g. a "1984" Lefebvre work). Treat as **(L)**.

### A6. Russian doctrine and Ukraine application
Russian use is widely asserted: the 2000 Information Security Doctrine; Turko's claim that RC outweighs firepower; and 2014 Crimea ("exhaustion"/"suggestion" against Ukrainian forces — ISW/Snegovaya, https://www.understandingwar.org/research/russia-ukraine/putins-information-warfare-in-ukraine-soviet-origins-of-russias-hybrid-warfare-2/). **(M)** Current 2026 applications: FDD (https://www.fdd.org/analysis/2026/09/15/russian-command-and-control-in-information-warfare-and-reflexive-influence/; URL valid, page 403-blocked) and CIMSEC, "Russia's Drone Machinations" (https://cimsec.org/russias-drone-machinations-reflexive-control-and-cognitive-warfare-in-the-maritime-domain/) — directly relevant because it links RC to **drone** incidents. **(M)** Russian-language primary texts were not independently translated; Thomas's Russian edition (intelros.ru) is the accessible entry point. **(M)**

---

## B. COGNITIVE WARFARE

### B1. NATO: origin and canonical documents
- **Canonical NATO-adjacent origin:** **François du Cluzel**, *Cognitive Warfare* (NATO Innovation Hub / ACT-sponsored study, June–Nov 2020, published Jan 2021): https://innovationhub-act.org/wp-content/uploads/2023/12/20210113_CW-Final-v2-.pdf — full text extracted. **(H)** Expanded as Claverie & du Cluzel, "Cognitive Warfare: The Advent of the Concept of 'Cognitics'": https://innovationhub-act.org/wp-content/uploads/2023/12/CW-article-Claverie-du-Cluzel-final_0.pdf **(H)**
  - Definition: cognition is the target; CW is "the way of using knowledge for a conflicting purpose," waging war **through** information (not just in it); "trust is the target"; the individual becomes the weapon; it is "participatory propaganda." **(H)** It explicitly treats **Russian CW as falling under the Reflexive Control doctrine** and describes it as "Perception Management." **(H)**
- **NATO Chief Scientist Research Report on Cognitive Warfare** (STO): https://www.nato.int/content/dam/nato/webready/documents/sto/chief-scientist-report-cognitive-warfare.pdf — CW is the "fight for Cognitive Superiority": "deliberate, synchronized military and non-military activities… to gain, maintain and protect cognitive advantage." **(H)**
- **NATO ACT page:** https://www.act.nato.int/activities/cognitive-warfare/ (Cloudflare-blocked; content confirmed via the Chief Scientist report and JWC publications). **(M)**
- **NATO JWC, *The Three Swords* 41/2025** (current operational framing, by ACT's CW architect): https://www.jwc.nato.int/wp-content/uploads/2025/12/issue41_Art4_2_StrategicCogWar.pdf and https://www.jwc.nato.int/wp-content/uploads/2025/12/issue41_Art3_SpecialReport_COGWAR.pdf — "the brain is both the target and the weapon"; CW "is not the means by which we fight; it is the fight itself"; concedes "skeptics often argue that cognitive warfare is not new." **(H)**
- **Peer-reviewed critique:** Deppe & Schaal, *Frontiers in Big Data*, 1 Nov 2024: https://www.frontiersin.org/journals/big-data/articles/10.3389/fdata.2024.1452129/full — no unified definition exists; the concept is interdisciplinarily contested. **(H)**

### B2. Chinese lineage
- **三战 / "Three Warfares"** (public-opinion, psychological, legal warfare) is the doctrinal ancestor: Peter Mattis, "China's 'Three Warfares'," *Journal of Strategic Studies* (2014), doi:10.1080/01402390.2013.870071: https://www.tandfonline.com/doi/full/10.1080/01402390.2013.870071 **(H, DOI/title verified; paywalled).**
- **"Cognitive domain operations"** as the PLA's holistic influence concept: Nathan Beauchamp-Mustafaga, *China Brief* (Jamestown), Sep 2019: https://jamestown.org/program/cognitive-domain-operations-the-plas-new-holistic-concept-for-influence-operations/ **(H, URL cited by du Cluzel).**
- **Military brain science / cognitive domain:** Elsa B. Kania, "Minds at War," *PRISM* 8(3), 2019: https://ndupress.ndu.edu/Portals/68/Documents/prism/prism_8-3/prism_8-3_Kania_82-101.pdf (403 to me; **UNVERIFIED**, URL confirmed via du Cluzel's bibliography). Hai Jin, Li-Jun Hou & Zheng-Guo Wang, "Military Brain Science — How to influence future wars," *Chinese Journal of Traumatology*, May 2018. **(M)**
- **AI-powered "algorithmic cognitive warfare":** SCSP, *Decoding China's AI-Powered 'Algorithmic Cognitive Warfare'*, Nov 2024: https://www.scsp.ai/wp-content/uploads/2024/11/Decoding-Chinas-AI-Powered-%E2%80%98Algorithmic-Cognitive-Warfare-Final.pdf — **the most on-point source for the hypothesis**: PLA authors explicitly propose algorithms, recommendation systems and **LLMs** for individualised influence and "information cocoons," while cautioning that capability may lag doctrine. **(H)**
- **PLA commentary on Ukraine:** US Army *Military Intelligence Professional Bulletin*: https://mipb.ikn.army.mil/media/dwzdignr/cognitive-warfare.pdf — cites PLA Col. Li Minghai (Mar 2022) and "competition of truths." **(H)**
- **Indian paper NATO cited:** Sep 2026 reporting says a NATO paper cites a 2022 Indian military study associated with Lt Gen D. S. Hooda and Pavithran Rajan ~10 times (https://theprint.in/defence/society-as-battlefield-nato-cites-indian-military-paper-on-cognitive-warfare-what-it-says/3039869/; https://www.indiatoday.in/india/story/nato-hybrid-warfare-paper-cites-ds-hooda-pavithran-rajan-study-10-times-vk-singh-2992138-2026-09-11). **(M for the reporting)** I could not locate the exact cited NATO document or an open copy of the Indian paper; neither the 2025 Chief Scientist report nor the STO mirror contains "Rajan"/"Hooda"/"India". **UNVERIFIED.**

### B3. Russian lineage
Russian cognitive warfare is treated in NATO/du Cluzel as **reflexive control rebranded** (targets decision-making, adapted to IT-enabled "perception management"). **(H)** See A6 for doctrine and Ukraine.

### B4. What cognitive warfare claims
That warfare's decisive terrain is human cognition; that the target is **trust in institutions, processes and allies**, not merely what people think; that effects are gradual, cumulative and potentially endless; that everyone can participate; and that a **sixth "human"/cognitive domain** should be recognised. **(H)**

### B5. Deliberate vs emergent — verdict: **deliberate campaign, with emergent participation**
NATO frames CW as "deliberate, synchronized" adversary activity. **(H)** But du Cluzel's "participatory propaganda" and the NATO JWC's "not the means by which we fight; it is the fight itself" imply the **target population propagates and co-produces the effect** — partial, audience-driven emergence, though the literature never theorises emergence formally. **(M)**

### B6. Fit to the hypothesis — **Partial-to-High**
- Fits strongly: population/institution-focused; targets trust and decision-making; explicitly AI/algorithm-enabled (SCSP); the audience supplies amplification; operates continuously below the threshold of armed conflict. **(H)**
- Fits partially: NATO already anticipates **algorithmic, individualised, micro-targeted** influence at scale, eroding the hypothesis's novelty claim (i) "AI agents as engine." **(H)**

### B7. Where it does NOT fit
- CW targets **cognition/belief/trust**, not ambiguous **physical** incidents; physical events are only *material* for narratives. The hypothesis's "drone sightings, sabotage reports, infrastructure incidents" are not what the CW corpus theorises. **(H)**
- CW is framed as **state/adversary-driven** and whole-of-government, not an autonomous agent-swarm capability. **(H)**
- The concept is itself stretched (Deppe & Schaal); using it as a stable anchor imports its definitional looseness. **(H)**
- SCSP flags a **capability–doctrine gap** for China; the same caution applies to claims that algorithmic amplification is already decisive. **(M)**

---

## C. Bottom line for the hypothesis

| Concept | Fit | Core reason |
|---|---|---|
| Reflexive control | **Partial** | Supplies the "feed selected inputs to induce a bad decision" logic and some physical-threat methods (Komov distraction/paralysis/provocation), but is human-decision-centric, deliberately engineered, state-centric, and silent on AI or emergent self-amplification. |
| Cognitive warfare | **Partial–High** | Population/institution-level, trust-eroding, explicitly AI-enabled and participatory; but belief/cognition-centric, not physical-incident-centric, and its "AI amplification" element is already established (SCSP), weakening novelty claim (i). |

The genuinely **under-theorised** element of the hypothesis is the conjunction of (ii) **ambiguous physical incidents** as the trigger and (iii) **the target population/institution supplying the disruptive effect** through autonomous AI amplification. Neither concept covers that conjunction squarely; reflexive control covers the deliberate-deception half, cognitive warfare covers the population/AI half, and neither claims an emergent, agent-driven mechanism. **(M)**

---

*All primary URLs are cited inline. Full texts extracted locally: Thomas 2002, Chotikul 1986, du Cluzel 2021, NATO Chief Scientist CW report, NATO JWC "Three Swords" 41/2025, Deppe & Schaal 2024, SCSP 2024, MIPB, ISW 2015.*
