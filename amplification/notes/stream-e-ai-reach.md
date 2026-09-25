# Stream E — 2025–2026 measurement of AI-generated content prevalence and reach

Research cut-off 25 September 2026. Defensive/analytic framing; no operational guidance.
Legend: **D**=demonstrated, **C**=claimed, **I**=inferred. Grades: A primary/official, B peer-reviewed,
C reputable news, D vendor/think-tank, E anonymous/unverified.

## 0. Bottom line

Prevalence is now measured in the tens of percent on several surfaces, but almost every large number comes
from a **vendor with a commercial interest in the finding** (NewsGuard, Kapwing, Pangram, Originality.ai) or
from a **detector-based classifier with no public benchmark**. Reach/engagement for *state-linked* AI content
is the opposite story: the best-documented 2025–26 cases report **small audiences**, and the one well-studied
2026 national election (Hungary) suggests AI campaigning **backfired**.

## 1. NewsGuard (for-profit vendor — grade D)

**AI Content Farm tracker [D/C, high confidence on the number itself].** https://www.newsguardtech.com/special-reports/ai-tracking-center
**3,749** "AI Content Farm" news/information websites spanning **16 languages**; page "last updated **June 23,
2026**". Stated criteria: evidence a substantial portion of content is AI-produced; strong evidence of
publication without significant human oversight (e.g. leaked chatbot error strings); presentation a reader
could mistake for human-written; no clear AI disclosure. **This is analyst judgement, not detector output.**
The tracker publishes **no per-site traffic figures** — so the widely repeated claim that these sites have very
low audiences is **not documented on the current tracker**. NewsGuard's historical audience work used
third-party panels (Similarweb; a NewsGuard/Comscore co-report is archived), which undercount app/in-app
traffic and small domains. **Confidence: low** on any current traffic figure; I could not verify a 2025–26 one.

**Storm-1516 (27 Feb 2026) [D, medium-high].** https://www.newsguardtech.com/special-reports/russian-influence-campaign-storm-1516-targets-france-germany
34 false claims targeting France/Germany since Jan 2025, advanced in **175,000 posts and articles**, drawing
**274 million views on X alone**; 2024 comparator: 12 claims. H2 2025: 18 claims / **147M views** vs H1 2025:
12 claims / 97M. Most viral single item (Macron/Epstein hoax, 4 Feb 2026): **38,000 X posts / 20.4M views**.
Method: narrative database + X view counts — impressions on posts repeating the claim, not unique reach.

**TikTok anti-Starmer deepfake network (9 Dec 2025) [D, high on counts].** https://www.newsguardtech.com/special-reports/tiktok-deepfakes-attack-uk-prime-minister-government
73 accounts, **~1 million followers combined**, **6,042** AI-audio deepfake videos since May 2025; **197 videos
in 1–8 Dec 2025 → 943,000 views**; some individual videos **>500,000 views**. On labelling: only **22%** of a
100-video sample carried an AI label, and **all** labels were creator-applied — none auto-applied by TikTok.

Also in the register: 2026 Iran-war tracker — **151 false claims**, "hundreds of millions of views"; Taiwan —
**294** phony Threads accounts; Hungary — **34** TikTok accounts posting AI content against Péter Magyar.
NewsGuard's own detector caveats: *"Leading AI Image Detection Tools Mislead Online Users, Often Declaring
Authentic Content Fake"*; *"AI Fools Itself"* — three leading chatbots failed to identify Sora videos in
**78–95%** of prompts.

## 2. Volume/prevalence — video (Kapwing, vendor — grade D)

