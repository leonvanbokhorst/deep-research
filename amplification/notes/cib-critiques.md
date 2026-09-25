# Critical literature on "Coordinated Inauthentic Behaviour" (CIB) and on social-bot detection accuracy

Compiled: 25 Sep 2026. Workspace: `/Users/leonvanbokhorst/repos/deep-research`.
Method: Crossref API (bibliographic + title queries), arXiv API/PDF, Semantic Scholar Graph API (by DOI), direct HTTP fetch of publisher pages, `tools/j.sh` (r.jina.ai) and `tools/get.sh`.
Confidence key: **H** = full text or publisher abstract read directly and URL returns 200; **M** = metadata/abstract verified via API or secondary indexing, URL live but paywalled; **L** = single-source, secondary or partially verified.

> Note on evidence hygiene: every URL below was probed. Where the only copy is a paywalled landing page or an archive snapshot, that is stated explicitly. OpenAlex was unavailable (daily budget exhausted on this network); Semantic Scholar rate-limited but worked intermittently.

---

## 0. Primary sources defining CIB (the object of critique)

**Meta / Facebook — Nathaniel Gleicher (2018).** "Coordinated Inauthentic Behavior Explained." *Facebook Newsroom*, 6 Dec 2018.
URL (verified 200): https://about.fb.com/news/2018/12/inside-feed-coordinated-inauthentic-behavior/
Summary: The originating corporate definition. CIB is framed as "groups of pages or people working together to mislead others about who they are, or what they are doing" — i.e. deception about *identity*, not content falsity.
Confidence: **H** (URL live). Quotation from this source is the standard citation used across the critical literature as the definitional anchor.

**Meta Transparency Center — "Inauthentic Behavior" Community Standard.**
URL (verified 200): https://transparency.meta.com/policies/community-standards/inauthentic-behavior
Summary: Current policy text; defines inauthentic behaviour as "complex forms of deception, performed by a network of inauthentic assets controlled by the same individual or individuals."
Confidence: **H**.

**Institute for Strategic Dialogue — "Coordinated Inauthentic Behaviour."**
URL (verified 200): https://www.isdglobal.org/our-expertise/information-warfare-and-online-manipulation/coordinated-inauthentic-behaviour/
Summary: NGO operationalisation: CIB is "when a set of online entities—individual accounts, groups or pages—operate together towards a shared goal or purpose, which can, but do not have to be, managed by the same actors."
Confidence: **H** (definition text retrieved).

**EU DisinfoLab — "Coordinated Inauthentic Behaviour detection tree"** (veraAI project).
URL (verified 200): https://www.disinfo.eu/publications/coordinated-inauthentic-behaviour-detection-tree/
Summary: Practitioner detection workflow; useful evidence that CIB is operationalised inconsistently across the practitioner field.
Confidence: **H** (landing page), content not fully read.

**Slate (2020) — "What does 'coordinated inauthentic behaviour' actually mean?"**
URL (verified 200): https://slate.com/technology/2020/07/coordinated-inauthentic-behavior-facebook-twitter.html
Summary: Journalistic evidence of definitional confusion between Facebook's and Twitter's CIB-equivalents. Cited by Mannocci et al. (2026) as a source on definitional ambiguity.
Confidence: **M** (landing page live; text not read in full).

---

## PART 1 — Critiques of "Coordinated Inauthentic Behaviour"

### 1.1 The canonical scholarly critique: CIB cannot separate orchestrated from organic

**Starbird, K., Arif, A., & Wilson, T. (2019). "Disinformation as Collaborative Work: Surfacing the Participatory Nature of Strategic Information Operations."** *Proceedings of the ACM on Human-Computer Interaction*, 3(CSCW), Article 127.
DOI: 10.1145/3359229
Full text (author version, verified 200): https://faculty.washington.edu/kstarbi/Disinformation-as-Collaborative-Work-Authors-Version.pdf
Confidence: **H** — full text read.

This is *the* substantive scholarly critique. §5.2 is titled, verbatim, **"Implications for Design of Platform Policy: The Trouble with 'Coordinated Inauthentic Behavior'"**. Key verified quotations:

- "Instead of content, the platforms have elected to focus on authenticity and behavior. For example, Facebook's policy currently stresses a conceptualization of 'coordinated inauthentic behavior'."
- "our work reveals entanglements between orchestrated action and organic activity, including the proliferation of **authentic accounts (real people, sincerely participating)** within activities that are guided by and/or integrated into disinformation campaigns."
- "**Platform policies designed around rooting out 'coordinated inauthentic behavior' would have difficulty addressing these campaigns once they have reached this level of maturity.**"
- "This perspective again demonstrates **the difficulty of differentiating between the orchestrated behaviors of strategic information operators and the organic behaviors of the online communities that those operators routinely target**."
- "These insights suggest that **policies built solely on coordination and inauthenticity may fall short of addressing information operations**, especially once their work has taken root."
- Their proposed alternative (which they immediately flag as itself problematic): act at the level of the *campaign* and its strategic intent/provenance "rather than the truth value of a piece of content or the authenticity/sincerity of a specific account" — noting this "leaves the platforms in a position of taking action to remove or reduce visibility of content that may be shared or even produced by authentic accounts of sincere online activists."

This single source supports critiques **(a)** undertheorised, **(c)** cannot distinguish authenticity from inauthenticity, **(d)** conflates behaviour with content, and the "authentic amplification is excluded" thesis.

### 1.2 Starbird's other direct commentary

**Starbird, K. (2019). "Disinformation's spread: bots, trolls and all of us."** *Nature* 571, 449.
DOI: 10.1038/d41586-019-02235-x
URL (verified 200): https://www.nature.com/articles/d41586-019-02235-x
Confidence: **M** — Nature is paywalled; only the opening paragraph is retrievable, and it is quoted verbatim below.
Verified opening: the major tech companies "have begun to take action against **what Facebook calls 'coordinated inauthentic behavior'**." The rhetorical framing ("what Facebook calls…") is itself the critique — CIB is named as a *corporate* category. The article is a Nature Comment, not peer-reviewed research; treat as expert commentary.

**Starbird, K., & Wilson, T. (2020). "Cross-Platform Disinformation Campaigns: Lessons Learned and Next Steps."** *Harvard Kennedy School (HKS) Misinformation Review*, 1(3).
DOI: 10.37016/mr-2020-002
URL (verified 200): https://misinforeview.hks.harvard.edu/article/cross-platform-disinformation-campaigns/
Confidence: **H** (URL + DOI resolve; landing page live).

**Wilson, T., & Starbird, K. (2021). "Cross-platform Information Operations: Mobilizing Narratives & Building Resilience through both 'Big' & 'Alt' Tech."** *PACM HCI*, 5(CSCW2).
DOI: 10.1145/3476086 (DOI resolves; ACM returns 403 to non-browser clients)
Author PDF (verified 200): http://faculty.washington.edu/kstarbi/Wilson-Starbird-CSCW2021.pdf
Confidence: **M**.

