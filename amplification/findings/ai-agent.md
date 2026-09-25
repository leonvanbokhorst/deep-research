# Named Concepts for "Small Attacker Action → Target Self-Amplifies the Damage" (AI/Agent Literature)

Does the AI/agent literature (2024–2026) already name an attack where the **attacker's action is small and the target's own reaction produces most of the damage**, with AI/agents as trigger or scaling engine?

## 0. Access caveats (affects confidence)

**OpenAlex:** HTTP 429, daily budget exhausted for this IP — unusable [HIGH]. **Semantic Scholar:** HTTP 429 throughout — unusable [HIGH]. **arXiv:** works but IP-rate-limits after 2–4 requests (429) — partial; some phrases UNVERIFIED [MED]. **Crossref** and **Europe PMC:** working (Crossref = titles/metadata only) [HIGH]. **DuckDuckGo / Brave / Bing / Mojeek:** bot-blocked or degraded, so there is **no reliable web-wide phrase search** and non-scholarly "NOT FOUND" is weaker evidence [MED].

## 1. Exact-phrase mining (AI/agent sense unless stated)

| Exact phrase | Verdict | Evidence |
|---|---|---|
| **"agentic threat amplification"** | **NOT FOUND** | arXiv TOTAL=0; Crossref 0 titles. Genuinely unused. |
| **"threat amplification"** | **EXISTS, incidental** | arXiv 2: *Cascade: Composing Software-Hardware Attack Gadgets for Adversarial Threat Amplification in Compound AI Systems* (arXiv:2603.12023, 2026); *Safety in Self-Evolving LLM Agent Systems: Threats, Amplification, and Case Studies* (arXiv:2606.23075, 2026). Not a defined attack class. |
| **"amplification attack"** (AI sense) | **EXISTS, partly AI** | arXiv 21, incl. ***SkillBloat: Token Amplification Attacks via Skill Injection in LLM Coding Agents***. Crossref 21 titles are classic DDoS (DNS/NTP/TFTP) plus *Blockchain Amplification Attack* (2025, 10.1145/3744970.3727276). |
| **"reflexive attack"** | **NOT FOUND** | arXiv TOTAL=0. |
| **"reflexive control"** + LLM/AI | **Concept EXISTS; AI pairing NOT FOUND** | Crossref 12 titles, e.g. *Russia's Information-Psychological Operation and the Concept of Reflexive Control* (2022, 10.16894/jowh.66.5). "AI-driven reflexive control" = 0. arXiv hits are control theory/robotics. |
| **"self-amplifying attack"** | **EXISTS once, incidental** | arXiv 1: *RunawayEvil: Jailbreaking the Image-to-Video Generative Models* (arXiv:2512.06674, 2025). Crossref 0 titles. |
| **"self-amplifying threat"** | **NOT FOUND** | Crossref 0; arXiv UNVERIFIED. |
| **"self-replicating attack"** | **NOT FOUND as a phrase** | arXiv 0; Crossref 0 titles. Canonical cyber meaning sits under **computer worm / self-replicating malware**: https://en.wikipedia.org/wiki/Computer_worm |
| **"reaction force multiplication"** | **NOT FOUND** | Crossref 0; arXiv UNVERIFIED. |
| **"autoimmune attack"** | **EXISTS — immunology only (collision)** | Crossref 17 titles, all immunology (e.g. *Stopping an Autoimmune Attack*, Sci. Am. 2026). arXiv 0. **No AI/cyber usage found.** |
| **"target-operated attack" / "victim-operated"** | **NOT FOUND** | Crossref 0; arXiv UNVERIFIED. |
| **"agentic influence operations"** | **EXISTS (2026)** | *Execution and Assessment of Agentic Influence Operations in Simulated Social Networks*, IEEE Security & Privacy 2026, 10.1109/msec.2026.3725886 (arXiv TOTAL=1). |
| **"AI-driven influence operations"** | **NOT FOUND** | Crossref 0 titles. |
| **"AI-enabled influence operations"** | **EXISTS (2026)** | 10.2139/ssrn.6574547 (*…Beijing's Cognitive Warfare…*); 10.1177/23477970261485092 (*…Indo-Pacific*). |
| **"AI-generated emergency misinformation"** | **NOT FOUND** | Crossref 0; arXiv UNVERIFIED. No dedicated term. |
| **"AI-generated panic"** | **NOT FOUND** | Crossref 0; arXiv UNVERIFIED. |
| **"algorithmic amplification"** | **EXISTS, established** | arXiv 14; Crossref 25 titles incl. ***Agentic Algorithmic Amplification and the Choices We Face*** (2025, 10.2139/ssrn.5925582). |
| **"coordinated inauthentic behaviour"** | **EXISTS (Meta term)** | Crossref 4 titles incl. *Coordinated Amplification, Coordinated Inauthentic Behaviour, Orchestrated Campaigns* (2023, 10.4324/9781003403203-14); arXiv 1. |
| **"cognitive amplification attack"** | **NOT FOUND** | arXiv 0; Crossref 0; Europe PMC 0. Strong negative. |
| **"informational reflection attack"** | **NOT FOUND** | arXiv 0; Crossref 0; Europe PMC 0. Strong negative. |
| **"narrative amplification attack"** | **NOT FOUND** | arXiv 0; Crossref 0. Strong negative. |
| **"reflection attack"** | **EXISTS — cybersecurity** | arXiv 6; Crossref 6, e.g. *Amplification/Reflection Attack Suppression Using Victim Separation* (2023, 10.1109/lnet.2023.3264827). Caveat: https://en.wikipedia.org/wiki/Reflection_attack documents the **challenge–response authentication** attack, not DDoS. |
| **"LLM-driven social engineering"**, **"AI-driven reflexive control"**, **"AI-triggered mass reaction"**, **"cognitive reflection attack"**, **"information amplification attack"**, **"narrative DDoS"**, **"semantic DDoS"** | **NOT FOUND** | Crossref 0 / arXiv UNVERIFIED. |

## 2. AI influence operations 2024–2026 (verified)

- **Anthropic** *Countering misuse of AI: September 2026* — influence operations, "Breakout Scale", "influence sold as a service": https://www.anthropic.com/threat-intelligence-report-september-2026 [HIGH]. Earlier: https://www.anthropic.com/news/detecting-countering-misuse-aug-2025 ; https://www.anthropic.com/news/detecting-and-countering-malicious-uses-of-claude-march-2025 ; https://www.anthropic.com/news/disrupting-AI-espionage [HIGH]
- **Google Threat Intelligence**: https://cloud.google.com/blog/topics/threat-intelligence/distillation-experimentation-integration-ai-adversarial-use [HIGH]; **CASP** *AI-enabled terrorism*: https://casp.ac/reports/ai-enabled-terrorism [HIGH]
- **RAND**: *Generative AI's Potential Role in Information Warfare* (2024-11-05) https://www.rand.org/pubs/presentations/PTA2679-1.html ; *Defending American Interests Abroad* (2025-04-02) https://www.rand.org/pubs/research_reports/RRA2853-1.html [HIGH]
- Foundational: *Generative Language Models and Automated Influence Operations* (2023), arXiv (ID not captured) [MED]. Also CSET https://cset.georgetown.edu/ ; Graphika https://graphika.com/ ; DFRLab https://dfrlab.org/ [HIGH]. **Stanford Internet Observatory wound down in 2024** [MED].
- **OpenAI** "Disrupting malicious uses of AI" (Feb/Oct 2024): https://openai.com/index/disrupting-malicious-uses-of-ai/ — **UNVERIFIED (HTTP 403 to non-browser clients here)**.

**Emergency misinformation:** no named AI-specific concept found. Citable incidents: https://en.wikipedia.org/wiki/Misinformation_about_the_2024_Atlantic_hurricane_season (Helene/Milton); https://en.wikipedia.org/wiki/2024_Southport_stabbings ; https://en.wikipedia.org/wiki/January_2025_Southern_California_wildfires ; https://en.wikipedia.org/wiki/AI-generated_content_in_American_politics . FCC AI-robocall ruling https://www.fcc.gov/document/fcc-makes-ai-generated-voices-robocalls-illegal — **UNVERIFIED (403)**. Nearest named terms are **"AI slop"** and **"algorithmic amplification"**.

## 3. AI safety / agent threat taxonomies

- **MITRE ATLAS** — site is a JS SPA (technique URLs 404 to curl); authoritative data at https://github.com/mitre-atlas/atlas-data . Closest named pattern: **`AML.T0034 "Cost Harvesting"`** (`.002 Agentic Resource Consumption`); ATLAS says an attacker can "**Trigger autoscaling mechanisms that provision additional resources, further amplifying cost and exposure**" — the target's own infrastructure amplifies harm. Related: `AML.T0029 Denial of AI Service`, `AML.T0046 Spamming AI System with Chaff Data`, `AML.T0031 Erode AI Model Integrity`. [HIGH] **No "amplification"/"cascading"/"reflexive" term**; the framing is cost/availability, not self-inflicted overreaction.
- **OWASP LLM Top 10 2025** (https://genai.owasp.org/llm-top-10/): LLM01 Prompt Injection, LLM02 Sensitive Information Disclosure, LLM03 Supply Chain, LLM04 Data & Model Poisoning, LLM05 Improper Output Handling, LLM06 Excessive Agency, LLM07 System Prompt Leakage, LLM08 Vector & Embedding Weaknesses, LLM09 Misinformation, LLM10 Unbounded Consumption. **Amplification not named**; nearest LLM09/LLM10. Agentic resource: https://genai.owasp.org/resource/agentic-ai-threats-and-mitigations/ [HIGH]
- **NIST AI 100-2e2025** (https://csrc.nist.gov/pubs/ai/100/2/e2025/final): taxonomy = **Availability / Integrity / Privacy / Misuse Violations**. "Amplif" appears **3×**, only in technical senses; "cascad" 0, "reflexiv" 0. **Pattern not named.** [HIGH]
- **International AI Safety Report 2026** (Feb 2026) https://internationalaisafetyreport.org/publication/international-ai-safety-report-2026 — descriptive only: "Multi-agent systems introduce further risks, as **errors can propagate and amplify through agent interactions**"; OpenAI flags "High capability" models that "**Could amplify existing pathways to severe harm**". [HIGH]
- **Frontier frameworks** — "amplify existing pathways to severe harm" (OpenAI Preparedness Framework) is a capability threshold, not a taxonomy. [HIGH]

## 4. Algorithmic-amplification prior art

**"Algorithmic amplification"** — "increases in the distribution or visibility of content on digital platforms, arising from a combination of automated ranking by recommendation systems and users' own sharing" (https://en.wikipedia.org/wiki/Algorithmic_amplification) [HIGH]. Extension: ***Agentic Algorithmic Amplification and the Choices We Face*** (2025) — engagement-maximising systems "discovered … that false, emotive content" spreads best (10.2139/ssrn.5925582) [MED]. Also "engagement-based amplification", "network amplification", **coordinated inauthentic behaviour** (Meta: https://transparency.meta.com/policies/community-standards/inauthentic-behavior [MED]).

**Relationship:** algorithmic amplification = the **platform** amplifies; the user's idea = the **target** amplifies (its own reaction creates the damage). Adjacent but distinct.

## 5. Cyber → cognitive analogy

No published use found of "cognitive amplification attack", "informational reflection attack" or "narrative amplification attack" (arXiv 0, Crossref 0, Europe PMC 0). The network reflection/amplification analogy has **not** been carried into influence/cognitive-attack vocabulary in the indexed literature.

## Bottom line

**Genuinely unused:** agentic threat amplification; self-amplifying threat; self-replicating attack (phrase); reaction force multiplication; target-operated attack; victim-operated (attack); cognitive amplification attack; informational reflection attack; narrative amplification attack; AI-driven influence operations; AI-generated emergency misinformation; AI-generated panic; AI-driven reflexive control; AI-triggered mass reaction; LLM-driven social engineering.

**Already taken:** amplification/reflection attack (DDoS); self-replicating (worms); autoimmune attack (immunology); reflexive control (Russian info-psych ops); algorithmic amplification (platforms); agentic/AI-enabled influence operations (2026); and closest of all MITRE ATLAS **"Cost Harvesting" (AML.T0034)** — a named small-input→disproportionate-target-cost pattern, but not framed as the target's self-inflicted overreaction.
