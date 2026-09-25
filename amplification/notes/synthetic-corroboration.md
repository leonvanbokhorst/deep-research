# Synthetic Corroboration and Its Legal Aftermath

**Analyst working notes for a defensive threat-assessment brief**
**Date of research: 25 September 2026.** English. All figures USD unless stated.

> **Analytic-only note.** This document is a capability, evidence and defence assessment. It records *what has been demonstrated, what has been deployed, and what the law has actually done*. It deliberately contains no operational instructions, no prompts, no tooling recommendations and no implementation detail for running any influence campaign.

---

## 0. Method, evidence grades, and how to read this

| Grade | Meaning |
|---|---|
| **A** | Primary / official — court or regulator order, statute, government press release, the body's own filing, provider's own live price page |
| **B** | Peer-reviewed or strong empirical (journal, established research institute with disclosed methods) |
| **C** | Reputable journalism or credible industry reporting |
| **D** | Weak / inferred / single unverified source; own arithmetic is flagged here |
| **E** | Vendor or advocacy source — note the commercial or ideological interest |

**Four-tier capability ladder applied to every substantive claim:**
**(a)** technical possibility · **(b)** demonstrated capability (lab/benchmark) · **(c)** credible evidence of deployment in the wild · **(d)** documented real-world impact (measured).

**Access limits in this session.** `web_search` was broken session-wide and was not used. `fcc.gov` and `apnews.com` return HTTP 403 to this environment; I worked around this by fetching FCC primary documents directly from `docs.fcc.gov` and by using the Federal Register API, the FCC's own Unified Agenda, and syndicated AP copy on `bostonherald.com`. Google News redirect URLs do not resolve, so some items are cited at headline + outlet + date level (grade C). `api.openalex.org` became rate-limited mid-session.

**Cross-reference.** Sibling analysts on this brief have produced adjacent notes in this same directory (`cost-access.md`, `persona-coordination.md`, `monitoring-localisation.md`, `raw-topic2.md`, `raw-topic3.md`, `raw-topic4.md`). Where their findings bear on this topic I cite them rather than re-derive them.

---

# TOPIC 1 — Deepfake audio/video/imagery in political and crisis contexts, and the legal aftermath

## 1.1 The New Hampshire Biden robocall: complete timeline with primary documents

This is the single best-documented political deepfake case in the world, and its legal aftermath is the clearest available evidence on **deterrence**. The headline result is uncomfortable: **the only actor actually held liable paid almost nothing, and the principal actor was acquitted of everything criminal.**

### 1.1.1 The act (January 2024)

| Date | Event | Source | Grade |
|---|---|---|---|
| 20 Jan 2024 | Steve Kramer emails a script to Paul Carpenter, a New Orleans magician/"digital nomad". Carpenter produces two variations of an AI-cloned Biden voice. Kramer also previously commissioned AI audio of Sen. Lindsey Graham. | FCC 24-104 ¶¶ and AP, 23 Feb 2024 | A/C |
| 20 Jan 2024 | A Venmo account bearing the same name as Kramer's father pays Carpenter **$150**. | AP, 23 Feb 2024 (Venmo screenshots) | C |
| 21 Jan 2024 (Sunday) | Kramer instructs Voice Broadcasting to use the spoofed caller ID; calls go out to NH voters **2 days before the 23 Jan primary**. | FCC 24-104 ¶1, ¶¶ | A |
| Call content | AI voice resembling Biden: *"It's important that you save your vote for the November election… Your votes make a difference in November, not this Tuesday,"* plus Biden's catchphrase *"What a bunch of malarkey."* | FCC 24-104; AP | A/C |
| Caller ID | Spoofed to the personal cell number of **Kathy Sullivan**, former NH Democratic Party chair and co-founder of the Granite for America super PAC, which was running the Biden write-in effort. | FCC 24-104 ¶¶; AP | A/C |
| Volume | Kramer to an interviewer: *"probably 25k [calls] range"*; also *"I sent [the call] out to 5,000 people who were registered."* AP reported the range as **5,000–25,000**. The FCC's order relies on a **verified subset of 3,000 unlawful spoofed calls**. | FCC 24-104 ¶¶ and footnotes; AP | A |
| Call path | Lingo Telecom (originating provider) → Life Corp. → Voice Broadcasting. | FCC 24-104 ¶¶18–19; DA 24-790 ¶3 | A |
| Political context | Kramer's firm was paid **$260,000** by the Dean Phillips campaign (Dec 2023–Jan 2024) for ballot access in NY and PA, and **$150,000** by Jill Stein's campaign. Both campaigns disclaimed the robocall. | AP, 23 Feb 2024; Business Insider, 20 Jun 2024 | C |

### 1.1.2 FCC enforcement — the money

| Date | Action | Document | Amount | Grade |
|---|---|---|---|---|
| **2 Feb 2024 (adopted) / 8 Feb 2024 (released)** | **Declaratory Ruling**: AI-generated voices are "artificial" under the TCPA | **FCC 24-17**, CG Docket No. 23-362 | — | **A** |
| 23 May 2024 (adopted) / 24 May 2024 (released) | Notice of Apparent Liability for Forfeiture against **Steve Kramer**, Truth in Caller ID Act §227(e) | **FCC 24-59**, File No. EB-TCD-24-00036094 | proposed **$6,000,000** | **A** |
| 28 May 2024 | NAL against **Lingo Telecom** for STIR/SHAKEN attestation violations (A-level attestation on calls it could not validate) | **FCC 24-60**, File No. EB-TCD-24-00036425 | proposed **$2,000,000** | **A** (cited at FCC 24-120 n.43, n.86) |
| **21 Aug 2024** | **Lingo Telecom Consent Decree** — $1,000,000 civil penalty plus a multi-year compliance plan and a Compliance Officer | **DA 24-790** (EB), File No. EB-TCD-24-00036425, NAL/Acct. No. 202432170004 | **$1,000,000** (half the proposed NAL) | **A** |
| **26 Sep 2024 (adopted) / 30 Sep 2024 (released)** | **Forfeiture Order against Steve Kramer** | **FCC 24-104**, File No. EB-TCD-24-00036094, FRN 0035440791 | **$6,000,000** | **A** |

**How the $6M was computed (FCC 24-104 ¶23, ¶¶36–39):** base forfeiture **$1,000 per unlawful spoofed call** × **3,000 verified calls** = $3,000,000, then a **+100% upward adjustment** for egregiousness = **$6,000,000**.

**Critical procedural facts (FCC 24-104 ¶3 n.4):** Kramer **did not substantively respond** to the NAL. He confirmed receipt by email on 24 May 2024 but filed nothing. The Commission therefore simply affirmed the proposed penalty — the $6M is an *uncontested* number, not a litigated one, and has never been tested on the merits in an Article III court.

**Collection status.** The order directs payment within 30 days and states that if unpaid "the case may be referred to the U.S. Department of Justice for enforcement" (FCC 24-104 ¶50). Kramer has publicly and repeatedly said he **will not pay**. As of the June 2025 trial reporting and the November 2025 civil reporting he had still not paid, and I found **no record of payment, no DOJ collection action, and no reported enforcement of the forfeiture as of 25 September 2026** (see §5, negative findings). The Commission that issued it — Rosenworcel's — left office in January 2025.

### 1.1.3 New Hampshire criminal prosecution — and the acquittal

| Date | Event | Grade |
|---|---|---|
| 23 May 2024 | Kramer indicted by a NH grand jury. Original charging documents reported as **26 counts**: 13 felony voter suppression + 13 misdemeanour impersonating a candidate. | C (AP, Reuters, CNN, NBC) |
| 5 Jun 2024 | Arraigned, **Belknap County Superior Court, Laconia, NH**; posts bail on the first 6 counts. | C |
| 5–13 Jun 2025 | Trial, Belknap County Superior Court. **Judge Elizabeth Leonard** presiding. State proceeded on **11 felony voter-suppression counts** (up to 7 years each) and **11 misdemeanour candidate-impersonation counts** (up to 1 year each) = **22 counts**. | C (AP) |
| **13 Jun 2025** | **ACQUITTED on all counts.** | C (AP, NHPR, WMUR) |