**Starbird's publication list** (verified 200): https://faculty.washington.edu/kstarbi/publications.html — used to check titles.

### 1.3 UNVERIFIED Starbird titles named in the brief

- **"Misinformed by the platform"** — **UNVERIFIED / not found.** A DuckDuckGo exact-phrase query for `Starbird "Misinformed by the platform"` returned *no results*. I could not locate any such Starbird article, chapter, or talk. Do not cite without a new source.
- **"Communities of Collusion"** — **UNVERIFIED / not found.** Exact-phrase search returned no results; no matching record in Crossref or on Starbird's own publication list. Possibly a confusion with the *concept* of collusive/coordinated communities discussed in §5.2 of Starbird, Arif & Wilson (2019), not a distinct paper.
- **"Birds of a Feather"** — **UNVERIFIED / not a Starbird CIB paper.** Exact-phrase search surfaced only unrelated works (a 2025 avian-influenza misinformation paper; a restaurant; a TV show). No Starbird "Birds of a Feather" CIB paper exists in Crossref or on her publication page.

### 1.4 The concept itself is contested: platform definitions are ambiguous and not theoretically grounded

**Mannocci, L., Mazza, M., Monreale, A., Tesconi, M., & Cresci, S. (2026). "Detection and Characterization of Coordinated Online Behavior: A Survey."** *ACM Computing Surveys*.
DOI: 10.1145/3839225
Full text (verified, arXiv HTML): https://arxiv.org/abs/2408.01257 · https://arxiv.org/html/2408.01257v2
Confidence: **H** — full text read.

Verified quotations:
- "while **Facebook's interest towards online coordination was constrained to inauthentic behaviors** as a response to the threat of orchestrated campaigns, here we embrace a **more holistic and unbiased view by focusing on the broader concept of coordinated behavior**. This inclusive approach allows for the analysis of a broader spectrum of works, **including those focused on legitimate collective actions**."
- §2.2.6 "Ambiguities and limitations": "their conceptualizations are driven primarily by **pressing practical regulation needs and by immediate contingencies, rather than by methodological rigor and theoretical soundness**."
- "online platforms adopt **different and at times contrasting definitions, adding confusion and ambiguity** to the already challenging task of defining an inherently nuanced and complex phenomenon… **certain coordinated efforts may be categorized as such by some platforms but not by others**."
- Worked example used: the June 2020 TikTok teenagers who mass-reserved Trump rally tickets — coordination aimed at legitimate political expression rather than deception.
- The survey also notes that "Research sped up significantly after 2018, when Facebook introduced the concept of coordinated inauthentic behavior (CIB), marking a milestone in the development of the field" — evidence that CIB, a corporate coinage, structurally set the academic research agenda.

This is a strong, recent (2026) peer-reviewed statement of critique **(a)** and **(d)**, published in a top computing survey venue by the leading coordination-detection group.

**Giglietto, F. (2022). "Coordinated inauthentic behavior."** In *Elgar Encyclopedia of Technology and Politics*.
DOI: 10.4337/9781800374263.coordinated.inauthentic.behavior
Landing page: https://www.elgaronline.com/view/book/9781800374263/b-9781800374263.coordinated.inauthentic.behavior.giglietto.xml (403 to non-browser clients)
Confidence: **M** — existence, author, venue and DOI verified via Crossref; full entry text not retrieved.
Significance: CIB is now an *encyclopedia term of art* — itself evidence that the corporate coinage has been naturalised into the scholarly vocabulary.

### 1.5 Empirical demonstration that CIB captures ordinary, non-deceptive coordination

**Rogers, R., & Righetti, N. (2025). "Coordinated inauthentic behaviour on Facebook? A typology of manufactured attention."** *Platforms & Society*.
DOI: 10.1177/29768624251369784
Landing page (403 to scripted clients; DOI valid): https://journals.sagepub.com/doi/10.1177/29768624251369784
Confidence: **H** for the abstract (retrieved verbatim via Semantic Scholar by DOI); URL publisher-gated.

Verified abstract, verbatim: "This paper advances the discourse on coordinated inauthentic behaviour (CIB) on Facebook **by extending its study beyond deceptive influence operations**. Using techniques developed for its technical analysis, we undertake an empirical study of CIB that surfaces **not only such operations but predominantly others, particularly media groups sharing news stories, political activists sharing memes, advertising networks promoting gambling and cyber scams as well as large public groups hijacked to spread ads**. Based on these findings, we develop a **typology of manufactured attention**."

This is the strongest *empirical* evidence that applying CIB detection surfaces mostly non-deceptive, often mundane coordination — i.e. that the category is badly calibrated to the harm it claims to target.

**Keller, T., Graham, T., Angus, D., Bruns, A., Nijmeijer, R., Nielbo, K. L., Bechmann, A., Neudert, L.-M., Marchal, N., Bradshaw, S., Rossini, P., Stromer-Galley, J., Baptista, E. A., & Veiga de Oliveira, V. (2020). "'COORDINATED INAUTHENTIC BEHAVIOUR' AND OTHER ONLINE INFLUENCE OPERATIONS IN SOCIAL MEDIA SPACES."** *AoIR Selected Papers of Internet Research*.
DOI: 10.5210/spir.v2020i0.11132
URL (verified 200): https://spir.aoir.org/ojs/index.php/spir/article/view/11132
PDF (verified 200): https://spir.aoir.org/ojs/index.php/spir/article/download/11132/9763
Confidence: **H** (abstract). Caveat: this is a **panel abstract**, not a full research article — weight accordingly. The scare quotes around 'COORDINATED INAUTHENTIC BEHAVIOUR' in the title, and the "and other…" formulation, are themselves the critical move; the abstract notes platforms "have announced efforts to counter 'coordinated inauthentic behaviour'" while "further conceptual and methodological innovations are required."

**Jovanovic-Harrington, A., & Cornia, A. (2026). "Beyond detection: How Serbia's SNS party mimics authentic support through coordinated inauthentic behaviour."** *European Journal of Communication*.
DOI: 10.1177/02673231261422076
Landing page: https://journals.sagepub.com/doi/10.1177/02673231261422076 (403 to scripted clients)
Confidence: **H** for abstract (Semantic Scholar by DOI).
Verified abstract, verbatim (excerpt): "Unlike centralised bot farms common in autocratic regimes, **SNS networks evade detection longer and more effectively mimic authentic support**. Drawing on sources rarely translated into English and often at risk of censorship…"
Relevance: directly supports the "cannot distinguish authentic from inauthentic" critique, and is one of very few CIB studies built on non-English, non-Western sourcing.

**Keller, F. B., Schoch, D., Stier, S., & Yang, J. (2020). "Political Astroturfing on Twitter: How to Coordinate a Disinformation Campaign."** *Political Communication*, 37(2).
DOI: 10.1080/10584609.2019.1661888 — 283 citations (Crossref).
Confidence: **M** (Crossref metadata verified; full text not retrieved).
Relevance: the landmark ground-truth study showing that coordination is performed by *real, identified party supporters* (CDU volunteers), not fake accounts — i.e. coordination ≠ inauthenticity.