TikTok "AI Slop Report" (21–22 Jun 2026; https://startupfortune.com/tiktoks-algorithm-is-surfacing-ai-slop-to-new-users-at-three-times-youtubes-rate-and-advertisers-should-be-paying-attention/):
**294 of the first 500 videos (59%)** served to a new TikTok account were AI-generated or AI compilations;
**10,742 videos across 20 categories**. YouTube Shorts comparator **~21%**; the earlier YouTube figure
(Guardian, 27 Dec 2025) was **104 of the first 500 recommendations (20.8%)**. Kids: **57%** of 2,000 videos;
**#CartoonKids 97/100**; #cartoons 83%; #babysong 83%; #forkids 79%. Limits are severe: manual classification,
no published codebook or inter-rater statistic, and Kapwing sells video-creation tooling. Independent coverage
also reports Shorts at **21% AI + 33% "brainrot"** (≈54% combined). **Direction: medium confidence; exact
percentages: low.**

## 3. Text platforms (Pangram, Originality.ai — grade D)

Pangram Labs, 9 Jul 2026 (https://ppc.land/linkedin-carries-62-of-flagged-ai-content-pangram-data-shows/):
**1,002,627 posts**, five platforms, opt-in Chrome-extension panel, posts <50 words excluded. Mean AI rate
**13.8%**; **LinkedIn = 62% of all flagged AI content while ~1/3 of items scanned**; **>40%** of longform
LinkedIn posts fully AI; all longform **25.72%**; X articles **23.9% fully + 22.9% mixed**; Substack longform
21.9% combined; Reddit **4.4%** (replies 98.1% human). Pangram's **0.01% false-positive rate** is its own
unpublished benchmark. Originality.ai (Jan 2026): **53.7%** of longform LinkedIn posts "likely AI" (n=3,368
posts, 99 profiles) — different model and sample, so **not comparable**. **Magnitude: low–medium; direction
(LinkedIn ≫ others): medium.**

## 4. Academic prevalence studies (grade B)

- **HKS Misinformation Review, Corsi/Marino/Wong, 3 Jun 2024** (https://misinforeview.hks.harvard.edu/article/the-spread-of-synthetic-media-on-x/):
  **556** unique tweets with synthetic media, **1.5 billion views** Dec 2022–Sep 2023; prevalence stabilised at
  **~0.2% of Community Notes**; 59.3% non-political; 76.4% images; **58.2% of videos political**; 57% of
  sharers verified. **This 0.2% is a floor, not a prevalence estimate** — it is a keyword search over voluntary
  Community Notes, so non-flagged synthetic content is invisible by construction.
- **HKS, DiResta/Goldstein et al., 15 Aug 2024** (https://misinforeview.hks.harvard.edu/article/how-spammers-and-scammers-leverage-ai-generated-images-on-facebook-for-audience-growth/):
  125 Facebook Pages posting ≥50 AI images each; **mean 146,681 followers, median 81,000**; "hundreds of
  millions of exposures"; **one unlabeled AI image was among Facebook's top-20 most-viewed posts of Q3 2023
  (40 million views, 1.9 million interactions)**; algorithm-recommended "unconnected" content rose from **8%
  (Q2 2021) to 24% (Q3 2023) of Feed views**. CrowdTangle-based, non-random sample.
- **Knight First Amendment Institute, Jul 2025** (*Don't Panic (Yet)*) and **Brennan Center, Aug 2026** (*Does
  AI Fight or Fuel Election Disinformation?*) are sceptical syntheses — useful as counterweight, not numbers.
- **Unverified:** an aggregator claim that >50% of new internet articles are AI-written (Binghamton University
  news release, 13 Jan 2026) traces to vendor SEO sampling; do not use as prevalence.

## 5. Platform-reported figures (grade A for the policy, low for meaning)

- **TikTok: >1.3 billion AI-generated videos labelled by Nov 2025**, plus invisible watermarks and feed
  controls (reported by The Guardian, Nov 2025; **URL not verifiable here — confidence medium**). Contrast
  NewsGuard: only **22%** of one deepfake sample was labelled. Label counts measure *labelling uptake on
  platform-tooled content*, not prevalence, and C2PA metadata is strippable.
- **YouTube, 27 May 2026** — automatic AI labels for realistic AI video even without creator disclosure
  (https://blog.youtube/). **Meta** signed the EU AI Act transparency Code of Practice (28 Jul 2026), expanded
  AI ad-disclosure tags (Jul 2026), limited undisclosed AI profiles on Instagram (31 Aug 2026); Instagram AI
  labels were reported malfunctioning in Sep 2026. **EU AI Act Art. 50** transparency duties took effect
  **2 Aug 2026** (Dec 2026 deadline for pre-existing systems). No platform publishes a prevalence percentage.

## 6. Reach of state-linked LLM-run accounts (grade A primary, but reach numbers thin)

- **OpenAI, 25 Aug 2026** (https://openai.com/index/disrupting-a-new-covert-influence-campaign-from-russia/;
  primary site blocked → read via https://thehackernews.com/2026/08/openai-bans-russian-chatgpt-accounts.html).
  Banned a Russian cluster promoting the "International Burke Institute"; OpenAI assesses the campaign reached
  **"relatively small audiences," with Telegram channels at ~10,000–20,000 followers each**. Explicitly framed:
  AI was a *supporting* tool to manufacture institutional authority — "the significance of the operation lies
  less in the audience it reached… than in the infrastructure it had built." **This is the single most
  useful reach datum in the stream, and it is small.**
- **Anthropic, 10 Sep 2026** (https://www.anthropic.com/news/…; primary 404/blocked → read via
  https://fintechnews.sg/117000/ai/threat-actors-use-claude/). Influence operations originating in Russia, Iran,
  Turkey, the Gulf, South Asia, Africa and Europe, targeting six continents; actors include governments,
  state-aligned propaganda institutions and **influence-for-hire firms**. Election-timed cases: Russian state
  media fabricating claims about Moldova's president before the Sep 2025 vote; a **pro-government Kenyan
  operator preparing fake grassroots posts ahead of Kenya's 2027 general election**. **No reach or engagement
  figures are published** in the public reporting I could verify. **Confidence: high on existence, none on reach.**
- Adjacent: Citizen Lab, *BlackCore's Influence Operations for Hire*, 17 Sep 2026; OpenAI "Data Center
  Bandwagon" (1 Jun 2026, US-targeted).

## 7. 2026 national-election effect — Hungary (grade C)

Global Voices/Lakmusz, 15 May 2026 (https://globalvoices.org/2026/05/15/why-were-russian-disinformation-government-propaganda-and-ai-generated-campaigning-ineffective-in-hungarian-elections-2026/)
— interviews with Ágnes Urbán (Mérték Media Monitor) and Péter Krekó (Political Capital). **D/C, medium.**
Fidesz's AI-generated war/attack videos went viral, but Urbán: Fidesz "started using AI too early and in too
cheap a way" and users "strongly objected to being fed this type of content"; Krekó: "the majority of voters
encountered AI-generated content and disapproved of its use quite strongly," making it a source of the
government's credibility crisis. Magyar's most popular posts drew **at least 2× the interactions** of Orbán's.
Meta and Google's ban on political ads (from autumn 2025) removed the paid amplification layer. **This is the
strongest 2026 election-reach evidence and it points to backlash, not persuasion.**

## 8. Explicit evidence gaps

1. No panel-independent estimate of **audience/reach** for AI content-farm sites in 2026.
2. Every large prevalence percentage (59%, 40%, 25.7%, 13.8%) comes from **vendor classifiers or manual review
   with undisclosed error rates**; the one peer-reviewed X figure (~0.2%) is a biased-sample floor.
3. Definitions are incompatible — "AI-generated" vs "AI-assisted" vs "low-quality" vs "brainrot" (Kapwing's
   21%+33% split shows how far the number moves with the definition).
4. Detector error runs both ways: NewsGuard found leading image detectors often call **authentic content fake**;
   Pangram's 0.01% FPR is unaudited.
5. **Not verified:** NBC News, "Some of the largest online propaganda campaigns are using 'AI slop'" (19 Nov
   2025) — page not-found/blocked, so the underlying Graphika/Alethea/Recorded Future report and its numbers
   remain **unretrieved; confidence low**. Any such figure should be treated as unverified until sourced.
6. Guardian URLs cited via secondary coverage (Kapwing/YouTube; TikTok 1.3bn labels) were not retrievable here.