**Why the prosecution failed (AP trial reporting, grade C but consistent across outlets):**
- The defence argued the 23 January primary was a **DNC-unsanctioned straw poll** — Biden had been removed from the early-calendar slot at his own request and did not appear on the ballot — and therefore the state voter-suppression statute did not reach it. Judge Leonard had **denied** the state's motion in limine to exclude this in March 2025, holding the DNC's actions and Kramer's understanding of them were relevant to motive and intent.
- The defence argued there was **no candidate impersonation** because the message never named Biden and Biden was not a declared candidate on that ballot.
- Kramer testified in his own defence: he paid $150 for the recording as a deliberate "wake-up call" about AI, made it his "New Year's resolution," called it "my one good deed this year," and told the jury *"I'm positive I did not"* do anything illegal. Under cross-examination he said he had **no regrets**.
- Kathy Sullivan testified that Kramer later phoned her and said he chose her number *because* he knew she would go to law enforcement and the media; she did not believe his stated motive.

**What the acquittal means.** This was, by the prosecution's own framing, a first-of-its-kind test of whether existing state election law reaches a synthetic-media voter-suppression act. A jury rejected it on **statutory-scope grounds** (what counts as an "election"; what counts as "impersonating a candidate"), not on a finding that the conduct was innocent or that the technology was not his. NH AG John Formella responded with a statement that the state "will continue to work diligently to address the challenges posed by emerging technologies, including artificial intelligence" — i.e. the statute, not the conduct, was the limiting factor.

### 1.1.4 The civil case — the only actual finding of liability

| Item | Detail | Grade |
|---|---|---|
| Case | **League of Women Voters of New Hampshire v. Kramer** | C (AP) |
| Filed | March 2024 — LWV of NH plus **three individual voters**; legal assistance from **Free Speech For People**; the **US DOJ filed a Statement of Interest** in support of the plaintiffs (July 2024) | C |
| Procedural posture | **Default judgment** — Kramer "failed to appear." Kramer's own explanation: *"I never responded to them because I was already acquitted on 22 counts,"* calling it a "publicity stunt." | C |
| **Judgment** | Entered **Friday 21 November 2025**; reported **25 November 2025** | C |
| Damages | **$7,500 to each of three voters = $22,500** | C |
| Injunctive relief | **Nationwide injunction banning him from engaging in the same conduct** | C |
| Status | As of 25 Nov 2025 Kramer **refused to pay**; plaintiffs' counsel (Courtney Hostetler, Free Speech For People) said they would "explore further action"; LWV's Caren Short called the decision "a critical precedent against the weaponization of artificial intelligence in elections" | C |

Note the venue discrepancy in the reporting: AP describes it as a "federal court order," while the underlying claim is a state voter-intimidation tort action. I could not retrieve the docket to resolve this (see §5).

### 1.1.5 What the NH case actually establishes about deterrence

Reading the four outcomes together:

| Actor | Exposure | Actually paid / suffered |
|---|---|---|
| **Steve Kramer** (orchestrator) | $6,000,000 FCC forfeiture + 22 criminal counts + $22,500 civil judgment + nationwide injunction | **$0 confirmed.** Acquitted of all criminal counts. Default judgment of $22,500 openly defied. FCC forfeiture publicly refused. |
| **Lingo Telecom** (carrier) | $2,000,000 proposed | **$1,000,000** — settled at 50% of the proposed NAL. This is the only money the US government is confirmed to have collected from the entire affair. |
| **Paul Carpenter** (voice creator, paid $150) | Not charged in NH; said he had an attorney and was considering action against Kramer | Nothing. |

**The deterrence arithmetic is the story.** The orchestrator of the first AI-interference robocall campaign in US election history was acquitted criminally and has, on his own public account, paid nothing at all. The only party that paid was the intermediary carrier, and it paid half of what was proposed. A rational-actor reading of this record is that the expected cost of a high-salience political deepfake in the US, as of late 2026, is **materially below the cost of the $150 voice asset** once the actor is willing to be publicly defiant.

Two further points of legal significance:
1. **The FCC forfeiture was decided by default.** Because Kramer never answered the NAL, the $6M has no adjudicated merits holding behind it. It is a large number with a thin procedural foundation and no demonstrated collectability.
2. **The acquittal was about statutory drafting, not about synthetic media.** The failure mode was that state election statutes written for human conduct have no clean hook for a message that impersonates a *person* who is not legally a *candidate* in an election the defendant argues is not legally an *election*. This is a generalisable lesson for every jurisdiction.

### 1.1.6 The FCC's February 2024 TCPA ruling and its status in 2026

**The ruling (grade A, primary).** *Implications of Artificial Intelligence Technologies on Protecting Consumers from Unwanted Robocalls and Robotexts*, **FCC 24-17**, CG Docket No. 23-362, **adopted 2 February 2024, released 8 February 2024**. Holding: the TCPA's restrictions on "artificial or prerecorded voice" **encompass current AI technologies that generate human voices**; such calls therefore require **prior express consent** absent an emergency or exemption. It relies on *Trim v. Reward Zone USA*, 76 F.4th 1157, 1163 (9th Cir. 2023) for the proposition that an "artificial voice" includes "a sound resembling a human voice that is originated by artificial intelligence." Chairwoman Rosenworcel and Commissioners Starks and Gomez issued separate statements. The ruling is expressly about the **TCPA (consumer consent)**, not about the **Truth in Caller ID Act (§227(e))**, which is the statute the Kramer forfeiture actually turned on.

**The rulemaking that followed — and its status in 2026 (grade A, primary).** The Commission adopted a Notice of Proposed Rulemaking in the same docket, **FCC 24-84, adopted 7 August 2024, released 8 August 2024**, proposing to: define "AI-generated calls," require **callers to disclose at the start of each AI-generated call** that they are using AI, require disclosure when obtaining consent, and protect accessibility uses. Comments closed **25 October 2024** (89 FR 73321, published 10 September 2024).

**As of 25 September 2026 there is still no final rule.** The FCC's own **2026 Unified Agenda** (Federal Register, 14 August 2026, doc. 2026-16615, entry 371) records for CG Docket No. 23-362 / **RIN 3060-AL66**:

> NPRM 09/10/24 · NPRM Comment Period End 10/25/24 · **"Next Action Undetermined … To Be Determined"**

That is a primary-source confirmation that the US federal AI-robocall disclosure rule has been **stalled for roughly two years**, and that no next action is scheduled.

**The abandoned political-advertising rule.** Separately, the FCC adopted an NPRM on **Disclosure and Transparency of Artificial Intelligence-Generated Content in Political Advertisements** (89 FR, published **5 August 2024**, doc. 2024-16977). That proceeding **does not appear anywhere in the FCC's 2026 Unified Agenda** — I searched the full text of the August 2026 agenda and found no entry for it. The contemporaneous reporting and the AP's June 2025 trial story both describe the FCC as having "shown signs of a possible shift toward loosening regulations" after the change of administration. **Conclusion (grade B, inference from a primary absence): the federal AI-political-ad disclosure rulemaking is dormant or abandoned.** The safest supported statement is: *as of 14 August 2026 the FCC's own regulatory agenda lists no active political-advertising AI disclosure proceeding.*

