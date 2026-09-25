# Ambiguous physical incidents → amplification: case file

**Topic.** How ambiguous physical incidents become amplified into disruption, and whether AI-generated
content played a verified role. Informs the audit of the "agentic threat amplification" hypothesis (H1: AI
agents deliberately amplify ambiguous physical threats so that communities/media/institutions generate the
disruptive effect themselves).

**Compiled:** September 2026 (environment date). **Method note.** The harness `web_search` tool was broken
throughout; discovery used DuckDuckGo via `r.jina.ai` (`tools/s.sh`), Google News RSS (`tools/news.sh`),
direct `curl`/`r.jina.ai` retrieval and PDF extraction. Every URL below was checked live in this session
unless marked otherwise. HTTP 403/401 on a live URL = bot-blocking, not a dead link; those are flagged
`[403-bot]`. **Grade:** A = primary/official/peer-reviewed; B = independent research/strong reporting;
C = reputable journalism; D = aggregator/single-source; E = weak/anonymous. **UNVERIFIED** = could not be
confirmed in this session. **INHERITED** = taken from this workspace's prior findings files, not
independently re-fetched here.

---

## 0. Headline findings

1. **Ambiguity alone produces real disruption.** Gatwick 2018, Copenhagen 2025, Madrid-Barajas 2024 and the
   US Northeast 2024–25 all produced closures, flight bans, arrests and procurement around events that were
   never physically evidenced (Gatwick, Copenhagen, Madrid) or were mundane aircraft/stars/hobby drones (US
   Northeast).
2. **The strongest amplifier is the responding institution, not an adversary.** In every case examined, the
   pivotal amplification came from police/ministers/media/other institutions — organic, political,
   institutional — not from a documented deliberate influence operation.
3. **AI-generated content is verified present in two of the cases** (US Northeast drone panic; January 2025
   LA wildfires) and in one adjacent case (the October 2025 AI "intruder" prank). In all three it was
   **opportunistic/emergent** — viral fakes, hoaxes and pranks — **not** an orchestrated AI amplification
   campaign. **No verified case was found in which AI (agentic or otherwise) deliberately generated a
   physical-incident amplification.** This is a documented negative, not proof of absence.
4. **Fabrication without AI is already sufficient** to feed an ambiguity: during the US Northeast panic,
   anonymous users uploaded false radiation readings to a public Geiger-counter map (up to 178,173 cpm),
   feeding a nuclear-scare theory. That is data poisoning, not AI, and it shows the "supply fabricated
   corroboration" step is cheap and pre-existing.
5. **A tasking premise does not survive verification:** no distinct "2020 NATS/CAA report" on the Gatwick
   drone incident could be verified. See §1.6.

---

## 1. Gatwick Airport drone closure, 19–21 December 2018

**Verdict: emergent + institutional/political/media amplification. Deliberate adversarial amplification:
NOT documented. Confidence: High that no drone was ever conclusively evidenced; Medium on what actually
happened.**

### 1.1 What happened (Grade A/B)

- **First report:** shortly after **21:00 on Wed 19 December 2018**, an airport security officer waiting at a
  bus stop on site reported **two drones** — one above a vehicle, one above the perimeter fence.
- Within **half an hour six more sightings** were logged, **five from police officers**. By midnight **58
  flights** had been cancelled/diverted.
- The runway was closed for **33 hours** (reopened ~**05:57 on Friday 21 December**); it shut again
  **17:30–18:23** the same day. (Grade A/B: Operation Trebor Structured Debrief timeline; Guardian 2020.)
- **~1,000 flights** cancelled or diverted and **~140,000 passengers** affected (police/airport figure;
  The Register cites ~800 flights / ~120,000 passengers for part of the period). Airlines' cost was reported
  at **~£50m** (Guardian long read).
- Police logged **170 reports, 115 later deemed "credible"**; the Chief Constable cited **92–93 "credible"
  witnesses**. Sussex Police said in 2019 there were **109 credible sightings** (The Register, 2026).
- **No photograph or video of a drone has ever emerged.** A military counter-drone system installed on the
  south terminal roof (~22:00 on 20 December) "did not pick up a single thing" (Guardian 2020).
- A photographer reported a "drone", then retracted it — the image showed a **helicopter ~10 miles away**.
- **Conflicting official statements.** 20 Dec 10:20: police call it a "deliberate and malicious act".
  **23 Dec: DCS Jason Tingley** said there was "always a possibility that there may not have been any
  genuine drone activity in the first place". **29 Dec: Chief Constable Giles York** said he was "absolutely
  certain a drone was flying" — while conceding **Sussex Police's own drones could have caused some
  confusion.**
- **Wrongful arrests.** At ~22:00 on 21 December, **12 armed officers** arrested **Paul Gait and Elaine
  Kirk** at their home in Crawley. They were held ~**36 hours**, released without charge on 23 December at
  10:08, and had been at work during the sightings; they owned no drone. Gatwick offered a **£50,000
  reward** for information.

### 1.2 Cost of the response (Grade A)

- **June 2020:** Sussex Police **paid £200,000** — **£55,000 damages** plus **£145,000 legal costs** — to
  Gait and Kirk for wrongful arrest and false imprisonment. Assistant Chief Constable David Miller wrote
  that he was "deeply sorry".
- The investigation ran **18 months across five forces**, knocked on **1,200 doors**, took **222 witness
  statements** and identified **96 persons of interest**; it **closed on 27 September 2019 with nobody
  charged**, at a cost of **£790,000**. Police maintained it was a "serious and deliberate criminal act".
