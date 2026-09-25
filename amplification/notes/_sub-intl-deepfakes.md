# International Political Deepfake Incidents and Their Legal Aftermath

**Compiled:** 25 September 2026
**Purpose:** Defensive threat assessment — capability, deployment and legal-response mapping only. No operational content.
**Analyst note:** This is a *legal-aftermath* ledger. Where a case produced no legal outcome, that is stated explicitly rather than left blank.

---

## 0. Method, evidence taxonomy and grading

### Evidence tiers used (as commissioned)
- **(a) Technical possibility** — the technique exists and has been demonstrated in lab/benchmark settings.
- **(b) Demonstrated capability** — a real, verifiable synthetic artifact was produced outside a lab.
- **(c) Credible evidence of deployment** — independent evidence the artifact was actually distributed to an audience in a political context.
- **(d) Documented real-world impact** — measured effect on belief, behaviour, electoral outcome or a formal legal consequence.

**Most cases below sit at (c). Almost none reach (d) with rigour.** The single best-evidenced impact finding in this file is *negative*: the peer-reviewed literature on the Slovak case explicitly complicates the claim that the deepfake swung the election.

### Source grading
| Grade | Meaning |
|---|---|
| **A** | Primary/official document: court filing or judgment, regulator order, statute, official press release, platform transparency report |
| **B** | Peer-reviewed research or strong empirical study |
| **C** | Reputable journalism, or an established fact-checking/monitoring organisation's own dataset |
| **D** | Weak, inferred, single-source or unverified reporting |
| **E** | Vendor, advocacy or interested-party claim |

**Strictness note:** I graded most journalism C, including major outlets. Fact-checking bodies (VERA Files, Full Fact, CEDMO, Africa Check, BOOM) are **C**, not B — they are professional but not peer-reviewed and not adjudicative. Investigative outlets that reconstructed a distribution chain from platform data (VSquare) are still **C**. Vendor blogs and interested-party research (Reality Defender, Recorded Future, EclecticIQ) are **E** for factual claims about their own sector, **C–D** for incident reporting.

### Access constraints (affects completeness)
Google News RSS redirect URLs **do not resolve** from this environment (they loop through a consent interstitial). I therefore used them only for *headline + source + date* metadata, and separately verified direct URLs by HTTP probe. Where I could not resolve a direct URL, the citation is given as `GN RSS: <headline> — <source>, <date>` and the grade reflects that lower verification. Reuters (HTTP 401), Al Jazeera (302/404 on guessed slugs), and several Asian outlets were not retrievable by direct fetch.

---

## 1. Slovakia 2023 — Šimečka/Tódová audio deepfake

**Dates.** Audio deepfake surfaced **28 September 2023**, two days before the **30 September 2023** parliamentary election. File metadata indicates the video file was created shortly before its first identified appearance on Telegram *after 10:00* on 28 September; it hit Štefan Harabin's public Telegram channel at **12:05**.

**Content and named actors.**
- Target 1: **Michal Šimečka**, chairman of Progressive Slovakia (PS).
- Target 2: **Monika Tódová**, journalist at *Denník N*.
- The fake recording purported to capture the two discussing rigging the election in PS's favour.
- First publicly widespread via the anonymous Telegram account **"Gabika Ha"**; **Štefan Harabin** (former Supreme Court president and ex-minister, pro-Kremlin) reposted it — his channel had previously forwarded content from "Gabika Ha" **27 times**, most recently the deepfake itself. Harabin told reporters "I don't remember sharing anything like that" and hung up when asked whether "Gabika Ha" was his wife, Gabriela Harabinová.
- Second major amplifier: **Peter Marček**, former MP and multi-party candidate.
- Attribution: VSquare/ICJK could not identify "patient zero". No actor has ever been formally attributed by authorities.

**Platform and scale (measured).**
- Telegram first: Harabin's channel post seen by **over 13,000 users**, shared **almost 500 times** (including private-message forwards).
- Then Facebook via Marček's profile; experts estimated **up to 100,000 users** may have seen it. (Facebook has ~3.5m users in Slovakia.)
- The Slovak Interior Ministry's Centre for Combating Hybrid Threats reconstructed the Telegram origin independently.
- Coincidence in time: on the same day, Russia's SVR chief **Sergei Naryshkin** issued a press release (picked up by RIA Novosti at **11:43** local) alleging US interference to secure a PS victory. Slovakia's foreign ministry condemned it and summoned the Russian ambassador. Harabin repeated the narrative on Russian state TV the next day.

**Response.** Šimečka called it "colossal, blatant stupidity". *Denník N* editor-in-chief **Matúš Kostolný** stated it was a deepfake speaking "in the voice of my colleague Monika Tódová in made-up sentences."

**Legal outcome — no charge, no conviction, three investigations.**
1. First police assessment: the recording was "not persuasive enough to warrant a criminal investigation."
2. Prosecutor disagreed and ordered a fresh investigation. Police questioned Marček (who said he did not know what a deepfake was) and a Facebook group admin — but **never interviewed Harabin** and did not task IT experts with metadata analysis.
3. **October 2024:** investigation halted — perpetrator "could not be tracked down."
4. Tódová filed a complaint; the prosecutor reopened the case, focused on identifying the recording's author. As of the **25 November 2024** CEDMO report this was the **third** police investigation. No charges have been reported since.

**Impact — contested (this is the key analytic point).**
- CEDMO survey: **up to 54% of Slovak voters** feared election fraud; fraud narratives were amplified by Smer-SD and Republika from early 2023.
- The peer-reviewed study of this case argues the "first election swung by deepfakes" framing **does not survive scrutiny**, pointing instead to encrypted-messaging influence operations, misinformation effects in low-trust environments, and amplification by politicians themselves.

**URLs / sources.**
- VSquare/ICJK investigative reconstruction — https://vsquare.org/slovak-election-targeted-by-pro-kremlin-deepfake-hoax/ — **C**
- IPI (International Press Institute) — https://ipi.media/slovakia-deepfake-audio-of-dennik-n-journalist-offers-worrying-example-of-ai-abuse/ — **C**
- CEDMO, "How AI-generated content influenced parliamentary elections in Slovakia… third time" (25 Nov 2024) — https://cedmohub.eu/how-ai-generated-content-influenced-parliamentary-elections-in-slovakia-the-slovak-police-will-investigate-the-recording-for-a-third-time/ — **C**
- de Nadal, J. & Jančárik, M. (2024), "Beyond the deepfake hype: AI, democracy, and 'the Slovak case'", *Harvard Kennedy School Misinformation Review*, 22 Aug 2024, DOI **10.37016/mr-2020-153** — https://doi.org/10.37016/mr-2020-153 — **B** (abstract retrieved via Crossref; full text not retrievable from this environment)
- AFP Fakty fact-check (28 Sep 2023): recording shows "početné známky manipulácie" — GN RSS — **C**