**Schoch, D., Keller, F. B., Stier, S., & Yang, J. (2022). "Coordination patterns reveal online political astroturfing across the world."** *Scientific Reports*, 12.
DOI: 10.1038/s41598-022-08404-9 — 52 citations (Crossref).
Confidence: **M**.

### 1.6 "Authenticity" as a governance category; CIB as an expansion of platform power

**Lindquist, J., & Weltevrede, E. (2024). "Authenticity Governance and the Market for Social Media Engagements: The Shaping of Disinformation at the Peripheries of Platform Ecosystems."** *Social Media + Society*, 10(1).
DOI: 10.1177/20563051231224721
Landing page: https://journals.sagepub.com/doi/10.1177/20563051231224721 (403 to scripted clients)
Confidence: **H** for abstract (Semantic Scholar by DOI; gold OA, CC-BY).
Verified abstract (excerpt): "Social media engagements, such as likes and follows, have become crucial for driving algorithmic recommendations and underpinning platform economies. This has given rise to disinformation industries that focus on the production and sale of engagements… a phenomenon we term the **'engagement as a service' market**."
Relevance: the key scholarly source for the term **"authenticity governance"** — the idea that platforms now govern the boundary between "authentic" and "inauthentic" account behaviour as a distinct regulatory domain.

**Schäfer, N. (2025). "Call the (Bot-)Police: User-Led Platform Governance of '(In)Authenticity' on Instagram."** *Lateral* 14(2).
DOI: 10.25158/l14.2.13
URL (verified 200): https://csalateral.org/section/digital-platforms-agency/call-the-bot-police-user-led-platform-governance-of-inauthenticity-on-instagram-schafer/
Confidence: **H** — full text read. Open access.

Verified quotations and findings:
- "Instagram's definition of 'authenticity' remains **deliberately vague**, allowing it to be flexibly adapted to changing objectives."
- "'authenticity' on social media is a **vague term with varying interpretations** depending on perspective."
- "The dichotomies between 'inauthentic' and 'authentic', fake and real, and human and artificial are **neither sustainable nor useful** because engagement on social media platforms inherently crosses these boundaries."
- The article documents user-led "bot police" accounts that phish for automated likes, publicly pillory suspected botters, and mass-flag profiles — producing "digital vigilantism" that harms other users. This is concrete evidence that CIB/authenticity enforcement devolves policing to users.
- It cites and relays the key secondary claims below:
  - **Matamoros-Fernández, Bartolo & Alpert** argue platforms have "constructed the notion of 'inauthentic behavior' as a **flexible category**" to allow definitions that serve the platform's interests.
  - **Crawford & Gillespie** describe flags as a governance mechanism "to elicit and distribute user labor—**users as a volunteer corps of regulators**."
  - **Myers West**: moderation debates have concentrated on content; they should "broaden to encompass the effects of moderating user behavior overall."

**Matamoros-Fernández, A., Bartolo, L., & Alpert, B. (2024). "Acting like a bot as a defiance of platform power: Examining YouTubers' patterns of 'inauthentic' behaviour on Twitter during COVID-19."** *New Media & Society*, 26(3), 1290–1314.
DOI: 10.1177/14614448231201648
PDF: https://journals.sagepub.com/doi/pdf/10.1177/14614448231201648 (publisher-gated)
Confidence: **H** for abstract (Semantic Scholar by DOI).
Verified abstract (excerpt): "This article examines YouTubers' 'bot like' behaviour on Twitter and **conceptualises it as a defiance of platform power in delimiting the boundaries of 'authenticity'**… patterns of 'inauthentic' behaviour in how people shared YouTube videos on Twitter during the early stages of the COVID-19 pandemic."

**Crawford, K., & Gillespie, T. (2016). "What is a flag for? Social media reporting tools and the vocabulary of complaint."** *New Media & Society*, 18(3), 410–428.
DOI: 10.1177/1461444814543163 — 402 citations (Crossref).
Confidence: **M** (metadata verified; abstract elided by publisher).

**Gillespie, T. (2018). "Regulation of and by Platforms."** In *The SAGE Handbook of Social Media* (pp. 254–278).
DOI: 10.4135/9781473984066.n15
URL (verified via Crossref): https://doi.org/10.4135/9781473984066.n15
Confidence: **M**. **Important correction:** the chapter's *published* title is **"Regulation of and by Platforms,"** not "Governance of and by Platforms" as given in the brief. No free canonical PDF found (the previously circulated `tarletongillespie.org/essays/...` URL now 404s; `https://www.tarletongillespie.org/` returns 200 but the essays index was not retrievable). Cite the DOI.

**Myers West, S. (2018). "Censored, suspended, shadowbanned: User interpretations of content moderation on social media platforms."** *New Media & Society*, 20(11), 4366–4383.
DOI: 10.1177/1461444818773059 — 434 citations (Semantic Scholar) / 377 (Crossref).
Landing page (403 to scripted clients): https://journals.sagepub.com/doi/10.1177/1461444818773059
Confidence: **M** for metadata; **abstract elided by the publisher** at source, so no verbatim abstract could be verified. Her specific claim about moderation debates over-focusing on content is relayed above via Schäfer (2025). Do not attribute a direct quotation to this paper without reading it.

**Gorwa, R. (2019). "The platform governance triangle: conceptualising the informal regulation of online content."** *Internet Policy Review*, 8(2).
DOI: 10.14763/2019.2.1407
URL (verified 200, full text read): https://policyreview.info/articles/analysis/platform-governance-triangle-conceptualising-informal-regulation-online-content
Confidence: **H**.
Verified abstract: "a growing number of voluntary and non-binding informal governance initiatives have recently been proposed as attractive ways to rein in Facebook, Google, and other platform companies hosting user-generated content… I discuss three key dynamics shaping the success of informal governance arrangements: **actor competencies, 'legitimation politics', and inter-actor relationships of power and coercion**."
Relevance to CIB: supplies the framework for arguing that CIB enforcement is a *voluntary, informal* governance arrangement whose terms are set by the platform, and whose legitimacy is contested. Note the paper's own subject is content governance in Europe, not CIB directly — it is a framework source, not a CIB critique.

**Gorwa, R., & Ash, T. G. (2020). "Democratic Transparency in the Platform Society."** In *Social Media and Democracy: The State of the Field, Prospects for Reform* (Cambridge University Press), ch. 12.
DOI: 10.1017/9781108890960.013
URL (verified 200, full text read): https://www.cambridge.org/core/books/social-media-and-democracy/democratic-transparency-in-the-platform-society/F4BC23D2109293FB4A8A6196F66D3E41
Confidence: **H**.
Verified abstract: "transparency has emerged as one of the leading accountability mechanisms through which platform companies have attempted to regain the trust of the public… The goal of this chapter is to contextualize the recent examples of transparency as implemented by platform companies… and **reflect on the shortfalls of transparency**."
Verified in-text: digital transparency studies "critiques prevailing discourses of technologically implemented transparency as a panacea for the digital age"; "**transparency is merely a form of regulation by other means**"; corporate transparency can produce "**'opaque' forms of transparency** that do not actively make the democratically relevant information visible but rather can be used to obfuscate processes and practices beneath a veneer of respectability."