- A **2024 FOI** reported that the **National Police Air Service logged no drone sightings at Gatwick
  between 19 and 31 December 2018**. `INHERITED` from `findings/05-drone-cases.md`; **not independently
  re-verified here.**
- Former DJI policy VP **Brendan Schulman** said in **2021** he was "convinced" there was never a drone
  (The Register 2026 report, quoting him).

### 1.3 Official inquiries and their status (Grade A)

- **Operation Trebor Structured Debrief Report** (Sussex Police, redacted, "OFFICIAL SENSITIVE") — sets out
  the timeline and **21 recommendations**; notes the response ran "against a background of intense local,
  national and international media coverage… and political interest at all levels".
  https://www.airproxrealitycheck.org/wp-content/uploads/2021/09/Official-sensitive-Operation-Trebor-Structured-Debrief-report-Redacted....pdf
  (mirror: https://www.whatdotheyknow.com/request/gatwick_airport_drone_incident_i `[403-bot]`)
- **Cross-Whitehall Lessons Identified Report** (Transport Security Operations Centre, DfT; version 0.2,
  February 2019) — the central government lessons document. It was still **withheld** as of 2026 on
  national-security grounds. A redacted release (20 October 2025):
  https://regmedia.co.uk/2026/03/05/gatwick_lessons_report_redacted_20102025.pdf
- **ICO decision notices ordering disclosure:**
  - **IC-358804-N4G8** (4 August 2025, Home Office): Home Office not entitled to refuse to confirm/deny
    under FOIA s24(2) for part of the request on Operation Trebor storage systems.
    https://ico.org.uk/action-weve-taken/decision-notices/2025/08/ic-358804-n4g8/
  - **IC-375402-Q8L7** (2 February 2026, DfT): DfT **not entitled** to rely on s24(1) national security for
    the lessons documents; must disclose most of it, names of three security bodies may stay redacted.
    https://ico.org.uk/action-weve-taken/decision-notices/2026/02/ic-426297-w2k5/
    *(The notice number in the workspace copy is IC-375402-Q8L7; the live ICO index URL found is
    ic-426297-w2k5 — verify which notice is which before quoting.)*
- **Appeal:** The Register reported on **6 March 2026** that the DfT was assembling government lawyers to
  fight the ICO decision at the First-tier Tribunal (General Regulatory Chamber).
  https://www.theregister.com/off-prem/2026/03/06/uk-fights-to-keep-gatwick-drone-disaster-report-redacted/4424268
- **Sussex Police / PCC record:** https://www.sussex-pcc.gov.uk/media/3857/1-pam-minutes-1812019.pdf
  (2019 performance-and-accountability minutes; PDF live).

### 1.4 Media, social media and political amplification (Grade B/C)

- The incident led UK news for days and drew the **Prime Minister, Defence and Transport Secretaries,
  shadow ministers, the MoD and the CAA**; the **Army and RAF Regiment** deployed under MACA and the **Met's
  counter-terrorism unit** was alerted (Guardian 2020).
- The **Daily Mail** front page (22 December 2018) splashed the couple's photo under the headline **"Are
  these the morons who ruined Christmas?"** — the amplification attached itself to innocent named people.
- News crews (~30 photographers), thousands of passengers and airport staff on site produced **no image**.
- Social-media outcome: the "Gatwick drone" became a punchline, with widespread doubt that it existed.
- Regulatory/legislative response followed: the January 2019 drone consultation response and new police
  powers (https://www.gov.uk/government/speeches/drones-consultation-response-7-january-2019); Gatwick and
  Heathrow spent **£5m** on counter-drone systems (Guardian 2020).

### 1.5 AI-generated content role

**None found.** No verified reporting that AI-generated imagery or synthetic content played any role in
the Gatwick 2018 event. The mechanism is entirely pre-generative-AI.

### 1.6 Claim that FAILED verification — the "2020 NATS/CAA reports"

The tasking referred to "the 2020 NATS/CAA reports". **No distinct NATS or CAA report on the Gatwick drone
incident could be verified.** The CAA publication at `https://www.caa.co.uk/publication/download/17926`
resolves to **CAP 1912, "Report of the CAA's Decision on the Post Implementation Review of London Gatwick's
Airspace Change Proposal – Runway 26 Route 4 RNAV-1 SIDs" (2020)** — an airspace-change document, **not** a
drone-incident report. The verifiable official record consists of the **Operation Trebor Structured
Debrief** (police), the **DfT Cross-Whitehall Lessons** report (withheld/pending), and the **ICO decision
notices**. Treat "2020 NATS/CAA Gatwick drone report" as **UNVERIFIED / misattributed**.

**Key sources.** Guardian long read (1 Dec 2020):
https://www.theguardian.com/uk-news/2020/dec/01/the-mystery-of-the-gatwick-drone · BBC (payout, 14 Jun
2020): https://www.bbc.co.uk/news/uk-england-sussex-53041256 · BBC (investigation closed / inside-job):
https://www.bbc.co.uk/news/uk-england-sussex-49846450 · BBC (2021 follow-up):
https://www.bbc.co.uk/news/uk-england-sussex-56112694 · Guardian (police report, 27 Sep 2019):
https://www.theguardian.com/uk-news/2019/sep/27/gatwick-drone-disruption-perpetrators-detailed-knowledge-airport-police-report
· Wikipedia (D, discovery only): https://en.wikipedia.org/wiki/Gatwick_Airport_drone_incident

---

## 2. New Jersey / US Northeast drone sightings, November 2024 – January 2025

**Verdict: emergent (citizen vigilance + media + political + institutional). Deliberate adversarial
amplification: NOT documented. AI-generated content: verified present, but opportunistic/emergent, not the
driver. Confidence: High.**

### 2.1 The official counter-assessment (Grade A)

**DHS–FBI–FAA–DoD Joint Statement, 17 December 2024**
https://www.faa.gov/newsroom/dhs-fbi-faa-dod-joint-statement-ongoing-response-reported-drone-sightings

- "FBI has received tips of **more than 5,000 reported drone sightings** in the last few weeks with
  approximately **100 leads** generated".
- "the sightings to date include a combination of **lawful commercial drones, hobbyist drones, and law
  enforcement drones, as well as manned fixed-wing aircraft, helicopters, and stars** mistakenly reported as
  drones."
- "**We have not identified anything anomalous** and do not assess the activity to date to present a national
  security or public safety risk."
- Notes a limited number of visual sightings over military facilities and that counter-UAS legislation was
  sought. **The statement contains no reference to AI or synthetic content.**

### 2.2 Origin and physical substrate (Grade A/B)

- The story began with a genuine incursion report: **Picatinny Arsenal, Morris County, 13 November 2024**
  (a contractor/police officer reported a light rising from the tree line). The War Zone broke the story.
  `INHERITED` from `findings/05-drone-cases.md`.
- Reports eventually resolved to **lawful drones, aircraft and stars** (joint statement). Specific
  collapses in the prior findings (medevac wave-off = three airliners; Salem nuclear report = a UH-60, a
  Cessna C150 and Philadelphia traffic; "grey mist" = wingtip vortices) are `INHERITED` and not re-verified.

### 2.3 FAA flight restrictions (Grade A/B)

FAA Temporary Flight Restrictions (TFRs) issued in December 2024 (The War Zone, 19 Dec 2024):

- **22 energy-infrastructure sites** across New Jersey (mostly PSE&G facilities), restrictions **below 400
  feet**, in force **until 17 January**; DHS said they were requested by the infrastructure operators "out
  of an abundance of caution".
- Earlier TFRs over **Picatinny Arsenal** (3-mile radius, surface–2,000 ft; effective 25 Nov, ending 26
  Dec) and **Trump National Golf Course, Bedminster** (initiated 22 Nov, extended to 20 Dec).
- DHS maintained "no public safety threat"; the TFRs applied to drones only, not manned aviation.
  Source: https://www.twz.com/air/wide-scale-drone-flight-ban-prompted-by-energy-infrastructure-vulnerability-concerns-in-new-jersey

### 2.4 Harm produced by the response (Grade B)

- **Laser strikes:** officials told The War Zone that pilots of **15 fixed- and rotary-wing aircraft** from
  Joint Base McGuire-Dix-Lakehurst reported being struck by lasers from the ground **since 7 December**;
  one pilot sought medical treatment. The FBI and NJ State Police had to publicly plead with people not to
  shoot lasers or bullets at aircraft.
- New York City reportedly logged ~**120 calls** over the weekend of 14–15 December (many resolved as
  aircraft or Venus). `INHERITED`.
- Viral false content included recycled Chinese COVID disinfectant-drone footage, a clip with added gunfire,
  and a "crashed drone" that was a *Star Wars* TIE-fighter replica. `INHERITED`.

### 2.5 Political and media amplification (Grade B/C)

- **8 December:** mayors of **21 Morris County townships** wrote to Gov. Murphy about the absence of an
  owner for the question; within 48 hours ~**185 mayors** attended a closed state-EOC briefing with State
  Police, FBI, DHS and DoD and left without an answer. `INHERITED`.
- Rep. **Jeff Van Drew** claimed an Iranian "mothership" (refuted by the Pentagon); Rep. **Michael McCaul**
  claimed Chinese spy drones; **President-elect Trump** suggested shooting them down. `INHERITED`.
- **Montclair State University** analysis of **170,000+ posts**: conversation up **19,000%**, **fear (45%)**
  dominant, **X carrying 86%**.
  https://inside.montclair.edu/news/montclair-drone-study-nearly-half-social-media-users-are-afraid-drone-sightings
- Rolling Stone documented the conspiracy-theory ecosystem:
  https://www.rollingstone.com/politics/politics-features/drone-panic-uap-new-jersey-1235531077/

### 2.6 The 2025 official follow-up (Grade A/B)

- **28 January 2025:** the White House said the aircraft were primarily **FAA-authorised research drones**
  and hobbyist/private craft — "**This was not the enemy**".
  https://www.nbcnews.com/news/us-news/white-house-says-new-jersey-drones-authorized-faa-was-not-enemy-rcna189646
  · https://www.politico.com/news/2025/01/28/new-jersey-drones-authorized-007314
- New Jersey later became the **first US state to fund UAP research** ($2.5m/yr plus $1m for ATC loan
  forgiveness). `INHERITED`; source in `findings/05-drone-cases.md`.

### 2.7 AI-generated content in the panic — VERIFIED (Grade A/B)

This is the clearest verified AI-content role among the physical-incident cases. Multiple fact-checkers
debunked AI/digitally-created drone videos circulating during the panic:

| Claim | Outlet / date | URL | Grade |
|---|---|---|---|
| "Digitally-created video does not show New Jersey drone" | Reuters Fact Check, 27 Dec 2024 | https://www.reuters.com/fact-check/digitally-created-video-does-not-show-new-jersey-drone-2024-12-27/ `[401-bot]` | A |
| Video altered to show gunfire targeting an object over New Jersey | Reuters Fact Check, 20 Dec 2024 | https://www.reuters.com/fact-check/video-altered-show-gunfire-targeting-unidentified-object-over-new-jersey-2024-12-20/ | A |
| "Video of 'Unidentified Drone' Flying Over New Jersey Is Fake" | Snopes, 12 Dec 2024 | https://www.snopes.com/fact-check/unidentified-drone-new-jersey-video-icemanfox1/ | B |
| Drone footage over New Jersey digitally created | Full Fact | https://fullfact.org/online/drone-fooage-new-jersey-digitally-created/ | B |
| "Car-sized drone in Las Vegas" video is digitally created | Full Fact, 20 Dec 2024 | https://fullfact.org/online/video-car-sized-drone-las-vegas-fake/ | B |
| "Videos of giant drones over US cities are a flight of fancy" | AAP FactCheck, 31 Dec 2024 | https://www.aap.com.au/factcheck/videos-of-giant-drones-over-us-cities-are-a-flight-of-fancy/ | B |
| "People keep falling for fake 'drones over Jersey' videos" | Popular Science, 18 Dec 2024 | https://www.popsci.com/technology/fake-drone-videos/ | C |

**Interpretation.** The fakes are consistent with **opportunistic, attention-driven creation and
re-sharing**, not an orchestrated campaign. No platform, vendor, government or research report located in
this session documents a coordinated or AI-agent-driven amplification network behind the NJ panic.

### 2.8 Fabricated corroboration WITHOUT AI — the fake radiation map (Grade B)

Kim Zetter, "Anatomy of a Nuclear Scare", *Zero Day*, 8 January 2025:
https://zetter-zeroday.com/anatomy-of-a-nuclear-scare/

- A nuclear-scare theory (drones hunting a radiological weapon) was amplified by **fake radiation readings**
  plotted on GQ Electronics' public "Real-Time Radiation World Map".
- The map had **no authentication**: anyone could register and upload readings without owning a Geiger
  counter. Security researcher **Ruben Santamarta** identified the flaw.
- Readings rose from ~200 cpm to **1,048 cpm (Bronx)**, **178,173 cpm (Utica)** and **90,210 cpm (near
  Trump Tower)** — physically implausible. The company removed the data and temporarily disabled uploads.
- Media (Newsweek, MSN) and influencers (Bethenny Frankel, Joe Rogan) spread the theory.

**Why this matters for H1:** it is a verified instance of **fabricated corroboration being injected into an
ongoing ambiguous physical incident** — the exact "supply synthetic corroboration" step — using **no AI at
all**. The marginal cost of this step was already near zero.

---

## 3. Havana syndrome / anomalous health incidents (2016–2026)

**Verdict: amplification predominantly emergent, then domestic-institutional/political/media. A foreign-
weapon causal story was supplied largely by US institutions and journalists; it is NOT verified as an
adversary information operation. Deliberate AI-driven amplification: NOT documented. Confidence: High on
the ODNI/NIH findings; Medium on mass-psychogenic attribution.**

### 3.1 Timeline and case-count growth (Grade A for official acts; B/C for counts)

- **Late 2016:** US/Canadian personnel in Havana report headache, tinnitus, vertigo, cognitive difficulty
  and a perceived localised sound. No lesion, sensor reading, device or diagnosed disease.
- **August 2017:** the **State Department labels the events "attacks"** — the pivotal institutional act;
  two Cuban diplomats are expelled, the embassy is drawn down, Canada reduces staff.
- Reported case counts grew with attention: **26 (2017) → 40 (2019) → 130 (May 2021) → 200+ (Sept 2021) →
  1,000+ (early 2022)**. Locations expanded to Guangzhou, Berlin, Vienna, Geneva, Bogotá, Serbia, London and
  the Washington DC area. `INHERITED` / Wikipedia (D).

### 3.2 The 2023–2025 intelligence assessments (Grade A)

- **ODNI Intelligence Community Assessment, 1 March 2023 (ICA 2023-02286-B), "Updated Assessment of
  Anomalous Health Incidents"**: **five of seven** agencies judged adversary involvement **"very unlikely"**,
  **one "unlikely"**, **one abstained**; **two dissented at low confidence** because they judged RF energy
  plausible. Mundane site findings (e.g. malfunctioning HVAC) were recorded.
  https://archive.dni.gov/files/ODNI/documents/assessments/NIC-Unclassified-ICA-Updated-Assessment-AHI-March2023.pdf `[403-bot]`
- **ODNI update, December 2024 (released January 2025)**: held the 2023 judgements.
  https://archive.dni.gov/files/ODNI/documents/assessments/NIC-Unclassified-ICA-Updated-Assessment-AHI-December2024.pdf `[403-bot]`
- **NIH, March 2024**: two studies (81 and 86 participants) found **no MRI-detectable brain injury** and no
  significant differences in most clinical/biomarker measures — **failing to replicate** the 2018 Penn JAMA
  findings.
  https://www.nih.gov/news-events/news-releases/nih-studies-find-severe-symptoms-havana-syndrome-no-evidence-mri-detectable-brain-injury-or-biological-abnormalities `[403-bot]`
- **JASON 2018** (from the workspace corpus; `INHERITED`): the perceived sounds were "most likely" insects
  (high confidence: the Indies short-tailed cricket); microwave/ultrasound "highly unlikely"; psychogenic
  effects could explain important components.
- **GAO, July 2024**: **334 people** had qualified for care in the military health system — an
  *administrative*, not causal, question. `INHERITED`.

### 3.3 Mass psychogenic illness / "nocebo" framing (Grade B)

- **Bartholomew & Baloh (2023), "Havana syndrome: a post-mortem"**, *International Journal of Social
  Psychiatry* — argues the syndrome was erroneously classified as novel because of a **moral panic**,
  over-interpretation of data, misconceptions about psychogenic illness, and media coverage and leaks.
  DOI: https://doi.org/10.1177/00207640231208374 · PMID 38146090
  (https://pubmed.ncbi.nlm.nih.gov/38146090/; journal page `[403-bot]`).
- **Connolly et al. (2024)**, *American Journal of Otolaryngology* — cause still unknown; lists **mass
  psychogenic illness** among proposed explanations without endorsing one. `INHERITED`.
- **UNVERIFIED in this session:** any specific quantitative study demonstrating *nocebo* amplification of
  Havana-syndrome reporting. The psychogenic/nocebo framing is well attested in reviews but no single
  amplifying experiment was verified here.

### 3.4 Cost (Grade A/B)

- **HAVANA Act** (PL 117-46, 8 October 2021): payments up to one year's full salary, untaxed — **$187,300**
  for senior employees (Federal Register implementation, 3 October 2024).
- **DoD announced the first payments, totalling nearly $3 million, in July 2026.** `INHERITED`
  (DefenseScoop).
- State settled a whistleblower suit for **$460,000**; Canadian diplomats sued for **C$28m**. `INHERITED`.

### 3.5 AI-generated content role

**None found.** No verified reporting that AI-generated content played a role in the Havana-syndrome
amplification. The mechanism is narrative/institutional, not synthetic-media.

---

## 4. Other cases

### 4a. Copenhagen / Oslo and the September–October 2025 European drone wave

**Verdict: emergent + institutional/political amplification. Deliberate adversarial amplification of the
*panic*: NOT documented. AI-content role: NOT verified. Confidence: High on the closure facts; Medium on
the reconstruction.**

- **22 September 2025, ~20:00:** an airport employee reported two large drones; **Copenhagen airport closed
  ~4 hours** (~100 movements, ~20,000 passengers); **Oslo Gardermoen** closed briefly the same night.
- **Danish police:** **500+ drone reports nationally in 24 hours** (Rigspolitiet, 26 September 2025):
  https://politi.dk/rigspolitiet/nyhedsliste/mere-end-500-droneanmeldelser-paa-nationalt-plan-i-det-seneste-doegn/2025/09/26
- **Danish Armed Forces** confirmed drone observations at several military sites:
  https://www.forsvaret.dk/da/nyheder/2025/VedrorendedronehaendelseroverDanmark/
- **PM Mette Frederiksen** called it "the most serious attack on Danish critical infrastructure to date":
  https://www.france24.com/en/live-news/20250923-drone-flights-most-serious-attack-on-danish-infrastructure-pm-says `[403-bot]`
- **Reconstruction (reprint, verified):** sUAS News, May 2026, on the *Frihedsbrevet* investigation — the
  large object was likely a **school training aircraft from Roskilde**; the fast "zig-zagging" object was
  **lens flare**; a later "drone" was the **police helicopter scrambled to hunt the drone the first report
  had conjured**. https://www.suasnews.com/2026/05/the-drone-that-wasnt-how-one-airport-workers-honest-mistake-shut-down-copenhagen-airspace/
- **Danish police closed the case on 25 June 2026**, able to "neither confirm nor rule out" drone activity
  at the airport and naming **no suspects**; the Armed Forces separately concluded drones *had* overflown
  Danish military installations. `INHERITED` (Straits Times / police statements).
- **Norway's PST (February 2026)** said it had "not uncovered a single case of a drone being controlled by a
  foreign state", attributing reports to "stars, weather phenomena, aeroplanes, or helicopters."
  `INHERITED`.
- **Trouw + Dronewatch audit** of **61 sightings in 11 countries** (9 Sept–27 Nov 2025): ~**40 with no
  evidence of any drone**, only three confirmed Russian (Poland/Romania/Moldova).
  https://www.trouw.nl/binnenland/analyse-zestig-drone-incidenten-in-europa-veel-paniek-en-weinig-bewijs~bbae510b/
  · https://www.dronewatch.nl/2026/09/22/een-jaar-na-het-9-11-moment-in-denemarken-hoe-europa-drones-zag-die-er-meestal-niet-waren/
- **AI-generated content:** no verified case found in this session in which AI-generated imagery or video
  drove the European 2025 drone reports. An EDMO publication exists on drone crashes and conspiracy
  theories (https://edmo.eu/publications/incident-or-deliberate-action-it-doesnt-matter-drone-crashes-are-always-good-for-spreading-conspiracy-theories-and-fearmongering/)
  but its content was **CAPTCHA-blocked** — **UNVERIFIED**. Treat any claim that AI amplified this wave as
  unproven pending primary evidence.

### 4b. The 2025 acetaminophen–autism controversy ("Tylenol autism")

**Verdict: political + legal + media amplification; emergent, not AI-driven. This is a health-product
claim, not a physical incident — adjacent evidence only. Confidence: Medium.**

- **Correction to the tasking:** the major political event was **22 September 2025** (White House/HHS/FDA
  announcement), not 2024. At the announcement the FDA simultaneously stated that "**a causal relationship
  has not been established**" while initiating a pregnancy label change.
- **Evidence ran the other way:** a **JAMA Internal Medicine** analysis (June 2026) of **708,020 Hong Kong
  mother–child pairs**, sibling-matched, found **HR ≈ 1.00**; a 2024 Swedish sibling analysis of ~2.5m
  children agreed; sibling-controlled evidence now exceeds **2.7m children**.
- **Behavioural harm:** *The Lancet* found ED acetaminophen orders for pregnant patients **fell ~10%**;
  leucovorin prescribing for ages 5–17 **rose 71%** (elsewhere up to sevenfold; ~**50,000** US children).
- **Persistence is legal, not scientific:** 500+ suits dismissed by SDNY in December 2024; the **Second
  Circuit revived them on 13 July 2026** (without deciding causation); rehearing sought **11 September
  2026**. The **label did not change** (Tylenol Regular Strength v13, revised 27 May 2026).
- **AI role:** none documented. **Caution:** the workspace file `wiki-tylenol.txt` concerns the **1982
  Chicago Tylenol murders**, not the 2025 controversy — do not conflate.
- Sources (`INHERITED` from `sources/raw-product-env.md`; some grade A): HHS release 22 Sep 2025
  (https://www.hhs.gov/about/news/2025/09/22/president-trump-secretary-kennedy-announce-bold-actions-to-tackle-autism-epidemic.html `[403-bot]`);
  Reuters on the rehearing petition
  (https://www.reuters.com/legal/litigation/tylenol-maker-pharmacy-chains-urge-us-appeals-court-revisit-decision-over-2026-09-11/).

### 4c. AI-generated imagery in the January 2025 Los Angeles wildfires

**Verdict: AI-generated content verified; amplification opportunistic/emergent, no orchestrator documented.
The physical incident was real, not ambiguous. Confidence: High.**

- **AI images of the Hollywood Sign on fire went viral** although the sign was untouched; Full Fact found
  an embedded **"Grok" watermark** (xAI's image generator) in one image.
  - NBC Los Angeles, 9 Jan 2025: https://www.nbclosangeles.com/news/california-wildfires/hollywood-sign-fire/3599907/
  - DISA fact-check summary: https://disa.org/fact-check-los-angeles-wildfires/
- **AI-generated "miracle house" images** (a house apparently spared by the fire):
  - CEDMO, 27 Jan 2025: https://cedmohub.eu/miracle-house-spared-by-la-wildfires-is-ai-generated/ `[403-bot]`
  - AFP Fact Check: https://factcheck.afp.com/doc.afp.com.36UX4W6 `[403-bot]`
- **NPR, 16 Jan 2025**, "LA's wildfires prompted a rash of fake images. Here's why":
  https://www.npr.org/2025/01/16/nx-s1-5259629/la-wildfires-fake-images `[402-bot]`
- Other documented false content (not AI): a 2017 LA fire video re-shared as current; videos from **Chile**
  (a firefighter, a plane crash) miscaptioned as LA; a false claim that Chancellor **Olaf Scholz's** house
  burned (the pictured property was an LAPD police academy).
- **Deliberate vs emergent:** the fakes served attention, engagement and (in some cases) political
  narrative ends; **no coordinated or state-attributed AI amplification campaign was verified** in this
  session. Earlier workspace notes describe the AI content as grade C and note that **specific AI-image
  counts were not retrieved** (NewsGuard's tracker is JS-gated).

### 4d. AI-generated "home intruder" prank → real 911 responses (October 2025)

**Verdict: deliberate creation by pranksters, but not an engineered threat campaign; an emergent social-media
trend. AI-generated content produced real emergency responses to a non-existent physical intrusion.
Confidence: High on the incidents.**

- A viral trend used AI image generators to create realistic photos of a dishevelled man apparently at
  someone's door or inside their home; pranksters sent them to friends/relatives and filmed the panicked
  reactions, sometimes triggering **emergency calls**.
- **Police departments in Michigan, New York, Wisconsin and Massachusetts issued public warnings.** Yonkers
  PD said officers were responding "lights-and-sirens" to what sounded like a real intruder; **Salem (MA)
  Police** investigated **three incidents**, all involving people genuinely believing a break-in was
  happening. Officials warned participants could face charges for false reports to emergency services.
- Source: ABC7 New York, 16 October 2025:
  https://abc7news.com/post/ai-homeless-man-prank-police-issue-new-warning-trend-faking-intruder-home/18018899/
  · Forbes (17 Oct 2025) `[403-bot]`:
  https://www.forbes.com/sites/lesliekatz/2025/10/17/viral-ai-homeless-man-prank-condemned-by-police-and-advocacy-groups/
  · BBC: https://www.bbc.co.uk/news/articles/c98ezep0plno
- **Why it matters:** a genuine case of AI-generated content causing **real emergency mobilisation around
  a non-existent physical incident** — close in structure to H1, but with no political or strategic
  objective and no sustained target.

### 4e. 2018 Hawaii false missile alert — the pre-AI "false alarm" baseline (Grade A)

- **13 January 2018, 08:07:** a HI-EMA employee triggered a false ballistic-missile alert during a drill;
  the correction took **38 minutes**. The FCC reported "**38 minutes of confusion, fear and uncertainty**"
  for a population of **1.4 million residents** plus ~200,000 visitors on an average day.
- **911 and public-safety communications were overloaded.** FCC Report and Recommendations, April 2018:
  https://docs.fcc.gov/public/attachments/DOC-350119A1.pdf · FCC docket page:
  https://www.fcc.gov/document/fcc-releases-report-hawaii-false-emergency-alert
- **No AI, no adversary.** The harm came entirely from a human error plus the absence of a false-alarm
  safeguard — the canonical demonstration that response-generated harm is pre-agentic.

### 4f. Sadiq Khan AI voice-clone audio, November 2023 (Grade B)

- AI-generated audio falsely attributed inflammatory statements to the **Mayor of London** ("I control the
  Met Police…"), released during the tense run-up to Armistice Day / Remembrance weekend; Khan said that
  for a few seconds he thought it was his own voice. Three audio files were released over the period.
  https://zeteo.com/p/the-fake-mayor-deepfake-disinformation
- **No verified physical disruption followed.** Relevant as AI-generated content targeting civil-order
  ambiguity, not as a confirmed amplification of a physical incident.

---

## 5. Theory: "ambiguity as an attack surface"

**Verdict: the descriptive literature is strong; the *deliberate engineering* literature is weak, and SARF
in particular has no adversary slot. Confidence: High.**

- **Social Amplification of Risk Framework (SARF).** Kasperson, Renn, Slovic, Brown, Emel, Goble,
  Kasperson & Ratick (1988), *Risk Analysis* 8(2):177–187,
  https://doi.org/10.1111/j.1539-6924.1988.tb01168.x. Risk signals pass through **"amplification
  stations"** (media, scientists, institutions, social groups) producing **ripple effects**; secondary
  social/economic impacts often exceed direct harm. **SARF was descriptive, not an engineering manual**,
  and its critics (Rayner 1988, same issue, https://doi.org/10.1111/j.1539-6924.1988.tb01172.x) attacked
  exactly the engineering reading. Its 15-year assessment concedes it is better at post-hoc interpretation
  than prediction (Pidgeon, Kasperson & Slovic eds., 2003,
  https://doi.org/10.1017/CBO9780511550461). **SARF contains no variable for an adversary acting *as* a
  station; citing it as authority for deliberate amplification is a misuse.**
- **Availability cascades.** Kuran & Sunstein (1999), *Stanford Law Review* 51(4):683–768,
  https://doi.org/10.2307/1229439 — "**availability entrepreneurs**" deliberately raise a risk's
  availability; informational + reputational motives drive a self-reinforcing cascade. Kuran & Sunstein
  treat these as pathologies to be damped, not weapons.
- **Rumour theory.** Allport & Postman (1947): rumour intensity varies with **importance × ambiguity**;
  ambiguity is the input an adversary can most plausibly move. Shibutani (1966) reframes rumour as
  collective sense-making in an information vacuum. DiFonzo & Bordia (2007),
  https://doi.org/10.1037/11503-000.
- **Disaster sociology / "disaster mythology" — the most important corrective.** Quarantelli & Dynes
  (1977), *Annual Review of Sociology* 3:23–49,
  https://doi.org/10.1146/annurev.so.03.080177.000323; Clarke (2002), "Panic: Myth or Reality?",
  *Contexts* 1(3):21–26; Tierney, Bevc & Kuligowski (2006), *Annals AAPSS* 604:57–81. The consistent
  finding: **mass panic in disasters is rare to non-existent**; the "panic" narrative is largely a *media
  frame* that then drives counterproductive policy. This cuts directly against panic-engineering claims.
- **Cry wolf / false alarms.** Breznitz (1984), *Cry Wolf*. **Counter-evidence:** Barnes et al. (2007),
  *Meteorological Applications* 14(4):345–352, and Dow & Cutter (1998), *Coastal Management* 26(4):237–252,
  found false alarms did **not** meaningfully reduce compliance with tornado/hurricane warnings — cry-wolf
  is real in bounded technical settings, weaker for safety warnings.
- **Mass psychogenic illness / nocebo.** See §3.3 (Bartholomew & Baloh 2023; Connolly et al. 2024). A
  named-but-unfalsifiable mechanism plus a victim class is what made Havana durable.
- **Crisis informatics.** Starbird et al. (2014) on the Boston bombing false rumours: corrections emerge
  but are **muted and lagged** (ratios ~18:1, 18:1, 5:1) and only an official announcement terminated the
  Sunil Tripathi rumour. `INHERITED`; PDF in workspace `sources/starbird-boston-2014.pdf`.
- **Prior art for "the target does the work"** (`INHERITED` from `findings/01-concepts.md`): reflexive
  control (Soviet; targets command decision-makers); strategy of tension (unattributed violence to induce
  a strong-state reaction; contested Gladio attribution); network **amplification/reflection attacks**
  (structurally exact, wrong domain); Merton's self-fulfilling prophecy (no attacker). These show the
  *mechanism* is not new; the novelty claim of H1 rests on removing the labour constraint, not on a new
  causal mechanism.

---

## 6. Cross-case verdict on the H1 hypothesis

| Case | Physical finding | Who amplified | Deliberate? | AI content? | Conf. |
|---|---|---|---|---|---|
| **Gatwick 2018** | No drone ever evidenced; no image; counter-drone system detected nothing | Police certainty ("deliberate act"), PM/ministers, media, Daily Mail naming innocents | **Emergent** (institutional/political/media) | None | **High** |
| **NJ / US NE 2024–25** | Lawful drones, aircraft, stars; "nothing anomalous" | Citizens, mayors (~185), national media, politicians, institutions (TFRs) | **Emergent**, plus opportunistic hoaxes | **Yes — fake drone videos** (Reuters/Snopes/Full Fact/PopSci/AAP); fake radiation data (no AI) | **High** |
| **Havana 2016–26** | No identified device or injury; NIH failed to replicate | US State Dept ("attacks"), media, advocacy, Congress, agencies | **Emergent → domestic/institutional** | None found | **High/Med** |
| **Copenhagen/Europe 2025** | School aircraft + lens flare + police helicopter; case closed, no suspects | Police "capable actor" framing, PM, NOST, media | **Emergent** (institutional/political) | **Not verified** | **Med-High** |
| **LA wildfires Jan 2025** | Wildfires real | Media/social sharing | **Emergent** | **Yes — Hollywood sign & "miracle house" images** | **High** |
| **AI intruder prank 2025** | No intruder; AI image fabricated | Pranksters; real 911 responses | Deliberate prank, **not** engineered campaign | **Yes — AI-generated images** | **High** |
| **Hawaii false alert 2018** | No missile | Human error; 38-min correction delay; 911 overload | **Emergent/error** | None | **High** |

**Conclusion.** Across seven cases, ambiguous or false physical incidents produced real disruption through
**organic, political, media and institutional** amplification. **AI-generated content is verified in the
information layer of two incidents (NJ drones, LA wildfires) and one prank — always as opportunistic fakes,
never as a documented orchestrated amplification campaign.** The best-documented instance of *fabricated
corroboration* injected into an ambiguous physical incident (the fake radiation map during the NJ panic) used
**no AI at all**. The strongest, most consistently attested amplifier is **the responding institution
itself**. The deliberate-adversarial-amplification link remains the **least evidenced** link in the chain.

---

## 7. What could NOT be verified (explicit flags)

1. **Any claim that AI generated or orchestrated the amplification** in any of these incidents. AI-generated
   *artefacts* were present in NJ and LA; an AI-driven *amplification campaign* was not found. **UNVERIFIED /
   no evidence located.**
2. **A "2020 NATS/CAA report" on the Gatwick drone incident.** Not found; the CAA document at the cited URL
   is CAP 1912 (airspace change), unrelated. **UNVERIFIED — do not cite.**
3. **Any adversarial/FIMI attribution for the NJ 2024–25 panic or the Copenhagen 2025 panic.** The official
   assessments attribute the reports to lawful drones/aircraft/stars (US) and unresolved or mundane causes
   (Denmark); no adversary was named for the amplification. **UNVERIFIED.**
4. **A specific quantitative nocebo/mass-psychogenic-illness amplification study for Havana syndrome.**
   Reviews list the mechanism; no single amplifying experiment verified here. **UNVERIFIED.**
5. **AI-generated content driving the September–October 2025 European drone wave.** EDMO material exists but
   was CAPTCHA-blocked; no primary verification obtained. **UNVERIFIED.**
6. **The NPAS "no drone sightings" FOI (Gatwick), the ~185-mayor briefing figures, the Salem/Yonkers/other
   prank counts, and several Copenhagen-closure details** are `INHERITED` from this workspace's prior
   findings files and were not independently re-fetched in this session. Treat as grade B/C pending
   re-verification.
7. **Whether the ICO notice number quoted in the workspace (`IC-375402-Q8L7`) corresponds to the live URL
   found (`ic-426297-w2k5`).** The live ICO index returned a 2026/02 notice; confirm the reference number
   before quoting.
8. **Specific AI-image counts for the LA wildfires** (e.g. NewsGuard's tracker) were not retrieved
   (JS-gated/403). **UNVERIFIED.**
9. **Dates:** the "Tylenol autism" political event was **September 2025**, not 2024. Any 2024-dated
   framing of the *panic* should be corrected.

---

## 8. Verification log (this session)

**Fetched/live-checked (HTTP 200 unless noted).** FAA joint statement; Guardian Gatwick long read; BBC
Gatwick payout and closure articles; The Register Gatwick report; ICO notices (2025/08 and 2026/02);
Operation Trebor Structured Debrief PDF; redacted Cross-Whitehall Lessons PDF; Sussex PCC minutes; gov.uk
drones consultation; NBC News White House 28 Jan 2025; Politico; Montclair State; Rolling Stone; TWZ TFR
article; politi.dk; forsvaret.dk; suasnews Copenhagen; Dronewatch; Trouw; Reuters (NJ fact-check, 401-bot);
Snopes; Popular Science; Full Fact (NJ and Las Vegas); AAP FactCheck; NBC LA; DISA; NPR (402-bot); CEDMO
(403-bot); AFP (403-bot); FCC Hawaii report PDF; CBC BC-wildfire AI; ABC7 AI prank; Zeteo fake mayor;
Zetter "Anatomy of a Nuclear Scare"; ODNI March 2023 and December 2024 PDFs (403-bot, live); NIH 2024
release (403-bot, live); PubMed 38146090; Bartholomew & Baloh DOI (403-bot); Quarantelli & Dynes DOI
(403-bot); Kasperson SARF DOI.

**Not retrieved / blocked:** EDMO drone-crashes publication (CAPTCHA); NewsGuard LA-wildfire tracker
(JS-gated); Forbes AI-prank piece (403-bot); France24 PM quote (403-bot); whatdotheyknow (403-bot); several
paywalled outlets (NYT, WSJ, Bloomberg).

**Sibling strands in this workspace** (do not duplicate): `findings/05-drone-cases.md` (fuller drone-case
detail), `findings/06-health-military-cases.md` (Havana/Tylenol/5G), `findings/01-concepts.md` and
`findings/02-risk-psychology.md` (theory), `notes/synthetic-corroboration.md` (AI-content reach evidence),
`notes/raw-topic4.md` (breaking-news and disaster misinformation).