**Evidence tier: (c) deployment**, with **(d) impact explicitly contested**.

---

## 2. March 2022 — Zelenskyy "surrender" deepfake

**Dates.** **16 March 2022** (two vectors on the same day).

**Two distinct attack vectors — commonly conflated, must be separated:**
1. **Hack of a broadcast:** the news ticker of **Ukraine 24**'s national news broadcast was breached and made to display messages purporting to come from President **Volodymyr Zelenskyy**, telling Ukrainians to stop fighting, lay down weapons, that he "wanted to take Donbas" but failed and had fled Kyiv. Ukraine 24 confirmed the ticker was hacked and the messages false.
2. **A deepfake video** of Zelenskyy repeating similar surrender messages, published to hacked Ukrainian websites. The pro-Kremlin Telegram channel **"Operational"** reported the video the same day.

**Amplification.** Content pushing the surrender message was amplified on **VKontakte (VK)**, the Kremlin-owned platform. Some Russian commenters argued Zelenskyy had posted the video in desperation and then backtracked.

**Official Ukrainian response.** Zelenskyy filmed a short video debunking the messages, calling it a **"childish provocation."** The fake was widely ridiculed domestically for poor video and audio quality and was debunked within hours.

**Platform takedown.** **Meta** removed the deepfake (Facebook/Instagram); **YouTube** removed it; **Twitter** flagged/removed it. Reported same-day by CNN Business ("Facebook and YouTube say they removed Zelensky deepfake", 16 Mar 2022) and TechCrunch ("Meta takes down deepfake of Ukraine's President Zelensky surrendering", 16 Mar 2022). Techcircle (17 Mar 2022) lists Facebook, Twitter and YouTube collectively.

**Numbers/scale:** **not established.** I found no verifiable view-count, reach or engagement figure for this incident in accessible sources. Treat any specific number circulating for this event as unsourced.

**Legal outcome:** none — the perpetrator was never identified; no proceedings reported in any jurisdiction.

**URLs / sources.**
- Atlantic Council, *Russian War Report* (16 Mar 2022) — https://www.atlanticcouncil.org/blogs/new-atlanticist/russian-war-report-hacked-news-program-and-deepfake-video-spread-false-zelenskyy-claims/ — **C** (retrieved and read)
- GN RSS: "Facebook and YouTube say they removed Zelensky deepfake" — CNN Business, 16 Mar 2022 — **C**
- GN RSS: "Meta takes down deepfake of Ukraine's President Zelensky surrendering" — TechCrunch, 16 Mar 2022 — **C**
- GN RSS: "Zelenskyy denies deepfake video of him surrendering after hackers broadcast it on Ukrainian TV website" — Business Insider, 17 Mar 2022 — **C**
- GN RSS: "Ukraine war: Deepfake video of Zelenskyy telling Ukrainians to 'lay down arms' debunked" — Sky News, 17 Mar 2022 — **C**

**Evidence tier: (c) deployment** — high-confidence, same-day platform confirmation. Impact **(d)** limited: debunked within hours, no measured persuasion effect.

---

## 3. October 2023 — Keir Starmer fake audio (UK)

**Date.** **8 October 2023** — the opening day of Labour's annual conference in Liverpool. Sky News and Politico reported 9 October 2023. (A Daily Express piece dated 8 Oct 2023 refers to a "fake video of him swearing at staff".)

**Content and origin.** Audio/video purporting to show **Keir Starmer** (then Leader of the Opposition) abusing/swearing at his party staff. Distributed from an **anonymous X account**. UK politics' "first deepfake moment" (Politico).

**Response.** Labour treated it as false and defamatory. The incident became a reference case in UK policy debate about political deepfakes.

**Legal outcome — no prosecution; the law did not cover it.**
- The **Metropolitan Police** dropped its separate investigation into the **Sadiq Khan** deepfake (a fake audio/video of the London Mayor apparently disrespecting Remembrance commemorations, circulated around **10 November 2023**, which triggered a **counter-terrorism** investigation), stating it **did not constitute a criminal offence**. Khan said the laws were not "fit for purpose."
- **April 2024:** the Government announced strengthened law on *sexual* deepfakes, but **rejected proposals to outlaw political deepfakes**. Three amendments to the **Data Protection and Digital Information Bill** were tabled, including a Labour amendment creating an "offence of creating or sharing political deepfakes" — not adopted.
- **Ofcom**'s statutory Advisory Committee on misinformation/disinformation, expected after the Online Safety Act, was delayed to the end of 2024 — i.e. potentially past the general election.
- The **Electoral Commission** stated it has "no remit on deepfakes or the content of campaign material" (it regulates party/campaigner finance and digital imprints).

**2024 general election context (4 July 2024).** No political-deepfake prosecution followed. Related UK cases:
- **3 July 2024:** Full Fact found no evidence that an audio clip attributed to **Wes Streeting** (on Palestinian deaths) was genuine.
- **February 2024:** reporting that voters were "fooled by deepfakes of Keir Starmer and Sadiq Khan" ahead of the election.
- **29 August 2025:** **Darren Grimes** (Reform UK) placed under investigation over a fake AI asylum video of Starmer (Byline Times).

**URLs / sources.**
- Byline Times (18 Apr 2024) — https://bylinetimes.com/2024/04/18/fact-checkers-slam-government-inaction-on-political-deepfakes-ahead-of-general-election-saying-laws-not-fit-for-purpose/ — **C** (retrieved and read; source for the Met decision, the DPDI amendments, the Electoral Commission quote)
- GN RSS: "Deepfake audio of Sir Keir Starmer released on first day of Labour conference" — Sky News, 9 Oct 2023 — **C**
- GN RSS: "Keir Starmer suffers UK politics' first deepfake moment. It won't be the last" — Politico Europe, 9 Oct 2023 — **C**
- GN RSS: "Police probe fake clip of Sadiq Khan suggesting remembrance should be postponed" — My London, 10 Nov 2023 — **C**
- GN RSS: "Counter-terror investigation launched into deepfake of Sadiq Khan…" — LBC, 10 Nov 2023 — **C**