**Gorwa, R., Binns, R., & Katzenbach, C. (2020). "Algorithmic content moderation: Technical and political challenges in the automation of platform governance."** *Big Data & Society*, 7(1).
DOI: 10.1177/2053951719897945 — 787 citations (Crossref).
Confidence: **M** (metadata verified; abstract not retrieved).
Relevance: core source on the technical→political translation problem in automated enforcement, of which CIB detection is a case.

**Gorwa, R., & Guilbeault, D. (2020). "Unpacking the Social Media Bot: A Typology to Guide Research and Policy."** *Policy & Internet*, 12(2), 225–248.
DOI: 10.1002/poi3.184 — 153 citations (Crossref).
Landing page (403 to scripted clients): https://onlinelibrary.wiley.com/doi/10.1002/poi3.184
Confidence: **M**.
Relevance: the standard citation for the claim that "bot"/"social bot" is conceptually confused; Rauchfleisch & Kaiser (2020) explicitly defer to it: "Gorwa and Guilbeault … have already clarified many aspects of the conceptual confusion in their bot typology."

**François, C., & Douek, E. (2021). "The Accidental Origins, Underappreciated Limits, and Enduring Promises of Platform Transparency Reporting about Information Operations."** *Journal of Online Trust and Safety*, 1(1).
DOI: 10.54501/jots.v1i1.17
URL (verified 200): https://tsjournal.org/index.php/jots/article/view/17
Confidence: **H** (abstract verified verbatim; full PDF not downloaded).
Verified abstract (excerpt): "platform policies and transparency regimes related to information operations remain **poorly understood. Underappreciated ambiguities and inconsistencies in platforms' work in this area create perverse incentives for enforcement and distort public understanding of information operations.**"
Author note: Camille François is a co-architect of the platform information-operations transparency regime being critiqued — this is a rare insider critique. Keywords listed on the article page include **"coordinated inauthentic behavior."**

### 1.7 The "authentic but harmful amplification" critique

**Donovan, J., & boyd, d. (2019). "Stop the Presses? Moving From Strategic Silence to Strategic Amplification in a Networked Media Ecosystem."** *American Behavioral Scientist*, 63(2).
DOI: 10.1177/0002764219878229
Confidence: **H** for abstract (Semantic Scholar by DOI).
Verified abstract (excerpt): "In a media ecosystem besieged with misinformation and polarizing rhetoric, what the news media chooses **not** to cover can be as significant as what they do cover. In this article, we examine the historical production of silence in journalism to better understand **the role amplification plays** in the editorial and content moderation practices of current news media and social media platforms."
Relevance: the canonical articulation of "strategic amplification" — the harm is amplification by ordinary, authentic actors, which CIB (a category about identity deception) structurally does not address.

**Phillips, W. (2018). "The Oxygen of Amplification: Better Practices for Reporting on Extremists, Antagonists, and Manipulators Online."** Data & Society Research Institute.
URL (verified 200): https://datasociety.net/library/oxygen-of-amplification/
Confidence: **H** (landing page live); report PDF not read in this pass.
Relevance: the amplification-of-authentic-voices thesis in report form.

**de-Lima-Santos, M.-F., & Ceron, W. (2023). "Coordinated Amplification, Coordinated Inauthentic Behaviour, Orchestrated Campaigns."** In *Mapping Lies in the Global Media Sphere* (Routledge).
DOI: 10.4324/9781003403203-14 — 10 citations (Crossref).
Confidence: **M** (metadata verified; chapter text not retrieved).
Relevance: the title itself documents the field's terminological splintering — three competing labels for overlapping phenomena.

**Starbird, K., Arif, A., & Wilson, T. (2019)** (above, §1.1) — the verbatim "authentic accounts (real people, sincerely participating)" and "self-sustaining" passages are the strongest scholarly statement that CIB leaves organic amplification unaddressed.

### 1.8 DiResta — what is and is not verified

**Ings, R., & DiResta, R. (2024). "How Coordinated Inauthentic Behavior continues on Social Platforms."** Stanford Internet Observatory / Freeman Spogli Institute, 29 May 2024.
Original URL: https://cyber.fsi.stanford.edu/io/news/how-coordinated-inauthentic-behavior-continues — **now link-rotted** (301 → generic TIP Center page; the archived snapshot from 2025-09-19 is a 404).
Status: **UNVERIFIED as a stable citation**; the piece is confirmed to have existed (LinkedIn post by DiResta, Scribd mirror, Wayback CDX records for the URL path). Cite only with an explicit archive caveat if at all.
Its thesis, per secondary traces: Meta's Q3 2023 adversarial threat report named a network; Ings & DiResta found the same *behaviour* continuing on X, TikTok and Telegram — i.e. CIB enforcement is platform-siloed and does not stop the behaviour. Treat as **grey literature**, not peer-reviewed.

**DiResta, R. (2018). "Free Speech Is Not the Same As Free Reach."** *Wired*.
URL (verified 200): https://www.wired.com/story/free-speech-is-not-the-same-as-free-reach/
Confidence: **M** (URL live; text not read this pass). Opinion/commentary — the amplification-over-speech argument.
Her book *Invisible Rulers: The People Who Turn Lies into Reality* (2024) argues propaganda now flows through influencers, algorithms and networked communities — again an amplification-centric rather than inauthenticity-centric account — but no peer-reviewed DiResta critique *of CIB as a term* was found.

**Bottom line for DiResta:** the brief's premise that DiResta critiques CIB/platform transparency is **only partially supported**. Her documented contributions are (i) a co-authored 2024 grey-literature report showing CIB enforcement is incomplete across platforms, and (ii) a general amplification-centric account of propaganda. No peer-reviewed DiResta article critiquing CIB's conceptual adequacy was located. Treat claims of a DiResta "critique of CIB" as **UNVERIFIED**.

### 1.9 "The authenticity bind" — important scope correction

**Duffy, B. E., & Hund, E. (2019/2021). "Gendered Visibility on Social Media: Navigating Instagram's Authenticity Bind."**
DOI (open-reader reprint): 10.32376/3f8575cb.3f03db0e — resolves to https://www.mediastudies.press/pub/duffy-gendered (403 to scripted clients; the DOI resolves, so the record is valid). Original publication: *International Journal of Communication*, 13 (2019). Crossref lists 48 citations for the reprint record.
Related: **Petre, C., Duffy, B. E., & Hund, E. (2019). "'Gaming the System': Platform Paternalism and the Politics of Algorithmic Visibility."** *Social Media + Society*. DOI: 10.1177/2056305119879995 (145 citations).
Confidence: **M**.
**Scope correction:** Duffy & Hund's "authenticity bind" is about *influencers'* gendered labour of performing authenticity for audiences — it is **not** a critique of CIB or of platform authenticity enforcement. It concerns a different literature. Do not conflate it with Lindquist & Weltevrede's "authenticity governance."

