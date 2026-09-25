# Sub-cases: Russian-linked covert influence operations, 2023–2026 — mechanism notes

**Cut-off: 25 September 2026.** Grades: **A** primary/official · **B** peer-reviewed/high-quality investigative · **C** reputable news · **D** vendor/think-tank · **E** anonymous/unverified. **[DEM]** = demonstrated by primary evidence · **[CLM]** = claimed by official/vendor · **[INF]** = analyst inference. Detail files: `sub-cases-portalkombat-matryoshka.md`, `sub-cases-spamouflage-overload.md`.

**Method note.** `web_search` was down. Discovery used Google News RSS, publisher **sitemaps** (most productive), direct PDF retrieval and `r.jina.ai`. Microsoft, NewsGuard, OpenAI, Meta and EDMO were Cloudflare-blocked and unrecoverable via Wayback; claims resting on them are graded accordingly.

---

## 0. Four task premises that do not survive verification

1. **"Matryoshka (2026)" is mis-dated.** VIGINUM named *Matriochka* on **10 June 2024** (active since ≥ Sept 2023); its own footnote records the campaign "has been dubbed **Operation Overload**", named by Antibot4Navalny. 2026 is a later wave. **[DEM, A, high]** — <https://www.sgdsn.gouv.fr/files/files/20240611_NP_SGDSN_VIGINUM_Matriochka_EN_VF.pdf>
2. **"Operation Overload" is pro-Russian, not Israeli.** Check First + Reset.Tech's *Operation Overload* (4 June 2024) is a pro-Russian FIMI campaign against fact-checkers. **[DEM, A, high]** — <https://checkfirst.network/wp-content/uploads/2024/06/Operation_Overload_WEB.pdf>. The Israeli commercial operation is **"Zero Zeno"** (OpenAI's own sitemap title); **"Bad Grammar" is a separate cluster**. Attribution to **Stoic** is press-level only (Times of Israel, Calcalist, 31 May–2 Jun 2024). **[CLM, C, medium]** "**ELI-008**" is **not verified** as a threat-actor identifier — only matches are Elicio Therapeutics biotech compounds. **[unverified]**
3. **"Two Russian nationals charged" over Doppelganger conflates two actions.** The 4 Sept 2024 Doppelganger action was a **civil domain seizure** (32 domains, unsealed FBI affidavit) — nobody was criminally charged in it. The two indicted Russians were **RT employees** (Kalashnikov, Afanasyeva) in the *separate* Tenet Media case same day. **[DEM, A, high]**
4. **"Storm-1099" ≠ Storm-1516.** Distinct Microsoft designations. Storm-1099 is a Kremlin-aligned actor (Dec 2023) behind the fake **Tom Cruise** deepfake on the Paris Olympics (June 2024). **[CLM, D, medium]** (Microsoft primaries 403; titles/dates via news RSS.)

---

## 1. Storm-1516 — mechanism

**Attribution.** VIGINUM documents **77 operations, Aug 2023–5 Mar 2025**, and attributes Storm-1516 publicly to **GRU unit 29155** with the Moscow **Centre for Geopolitical Expertise (CGE)**; infrastructure to **CopyCop**. A 4 Feb 2026 Macron-targeting operation is imputed with **"very high confidence"**. **[DEM, A, high]** — <https://www.sgdsn.gouv.fr/files/files/Publications/20250507_TLP-CLEAR_NP_SGDSN_VIGINUM_Technical%20report_Storm-1516.pdf>; <https://www.sgdsn.gouv.fr/files/files/Publications/20260206_NP_TLP-CLEAR_SGDSN_VIGINUM_Fiche-Technique-Storm-1516_0.pdf>