**Evidence tier: (c) deployment.** Legal outcome: **none — explicitly no offence**.

---

## 4. 2024 election deepfakes — multi-country

### 4.1 India (Lok Sabha election, 19 Apr – 1 Jun 2024)

| Date | Actor / artifact | Action | Outcome |
|---|---|---|---|
| ~18–21 Apr 2024 | Deepfake video of **Aamir Khan** promoting Congress | **FIR registered** (~21 Apr 2024, per Hindustan Times) | Investigation; no conviction reported |
| 22 Apr 2024 | Deepfake of **Ranveer Singh** criticising PM Modi / endorsing a party | Complaint filed with **Mumbai Cyber Crime Cell** (22 Apr); **case registered against an X user** (24 Apr) | Investigation; no conviction reported |
| 28–30 Apr 2024 | Doctored video of **Amit Shah** on scrapping reservation | BJP complaint; **Mumbai police FIR 30 Apr 2024**; case registered against **Maharashtra Youth Congress** social-media handle | — |
| 3 May 2024 | **Arun Reddy**, handler of the "Spirit of Congress" X account | **Arrested by Delhi Police**; **3 days police custody** | Arrest, not conviction |
| 15 Jan 2025 | AI-generated videos of **Modi** and **Shah** posted on X | **FIR against AAP** | Investigation |

**Regulatory track (this is the more durable finding than any single case):**
- **7 Nov 2023:** Government instructed social-media companies to take down deepfakes **within 24 hours** of a complaint; platforms summoned **17 Nov 2023**.
- **10–12 Feb 2026:** MeitY **IT Rules amendments** mandate **AI content labelling** and impose a **3-hour takedown** timeline for illegal content, with safe-harbour consequences for platforms (TechCrunch 10 Feb 2026; Freshfields 20 Feb 2026; India Briefing 12 Feb 2026; Hogan Lovells 2 Jul 2026).
- **25 Sept 2026 (today):** Delhi High Court listed a plea concerning AI deepfake photos morphed with **PM Modi**.

**Grade:** incidents **C**; the 2026 IT Rules amendments **C** (secondary legal commentary; the gazette notification itself would be **A** and was not retrieved).

### 4.2 Indonesia (election 14 Feb 2024)

- **"Prabowo AI" / Suharto resurrection:** an AI-generated video of long-dead dictator **Suharto** (d. 2008) was circulated from **early January 2024**, apparently aligning with **Golkar** and the Prabowo campaign. Coverage: SMH 12 Jan 2024; CNA commentary 27 Jan 2024; Reuters 8 Feb 2024 ("Generative AI may change elections this year. Indonesia shows how"); CNN 11 Feb 2024 ("AI 'resurrects' long dead dictator…").
- **Gibran AI/clone:** AI-generated avatar/clone of vice-presidential candidate **Gibran Rakabuming Raka** used in campaign content (CNA, 4 Feb 2024).
- **Legal outcome:** I found **no prosecution, takedown order, or regulator action** against the Suharto or Gibran synthetic content. Reported as a regulatory gap.
- **Grade: C** (multiple independent outlets consistent on the artifact and timing; no primary/regulatory document located).

### 4.3 Türkiye
Covered in detail at §5 (2023 presidential and 2024 local elections).

### 4.4 Pakistan (general election 8 Feb 2024)

- **Dec 2023:** jailed former PM **Imran Khan** used an **AI-generated audio message** to address a virtual PTI rally (Forbes, 18 Dec 2023).
- **Feb 2024:** PTI deployed an **AI-generated "victory speech" in Khan's voice** during/after the 8 Feb 2024 election. The New York Times (11 Feb 2024) framed it as showing "A.I.'s Peril and Promise". France 24's *Truth or Fake* covered AI/deepfakes across the election (8 Feb 2024). **Jibran Ilyas**, a PTI volunteer, gave a detailed interview to the *Bulletin of the Atomic Scientists* (5 Sept 2024) on how the AI content was produced and distributed — a rare first-person, named account of an AI political campaign.
- **2025–2026:** **Dec 2025** — an AI-generated video falsely attributed war-mongering comments about Gen. **Asim Munir** to **Imran Khan's sister**; fact-checked by BOOM, JournalismPakistan and The Economic Times (3–5 Dec 2025). Also Dec 2025: a second deepfake video involving journalist **Yalda Hakim** (JournalismPakistan, 17 Dec 2025).
- **Legal outcome:** no prosecution or conviction identified for the AI-generated political content. Notably, Khan's own AI content was produced *by* a party in a restricted environment, not by a foreign adversary.

**Grade: C**; the Ilyas interview is a named-source primary account but remains self-reported (**C**, arguably **D** for the internal production claims).

### 4.5 Bangladesh
- **18 Jan 2026:** Prothom Alo — "AI-generated videos spread disinformation online, authorities yet to act."
- **1 Apr 2026:** Global Voices — "How artificial intelligence and synthetic reality shaped Bangladesh's 2026 election."
- **6 Aug 2026:** Newschecker debunked **AI-generated audio** falsely claiming **Sheikh Hasina** called for "unification of East and West Bengal."
- **5 May 2026:** The Business Standard — **two people remanded, eight denied bail** for using AI-generated videos of **Azhari** (a religious figure) to sell products. **This is a commercial fraud case, not a political deepfake case** — flagged here because it is frequently miscited.
- **12 Sep 2026:** "Deepfakes and Rumors: Bangladesh's Growing Information Crisis."
- **Grade: C–D.** No political-deepfake prosecution identified.

### 4.6 South Africa (general election 29 May 2024)
- **Africa Check** (17 Jul 2024), "Expectations versus reality: the use of generative AI in South Africa's 2024 election"; **DGAP** (4 Dec 2024); **Namibia Fact Check** (3 May 2024) on AI/cheapfakes in Namibian elections.
- Common finding across these: generative AI was used, but **cheapfakes and conventional disinformation dominated**; no documented election-swinging deepfake.
- **Legal outcome:** none identified.
- **Grade: C** for the assessments.