---

## PART 2 — Bot-detection accuracy critiques

### 2.1 Rauchfleisch & Kaiser (2020) — the anchor study

**Rauchfleisch, A., & Kaiser, J. (2020). "The false positive problem of automatic bot detection in social science research."** *PLOS ONE*, 15(10), e0241045.
DOI: 10.1371/journal.pone.0241045
Full text (verified 200, read in full): https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0241045
Preprint: SSRN, DOI 10.2139/ssrn.3565233
Data: Harvard Dataverse V3, https://doi.org/10.7910/DVN/XVCKRS
Confidence: **H**.

**Design:** five labelled datasets (3 bot, 2 human; German MPs n=532, US Congress n=516, "new bots" n=935, German bots n=27, Varol et al. labelled set n≈2,573), two languages (English/German), Botometer v3 queried daily for three months (3 Mar–2 Jun 2019); 374,724 valid scores; 4,134 analysable accounts. Population baseline simulated at **15% bots / 85% humans** (the figure Botometer's own CAP assumes).

**Key verified numbers:**
| Quantity | Value |
|---|---|
| ROC-AUC, complete data | **0.85** (vs **0.94** claimed in the original Botometer paper) |
| ROC-AUC, US politicians + bots | 0.93 |
| ROC-AUC, German politicians + German bots | **0.76** |
| At threshold 0.76, resampled "all data" | precision **0.59**, recall **0.20** → **41% of accounts labelled "bot" are false-positive humans**; ~80% of bots missed |
| At threshold 0.76, German politicians + bots | precision **0.24** → **76% of accounts labelled "bot" are humans**; recall **0.10** (~90% of bots missed) |
| CAP threshold 0.25, all data | precision 0.55, recall 0.29 |
| CAP threshold 0.25, German politicians + bots | precision 0.30 → **70% false-positive humans** |
| Language effect: Varol set | English score ROC-AUC 0.90 vs universal 0.86 |
| Language effect: German politicians + German bots | English score ROC-AUC **0.69** vs universal 0.76 |
| Temporal instability, threshold 0.76 | 27.2% of new bots, 22.2% of German bots, 13.9% of Varol bots flip below/above the threshold at least once over 3 months; 7.4% of German politicians do too |
| Temporal instability, CAP threshold 0.25 | 37.5% of new bots, 33.3% of German bots, 10.7% of German politicians flip at least once |

**Verified verbatim quotations:**
- "We show that the **Botometer scores are imprecise when it comes to estimating bots; especially in a different language.**"
- "This has immediate consequences for academic research as **most studies in social science using the tool will unknowingly count a high number of human users as bots and vice versa.**"
- "**If the numbers of bots are in the minority for the general population… even a small false-positive rate might lead to a high number of human accounts wrongly classified as bots.**"
- "our counter-argument would be that the issue of false positive and false negative rates for specific thresholds with data sets based on the general Twitter population as well as the tool's vulnerability to temporal changes or **different languages do call the tool's classifications into question**."
- On non-English usage: "researchers should be aware of Botometer's limitations (that are even stated by the creators of the tool) when it comes to classifying accounts that tweet in other languages."
- They manually re-checked all 27 false-positive German politicians: only one showed any automation-like behaviour (Facebook–Twitter cross-posting); "most of the other accounts that had been falsely classified as bots were **mostly inactive**."
- Self-limitation: "we do not think that Botometer is a bad tool in general; we rather suggest that researchers should be aware of Botometer's limitations" — and they note Botometer v4 "addressed some aspects of our criticism" while "major points of criticism… **unclarity regarding what type of bot Botometer identifies, inadequate training data for other languages, and the potential vulnerability to temporal patterns still apply**."

This source alone satisfies the Part 2 core ask, including the non-English/Global-South-adjacent bias mechanism.

### 2.2 The most severe critique: Gallwitz & Kreil (2022)

**Gallwitz, F., & Kreil, M. (2022). "Investigating the Validity of Botometer-Based Social Bot Studies."** In *MISDOOM 2022* (Multidisciplinary International Symposium on Disinformation in Open Online Media), *Lecture Notes in Computer Science*.
DOI: 10.1007/978-3-031-18253-2_5
Springer landing page (verified 200): https://link.springer.com/10.1007/978-3-031-18253-2_5
Preprint (verified, read in full): https://arxiv.org/abs/2207.11474
Confidence: **H**.

**Verified verbatim abstract conclusions:**
- "we point out a **fundamental theoretical flaw** in the widely-used study design for estimating the prevalence of social bots."
- "we empirically investigate the validity of peer-reviewed Botometer-based studies by closely and systematically inspecting hundreds of accounts that had been counted as social bots. **We were unable to find a single social bot.** Instead, we found mostly accounts undoubtedly operated by human users, the vast majority of them using Twitter in an inconspicuous and unremarkable fashion without the slightest traces of automation."
- "We conclude that studies claiming to investigate the prevalence, properties, or influence of social bots based on Botometer have, in reality, **just investigated false positives and artifacts of this approach**."

**The theoretical flaw (circularity), verified:** Botometer's calibrated "bot score" assumes a prior p(Bot) ≈ 50%; the CAP assumes p(Bot) ≈ 15%. But p(Bot) is precisely the quantity the researcher is trying to estimate: "as we need p(Bot) as an estimate for p(Bot), we already need to know p(Bot) beforehand." They characterise this as "textbook circular reasoning."

**Verified false-positive rates on obviously-human populations (May 2019, threshold most commonly used):**
| Population | Share misclassified as bots |
|---|---|
| Members of the U.S. Congress (April 2018) | **47%** |
| U.S. Congress (May 2019) | **0.4%** — the authors note the collapse "Possibly… these accounts had been added to the Botometer training data as examples of human users in the meantime" |
| NASA-related accounts | **10.5%** |
| Nobel Prize laureates | **12%** |
| Female directors | **14%** |
| Reuters journalists | **17.7%** |
| UN Women staff | **21.9%** |
| German news agency *dpa* staff | **35.9%** |

**Verified false-negative rates on known bots (May 2019):**
- **36%** of *New Scientist*-documented bots misclassified as humans.
- **60.7%** of Botwiki bots misclassified as humans.

Other verified detail: in January 2021 the @POTUS account scored 3.2 ("bot"); in May 2022 both @POTUS and @JoeBiden scored 3.8. They also note that human labellers training Botometer were themselves working from inflated priors, so "many accounts that are clearly not automated but were rated 'bots' by human labelers can be found in the 'bot repository' used to train Botometer."

### 2.3 The bot-detection community's own response (contested status)

**Cresci, S., Yang, K.-C., Spognardi, A., Di Pietro, R., Menczer, F., & Petrocchi, M. (2025). "Demystifying Misconceptions in Social Bots Research."** *Social Science Computer Review*.
DOI: 10.1177/08944393251376707
Preprint (verified, read in full): https://arxiv.org/abs/2303.17251 (v4, 29 Jul 2025)
Confidence: **H**.

This is essential *balance*: the leading bot-detection researchers (including Menczer, of Botometer/OSoMe) agree with much of the critique but dispute the strong reading.

Verified verbatim:
- Abstract: "social bot research is plagued by **widespread biases, hyped results, and misconceptions**… **we discuss a broad set of consequential methodological and conceptual issues**… identifying and refuting common fallacious arguments used by **both proponents and opponents** of social bots research."
- **Misconception 1 — "Social bot detection is a solved task."** They reject it: "despite significant efforts devoted for a prolonged time, **bot detection is nowhere near to being a solved problem—quite the contrary.**"
- **Misconception 2 — "Bot detection performance can be improved easily."** Rejected; bot detection is "an intrinsically challenging task."
- **Misconception 4 — "Each bot detector can detect all types of bots."** Rejected: "no single bot detector is capable of detecting all types of bots."
- **Misconception 5 — "Social bots are mainly responsible for the spread of disinformation."** Rejected: "we currently lack scientific consensus and conclusive evidence about the role of social bots and their effectiveness in influencing online users… **bots are only one of many agents involved**… state-sponsored trolls, users who collude and coordinate for malicious purposes, superspreaders, and even willing but unwitting individuals." (They cite Starbird 2019 here.)
- **Misconception 6 — "All social bots research is flawed and bot detection results are useless."** Rejected, but pointedly: "Such claims have been recently made by Hays et al. and **Gallwitz & Kreil — the latter even in sensationalist terms**."

So the *meta-dispute is live and should be reported as such*: Cresci et al. accept the false-positive and generalisability problems but reject the conclusion that Botometer-based studies investigated nothing but artefacts.

### 2.4 Botometer, BotSlayer, and the OSoMe tool lineage

**Yang, K.-C., Ferrara, E., & Menczer, F. (2022). "Botometer 101: social bot practicum for computational social scientists."** *Journal of Computational Social Science*, 5, 1511–1528.
DOI: 10.1007/s42001-022-00177-5 — 130 citations (Crossref)
Preprint: https://arxiv.org/abs/2201.01608
Confidence: **M** (metadata verified via Crossref + arXiv API; full text not read).

**Hui, P.-M., Yang, K.-C., Torres-Lugo, C., & Menczer, F. (2020). "BotSlayer: DIY Real-Time Influence Campaign Detection."** *Proceedings of the International AAAI Conference on Web and Social Media*, 14(1).
DOI: 10.1609/icwsm.v14i1.7370
Software paper: Hui, P.-M., Yang, K.-C., Torres-Lugo, C., Monroe, Z., & McCarty, M. (2019). "BotSlayer: real-time detection of bot amplification on Twitter." *Journal of Open Source Software*, 4(42), 1706. DOI: 10.21105/joss.01706
Confidence: **M** (DOIs and metadata verified via Crossref title search; tool documentation not retrieved).
**What BotSlayer is:** a free, open-source OSoMe dashboard that monitors a Twitter stream (e.g. a hashtag) and surfaces accounts/groups whose *amplification* behaviour looks anomalous, so journalists and researchers can investigate campaigns in near-real time. It is explicitly positioned as an *amplification*-detection tool rather than a per-account bot classifier.
**Critique status:** **UNVERIFIED.** No peer-reviewed critique specifically targeting BotSlayer was found. Its inherited weaknesses are those of the underlying Botometer scores, which are documented in §2.1–2.2. Do not claim a BotSlayer-specific critique without a new source.

**Cresci, S. (2020). "A decade of social bot detection."** *Communications of the ACM*, 63(10), 72–83.
DOI: 10.1145/3409116 — 279 citations (Crossref)
Confidence: **M**.
Relevance: the field's own decade-review; the standard citation for the "arms race" framing and for the argument that research should pivot from per-account bot detection toward detecting *information operations* and coordinated harmful behaviour.

**Sayyadiharikandeh, M., Varol, O., Yang, K.-C., Flammini, A., & Menczer, F. (2020). "Detection of Novel Social Bots by Ensembles of Specialized Classifiers."** *CIKM 2020*.
Preprint: https://arxiv.org/abs/2006.06867
Confidence: **M**. Relevant as the Botometer v4 architecture paper responding to generalisation criticism.

**Assenmacher, D., Clever, L., Frischlich, L., Quandt, T., Trautmann, H., & Grimme, C. (2020). "Demystifying Social Bots: On the Intelligence of Automated Social Media Actors."** *Social Media + Society*, 6(3).
DOI: 10.1177/2056305120939264 — 60 citations (Crossref)
Confidence: **M**.
Relevance: conceptual critique of the "social bot" category and of over-claiming bot intelligence. The earlier **Grimme et al. (2017)** work it descends from is the source Rauchfleisch & Kaiser cite for "Botometer could not classify the hybrid and full automation bot accounts that the authors had created precisely."

**Najari, S., Rafiei, D., Salehi, M., & Farahbakhsh, R. (2024). "Adversarial Botometer: adversarial analysis for social bot detection."** *Social Network Analysis and Mining*, 14.
DOI: 10.1007/s13278-024-01387-7
Preprint: https://arxiv.org/abs/2405.02016
Confidence: **M**. Relevant to detector evasion under generative AI.

**Yang, K.-C., Varol, O., Nwala, A. C., Sayyadiharikandeh, M., Ferrara, E., Flammini, A., & Menczer, F. (2023). "Social Bots: Detection and Challenges."** arXiv:2312.17423.
URL: https://arxiv.org/abs/2312.17423
Confidence: **M** (arXiv API metadata). Book-chapter survey from the Botometer team; useful as the "state of the tool" position.

### 2.5 Non-English / Global South misclassification and ethics of detection

**Ng, L. H. X., Pan, E., Yoder, M. M., & Carley, K. M. (2026). "FATe of Bots: Ethical Considerations of Social Bot Detection."**
arXiv (verified, abstract read): https://arxiv.org/abs/2602.05200
Published version: ACM, DOI 10.1145/3799706 (verified via search result listing; ACM returns 403 to scripted clients)
Confidence: **H** for the abstract; **M** for the ACM version.
Verified abstract (excerpt): "we examine the ethical implications for social bot detection systems through three pillars: **training datasets, algorithm development, and the use of bot agents**… This examination is grounded in the **FATe framework**, which examines Fairness, Accountability, and Transparency in consideration of tech ethics."
Crucially, the paper's supplementary material is indexed as reporting "the difference in performance of bot detection algorithms for **English-based users and non-English-based users**" (language taken from X's language detector). This is the closest thing located to a quantitative non-English performance-gap table.