**Related 2025–26 FCC activity that is NOT the AI rule.** The Commission has remained active on robocalls generally — e.g. *Enhancing Know-Your-Upstream-Provider Requirements and Strengthening STIR/SHAKEN* (proposed rule, 9 July 2026), *Improving the Effectiveness of the Robocall Mitigation Database* (proposed rule, 9 September 2026), and a tightening of KYC rules for voice providers (final, April 2026) — but these are **caller-ID/authentication and provider-diligence** measures, not AI-disclosure measures. In April 2026 the FTC separately warned of a rising robocall threat driven by AI.

---

## 1.2 Other documented political deepfake cases, 2022–2026

*(This section is being consolidated with a dedicated research stream — see §1.2 addendum. Items below are those I verified personally; the addendum covers Slovakia, Starmer, India, Indonesia, Türkiye, Pakistan and the Philippines.)*

**Verified so far:**

| Case | Date | Detail | Grade |
|---|---|---|---|
| **Zelenskyy "surrender" deepfake video** | Mar 2022 | Ukrainian TV channel Ukraine 24 hacked; a fake video of Zelenskyy appearing to tell soldiers to surrender was posted to the channel's website and pushed on social. Ukraine's Centre for Strategic Communications warned it was fake; the video was taken down across platforms within hours. | C |
| **Hungary 2026 general election** | Feb–Apr 2026 | The most substantial **deployed** political deepfake campaign documented in 2026. Reporting describes: Fidesz/Orbán **AI-made "scare ads"** in a close election (DW, 27 Feb 2026); a **Fidesz election video containing a fictitious execution scene**, condemned by the opposition (Reuters, 19 Feb 2026); **AI videos fuelling anti-Ukraine fears** ahead of the vote (BBC, 4 Apr 2026); "AI smears" plus Facebook "fight club" tactics (Euractiv, 24 Feb 2026); and CEPA's description of Orbán's **"digital infantry"** (8 Apr 2026). Two monitoring pieces from April 2026 — EDMO ("AI-Driven Post-Reality Campaigning and Its Limits") and EU Perspectives ("flooded with AI deepfakes — and nobody is stopping them") — assert the campaign was not halted by any regulator. | C (multiple independent outlets); the "nobody is stopping them" impact claim is D/E absent enforcement data |
| **India — Raghav Chadha personality-rights case** | May–Jun 2026 | **Delhi High Court** refused blanket protection in a deepfake/personality-rights action and **ordered removal of five defamatory posts** (30 Jun 2026); separately held (21 May 2026) that criticising a political switch is not defamatory. A rare **judicial order** against political deepfake content, though civil and injunctive rather than criminal. | C |

**The headline negative finding for this whole subsection:** across every jurisdiction searched, I found **no conviction of any person for a political deepfake**. The only deepfake convictions found are for **non-consensual intimate imagery (NCII)**, not politics — see §1.3.

### 1.2 addendum — full international case log

*Source: dedicated research stream, full report at `_sub-intl-deepfakes.md` (437 lines). The stream independently reached the same headline negative finding (case 8) before seeing my analysis.*

**Case 8 — the central question, independently confirmed. No verified criminal conviction anywhere, for a political deepfake, as of 25 September 2026.** Every custodial deepfake sentence located worldwide is for **sexual content**: South Korea **18 months** for **1,141 deepfake-porn items** (10 Sep 2026); the **Ohio** first federal TAKE IT DOWN Act conviction (Apr 2026, sentenced 8 Sep 2026); an **Australian teen** (Apr 2026); **Japan** (2025). Supporting assessment: **Tech Policy Press, 8 January 2025** — US state election-deepfake laws are **"largely symbolic, with no apparent prosecutions."**