### 4.7 Mexico (general election 2 Jun 2024)
- **FNF Global Innovation Hub** (19 Feb 2025), "AI and its influence in Mexico's 2024 elections"; AP (1 Jun 2024) on sexist tropes and misinformation around the first female presidency.
- **Legal outcome:** none identified for a specific deepfake.
- **Grade: C–D.** Mexico is the weakest-evidenced of the "super-cycle" cases in this set.

---

## 5. The 2024 Turkish local election deepfake (and the 2023 runoff)

**2023 presidential election (14 May; runoff 28 May).**
- **12 May 2023:** Turkish opposition accused **Russia** of election interference days before the vote (The Guardian).
- President **Recep Tayyip Erdoğan** himself **showed a manipulated campaign video** by the opposition alliance, edited to insert leaders of the outlawed **PKK**, framing the opposition as terrorist-aligned (Balkan Insight).
- Fortune (15 May 2023): "Turkey's deepfake-influenced election spells trouble."
- **Legal outcome:** none.

**2024 local elections (31 March 2024).**
- **January 2024:** AI-generated video of Istanbul mayor **Ekrem İmamoğlu** (CHP) apparently praising/endorsing **Erdoğan's AKP** circulated on social media. İmamoğlu's press aide **Murat Ongun** publicly blamed AKP rivals in the Istanbul race (Balkan Insight, 22 Jan 2024).
- **16 March 2024:** RFI reported deepfake videos being used in the local elections as Erdoğan fought for Istanbul.
- **28 March 2024:** Al Jazeera — "Fears of AI disinformation cast shadow over Turkish local elections."
- Adjacent (non-synthetic but relevant to the information environment): an anti-İmamoğlu drone show projected the claim that "1,850 bus breakdowns per day" made Istanbul the world's worst city for bus breakdowns; and the Istanbul Municipality alleged the AKP paid a bus driver to stage a breakdown for a propaganda video.
- **Legal outcome:** **none documented.** No prosecution, no platform takedown order, no regulator action located. BIRN's 2023 digital-rights report had predicted escalation around the local elections.

**Grade: C** (Balkan Insight retrieved and read; RFI 403; Al Jazeera slug unresolvable).

---

## 6. The 2025 Philippine Senate/midterm election deepfakes

**Election date:** **12 May 2025** (midterms, including the Senate race).

**Measured incidence (the strongest quantitative dataset in this file).**
**VERA Files / Tsek.ph** monitored the final days and reported that of the AI-manipulated content detected around **10–11 May 2025**, **11 items — nearly a third — likely involved deepfake technology** to impersonate public figures or distort reality.

**Named artifacts:**
1. **First Lady Liza Araneta-Marcos** — deepfake video of her dancing, superimposed onto a Duterte political campaign video to falsely imply she endorsed Duterte's senatorial slate. Built from an image she had posted on Facebook in Rome (where she and the President attended **Pope Francis's funeral**).
2. **Apollo Quiboloy** — detained religious leader and Duterte-backed **senatorial candidate**. An **AI-generated Caucasian-looking avatar, created using "Pippit" software**, delivered an endorsement in a Facebook video, combining a fabricated persona with false religious claims.
3. **Ferdinand Marcos Jr. / Elon Musk** — fabricated feud over a purported cryptocurrency platform, discrediting the administration.
4. **VP Sara Duterte** — **audio-manipulated Mandarin speech** attributed to her.
5. **LeBron James** — a fabricated video statement attributed to the NBA star, tied to Duterte's ICC detention.
6. **Makabayan Bloc and allied party-list candidates** — deepfakes falsely labelling them (including "dancing party-list nominees") as **New People's Army recruiters**, a fear-and-prejudice tactic.

Context: the deepfakes were layered onto the real political conflict over the arrest and **ICC** detention of former President **Rodrigo Duterte** (who was also running for mayor of Davao City).

**Official/regulatory response:**
| Date | Actor | Action |
|---|---|---|
| 29 May 2024 | **COMELEC** chair **George Garcia** | Proposed a ban on AI/deepfakes in 2025 campaign materials (Rappler, ABS-CBN, Philstar) |
| 13 Mar 2025 | **Claire Castro** (Presidential Communications Office Undersecretary) | Asked **COMELEC and DICT** to take down deepfake videos linking her to rebels (GMA Network) |
| 17 Mar 2025 | **NBI** | Announced it was monitoring users of deepfakes in the campaign (OneNews.PH) |
| 20 Mar 2025 | Government | Launched an **anti-deepfake task force and an AI detection tool** (Manila Bulletin) |
| 21 Mar 2025 | PCO–CICC | Signed a pact against disinformation (Philippine News Agency) |
| May 2025 | **COMELEC** | Issued **Resolutions 11116 and 11064** on generative AI and harmful content (cited by VERA Files) |
| 22 May 2025 | **TikTok** | Took down "covert influence networks" targeting the Philippine elections (SCMP) |
| 28 Aug 2025 | House of Representatives | Urged to pass a bill against fraud using deepfakes (Inquirer) |

**Legal outcome:** **no arrest, charge, fine, takedown order against a named creator, or conviction** was identified. The response was institutional (task force, detection tool, resolutions, voluntary platform action).

**Key gap:** I could not retrieve the text of **COMELEC Resolutions 11116/11064** (would be **A**), nor confirm enforcement. The 11-deepfake count is a fact-check coalition's own dataset (**C**).

**URLs / sources.**
- VERA Files (10 May 2025) — https://verafiles.org/articles/ai-fakery-rises-but-cheapfakes-still-rule-the-race — **C** (retrieved and read)
- GMA Network (13 Mar 2025) — https://www.gmanetwork.com/news/topstories/nation/938947/castro-asks-comelec-dict-to-take-down-deepfake-videos-linking-her-to-rebels/story/ — **C**
- Al Jazeera (15 Jul 2025) — https://www.aljazeera.com/news/2025/7/15/ai-and-disinformation-prompt-political-rivalries-in-the-philippines — **C**
- GN RSS: "NBI Monitoring Users Of Deepfakes In Campaign" — OneNews.PH, 17 Mar 2025 — **C**
- GN RSS: "Gov't launches anti-deepfake task force, AI tool" — Manila Bulletin, 20 Mar 2025 — **C**
- GN RSS: "TikTok shuts down 'covert influence networks' targeting Philippines elections" — SCMP, 22 May 2025 — **C**