**Rauchfleisch & Kaiser (2020)** (§2.1) remains the strongest *quantified* language-degradation result: English score ROC-AUC falls to **0.69** on German accounts, and at common thresholds ~76% of accounts labelled "bot" in the German dataset are humans.

**Fernquist, J., et al. (2018)** — cited inside Rauchfleisch & Kaiser as showing "Botometer struggles with non-English language tweets" and that a self-built Swedish classifier outperformed it. **UNVERIFIED as a standalone citation** — the full reference was not independently retrieved; it appears in the PLOS reference list only.

**Cresci et al. (2025)** add a platform-diversity critique: the field's "hyperfocus on X" (Twitter) "has led to the neglect of other platforms," and "the lack of ground truth, further contribute[s] to hindering bot detection research on these platforms." This is the structural reason non-Western/non-English contexts are under-served.

**Regional/Global-South-specific quantitative misclassification studies** (e.g. rates for Brazilian, Indian, or African user populations): **NOT FOUND / UNVERIFIED** within the time-box. The Brazil-focused astroturfing literature (e.g. Soares & Recuero, *Social Media + Society* 2021, DOI 10.1177/20563051211009073) exists and surfaced in searches, but its focus is campaign analysis, not detector error rates. Treat any claim that "bot detectors misclassify Global South users at rate X" as unsupported on this evidence base.