| Case | Date | Hard detail | Legal outcome | Grade |
|---|---|---|---|---|
| **Slovakia** | **28 Sep 2023** (2 days pre-election, 30 Sep) | Fake audio of **Michal Šimečka** (and Tódová). Origin: anonymous Telegram channel "Gabika Ha" → **Štefan Harabin's** channel (**13,000+ views, ~500 shares**) → Facebook via ex-MP **Peter Marček**. Expert estimate of reach up to **100,000** — *estimate, not measurement*. | **Three police investigations; halted Oct 2024 (perpetrator untraceable); reopened Nov 2024 after journalist Tódová's complaint. NO CHARGE.** | C (HKS Misinformation Review, peer-reviewed: de Nadal & Jančárik, DOI 10.37016/mr-2020-153) |
| **Slovakia — the scholarly verdict** | — | The HKS Misinformation Review study **explicitly rejects the "election swung by deepfakes" framing.** | — | **B** |
| **Zelenskyy "surrender" video** | **16 Mar 2022** | **Two vectors**: Ukraine 24 news-ticker hack *and* a deepfake video posted on hacked sites. Removed by Meta/YouTube/Twitter. Zelenskyy debunked it himself as a "childish provocation." | **No scale numbers exist** — treat any circulation figure as unsourced. No SBU attribution verifiable; no legal outcome. | C |
| **Keir Starmer fake audio** | **8 Oct 2023** (Labour conference day 1) | Fake audio of Starmer abusing staff, posted from an anonymous X account, spread by Labour Together's Eoin Tierney among others. | **No prosecution.** Separately, the **Met Police DROPPED the Sadiq Khan deepfake probe (Nov 2023)** for lack of a criminal offence. The UK government **rejected April 2024 DPDI amendments** to outlaw political deepfakes; the Electoral Commission disclaims remit; Ofcom committee work delayed. | C |
| **India 2024** | Apr–May 2024 | **FIRs**: Aamir Khan (~21 Apr, Mumbai Cyber Cell); Ranveer Singh (FIR 22 Apr; case against an X user 24 Apr); Amit Shah doctored video FIR 30 Apr; **Arun Reddy arrested 3 May 2024** (3 days' custody). **2026:** MeitY IT Rules now mandate **AI labelling and a 3-hour takedown** window. | **NO convictions.** Outcomes of the FIRs unverified. | C |
| **Philippines 2025** | 12 May 2025 (senate election) | **VERA/Tsek.ph found 11 likely deepfakes — roughly one third of AI content** circulating around 10–11 May. Named artefacts: a **First Lady Liza Marcos dance video**; an **AI avatar endorsing senatorial candidate Apollo Quiboloy** (made with the Pippit tool); a fake **Musk–Marcos feud**; a fake **Mandarin speech attributed to VP Sara Duterte**; the **Makabayan Bloc falsely linked to the NPA**. Response: NBI monitoring (17 Mar), an **anti-deepfake task force** (20 Mar), **COMELEC Resolutions 11116 and 11064**. | **NO arrests, NO charges.** Resolution texts unverified. | C |
| **Türkiye** | Jan 2024 (local elections) | An AI video of **Ekrem İmamoğlu** appearing to praise the AKP; İmamoğlu aide **Murat Ongun blamed the AKP** — an *accusation, not established*. **2023:** Erdoğan himself displayed an opposition video with **PKK leaders digitally inserted**. | **No legal outcome in either.** | C/D |
| **Indonesia** | Feb 2024 | "**Prabowo AI**" resurrecting **Suharto**, plus a **Gibran AI clone**. | **No prosecution.** | C |
| **Pakistan** | Feb 2024 | **Imran Khan AI victory speech** produced from jail; named **PTI volunteer Jibran Ilyas** (Bulletin of the Atomic Scientists, 5 Sep 2024). | **No prosecution.** | C |
| **Brazil 2026 — a genuine legal development** | **2 Sep 2026** | The **TSE (Superior Electoral Court) CLEARED the AI-generated Bolsonaro video** and simultaneously **set new AI standards**; Brazil also **banned deepfake paid ads in the final 72 hours** before the vote. | Judicial *clearance* + prospective rulemaking. A court engaging with the substance rather than deflecting. | C |
| **Latvia** | May 2024 | **Criminalised election deepfakes.** | **No test case.** | C |
| **US states 2026** | Sep 2026 | A **Montana** deepfake law was **blocked by a judge on 17 Sep 2026**; California and Minnesota injunctions continue; a **Michigan Senate candidate sued in Jan 2026**. | Statutes blocked, not enforced. | C |

**Pattern across all 13 jurisdictions.** The identical shape repeats: **detection and documentation are routine; attribution is rare; prosecution is rarer; conviction is absent.** Across Slovakia, Ukraine, the UK, India, the Philippines, Türkiye, Indonesia and Pakistan, **no perpetrator was named and held liable in any case** — the only named individual anywhere in the international log is **Arun Reddy** (India, arrested, not convicted) and **Jibran Ilyas** (Pakistan, named, not charged).

---

## 1.3 Prosecutions, civil liability and the statutory landscape, 2024–2026

### 1.3.1 Is anyone convicted for a political deepfake? (Central question — answer: no)

**Negative finding, multiple independent searches.** Searches for "first conviction political deepfake election," "prosecuted deepfake election official sentenced 2025/2026," and variants across the US, EU and Asia returned **no case in which a person was convicted (not merely charged, fined administratively, or enjoined) for a political deepfake**. A second, independent research stream reached the identical conclusion before seeing this analysis.

**Independent corroboration of the absence (grade C).** **Tech Policy Press, 8 January 2025**, assessed that US state election-deepfake laws are **"largely symbolic, with no apparent prosecutions."** This is the closest thing to a systematic audit of enforcement in the field and it points the same way as my case-by-case search.

What exists instead:
- **Kramer (US):** charged, acquitted, civil judgment on default, FCC forfeiture uncollected. Defiant.
- **India (Chadha):** civil injunction to remove posts.
- **Administrative/enforcement actions rather than criminal convictions** in the deepfake-election space globally.
- Deepfake **convictions** do exist, but they are **NCII crimes** — see below.

### 1.3.2 TAKE IT DOWN Act (US) — the one federal deepfake statute with real enforcement

| Item | Detail | Grade |
|---|---|---|
| Enacted | Signed **19 May 2025** | A |
| Obligation | Covered platforms must provide a **48-hour** takedown process for non-consensual intimate imagery, including realistic AI-generated/computer-generated depictions, upon request of the depicted individual | A |
| Platform compliance deadline | **19 May 2026** (one year after enactment) | A |
| **First DOJ conviction** | **Ohio man**, convicted April 2026 — reported 8 April 2026 (DOJ; NBC News, Guardian, USA Today, NYT, CNET). First person convicted under the new federal AI deepfake statute. | A/C |
| Sentence | **15 years' imprisonment**, imposed **8 September 2026**, for cyberstalking and creating non-consensual AI images (WLWT, WSYX, Cybernews, 8–10 Sep 2026). The sentence reflects the underlying cyberstalking offence, not the deepfake count alone. | C |
| FTC enforcement | FTC began **enforcing on 19 May 2026** (FTC press release, 19 May 2026, "Take It Down Act enforcement starts now"); issued **warning letters**; the first enforcement attention went to **"nudify" tools** (May–June 2026). | A/C |
| Independent assessment | Tech Policy Press, 13 May 2026: **"It's Too Soon To Tell If the TAKE IT DOWN ACT Is Working."** | C |

**Defensive significance.** TAKE IT DOWN is the clearest case of a deepfake law producing an actual criminal conviction with a severe sentence — but its subject matter is **image-based sexual abuse**, not political speech. Its enforcement mechanism (48-hour platform takedown on individual request) is structurally a **notice-and-takedown** regime, not a truth-and-falsity regime, which is precisely why it survived the First Amendment problems that killed the election-speech statutes.

### 1.3.3 NO FAKES Act (US) — status as of September 2026

**Not law.** Reintroduced **21 May 2026** (Rep. Salazar, Sen. Blackburn, Sen. Coons and others, bipartisan); **advanced out of the Senate Judiciary Committee with unanimous support on 18 June 2026** (Sen. Moody; Roll Call; IPWatchdog; Deadline; AMA). **The EFF opposed it** on the ground it "could silence satire, commentary, and news" (17 June 2026). As of 25 September 2026 it has **not** been enacted. The bill would create a federal digital-replica right in voice and likeness with civil remedies.

### 1.3.4 California AB 2839 and AB 2655 — both blocked or struck

This is the most important First Amendment result in the deepfake-election field, because it defines what US states *cannot* do.

| Law | Content | Outcome | Grade |
|---|---|---|---|
| **AB 2655** ("Defending Democracy from Deepfake Deception Act of 2024") | Required large platforms to block/remove materially deceptive election content around elections | **Preliminarily enjoined.** *Kohls v. Bonta*, E.D. Cal., **August 2024** — the court found the compelled-blocking duty likely unconstitutional and preempted (Section 230); reporting October 2024 (Courthouse News, Reason). Follow-on litigation by the Babylon Bee (ADF, March 2025). | C |
| **AB 2839** | Extended the electioneering-communication window and prohibited materially deceptive AI election content including parody/satire | **Struck down as unconstitutional.** Federal judge (Judge John Mendez, E.D. Cal.) ruled against it in **August–September 2025** in the *Babylon Bee* / *Kohls v. Bonta* litigation (Bloomberg Law, 6 Aug 2025; Courthouse News, 5 Aug 2025; Washington Times and California Globe, 30 Aug–2 Sep 2025). Earlier, in **October 2024**, the court had already **stopped implementation** of the related California misinformation law (Courthouse News, 2 Oct 2024). | C |

**Combined effect:** California — the most active US state legislator on election deepfakes — has had **both** of its flagship instruments either enjoined or struck. As of mid-2026 California legislators were reported to be **trying again** to regulate AI-generated campaign content (Mercury News, 14 Aug 2026), which is itself evidence that the prior attempts are not in force.

**The pattern held in 2026.** A **Montana** deepfake law was **blocked by a judge on 17 September 2026** — nine days before this brief's cut-off. California and Minnesota injunctions continued through 2026, and a **Michigan Senate candidate sued in January 2026** over AI content. The direction of travel is unmistakable: **the US state statutes are being enjoined faster than they are being enforced.** Meanwhile **Brazil's TSE**, in contrast, engaged the substance — **clearing** an AI-generated Bolsonaro video and setting new AI standards on 2 September 2026 — and banned deepfake paid ads in the final 72 hours before voting. **Latvia** criminalised election deepfakes in May 2024 and has had **no test case**.

### 1.3.5 The US federal preemption turn — the biggest 2025–26 deterrence development

- **July 2025:** House Republicans attached a clause to the budget/tax bill that would have **barred states and localities from regulating artificial intelligence for ten years**. It was stripped in the Senate, but the political direction was set. At the time of the Kramer trial (June 2025), AP reported that roughly **half of US states** had enacted legislation regulating AI deepfakes in political campaigns, per Public Citizen.
- **December 2025:** President Trump signed an **executive order** aimed at **preempting state AI laws** (MultiState, 19 Dec 2025; StateScoop, 18 Dec 2025; Brennan Center, 16 Dec 2025 — the Brennan Center's assessment is that the order is **"more bark than bite"**). FCC Chairman Carr said the agency would be "open-minded" about it (FedScoop, 17 Dec 2025).
- **March 2026:** The White House **National AI Policy Framework** called on Congress to **preempt state AI laws** (Crowell & Moring, 25 Mar 2026; Davis Wright Tremaine, 24 Mar 2026; PBS, 20 Mar 2026). States nonetheless continued to legislate (Stateline, 12 Dec 2025; Loeb & Loeb, 11 Mar 2026).
- **June 2026:** Axios reported the White House and Congress had **relaunched the effort to block state AI laws**.
- **August 2026:** Reuters analysis, *"Who governs AI? The federal government's challenge to state regulation."*

**Assessment (grade B).** In the US, the legal trend through 2026 runs **against** state-level political-deepfake regulation on two independent fronts: **First Amendment** (AB 2839/2655) and **federal preemption pressure**. Combined with the Kramer acquittal and the uncollected FCC forfeiture, the US deterrent signal for political deepfakes in 2026 is **weak and getting weaker**, even as the technical capability strengthens.

### 1.3.6 EU AI Act Article 50 — transparency obligations from 2 August 2026

**Primary source: European Commission, *Regulatory framework for AI* (digital-strategy.ec.europa.eu), consulted 25 September 2026. Grade A.**

Verified timeline from the Commission's own page:

| Date | Event |
|---|---|
| 1 Aug 2024 | AI Act entered into force |
| Aug 2025 | GPAI model rules became effective |
| **19 Nov 2025** | **"AI Omnibus"** simplification proposal adopted |
| **7 May 2026** | Political agreement reached on the AI Omnibus |
| **27 Jul 2026** | **AI Omnibus Regulation entered into force** |
| **20 Jul 2026** | Commission published **guidelines on transparency obligations** for providers and deployers of certain AI systems |
| **2 Aug 2026** | **AI Act became applicable. Transparency rules came into effect. AI Office and Member State authorities took over implementation, supervision and enforcement.** Commission **started enforcing** AI Act rules and the new transparency requirements on 2 August 2026. |
| Dec 2026 | A **new Prohibition 9** (introduced by the AI Omnibus) comes into effect |
| 2 Dec 2027 | High-risk **Annex III** use cases — transition **extended** by the AI Omnibus |
| 2 Aug 2028 | High-risk **Annex I** (embedded in regulated products) — extended transition |

**What this means for deepfakes specifically.** Article 50 imposes disclosure/marking obligations, and the Commission has published a **voluntary Code of Practice on Marking and Labelling of AI-generated Content**, including **a set of icons** that creators, publishers and other deployers "may use" to disclose the artificial nature of images, audio — **including deepfakes** — and text. Two defensive observations: (i) the marking code is **voluntary**, and (ii) the AI Omnibus **deferred the high-risk provisions** while leaving the transparency provisions to apply — i.e. the EU has, so far, chosen a transparency-first rather than a prohibition-first posture toward synthetic political content. A large body of law-firm analysis published June–August 2026 (Sidley, Morgan Lewis, Reed Smith, Orrick, White & Case, Mayer Brown, JD Supra) confirms both the 2 August application and the Omnibus delays; Orrick counts **eight compliance changes** in the Omnibus.

### 1.3.7 Denmark — the "copyright your own face" law: still a draft

Denmark announced in **June–July 2025** a proposal to give individuals **copyright over their own face and voice** as an anti-deepfake measure (Guardian and Euronews, 27 Jun 2025; NYT, 10 Jul 2025; NPR, 27 Jul 2025; WEF, 30 Jul 2025). By **November 2025** it was reported as a bill ("Denmark eyes new law," AP, 6 Nov 2025; "Denmark Moves To Outlaw Deepfakes In Landmark Bill," 6 Nov 2025).

**The most recent signal I could find is that it had NOT been enacted:** **MLex reported on 16 February 2026 that the EU had asked Denmark to revise its deepfake draft law**, and a March 2026 Verfassungsblog piece ("Copyrighting Voice and Image") treats the Danish approach as a live legal debate rather than settled law. Scholarly/industry commentary through mid-2026 (Lexology, 12 May 2026; World IP Review, 29 Apr 2026) continues to describe the Danish copyright-over-likeness model as a **proposal**.

**Assessment: the Danish law is best classified as a pending proposal facing EU-level objections, not an enacted statute.** I found no enactment instrument and no commencement date. Denmark's approach has nonetheless been influential — it seeded a broader EU discussion about personality rights as an anti-deepfake tool, and the UK moved separately to **accelerate criminalisation of sexual deepfake creation** (Reuters, 12 Jan 2026).

### 1.3.8 DSA enforcement on deepfakes — the Grok/X thread

My initial search found no DSA deepfake decision; a second pass found a **substantial and fast-moving enforcement thread**, all of it concerning **AI-generated sexual imagery rather than political content**.

| Date | Action | Source | Grade |
|---|---|---|---|
| 5 Jan 2026 | EU "looking very seriously" at taking action against X over Grok; Irish bodies (An Garda Síochána, Coimisiún na Meán, EU Commission, Data Protection Commission) all noted as having investigatory powers | The Record (Recorded Future News); ICCL/DRI, 14 Jan 2026 | C |
| 7 Jan 2026 | Grok linked to AI-generated abuse images; Irish government debate over its own use of X | Irish Independent | C |
| 12 Jan 2026 | UK: new law plus an investigation concerning Grok AI deepfakes | BBC / Reuters | C |
| 15 Jan 2026 | "Musk dealt blow over Grok deepfakes, but regulatory fight far from over" | Reuters | C |
| **26 Jan 2026** | **European Commission opens a formal DSA investigation into X over Grok's sexualised deepfake images — including imagery of women and minors** | Reuters, Guardian, BBC, PBS, Le Monde, Al Jazeera, RTE, Jurist, Euractiv | **C (multiple independent outlets, near-simultaneous)** |
| 17 Feb 2026 | **Ireland's Data Protection Commission launches a separate data-protection probe** into Grok's deepfakes | DW | C |
| 24 Feb 2026 | Irish media regulator (Coimisiún na Meán) **suggests tougher laws** for AI deepfakes | RTE | C |
| **26 Mar 2026** | **Dutch court ORDERS X and Grok to stop AI-generated sexual abuse content** | Tech Policy Press | **C (court order — the strongest instrument in this thread)** |
| 1 Apr 2026 / 17 Mar 2026 | EU DisinfoLab: "DSA enforcement expands"; "DSA rulings" | EU DisinfoLab | C |
| 16 Jun 2026 | European Parliament moves to **ban AI "nudifiers"**; **enforcement remains unclear** | Tech Policy Press | C |

**Assessment.** The EU's enforcement energy on synthetic media in 2026 went to **image-based sexual abuse**, where the DSA, the Dutch courts and national data-protection authorities all engaged — and it produced a **court order** (Netherlands, March 2026). I found **no comparable enforcement action against political deepfake content**. This reinforces the central asymmetry of this brief: **the law moves against synthetic sexual abuse and stalls against synthetic political speech**, because only the former lacks a First Amendment-style defence.

### 1.3.9 Other jurisdictions worth flagging

- **South Korea:** "world-first" AI laws facing pushback (Guardian, 28 Jan 2026).
- **Russia:** a deepfake bill advanced ahead of the September 2026 vote (Tech Times, 12 Aug 2026) — a censorship-adjacent instrument.
- **UK:** moving to criminalise creation of sexual deepfakes (Reuters, 12 Jan 2026); BBC (12 Jan 2026) linked this to a **Grok AI deepfake investigation**.
- **Germany:** a deepfake porn case sparked protests and pressure for law change (Reuters, 26 Mar 2026).
- **Washington State and Pennsylvania:** new deepfake laws took effect August 2025 (Crowell & Moring, 19 Aug 2025).
- **Civil/defamation route:** **Bishop T.D. Jakes sued** (reported 12 Aug 2026) over AI videos linking him to a scandal — an example of the **private defamation action** functioning where criminal law does not. Note this is a religious figure, not a politician.
- **Megan Thee Stallion defamation/deepfake trial** (Nov–Dec 2025) produced a plaintiff verdict against a blogger — again a private action, not a political-deepfake prosecution.

---

## 1.4 Technical reality check: how convincing are 2026 deepfakes to ordinary viewers?

*(Consolidated with a dedicated detection-literature stream — see §1.4 addendum. Placeholder pending that stream.)*

**What I can already state from the legal record, and why it matters more than the psychophysics:** the courts and regulators in 2024–26 have repeatedly treated synthetic media as **materially deceptive to ordinary recipients** without requiring any showing of measured detection difficulty. The FCC found Kramer's call "deepfake" and misleading as a matter of fact and imposed the statutory maximum-style penalty of $1,000 per call. The practical operating assumption of every legislature surveyed is that these artefacts fool enough people to matter. That assumption is load-bearing, and the empirical literature on how well people actually detect them is therefore a control on policy, not a curiosity.

**Structural point on the liar's dividend.** The NH case supplies an unusually clean natural experiment in the *inverse* of the liar's dividend. Kramer's entire defence was that the call was a **deliberate, disclosed provocation to demonstrate the danger of AI** — "maybe I'm a villain today, but I think in the end we get a better country." He was **acquitted**, and he then used the acquittal to justify refusing the civil judgment. Whether or not one credits the motive, the case shows that **plausible-metadata deflection ("I was proving a point about AI") is a functioning legal and reputational defence**, which is the operational core of the liar's dividend.

### 1.4 addendum — verified detection accuracy and liar's-dividend figures

*Source: dedicated literature stream; full table at `_sub-detection-studies.md` (171 lines, 78 rows, every entry with N, metric, DOI and A–E grade). All figures below were extracted from the primary papers.*

#### a) Human detection accuracy — images

| Study | N | Metric | Value | Grade |
|---|---|---|---|---|
| **Nightingale & Farid 2022, PNAS** (DOI 10.1073/pnas.2120481119), Exp. 1 | 315 | Untrained accuracy | **48.2%** (95% CI 47.1–49.2) — **BELOW the 50% chance floor**; d′ = −0.09 | **B** |
| Same, Exp. 2 | 219 | Training + trial-by-trial feedback | **59.0%** (57.7–60.4), with **no improvement over time** (59.3% → 58.8%) | **B** |
| Same, Exp. 3 | 223 | Perceived trustworthiness | Synthetic faces rated **7.7% MORE trustworthy** (4.82 vs 4.48), **d = 0.49** | **B** |
| **Miller et al. 2023, Psychological Science** ("AI Hyperrealism") | 124 + 610 | White AI faces judged human more often than real faces; **the participants who made the most errors were the most confident** (Dunning–Kruger) | — | **B** |

#### b) Human detection accuracy — audio (the most operationally relevant, given the NH robocall)

| Study | N | Metric | Value | Grade |
|---|---|---|---|---|
| **Mai et al. 2023, PLoS ONE** (DOI 10.1371/journal.pone.0285333) | **529** (281 English / 248 Mandarin; 5,120 unary responses) | Unary overall | **70.35%** (reals 67.78%, fakes 73.0%) | **B** |
| Same | 529 | Binary 2AFC **with reference audio** | **85.59%** | **B** |
| Same | — | Familiarisation training | **+3.84% only** (p = .001) → unary with training **52.31%**, i.e. near chance | **B** |
| **Barrington, Cooper & Farid 2025, Scientific Reports** (DOI 10.1038/s41598-025-94170-3) | **604** (304/300) | **ElevenLabs clones — the same engine behind the Biden robocall.** AI-clone identity accepted as the real speaker | **~80% of the time**; naturalness correct 67.4% (real) vs 60.8% (AI); **9.7%/21.0% of participants at or below chance** | **B** |

> **This is the sharpest technical finding of the whole brief.** Using the *same synthesis engine* as the New Hampshire robocall, listeners accepted an AI voice as the genuine speaker **roughly 80% of the time**, and a meaningful minority could not beat a coin toss. **The technical precondition for the NH attack is not marginal — it is robust.** Detection does not improve much with training (+3.84 percentage points).

#### c) Human detection accuracy — video

| Study | N | Metric | Value | Grade |
|---|---|---|---|---|
| **Köbis et al. 2021, iScience** | 210 | Accuracy | **57.6%** (d′ = 0.484); **below chance for most deepfakes**; awareness and financial incentives changed nothing | **B** |
| **Groh et al. 2022, PNAS** | **15,016** | Crowd vs leading model | Crowd mean **86%** vs model **80%** (DFDC Kaggle winner scored 65%); **82% of participants beat the model**; showing the model's prediction improved 66% → 73%; inverted videos −5.6pp; anger elicitation **+5.2pp false positives** | **B** |
| **Groh et al. 2024, Nature Communications** | 2,215 (5 pre-registered experiments) | **Political speeches**: TTS deepfakes vs voice-actor vs real | TTS deepfakes only **72%** correct vs voice-actor **83%** and real **86%**; **14 stimuli scored under 75%**. Base rates of misinformation had **no significant effect**. | **B** |
| **Lewis et al. 2023, Royal Society Open Science** | 1,093 | Detection with/without warning | No-warning deepfake detection **32.9%** vs 34.1% control (**n.s.**); **with a warning only 21.6%** correctly identified the sole deepfake | **B** |
| **Cooke et al. 2025, CACM** ("As Good as a Coin Toss") | 1,276 | Multi-modal mean | **≈ chance (50%)**; **prior knowledge did not help** | **B** |

#### d) The liar's dividend — the empirical picture is thinner than the hype

| Source | N | Finding | Grade |
|---|---|---|---|
| **Chesney & Citron 2019, 107 California Law Review** (Dec 2019) | — | The origin of the concept. **Theoretical — contains no data.** Confirmed on the CLR site. | **B** (as theory) |
| **Schiff, Schiff & Bueno 2024, APSR** (DOI 10.1017/s0003055423001454) | **15,287 US adults** (text n = 11,820; video n = 3,467), 5 experiments | Misinformation **claims** (i.e. "that's fake") cut support for opponents **~44% → 32–34%, i.e. 10–12 percentage points** — a real effect. **BUT largely INEFFECTIVE against video evidence**, and it did **not** reduce general media trust. | **B** |
| **Dobber et al. 2020, IJPP** | 278 | Politician attitudes dropped significantly; **party attitudes unchanged except in the microtargeted subgroup** | **B** |
| **Wittenberg et al. 2021, PNAS** | 7,609 (26,584 obs) | "Seeing is believing" — video beats text for *belief* — but **minimal attitude persuasion** | **B** |
| **Twomey et al. 2023, PLoS ONE** | 4,869 war tweets | **Much "deepfake" misinformation was REAL media labelled fake.** Direct real-world liar's-dividend signal. | **B** |
| **Ching et al. 2025, PLoS ONE** — scoping review | 2,004 records → **22 studies** | The literature is **INCONCLUSIVE** on uniquely persuasive deepfake effects: *"speculation and scare mongering… has far outpaced experimental research."* | **B** |
| Simon, Altay & Mercier 2023, HKS | — | Argument synthesis; **no new data** | B/D |

**Bottom line on the technical reality check.**
1. **Detection is at or barely above chance across modalities.** Untrained image detection is *below* chance (48.2%); multi-modal video detection is ≈50%; political-speech TTS deepfakes are detected only 72% of the time; and for the exact voice-cloning engine used in New Hampshire, listeners accepted the clone as genuine ~80% of the time.
2. **Training is a weak lever** (+3.84pp in audio; 48.2% → 59.0% in images, with no learning curve within the task). **Warning labels can backfire** (detection fell to 21.6% in one study).
3. **The causal story from "people can't detect it" to "therefore it changed beliefs or votes" is NOT established.** The largest and most recent synthesis (Ching et al. 2025, 22 studies) finds the effects literature inconclusive. Meanwhile the best-powered experiment on the liar's dividend (Schiff et al. 2024, n=15,287) finds a **real 10–12pp effect for text claims but little for video** — which cuts *against* the common assumption that video deepfakes are the uniquely corrosive vector.
4. **The honest position for a defensive brief:** synthesis capability is demonstrated and cheap; detectability by ordinary viewers is near chance; **deployed** political use is documented (Slovakia 2023, Hungary 2026, Philippines 2025, Türkiye, Indonesia, Pakistan, New Hampshire 2024); but **measured downstream persuasion and any documented electoral effect remain unproven**, and the one peer-reviewed study that examined an actual election (Slovakia) explicitly rejected the "swung by deepfake" framing.

---

# TOPIC 2 — Synthetic corroboration: apparently independent accounts and manufactured consensus

*(This topic is being consolidated with three dedicated research streams — network threat reports, pseudo-news/"pink slime", and audience effects. The material below is what I verified personally plus what is already available in sibling notes; the addenda complete it.)*

## 2.1 The clearest documented mechanisms

**The single hardest machine-tempo datum available in this workspace** comes from an AI provider's own enforcement reporting and is recorded in the sibling notes (`raw-topic4.md`):

> **Anthropic, *Detecting and countering misuse of AI: September 2026* (published 10 September 2026; cases disrupted Dec 2025 – Aug 2026), case GTG-54002.** A commercial **"influence-as-a-service"** network traced to **LKM Company**, a **France-based digital advertising agency**, was detected on **11 September 2025** when **~70 fabricated news websites published near-identical articles about the DRC–Rwanda conflict within three minutes of each other**, modifying tone per regional audience and coordinating link distribution across numerous X accounts. The same pipeline **rewrote legitimate Malaysian reporting** and **laundered TV BRICS, Xinhua, Sputnik/RIA and CGTN copy as independent local reporting.** — Grade **A** (company primary report)

This is the canonical instance of **synthetic corroboration**: not one fake site, but a synchronised constellation of ostensibly independent outlets manufacturing the appearance of independent confirmation — and **laundering state media into the appearance of local independent journalism**. Note the crucial caveat carried by the sibling analyst: this is a **rewriting/laundering** pipeline adapting a live story, **not a first-mover on a breaking event**.

**The Iran/Russia/China named operations.** `persona-coordination.md` records that the **EEAS** explicitly states "AI tools are also used to rephrase, translate, and adapt existing text from other sources" and that "AI articles are promoted by **fabricated news sites (such as the Russian RRN network)**." The EEAS framing is **cross-language localisation**, not fact-check evasion. Sibling notes also record an **AI provider's report (11 Sep 2025)** and **Meta's H2 2026 Adversarial Threat Report** (Aug 2026), whose own assessment is the most important single sentence for calibrating this whole brief:

> Agentic systems "capable of planning, executing multi-step tasks, and adapting to feedback autonomously" represent "a qualitative shift," but **"we have not yet seen these capabilities deployed extensively at scale by threat actors."** — Meta, *H2 2026 Adversarial Threat Report*, Aug 2026. Grade **A** (company primary), capability tier **(i) only**.

**On "false consensus" as a manufactured property:** `persona-coordination.md` documents a University of Zurich experiment that deployed **secret AI bots inside r/changemyview** without disclosure; Reddit banned the account and called the experiment **"unethical"** (grade C). This is a rare measured case of synthetic social proof being fielded deliberately — but by researchers, in a benign setting.

---

## 2.2 The pseudo-news / "pink slime" ecosystem

*(Dedicated stream pending — addendum. Sibling note `monitoring-localisation.md` and `persona-coordination.md` already carry the NewsGuard / CJR / RRN material and should be read together with the addendum.)*

**What is already established in this workspace:** the RRN (Recent Reliable News) network is named by the **EEAS** as a fabricated-news-site network promoting AI-written articles — the closest official statement to an institutionalised synthetic-corroboration architecture. The **LKM Company / GTG-54002** case (§2.1) is the operational proof that ~70 apparently independent sites can be made to publish near-identical framing within a three-minute window.

---

## 2.3 The economics of synthetic corroboration (2026)

*(Dedicated stream pending — addendum. Sibling note **`cost-access.md`** is the authoritative source in this workspace and should be read in full; it uses a stricter live-verification convention than this file: `[VERIFIED-LIVE]`, `[CROSS-CHECKED]`, `[INFERRED]`, `[UNVERIFIED]`.)*

**Key economics facts already available in this workspace (from `cost-access.md`, grade A/B with the analyst's own verification flags):**
- **Inference cost collapse:** GPT-3 (Nov 2021) at **$60 per 1M tokens** → the cheapest equivalent-performance model at time of writing, **Llama 3.2 3B via Together.ai, at $0.06 per 1M tokens** — a **1,000× fall in roughly three years**. This is the single most important economic fact for this topic: **content generation is no longer the cost driver.**
- Current published frontier and cheap-tier token prices are tabulated live in `cost-access.md` (including audio-out at **$12.00/1M tokens** on one tier and Gemini 3.1 Flash-Lite audio input at **$0.50**).
- **The binding constraints are therefore distribution and persistence, not generation** — domain registration and hosting are cheap and commoditised; audience attention and platform integrity enforcement are not.

---

## 2.4 Do audiences detect synthetic corroboration?

*(Dedicated stream pending — addendum.)*

The framing that matters, and which the sibling notes already support: the evidence reviewed so far supports **capability-plausible / impact-unproven**. In `raw-topic3.md` the parallel conclusion is stated bluntly and is worth carrying across: *"No peer-reviewed, government, platform, or NGO primary source retrieved in this sweep documents a deployed AI system that detects fact-checks about its own output and then re-writes to evade them… This is the single most important finding and it is a negative one."* The same shape of result appears here: **the machinery of synthetic corroboration is documented; measured persuasion from it is not.**

---

# 4. CROSS-CUTTING ASSESSMENT — the enforced/unenforced asymmetry

The single most useful analytic result to come out of assembling both topics is a **clean asymmetry in what the law actually enforces**:

| Dimension | Synthetic **sexual** abuse (NCII) | Synthetic **political** content |
|---|---|---|
| First US federal conviction | **Yes** — Ohio, April 2026 (TAKE IT DOWN Act), sentenced 15 years on 8 Sep 2026 | **None anywhere** |
| Custodial sentences | S. Korea 18 months (1,141 items); Australia; Japan; Ohio | **None** |
| Platform duties | **Yes** — 48-hour takedown on individual request, enforceable from 19 May 2026; FTC enforcement live | **No** — CA AB 2655 enjoined, AB 2839 struck down |
| EU enforcement | **Yes** — Commission DSA investigation into X/Grok (26 Jan 2026); Dutch court order (26 Mar 2026); Irish DPC probe (17 Feb 2026) | **None found** |
| Injunctive relief | Yes | India (Chadha, Jun 2026); NH civil case (Nov 2025) — narrow and defied |

**Why the asymmetry exists.** NCII regulation is **content-neutral as to viewpoint** — it targets a category of harm (non-consensual intimate depiction) without requiring any judgment about the truth or falsity of a political claim. Political-deepfake regulation, by contrast, necessarily requires the state to decide what is "materially deceptive" about **election speech**, which is why every serious attempt has collided with the First Amendment (US states) or been confined to **transparency and labelling** rather than prohibition (EU Article 50, with a *voluntary* marking code).

**The defensive implication, stated carefully.** A defender cannot rely on criminal or civil law to deter political deepfakes in 2026 — the record shows acquittals, uncollected fines, defied judgments and struck-down statutes. What *does* have demonstrated teeth is (a) **carrier-level liability** (Lingo paid $1m for signing calls it could not validate — the only money collected in the NH affair) and (b) **platform-level takedown duties anchored to individual harm** rather than to political falsity. Both are **chokepoint** strategies, and both are where the enforcement energy in 2026 actually sits. Provenance and authentication at the network layer — STIR/SHAKEN attestation and caller-ID integrity — is the mechanism that produced the only real financial consequence in the best-documented case in the world.

**What would change this assessment.** (i) A conviction for a political deepfake in any major jurisdiction. (ii) Actual collection of the Kramer forfeiture, or a DOJ referral. (iii) Enactment of the NO FAKES Act (cleared Senate Judiciary 18 Jun 2026) with meaningful remedies. (iv) A DSA or EU AI Act enforcement action aimed at *political* synthetic content rather than NCII. (v) Any peer-reviewed study demonstrating a measured belief or turnout effect from a real political deepfake. As of 25 September 2026, **none of these has occurred.**

---

# 5. FAILED SEARCHES / NEGATIVE FINDINGS

## 5.1 Claims and figures I could NOT verify

1. **No evidence Kramer ever paid any part of the $6,000,000 FCC forfeiture.** Searches for payment, DOJ referral, or collection action returned nothing. The FCC's order (FCC 24-104 ¶50) provides for referral to DOJ, but I found **no record of referral**. Treat "$6M forfeiture" as **imposed but uncollected**.
2. **I could not retrieve the docket** in *League of Women Voters of New Hampshire v. Kramer* to confirm the court (AP says "federal court"; the tort claim reads like a state action), the exact judgment date beyond "Friday" = 21 Nov 2025, or the injunction's precise wording. The **$22,500 ($7,500 × 3)** figure and the nationwide injunction rest on a single AP report republished by the Boston Herald. **Grade C, single-source.**
3. **No confirmation that the Northern District/New Hampshire criminal case is finally closed** (e.g. whether the state noticed an appeal — in NH the State may not appeal an acquittal, so this is likely moot, but I did not verify).
4. **The original 26-count charging structure** (13 + 13) rests on May–June 2024 journalism; the trial proceeded on **22 counts** (11 + 11). The reduction mechanism (dismissal, re-indictment, or consolidation) is **not explained in any source I found**.
5. **The "San Francisco mayoral deepfake case" / "Kahn" case could not be located at all.** Four separate query formulations returned nothing. Either the case name in the task brief is inaccurate or the matter is not indexed in the outlets available. **Reported as a failed search.**
6. **The "deepfake lawyer" defamation cases** (lawyers sanctioned for AI-fabricated citations) did not surface as **political** deepfake matters and I did not pursue them; they concern court filings, not influence operations.
7. **Denmark's law: no enactment instrument, no commencement date, no vote record found.** The latest located signal (MLex, 16 Feb 2026) is that the **EU asked Denmark to revise the draft**. Classified as **pending, not enacted** — but this is a negative finding from absence, not positive proof the bill died.
8. **DSA enforcement — CORRECTED.** My first-pass search found no DSA deepfake decision; a second pass found a substantial 2026 thread (Commission investigation into X/Grok opened **26 January 2026**; Dutch court order **26 March 2026**). What remains **absent** is any DSA or EU enforcement action against **political** deepfake content. This is a negative finding, reported as such in §1.3.8.
9. **Hungary impact claims** ("nobody is stopping them", "flooded") are **asserted by monitors and campaigners**; I found **no enforcement action, prosecution, or takedown order** and no measured reach data. Impact claims are **grade D/E** until corroborated.
10. **The "liar's dividend" empirical figures** (percentages, effect sizes, N) — delegated to a dedicated stream; not independently verified by me.
11. **Human detection-accuracy percentages** — delegated; not independently verified by me.
12. **NewsGuard's latest AI-generated-news-site count** and the **NewsGuard/CJR pink-slime site counts** — delegated; not independently verified by me.

## 5.2 Searches that returned nothing useful

| Query | Result |
|---|---|
| "FCC forfeiture Steve Kramer Biden robocall 6 million" | **Zero results** from Google News RSS |
| "Kramer acquittal June 2025 jury voter suppression verdict judge" | Zero |
| "Kramer robocall judgment Merrimack Superior Court damages award" | Zero |
| "San Francisco mayoral deepfake lawsuit Kahn AI ad 2024" | Zero |
| "deepfake mayoral candidate lawsuit ruling First Amendment 2025" | Zero |
| "Kramer paid FCC fine DOJ referral collect forfeiture 2026" | Zero |
| "Kramer civil lawsuit voters robocall settlement ordered 2025" | Only the same three AP/LWV/Hill items |
| "Denmark deepfake copyright law 2026 status" / "Denmark likeness copyright bill passed" / "Denmark deepfake law vote parliament" | No enactment confirmation; only the Feb 2026 EU-revision report |
| "deepfake lawyer defamation case conviction political" | Returned unrelated matters |

## 5.3 Tooling / access failures

- `fcc.gov` (including `www.fcc.gov`): **HTTP 403 on every attempt**, via curl with browser UA, via the CORS proxy `api.allorigins.win`, and via the `web_fetch` tool. **Worked around** using `docs.fcc.gov/public/attachments/*.pdf` (which is reachable) — this recovered the primary texts of FCC 24-17, FCC 24-84, FCC 24-104 and DA 24-790.
- `apnews.com`: Cloudflare interstitial ("Just a moment…"). **Worked around** via syndicated AP copy on `bostonherald.com`, whose `?s=` search endpoint is accessible and enumerable.
- `doj.nh.gov`, `thehill.com`, `transition.fcc.gov`, `fcc.report`: HTTP 403.
- **Search engines:** DuckDuckGo (`html.` and `lite.`) returns HTTP 202 challenge; Bing returns locale-mangled results or nothing; Brave returns 429; Ecosia 403; Mojeek and Qwant return no organic results. **No general web search engine was usable.** All discovery was done via Google News RSS (`tools/news.sh`), Federal Register API, publisher site-search endpoints (`bostonherald.com`), and `web_fetch`.
- **Google News redirect URLs do not resolve** — the article IDs are now opaque protobuf, base64-decoding yields no URL, and the redirect target requires JavaScript. Some items are therefore evidenced at **headline + outlet + date** level.
- `r.jina.ai`: HTTP 429 (per-IP rate limit) throughout.
- `api.openalex.org`: HTTP 429 (rate-limited session-wide, ~14h retry) — relayed to downstream streams, which switched to Semantic Scholar and arXiv.
- `web.archive.org` availability API and CDX API: **HTTP 429** and empty responses respectively.
- `edmo.eu`: HTTP 403.

---

# 6. BOTTOM LINE (250 words)

The machinery of synthetic corroboration is proven; its measured persuasive impact is not; and the law has so far failed to price it.

Technically, AI-generated voices and video are trivially cheap and were used to reach thousands of US primary voters two days before an election in January 2024. The January 2024 New Hampshire robocall is the best-documented case in the world, and its legal aftermath is a case study in **deterrence failure**. The orchestrator, Steve Kramer, was acquitted on all 22 criminal counts in June 2025 because the state's voter-suppression and impersonation statutes did not fit a synthetic message about a non-candidate in a contested primary. The FCC's **$6,000,000** forfeiture (FCC 24-104, September 2024) was entered by **default** — Kramer never answered — and, on his own public account, remains **unpaid**, with no collection action found. The only money collected in the entire affair was **$1,000,000 from Lingo Telecom** (DA 24-790), the intermediary carrier, settling at half the proposed penalty. The only actual finding of liability against Kramer is a **$22,500 default judgment** and a nationwide injunction, which he also refuses to pay.

Meanwhile California's two flagship election-deepfake statutes were **enjoined or struck down**; the FCC's AI-robocall disclosure rule has sat at **"next action undetermined"** since October 2024; and the White House is pushing to **preempt state AI laws**. The EU's Article 50 transparency duties did commence on **2 August 2026**, but with a **voluntary** marking code. TAKE IT DOWN produced the first federal deepfake conviction in **April 2026** — for intimate imagery, not politics.

**No one has been convicted of a political deepfake anywhere.** That is the finding.