**Evidence tier: (c) deployment, with the best quantitative incidence data of any case here.**

---

## 7. 2025–2026 cases anywhere (prioritising legal outcomes)

### 7.1 Brazil — the richest 2026 legal laboratory
- **Since 2024:** the **Superior Electoral Court (TSE)** has had resolutions prohibiting **chatbots and deepfakes** in the political-electoral environment. Private TSE justices have acknowledged the AI rules are **insufficient for 2026** (Tech Policy Press, 14 May 2026).
- **Jul–Sep 2026 — Bolsonaro AI avatar:** **Jair Bolsonaro is barred from the 2026 election**. Reuters (29 Jul 2026) asked whether his **AI avatar** could campaign instead. Gizmodo (30 Jul 2026): "Jair Bolsonaro's AI Clone Is Already Causing Trouble in Brazil's Election." Brazil Reports (31 Jul 2026): Bolsonaro **denied involvement** in an AI campaign video under investigation by the **Supreme Court (STF)**.
- **27 Jul 2026:** Valor International — "Jair Bolsonaro AI video challenged at Brazil's top courts."
- **2 Sep 2026 — the key ruling:** Brazil's electoral court **cleared the AI-generated Bolsonaro video** while **setting new standards for AI deepfakes**, in a case involving **Senator Flávio Bolsonaro** (Valor International, 2 Sep 2026; Springfield News-Sun, 2 Sep 2026).
- **31 Jul 2026:** Brazil **banned paid ads for deepfakes in the final 72 hours** before elections (PPC Land).
- **Unregulated grey zone:** the **"Dona Maria"** AI-generated elderly influencer, a pro-Bolsonaro synthetic persona with Instagram engagement comparable to real politicians; a suit argues non-disclosure of AI and false/decontextualised content. The creator, **Santos**, sells a **$20 course** teaching people to make political AI videos — including **removing AI watermarks** using features on another platform.
- **Grade:** TSE/STF proceedings **C** (secondary reporting; the court filings/rulings would be **A** and were not retrievable — Reuters 401). The Dona Maria/watermark-circumvention detail is **C**.

### 7.2 United States — laws exist, enforcement is blocked or symbolic
- **New Hampshire / Biden robocall (Jan 2024):** AI voice clone of **President Biden** told voters not to vote in the primary. **Steven Kramer**, a political consultant, was charged with **26 crimes** including voter suppression, intimidation and impersonating a candidate, and indicted **23 May 2024**. The **FCC proposed a $6m fine** on Kramer (Sept 2024). Carrier **Lingo Telecom agreed to a $1m fine** (Aug 2024). **On 13 June 2025 a New Hampshire jury ACQUITTED Kramer on all charges** (AP News; WMUR). In Nov 2025 he was reported to be **defying a court order** in the related League of Women Voters civil suit.
- **Minnesota:** **X sued** to overturn Minnesota's political deepfake ban (MPR News, 24 Apr 2025; First Amendment Watch, 28 Apr 2025). FindLaw (10 Dec 2025): "X Doesn't Mark the Spot as Judge Tosses Claim in Minnesota Deepfake Trial."
- **California:** a federal judge **granted a preliminary injunction** against the state's election deepfake law on **First Amendment** grounds (Tech Policy Press, 8 Jan 2025).
- **Montana:** a **US judge blocked Montana from enforcing its 'deepfake' election ads law** against a conservative group (Reuters, **17 Sep 2026**).
- **Michigan:** a **35th State Senate candidate filed a lawsuit** over deepfake videos; **Michigan State Police probe began** (WJRT ABC12, 30 Jan 2026).
- **Tennessee:** new political deepfake law facing early questions as AI appears in campaign ads (WKRN, 21 Jul 2026). **Massachusetts** disclosure push (Boston Globe, 17 Feb 2026).
- **Non-political conviction milestone:** an **Ohio man became the first person federally convicted under the Take It Down Act** — for **deepfake pornography**, not political content (NYT/USA Today, Apr 2026; **sentenced 8 Sep 2026**, WLWT).
- **Key analytic finding (grade B-adjacent, published empirically):** Tech Policy Press (8 Jan 2025) — after surveying state laws, "**these laws have proven largely symbolic, with no apparent prosecutions for using manipulated media during the most recent elections.**"

### 7.3 South Korea
- **26 Sep 2024:** National Assembly passed legislation criminalising **viewing or possessing** sexually explicit deepfakes (CNN 26 Sep 2024; Hankyoreh 27 Sep 2024; CBS 27 Sep 2024). Yonhap (23 Sep 2024) on strengthened penalties for deepfake sex crimes against teens. Nov 2024: National Assembly permitted **undercover probes** of digital sex crimes.
- **Apr 2025:** "Deepfakes cast shadow over South Korea's presidential election" (Korea Herald, 14 Apr 2025).
- **Feb 2026:** Authorities vowed "strict punishment" for creation and spread of AI deepfake videos **ahead of elections** (Korea JoongAng Daily, 26 Feb 2026).
- **8 Mar 2026:** Korea moved to **ban deepfake use in education superintendent elections** (Korea Herald).
- **7 May 2026:** "AI disinfo tests South Korean laws ahead of local elections" (The Standard HK).
- **10 Sep 2026 (conviction, but non-political):** a **Chinese student sentenced to 18 months' imprisonment** for producing **1,141 deepfake pornographic materials** of colleagues (Straits Times; dotdotnews).
- **Grade: C.** Korea is the clearest example of **sexual** deepfake criminalisation with actual custodial outcomes — and a useful contrast case for the political-deepfake conviction question.

### 7.4 India (2025–2026)
- **15 Jan 2025:** FIR against **AAP** for posting AI-generated videos of Modi and Shah on X (Economic Times).
- **Feb 2026:** MeitY IT Rules amendments — mandatory AI labelling, 3-hour takedown.
- **26 Mar 2026:** Kerala cyber case registered over a deepfake video amid polls (MediaNama).
- **12 Jun 2026:** three Assam students suspended for creating deepfake images of 64 female teachers and peers; probe on (Times of India).
- **25 Sep 2026 (today):** Delhi HC plea on AI deepfake photos morphed with PM Modi (India Today).
- **Grade: C.** Many cases registered; **no conviction identified**.