### 2.6 Over-claiming "Russian bots" and the corrective literature

**Bastos, M. T., & Mercea, D. (2019). "The Brexit Botnet and User-Generated Hyperpartisan News."** *Social Science Computer Review*, 37(1), 38–54.
DOI: 10.1177/0894439317734157 — 281 citations (Crossref)
Confidence: **M** (metadata verified; full text not read).
Role: this is the *over-claiming* target — the widely cited paper that estimated a large Brexit botnet. **A formal correction, retraction, or published rebuttal was NOT located: UNVERIFIED.** Rauchfleisch & Kaiser cite it positively as an example of network/communication-metric approaches, which complicates the "debunked" narrative. Report this cautiously.

**Eady, G., Paskhalis, T., Zilinsky, J., Bonneau, R., Nagler, J., & Tucker, J. A. (2023). "Exposure to the Russian Internet Research Agency foreign influence campaign on Twitter in the 2016 US election and its relationship to attitudes and voting behaviour."** *Nature Communications*, 14, 62.
DOI: 10.1038/s41467-022-35576-9 — 104 citations (Crossref)
Confidence: **M** (metadata verified via Crossref; full text not read).
Role: the strongest peer-reviewed corrective to the "Russian bots swung 2016" claim — a large, well-powered exposure study in a top journal. It concerns *the Internet Research Agency's* effects, not bot-detection accuracy per se, but it is the standard scholarly citation for the over-claiming critique. Widely covered in the press (Salon/Raw Story, Jan 2023) as "blowing up the myth."

**Obreja, D. M. (2024). "The 'Russian bots' between social and technological: Examining the ordinary folk theories of Twitter users."** *New Media & Society*.
DOI: 10.1177/14614448241255692
Confidence: **M** (landing page live; abstract retrieved via search-index snippet).
Relevance: documents how "Russian bot" accusations function as folk theory in ordinary discourse — i.e. the label's social life outstrips its evidentiary base.

**SciLine slide deck — Starbird, K., "Facts, Frames, and (Mis)Interpretations."**
URL (verified via search result): https://www.sciline.org/wp-content/uploads/2024/08/Starbird_slides.pdf
Confidence: **L** — grey literature, not read. Noted only because it surfaced in exact searches for Starbird on framing.

---

## Which critiques are well-supported vs UNVERIFIED / contested

### Well-supported (multiple independent, peer-reviewed sources; treat as scholarly consensus)

1. **CIB is a corporate coinage whose definition is the platform's to set, and it has been naturalised into academic vocabulary.** Supported by Meta's own policy text plus Mannocci et al. (2026), Giglietto (2022), and the sheer volume of CIB-titled literature. Confidence: **H**.
2. **Platform definitions of coordinated inauthentic behaviour are inconsistent, practical-need-driven, and not theoretically grounded.** Mannocci et al. (2026) §2.2.6, verbatim. Confidence: **H**.
3. **CIB cannot reliably separate orchestrated from organic/authentic participation, and therefore misses self-sustaining authentic amplification.** Starbird, Arif & Wilson (2019) §5.2, verbatim; corroborated by Keller et al. (2020) on astroturfing by real party supporters, and by Donovan & boyd (2019) on strategic amplification. Confidence: **H**.
4. **Applied at scale, CIB-style detection surfaces predominantly non-deceptive coordination** (media groups, activists sharing memes, ad/scam networks, hijacked groups). Rogers & Righetti (2025), abstract verbatim. Single strongest empirical study but from a strong group; confidence: **H** for the finding, **M** for its generality beyond Facebook.
5. **"Authenticity" functions as a deliberately vague, flexible governance category that expands platform discretion and devolves policing to users.** Lindquist & Weltevrede (2024); Schäfer (2025) verbatim; Matamoros-Fernández et al. (2024); Crawford & Gillespie (2016); Myers West (2018). Confidence: **H** for the existence and shape of the critique; **M** for any specific causal claim about power expansion.
6. **Botometer's false-positive rate on clearly-human populations is severe, and it degrades for non-English accounts.** Rauchfleisch & Kaiser (2020), full text, with the numbers tabulated in §2.1; independently corroborated at a more extreme level by Gallwitz & Kreil (2022), §2.2. Confidence: **H**.
7. **Botometer scores are temporally unstable, so single-snapshot studies are hard to replicate.** Rauchfleisch & Kaiser (2020), quantified (up to 37.5% of bots crossing a threshold over three months). Confidence: **H**.
8. **The bot-detection field itself acknowledges systemic limitation and rejects the "solved task" framing.** Cresci et al. (2025), verbatim; Cresci (2020); Assenmacher et al. (2020). Confidence: **H**.

### Contested (genuine, live scholarly disagreement — present both sides)

9. **How damaging is the Botometer false-positive problem to the existing literature?** Gallwitz & Kreil (2022) conclude that Botometer-based prevalence studies "just investigated false positives and artifacts." Cresci et al. (2025) explicitly reject that conclusion as "sensationalist" and defend the body of work (Misconception 6), while accepting the underlying measurement problems. Report as **contested**, not settled. Confidence: **H** that the dispute exists.
10. **The size of Russian interference effects.** Eady et al. (2023, *Nature Communications*) is a major corrective to maximalist claims; but Bastos & Mercea's Brexit-botnet estimates were not shown to be formally retracted. Confidence: **M**; **do not** assert a retraction.
11. **Whether "coordinated behaviour" should replace "coordinated inauthentic behaviour."** Mannocci et al. (2026) advocate the broader concept; this is a proposal, not a consensus.

### UNVERIFIED / not found — do not cite