**Content — three tiers, and the AI transition.** (a) **Video/voice deepfakes** "very likely generated using generative AI"; since ≥ **Feb 2024** synthetic faces let operators give "whistleblowers" exposed faces instead of masked actors. Cases: the **Tim Walz** sexual-assault video (Oct 2024, `@MattMetro`, features lifted from the real former student's social media); the **Obama–Axelrod** audio deepfake (1 Aug 2024, `deepstateleaks.org`); the fake CIA-run Kyiv troll-farm video whose voice US intelligence called "synthetically generated" (NYT, May 2024). Quality "remains uneven". (b) **Video/photo editing** — forged logos, records, invoices (e.g. a fake **€4.5m Bugatti** invoice for Olena Zelenska). (c) **Amateur actors** — **more than half** of operations recruited people, cast to the narrative (Arabic-, Spanish-, *surzhyk*-speaking narrators). **[DEM, A, high]** AI did **not** replace actors; the two coexist.

**The pseudo-news network is the real scaling layer.** CopyCop, attributed to **John Mark Dougan** (ex-US police officer, in Russia since 2016), ran the first fake news sites whose articles were **rephrased using generative AI**: `dcweekly.org`, `clearstory.news`, `newsdesk.press`, `nebraskatruth.com`. VIGINUM estimates **>290 sites**, many reusing defunct local-newspaper names. Dougan registered **84 domains on 10 May 2024 alone**; early infrastructure sat on three IPs (`66.175.208[.]251`, `69.164.216[.]69`, `95.165.66[.]27`). **[DEM, A, high]**

**GenAI as state-supplied infrastructure — the strongest primary source.** **US Treasury OFAC, 31 Dec 2024**: CGE "used **generative AI tools** to quickly create disinformation... distributed across a **massive network of websites designed to imitate legitimate news outlets**"; CGE "**built a server that hosts the generative AI tools**" to avoid Western hosting; the GRU funded it and "a network of **at least 100 websites**". **[DEM, A, high]** — <https://home.treasury.gov/news/press-releases/jy2766>. VIGINUM corroborates: after Western hosts blocked his domains, Dougan "asked the CGE and the GRU for help in setting up a new server to host the CopyCop sites and the artificial intelligence tools." **[DEM, A, high]**

**Detection methods (all reusable defensively).** Chain = **burner accounts → laundering via third-party media → CopyCop republication → paid amplification → opportunistic takeover**. Levers: **account-provenance forensics** — burner accounts across three Sept 2023 operations were **all created 30 Sept 2022**, implying a single supplier; **persona-history forensics** — fake personas seeded with biography and legitimate sharing for weeks pre-activation ("Jules Vincent": account created 2018, activated Nov 2023, "approximate French"); **infrastructure reuse / registration timing** — Alethea caught `swanlandco[.]us` registered **six days before** the first post, and VIGINUM linked `ensemble-24.fr` to IPs shared with `berliner-wochenzeitung.de`; **redundancy cross-posting**, with accounts deleted or set private post-seeding. **[DEM, A/D, high]** — <https://info.alethea.com/case-studies-storm-1516>

**Measured reach — the honest picture.** The Feb 2026 Macron operation reached **~1.1m views on X** — "**an audience below previous operations**". VIGINUM: real impact on public debate "remains **difficult to estimate**", though many narratives reached "very important visibility" and were sometimes relayed by leading politicians. Two concrete mechanics: **comment-section flooding** — NewsGuard (Nov 2024) found **≥194 inauthentic users** posting on Daily Mail, Breitbart, Gateway Pundit, Fox News, New York Post **[CLM, D, medium]**; and **volume amplification** — CopyCop pushed some narratives across **>100 domain names at once**. **Mainstream pickup** is confirmed as "opportunistic takeover" by Russian state media, embassies, FSB/GRU/SVR-linked outlets, Belarusian state media and by **RRN/Doppelgänger, Portal Kombat (≥15 operations) and Mriya**. **[DEM, A, high]**

**Election targeting.** 20+ operations: EU (June 2024), French snap election (July 2024 — fake `ensemble-24.fr` "Macron bonus" site), US (12 operations Apr–Nov 2024), and the **German federal election, 23 Feb 2025** — targeting began 19 Nov 2024, pivoting after February 2025 to **Merz**, the alleged absence of the **AfD** from ballot papers, and destroyed ballots. **[DEM, A, high]** Correctiv exposed the German campaign in Jan 2025. **[CLM, B, medium]**

---

## 2. Doppelganger

**Named by EU DisinfoLab, 27 Sept 2022** (with Qurium): ≥ **17 cloned media brands** (Bild, 20minutes, Ansa, The Guardian, RBC Ukraine), domain look-alikes and copied designs. Detection used the **Meta Ads Library, CrowdTangle and infrastructure data**. **[DEM, B/D, high]** — <https://www.disinfo.eu/doppelganger/>

**US action, 4 Sept 2024.** DOJ seized **32 domains**; the FBI affidavit names **Social Design Agency, Structura National Technology and ANO Dialog**, under the Russian Presidential Administration and specifically **First Deputy Chief of Staff Sergei Kiriyenko**. Methods: **cybersquatting**, fabricated influencers, fake profiles, paid ads "in some cases created using **artificial intelligence tools**". Treasury designated **10 individuals and 2 entities**. Cashiered internal project names: *Good Old USA*, *The Guerilla Media Campaign*, *U.S. Social Media Influencers Network*. Targets included **Germany, Mexico and Israel**. FBI Director Wray cited Russian "reliance on cutting-edge AI". **[DEM, A, high]** — <https://www.justice.gov/archives/opa/pr/justice-department-disrupts-covert-russian-government-sponsored-foreign-malign-influence> *(retrieved via full-text mirror; justice.gov and Wayback blocked/garbled)*

**EU DSA.** On **30 April 2024** the Commission opened formal proceedings against Meta; the first listed area is "**Deceptive advertisements and disinformation**... **coordinated inauthentic behaviour** in the EU", plus CrowdTangle's deprecation. **[DEM, A, high]** — <https://ec.europa.eu/commission/presscorner/api/files/document/print/en/ip_24_2373/IP_24_2373_EN.pdf>. **Precision flag:** the release does **not** name Doppelganger; the link rests on the categories charged and the Belgian-triggered emergency mechanism in von der Leyen's quote. **Medium** confidence. The **24 Oct 2025** preliminary findings (IP/25/2503) concern data access and notice-and-action, **not** Doppelganger. **No final DSA non-compliance decision on Doppelganger was found.** **[negative finding]**

**Effectiveness.** EU DisinfoLab (24 May 2024): takedowns, deplatforming and sanctions caused "**deceleration... slowdowns rather than shutdowns**". **[INF, D, medium]** Alethea's *Stormkiller* (shift from 4 Sept 2024) found **77 X accounts**, 113 original posts, ~**9,000 quote-posts**, **~420 amplification-only accounts**; **70 of 77 still active**, up to 56 apparently **hijacked pre-existing accounts** with years-long activity gaps. **[DEM, D, high]** — <https://info.alethea.com/case-studies-stormkiller>

---

## 3. Spamouflage / Dragonbridge (China)

Google TAG figures: 2023 **>65,000 instances**; of **>57,000 channels disabled, 80% had zero subscribers**; of **>900,000 videos suspended, 65%+ had <100 views and 30% zero views**; Q1 2024 **>10,000**; lifetime **>175,000**. Quarterly: Q4 2024 **10,291 / 6,318 / 5,028** channels + **206 domains**; Q3 2025 **6,484 / 2,533 / 2,497**; Q4 2025 **6,280 / 3,715 / 105**; Q2 2026 (31 Jul 2026) **1,763** channels + **22 domains**. Cross-platform: X, Reddit, Instagram, Facebook, Medium, TikTok, forums. **Graphika** tracked it from 2019 (*Taizi Flood*, *Empire Dragon*) and found a single **1.5M-view TikTok outlier** against otherwise negligible reach. **[DEM, A/D, high/medium]**

**Mechanism reading.** The 80%-zero-subscriber and 30%-zero-view figures are the best quantitative evidence that **production capacity has been decoupled from audience** — exactly what generative AI would produce. OpenAI's sitemap shows a dedicated Spamouflage page plus distinct clusters (*Zero Zeno*, *Bad Grammar*, *Sponsored Discontent*, *Nine–emdash Line*). **[CLM, A/D, medium]**

---

## 4. Operation Overload — see §0.2

Pro-Russian, from **Aug 2023**: **>800 organisations targeted** via fake X accounts, **200+ emails** across **20+ media organisations**, Telegram seeding, ~**100 amplifier accounts**; France and Germany primary; **X failed to curb it**. VIGINUM adds **≥90 operations** and **500+ X accounts targeted (40+ French)**, accounts bought from a vendor, **AI-generated profile pictures**. **[DEM, A, high]**

**Crucially, the content was largely *not* generative AI.** Check First's image-forensics annex concluded the designs were made in Illustrator/Photoshop — "not generated by AI tools, which typically struggle with text and consistent perspectives". **[DEM, A, high]** This is the cleanest negative control: in 2023–24 the **human labour, not the model, was the engine**.

---

## 5. Matryoshka and Portal Kombat / Pravda

**Portal Kombat / Pravda** (VIGINUM): **≥193** portals (12 Feb 2024) → **224** (29 Apr 2024); no original content, pure republishing. ISD (18 Nov 2025): **~87–90 Western-facing sites, >5.8m articles since 2014** — a counting-base difference, not a contradiction. Automation crude but vast: `pravda-en` posted **1,734 items in one day**. Reach was epiphenomenal — **~31,000 visits/month across all five Western portals**, France-facing site least visited, Telegram channel at **119 subscribers**, VK/Telegram engagement "extremely low volume, or in some cases, none at all". **[DEM, A, high]** Its measurable effect is in the **citation layer**: of 303 English-language sites linking to Pravda, **81% treated it as credible, only 3% contextualised it** as an IO. **[DEM, D, medium]**

**Matryoshka's 2026 German wave** (ISD, 4 Sep 2026): **269 posts, 24 Jun–1 Sep 2026**, attacking CDU/CSU, Greens, SPD, Linke, FDP while leaving **AfD and BSW untouched**; only **7 of 269 posts in German**; ~**40% used AI voiceovers**, including **cloned celebrity voices** from public Cameo clips; inauthentic-engagement signature (110.2k views, 405 likes, **0 comments**). ISD: "direct reach appears limited outside of amplification by media or other actors." **[DEM, D, high]** *ISD is internally inconsistent — "Storm-1679" in its summary, "Storm-1670" in its findings; assert no Storm number.*

**France 2026.** VIGINUM's 6 Feb 2026 fiche documents the fake Epstein/Brunel claim about **Macron** on `france-soir.net` (**registered 1 Feb 2026**), impersonating france-soir.fr and a Le Parisien journalist. **[DEM, A, high]** Separately, VIGINUM's *Rokh Solis* (11 Jun 2026) shows March 2026 municipal interference was **not only Russian** — Israeli-linked actors including the firm **Blackcore** — also with "very low online visibility despite numerous attempts at artificial amplification". **[DEM, A, high]**

---

## 6. Generative AI: what is actually established

| Claim | Status | Grade / confidence |
|---|---|---|
| GRU-linked CGE used genAI to mass-produce articles for a 100+ site fake-news network, with a state-funded AI server | **[DEM]** | A, high (OFAC 31 Dec 2024) |
| CopyCop ran AI-**rephrased** article sites from 2023–24; 290+ domains; 84 registered in one day | **[DEM]** | A, high (VIGINUM) |
| Storm-1516 used synthetic voices/faces for "whistleblowers" from ~Feb 2024; audio deepfakes | **[DEM]** | A, medium-high |
| Paid social ads "in some cases created using AI tools" | **[CLM]** | A, medium (DOJ) |
| ~40% of Matryoshka's 2026 German videos used AI voice cloning incl. celebrities | **[CLM]** | D, medium |
| AI **materially changed** the operation's reach or persuasive effect | **[INF]** — contradicted by every reach figure found | D, low |
| Matryoshka/Overload 2023–24 content was AI-generated | **[DEM — FALSE]** | A, high (manual design) |

**The mechanism conclusion.** Generative AI compressed the **production** stage — article rewriting, synthetic faces replacing masked actors, 84 domains and 100+ site networks stood up at once — and made volume effectively free. It has **not** compressed the **distribution** stage: burner accounts, purchased personas, seeded comment sections, paid amplifiers and opportunistic mainstream pickup remain the binding constraint. Every measured reach figure is modest or explicitly declining (Storm-1516's 1.1m views, Portal Kombat's ~31k monthly visits, Spamouflage's 80% zero-subscriber channels). The operationally important AI effect is therefore on **defender workload and the citation/retrieval layer** (search ranking, Wikipedia, LLM sourcing) — not on persuasion. Adversarial manipulation of AI outputs, which Alethea tags explicitly, is the emerging risk that scale alone does not explain.

---

## Could not verify

- Microsoft's Storm-1516 / Storm-1099 primaries (403; Wayback CDX empty) — reconstructed from VIGINUM, Alethea and news RSS titles/dates.
- **Clemson Media Forensics Hub**: no retrievable Storm-1516 material at the URLs tried; no Clemson finding asserted. **[not verified]**
- NewsGuard (Nov 2024 comment study; Obama deepfake) and EDMO (16 May 2025) both 403 — cited only via VIGINUM's description. **[not verified directly]**
- No final **EU DSA non-compliance decision against Meta** specific to Doppelganger. **[negative]**
- **ELI-008**, any **Meta codename** for the Israeli network, and reports that Édouard Philippe and Gabriel Attal were targeted in France (2026) all remain **unverified**.
- No **German BMI/BfV/Verfassungsschutz** public attribution for the Storm-1516 fake-ballot video before 23 Feb 2025. **[negative]**