### 7.5 Latvia — the strictest statutory stance found
- **9 May 2024:** Latvia moved to **criminalise deep-fake use to influence elections** (LSM, 9 May 2024); "Criminal liability established for attempts to influence elections through deep fakes" (Labs of Latvia, 13 May 2024); Cybernews (22 May 2024).
- **Grade: C** for the reporting; the statute itself would be **A** and was not retrieved. **No enforcement or conviction case was found** — a strict law with, on available evidence, no test case.

### 7.6 Moldova (parliamentary election 28 Sept 2025)
- Euronews (23 Sep 2025): "Moldova's election shaped by Russia's AI-driven disinformation machine"; EDMO (26 Sep 2025) pre-election monitoring; Recorded Future (3 Sep 2025) on Russian influence assets — **E** for vendor framing; Lowy Institute (27 Nov 2025) retrospective; IWPR (24 Sep 2025) "Elections Under Siege: Moldova's Battle for Truth" (403 on fetch).
- **Legal outcome:** none identified in accessible sources.

### 7.7 Other 2025–2026 items of note
- **Germany:** Politico (20 Feb 2025), "How Germany's far right is harnessing AI to win votes" (AfD) — **C**.
- **EU-wide:** EEAS **2nd FIMI Report** on Foreign Information Manipulation and Interference (4 Feb 2026) — **A** as an official EU document (not retrieved in full); EclecticIQ (13 May 2025) on **Storm-1516** deploying AI-generated media against European leaders and around the Istanbul peace talks — **E** for vendor claims, **C** as incident reporting.
- **France / X:** Paris prosecutors **raided X's French offices** and **summoned Elon Musk** (PBS and NBC News, 3 Feb 2026) as part of an investigation over child abuse images and **deepfakes**. This is platform-liability, not a political-deepfake prosecution.
- **Tanzania:** AFP Fact Check (13 Nov 2025) — a Gaza image and an **AI video falsely linked to post-election violence**.
- **Singapore:** "The deepfake election nightmare hasn't happened. Singapore still wants to ban them" (Rest of World, 14 Aug 2024).
- **US midterms 2026:** Japan Times (23 Sep 2026) and OECD AI Policy Observatory (21 Sep 2026) on AI-generated political ads spreading ahead of the US midterms; Axios (7 Aug 2026) on uneven state protections; Arizona Capitol Times (21 Jul 2026) on state AI deepfake laws facing their "first big test."
- **Institutional reports:** Brennan Center, "The Effect of AI on Elections Around the World and What to Do About It" (6 Jun 2024); Knight Columbia, "Don't Panic (Yet): Assessing the Evidence and Discourse Around Generative AI and Elections" (7 Jul 2025); Carnegie, "AI and Democracy: Mapping the Intersections" (8 Jan 2026); CIGI, "Then and Now: How Does AI Electoral Interference Compare in 2025?" (7 Aug 2025).
- **Peer-reviewed:** Corsi, Marino & Wong (2024), "The spread of synthetic media on X", *HKS Misinformation Review*, 3 Jun 2024, DOI **10.37016/mr-2020-140** — covers Dec 2022–Sep 2023; found rising AI-generated media with a March 2023 spike after Midjourney V5, **most synthetic media non-political and non-malicious, but persistent political-figure deepfakes raising misuse concerns** — **B**.

---

## 8. THE STRICT QUESTION: has ANYONE, anywhere, been CONVICTED for a political deepfake?

### Finding: **No.** I could not verify a single criminal conviction, anywhere, for a political deepfake as of 25 September 2026.

**What exists instead (all verified):**

| Jurisdiction | Person / entity | Strongest action taken | End state |
|---|---|---|---|
| **United States (New Hampshire)** | **Steven Kramer** — Biden AI robocall, Jan 2024 | Indicted on **26 counts** (23 May 2024); FCC proposed **$6m** fine (Sept 2024) | **ACQUITTED on all charges, 13 June 2025** |
| **United States (Lingo Telecom)** | Carrier that transmitted the calls | FCC **$1m** settlement (Aug 2024) | Administrative fine against a *carrier*, not a political actor |
| **India** | **Arun Reddy** ("Spirit of Congress" X handle), Amit Shah doctored video | **Arrested 3 May 2024**; 3 days police custody; multiple FIRs against others (Aamir Khan, Ranveer Singh, AAP) | Charges/FIRs; **no conviction found** |
| **Slovakia** | Unknown | Three police investigations (2023–Nov 2024) | **No charges; case reopened and unresolved** |
| **United Kingdom** | Unknown (Starmer audio); Khan deepfake | Met Police counter-terror probe into the Khan deepfake | **Dropped — "did not constitute a criminal offence"** |
| **Türkiye** | Unknown (İmamoğlu, 2023 PKK video) | None identified | **No proceedings found** |
| **Indonesia** | Unknown (Suharto) | None identified | **No proceedings found** |
| **Philippines** | Unknown (11 deepfakes) | Task force, NBI monitoring, COMELEC resolutions | **No arrests or charges found** |
| **Brazil** | Bolsonaro-adjacent AI video | STF investigation (Jul 2026) | **Electoral court CLEARED the video (2 Sep 2026)** |
| **Latvia** | — | Criminal liability for election deepfakes enacted May 2024 | **No test case found** |
| **South Korea** | — | Strict deepfake laws; arrests/prosecutions | **Convictions found are all for sexual deepfakes, not political** |

**Convictions that DO exist — all non-political deepfake pornography:**
- **South Korea, 10 Sep 2026:** Chinese student, **18 months' imprisonment**, 1,141 deepfake pornographic materials.
- **United States (Ohio), 8 Sep 2026 (convicted Apr 2026):** first federal conviction under the **Take It Down Act** — deepfake porn.
- **Australia, 14 Apr 2026:** a teenager **admitted creating deepfakes** in an **Australian-first prosecution**; victim-impact hearing 22 Sep 2026.
- **Japan, 2025:** first arrests over sales of obscene **AI-generated posters** (Asahi, 16 Apr 2025; AUTOMATON, 23 Jan 2025); a man arrested over AI-generated celebrity porn (ECR, 20 Jan 2026).

**Independent corroboration of the negative finding (grade C, empirical survey):**
Tech Policy Press (8 Jan 2025): US state election-deepfake laws "have proven **largely symbolic, with no apparent prosecutions** for using manipulated media during the most recent elections."