- **Starbird, "Misinformed by the platform"** — no such work located (exact-phrase search returned zero results).
- **Starbird, "Communities of Collusion"** — no such work located.
- **Starbird, "Birds of a Feather" (CIB)** — no such work; phrase collides with unrelated literature.
- **A peer-reviewed DiResta critique of CIB** — not located. Only a 2024 grey-literature report (link-rotted; archive-only) and opinion pieces.
- **A formal correction/retraction of Bastos & Mercea's Brexit botnet estimates** — not located.
- **A BotSlayer-specific critique** — not located.
- **Quantified Global-South/non-English *human* misclassification rates beyond the German-language results** — not located within the time-box; the FATe of Bots paper is the most promising lead (arXiv:2602.05200) and its supplemental tables should be read directly.
- **"Governance of and by Platforms" as a title** — the published Gillespie chapter is titled **"Regulation of and by Platforms"** (DOI 10.4135/9781473984066.n15).
- **"The authenticity bind" as a CIB governance critique** — Duffy & Hund's authenticity bind is about gendered influencer labour, not platform authenticity enforcement. Different literature.
- **Myers West (2018) verbatim quotations** — the publisher elides the abstract; the paper is paywalled. Her specific claim is reported here only via Schäfer (2025)'s secondary characterisation.
- **Giglietto (2022) Elgar entry text, Gorwa & Guilbeault (2020) full text, the Journal of Online Trust and Safety full PDF, Phillips (2018) report body** — landing pages verified; contents not read in this pass.

---

## Appendix — verified URL index

| Source | Full URL | HTTP |
|---|---|---|
| Starbird, Arif & Wilson 2019 (PDF) | https://faculty.washington.edu/kstarbi/Disinformation-as-Collaborative-Work-Authors-Version.pdf | 200 |
| Starbird 2019 Nature | https://www.nature.com/articles/d41586-019-02235-x | 200 (paywalled) |
| Starbird & Wilson 2020 HKS | https://misinforeview.hks.harvard.edu/article/cross-platform-disinformation-campaigns/ | 200 |
| Wilson & Starbird 2021 (PDF) | http://faculty.washington.edu/kstarbi/Wilson-Starbird-CSCW2021.pdf | 200 |
| Starbird publications | https://faculty.washington.edu/kstarbi/publications.html | 200 |
| Mannocci et al. 2026 arXiv | https://arxiv.org/abs/2408.01257 | 200 |
| Mannocci et al. 2026 arXiv HTML | https://arxiv.org/html/2408.01257v2 | 200 |
| Keller et al. 2020 AoIR | https://spir.aoir.org/ojs/index.php/spir/article/view/11132 | 200 |
| Keller et al. 2020 AoIR PDF | https://spir.aoir.org/ojs/index.php/spir/article/download/11132/9763 | 200 |
| Rogers & Righetti 2025 | https://journals.sagepub.com/doi/10.1177/29768624251369784 | 403 (publisher) |
| Jovanovic-Harrington & Cornia 2026 | https://journals.sagepub.com/doi/10.1177/02673231261422076 | 403 (publisher) |
| Lindquist & Weltevrede 2024 | https://journals.sagepub.com/doi/10.1177/20563051231224721 | 403 (publisher) |
| Schäfer 2025 Lateral | https://csalateral.org/section/digital-platforms-agency/call-the-bot-police-user-led-platform-governance-of-inauthenticity-on-instagram-schafer/ | 200 |
| Matamoros-Fernández et al. 2024 | https://journals.sagepub.com/doi/10.1177/14614448231201648 | 403 (publisher) |
| Crawford & Gillespie 2016 | https://journals.sagepub.com/doi/10.1177/1461444814543163 | 403 (publisher) |
| Myers West 2018 | https://journals.sagepub.com/doi/10.1177/1461444818773059 | 403 (publisher) |
| Gorwa 2019 Internet Policy Review | https://policyreview.info/articles/analysis/platform-governance-triangle-conceptualising-informal-regulation-online-content | 200 |
| Gorwa & Ash 2020 (Cambridge) | https://www.cambridge.org/core/books/social-media-and-democracy/democratic-transparency-in-the-platform-society/F4BC23D2109293FB4A8A6196F66D3E41 | 200 |
| Gorwa & Guilbeault 2020 | https://onlinelibrary.wiley.com/doi/10.1002/poi3.184 | 403 (publisher) |
| Gillespie 2018 (SAGE) | https://doi.org/10.4135/9781473984066.n15 | 200 (DOI resolves) |
| François & Douek 2021 JOTS | https://tsjournal.org/index.php/jots/article/view/17 | 200 |
| Giglietto 2022 Elgar | https://www.elgaronline.com/view/book/9781800374263/b-9781800374263.coordinated.inauthentic.behavior.giglietto.xml | 403 (publisher) |
| Donovan & boyd 2019 | https://journals.sagepub.com/doi/10.1177/0002764219878229 | 403 (publisher) |
| Phillips 2018 (Data & Society) | https://datasociety.net/library/oxygen-of-amplification/ | 200 |
| Duffy & Hund (reprint) | https://www.mediastudies.press/pub/duffy-gendered | 403 (publisher) |
| Rauchfleisch & Kaiser 2020 PLOS ONE | https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0241045 | 200 |
| Gallwitz & Kreil 2022 (Springer) | https://link.springer.com/10.1007/978-3-031-18253-2_5 | 200 |
| Gallwitz & Kreil 2022 (arXiv) | https://arxiv.org/abs/2207.11474 | 200 |
| Cresci et al. 2025 (arXiv) | https://arxiv.org/abs/2303.17251 | 200 |
| Ng et al. 2026 FATe of Bots | https://arxiv.org/abs/2602.05200 | 200 |
| Yang, Ferrara & Menczer 2022 | https://arxiv.org/abs/2201.01608 | 200 |
| Eady et al. 2023 (Nat Comms) | https://doi.org/10.1038/s41467-022-35576-9 | 200 (DOI resolves) |
| Meta 2018 CIB explainer | https://about.fb.com/news/2018/12/inside-feed-coordinated-inauthentic-behavior/ | 200 |
| Meta Inauthentic Behavior standard | https://transparency.meta.com/policies/community-standards/inauthentic-behavior | 200 |
| ISD CIB explainer | https://www.isdglobal.org/our-expertise/information-warfare-and-online-manipulation/coordinated-inauthentic-behaviour/ | 200 |
| EU DisinfoLab CIB detection tree | https://www.disinfo.eu/publications/coordinated-inauthentic-behaviour-detection-tree/ | 200 |
| Slate 2020 "what does CIB mean" | https://slate.com/technology/2020/07/coordinated-inauthentic-behavior-facebook-twitter.html | 200 |
| DiResta/Ings 2024 (dead; archive-only) | https://cyber.fsi.stanford.edu/io/news/how-coordinated-inauthentic-behavior-continues | 301→generic (original gone) |

*Note on 403s:* Sage, Wiley, Elgar and ACM return 403 to scripted HTTP clients while serving browsers normally. A 403 in this table means "publisher-gated, DOI verified as resolving," not "dead link." Abstracts for several of these were recovered independently via the Semantic Scholar Graph API by DOI and are quoted verbatim above.