**Interpretation.** The binding constraint on political-deepfake convictions is not detection — it is (i) **First Amendment / free-expression challenges** that have enjoined or blocked US state laws (California, Minnesota, Montana), (ii) **attribution difficulty** (Slovakia: "cannot identify patient zero"; metadata stripped), and (iii) **statutory silence** (UK: the Met concluded there was no offence; the Electoral Commission disclaims remit). Where deepfake law *does* produce custodial sentences it is because the harm is sexual and the victim is identifiable — not because the content was political.

**Bounding caveats — read these before quoting the negative finding.**
1. Search coverage in **Turkish, Bahasa Indonesia, Hindi, Bengali, Korean, Portuguese and Arabic** was via English-language reporting only. A domestic conviction could exist without English coverage.
2. **Authoritarian and hybrid regimes** may prosecute political deepfakes without publishing outcomes (or may prosecute them *as* other offences — defamation, "insulting the president," terrorism propaganda). I found an example of exactly this reframing in Türkiye's PKK-video case but could not establish any charge.
3. **Administrative fines** (FCC, TSE, COMELEC) are not convictions and I have not counted them as such.
4. My searches could not reach **Reuters (401)**, several **Al Jazeera** slugs (404) and **CNA** slugs (404), so some legal-outcome reporting may be behind those.

---

## 9. FAILED SEARCHES / NEGATIVE FINDINGS

### 9.1 Queries that produced nothing useful

**Tooling failures (not evidence failures):**
- `web_search` — disabled by instruction.
- `tools/wsearch.sh`, `tools/s.py`, `tools/web.sh` (Bing HTML scrape) — returned **completely unrelated cached results** (e.g. a "Slovakia deepfake" query returned Ontario hiking trails). Bing HTML is serving a JS shell / personalisation artefact. Unusable.
- `tools/ddg.sh`, `tools/jddg.sh` (DuckDuckGo via r.jina.ai) — HTTP **429 rate-limited** ("Per IP rate limit exceeded"); DDG direct returned **202** anomaly pages.
- `tools/get.sh` on **wired.com** — page is JS-rendered; only embedded JSON, no article body extractable.
- **Google News RSS redirect URLs do not resolve**: `curl -L` loops back to the same `news.google.com` URL even with `CONSENT`/`SOCS` cookies; `web_fetch` errors with "cross-origin redirect to consent.google.com". Per instructions, I used headline+source+date only.
- **Bing web RSS** (`&format=rss`) works but **truncates the query at the first token** — it returned generic "Slovakia"/"Keir Starmer" pages. **Bing News RSS** works intermittently (0 items on most queries; 1–2 items occasionally) and was the only working URL resolver I had.
- **OpenAlex API** — HTTP 429, "Insufficient budget… free daily budget shared by everyone on your network's IP address is used up."
- **Semantic Scholar API** — HTTP 429 Too Many Requests.
- **arXiv API** — returned no parseable entries for my queries.
- **Wikipedia API** (`api.php`) — HTTP 429 rate-limited; the article HTML was retrievable only via `web_fetch`, which returns very large payloads and was impractical to mine at this scale.
- **Wayback CDX keyword search** — returned empty for `filter=original:.*deepfake.*`.
- **Crossref** worked well and is the source of the two peer-reviewed citations.

**Substantive queries that produced no direct evidence:**
- "Meta YouTube remove Zelensky deepfake video March 2022" — got headlines confirming takedown (CNN/TechCrunch/Techcircle) but **no view/impression numbers**.
- "Zenlensky deepfake 2022 Ukraine response SBU hackers" — **returned zero results** from Google News; I could not verify an official **SBU** statement characterising the operation. The Ukrainian response I *can* verify is Zelenskyy's own debunk video and Ukraine 24's confirmation.
- "NBI deepfake task force Philippines 2025 arrest suspect" — **zero results**; the NBI's monitoring was confirmed only via OneNews.PH headline, and **no arrest or charge** was found.
- "COMELEC resolution 11116 deepfake 2025" — **zero direct results**; the resolutions are known only as cited by VERA Files.
- "Indonesia police suspect Suharto AI video investigation" — **zero relevant results**; no investigation found.
- "Suharto AI video Golkar January 2024 views TikTok Prabowo" — no engagement metrics found; the **view-count claim often attached to this video could not be verified**.
- "Starmer fake audio Labour conference X account investigation police" — no police investigation into the Starmer audio found (the Byline Times piece attributes the dropped probe to the **Khan** case).
- "political deepfake conviction sentenced", "first conviction political deepfake election worldwide", "deepfake election prison sentence convicted court", "man convicted AI deepfake politician election jail", "Korea deepfake lawmaker prison sentence 2025 deepfake election punishment", "deepfake election prosecution guilty verdict 2025 2026" — **all returned only non-political deepfake-porn convictions** or unbuilt-law stories. This consistent null result is the basis for the §8 finding.

### 9.2 Claims I could NOT verify (do not repeat as fact)
1. **"The Slovak deepfake swung the 2023 election."** Explicitly contested by the peer-reviewed study of the case. The 100,000-reach figure is an *expert estimate*, not a platform metric.
2. **"The Zelenskyy deepfake reached N million people."** No verifiable figure found. Treat all circulating numbers as unsourced.
3. **Any named perpetrator** in the Slovak, Zelenskyy, Starmer, İmamoğlu, Suharto, Indonesian Gibran, or Philippine cases. **None was publicly attributed by authorities.**
4. **An SBU official attribution** of the Zelenskyy deepfake.
5. **COMELEC Resolutions 11116 / 11064** text and enforcement record.
6. **Any view/engagement count for the Suharto AI video.**
7. **A South African or Mexican political deepfake prosecution.** None found despite targeted searching.
8. **Outcome of the Indian FIRs** (Aamir Khan, Ranveer Singh, Amit Shah, AAP) and the disposition of **Arun Reddy's** arrest. Charges were filed; final outcomes are not in the accessible record.
9. **The Ohio "Take It Down Act" case and the Australian teen case being political** — both are deepfake-pornography matters and must **not** be counted as political-deepfake convictions.
10. **The Bangladesh May 2026 remand case (two remanded, eight denied bail)** — this concerns AI-generated videos of a religious figure **used to sell products**, i.e. commercial fraud, not a political deepfake.

### 9.3 Anomalous finding worth flagging
Bing search surfaced UK news (NU.nl, NOS, RTL, BBC) indicating **Keir Starmer resigned as UK Prime Minister** shortly before 25 Sep 2026. This was **not** part of the commissioned task and I did not investigate it; it is noted only because it changes the framing of any UK-facing political-deepfake assessment. **Grade: C, single-channel, uncorroborated within this task.**

---

## 10. Confidence notes on contested material

| Claim | Confidence | Why |
|---|---|---|
| Slovak deepfake: content, date (28 Sep 2023), Telegram-first route, Harabin amplification, ~13,000 views / ~500 shares | **High** | Two independent investigative reconstructions (VSquare/ICJK, IPI) plus a Ministry of Interior reconstruction; internally consistent timestamps |
| Slovak deepfake: "up to 100,000 saw it" | **Low–Medium** | Experts' estimate, not a platform metric; source of the estimate not disclosed |
| Slovak deepfake caused the electoral outcome | **Very low / rejected** | Peer-reviewed analysis explicitly complicates this |
| Slovak legal process: 3 investigations, halt Oct 2024, reopened after Tódová's complaint, no charges | **High** | CEDMO (Nov 2024), consistent with VSquare and IPI |
| Zelenskyy deepfake: 16 Mar 2022, two vectors (ticker hack + video), Zelenskyy debunk, Meta/YouTube/Twitter takedown | **High** | Atlantic Council contemporaneous report; corroborated by CNN/TechCrunch/Sky/Business Insider headlines |
| Zelenskyy deepfake scale | **None** | No data |
| Starmer audio: 8–9 Oct 2023, anonymous X account, no prosecution | **Medium–High** | Byline Times (retrieved and read) + Sky/Politico/Daily Express headlines; the exact posting account and any platform action are not documented |
| Met Police dropped the Khan deepfake probe for lack of a criminal offence | **High** | Direct quote via Byline Times; consistent with the Met's known position |
| India FIR dates and Arun Reddy's arrest | **High** | Multiple independent outlets (Indian Express, The Hindu, NDTV, ToI, HT, Guardian, BBC) agree on dates and names |
| India 2026 IT Rules (labelling + 3-hour takedown) | **Medium–High** | Four independent legal/tech outlets agree; the gazette notification itself was not retrieved |
| Indonesia Suharto video exists and ran from Jan 2024 | **High** | Reuters, CNN, SMH, CNA, Futurism agree |
| Indonesia: any legal consequence | **High confidence in the negative** | No source reports one |
| Türkiye 2024: İmamoğlu deepfake and AKP attribution | **Medium** | Balkan Insight (read) attributes the *allegation* to Ongun; **the AKP link is an accusation, not an established fact** |
| Türkiye 2023: Erdoğan showed a PKK-inserted video | **Medium** | Single source (Balkan Insight); widely repeated but I did not independently corroborate |
| Philippines: 11 likely deepfakes, ~1/3 of AI content | **Medium–High** | VERA Files/Tsek.ph dataset (read); methodology is a fact-check coalition's, not peer-reviewed |
| Philippines: named artifacts (First Lady dance video, Quiboloy avatar, Musk–Marcos feud, Sara Duterte Mandarin audio, LeBron James, Makabayan/NPA) | **Medium–High** | Single but detailed primary-monitoring source; not independently corroborated per item |
| Philippines: no arrests/charges | **Medium** | Consistent absence across sources, but Philippine-language and local coverage is thin in my searches |
| Kramer acquittal (13 Jun 2025) | **High** | AP News and WMUR agree |
| FCC $6m proposed on Kramer; Lingo Telecom $1m settlement | **High** | Multiple outlets (NBC, Guardian, Ars Technica, Mashable, GovTech) |
| US state election-deepfake laws are "largely symbolic, no apparent prosecutions" | **Medium–High** | Tech Policy Press empirical survey (Jan 2025); consistent with the Kramer acquittal and the injunctions |
| Brazil TSE cleared the AI-generated Bolsonaro video and set new standards (2 Sep 2026) | **Medium** | Reported by Valor International and a US wire reprint; the ruling text was not retrieved |
| The namesake "Dona Maria" AI influencer and the $20 watermark-removal course | **Medium** | Single detailed source (Tech Policy Press, May 2026) |
| **No political-deepfake conviction exists anywhere** | **Medium** | Strong convergent null across many query formulations and jurisdictions, but bounded by (i) English-language search, (ii) inaccessible Reuters/Al Jazeera/CNA pages, and (iii) likely under-publication of outcomes in restrictive jurisdictions. **This is a defensible negative finding, not a proof.** |

---

## 11. Cross-cutting observations for the defence brief

1. **Takedown capacity outpaces legal capacity.** In the best-documented 2022 case (Zelenskyy), platforms removed the artifact within hours and the state debunked it the same day. In the best-documented 2023 case (Slovakia), the artifact circulated for days through Telegram and Facebook and *no* legal process has produced a charge in three years. Speed of debunking, not prosecution, is the operative control.
2. **Encrypted, semi-private channels are the recurring distribution layer.** Slovakia's origin was a private Telegram account; the Philippine content spread through Facebook; the Pakistani content was party-direct. Public-platform takedown rules reach only the last hop.
3. **Attribution is the structural bottleneck.** Across Slovakia, Zelenskyy, Starmer, Türkiye, Indonesia and the Philippines, **no government publicly named a perpetrator.** "Patient zero" was unrecoverable in the Slovak case despite a Ministry of Interior reconstruction.
4. **The legal-response frontier is moving backwards in some democracies.** US state laws are being enjoined on First Amendment grounds (California, Minnesota, Montana); the UK deliberately declined to criminalise political deepfakes and its regulator disclaims remit; Brazil's TSE cleared the highest-profile 2026 AI political video while setting standards.
5. **Criminal liability currently attaches to sexual deepfakes, not political ones.** Every custodial outcome found (Korea 18 months; Ohio federal; Australia; Japan) is a sexual-content case. This asymmetry is the single most important structural fact for anyone forecasting political-deepfake enforcement.
6. **Measured electoral impact remains unproven.** The 2024 "super-cycle" literature (Africa Check, Knight Columbia, The Conversation, Calcalistech) converges on: AI was everywhere, cheapfakes dominated, and no election was demonstrably swung by a deepfake. Treat (d)-tier impact claims sceptically.
