# AI, Autonomy and the Economics of Violence

An evidence-led, open-source threat assessment asking whether current AI and robotics
developments are reducing the practical barriers to autonomous or semi-autonomous attacks
inside NATO societies.

**Research cut-off: 25 September 2026.**

## Headline deliverable

| File | Contents |
|---|---|
| `AI-Autonomy-Threat-Assessment-2026.md` | Main report (~20,000 words): four-level analytic framework, five shifts 2023–2026, established evidence, emerging signals, speculative pathways, threat landscape with tripwire indicators, counterarguments, NATO/EU and Dutch implications, conclusions, three appendices |
| `sources-bibliography.md` | Consolidated source register with URLs, evidence grades, confidence ratings, a flagged weak-evidence list and stated research gaps |

## Process analysis

This repository is the **substantive research artefact**. A separate repository
analyses how the recursive DSH research process actually behaved:

- [`leonvanbokhorst/deep-research-log-analysis`](https://github.com/leonvanbokhorst/deep-research-log-analysis)

The process study treats this research as frozen at commit
[`33ca23b474a11b5ee90563a9f59ed002de485abd`](https://github.com/leonvanbokhorst/deep-research/commit/33ca23b474a11b5ee90563a9f59ed002de485abd).
It reconstructs the 153-session DSH execution trace rooted at
`session-92c9e38d-5c41-403b-8bd0-52dc0ac5c357`.

For provenance, the root session file has SHA-256
`1a9de4e9cc3efd43feb5eaddc78ce2894fa381e44d20541ece511233c9bf037d`;
the complete export is pinned by 153 per-file SHA-256 digests in the analysis
repo's [`analysis/data/manifest.json`](https://github.com/leonvanbokhorst/deep-research-log-analysis/blob/main/analysis/data/manifest.json).

The separation is intentional: **this repo records what the agents concluded; the
analysis repo asks what the agents actually did while getting there.**

## Supporting strand briefs

Eight parallel research strands, each retaining per-claim source quality and confidence:

- `russia-ukraine-drone-autonomy-brief.md` — battlefield autonomy, terminal guidance, fibre-optic FPV, UGVs/USVs
- `ai-targeting-loitering-munitions-brief.md` — Gaza AI targeting, Hamas/Hezbollah/Houthi drones, the Kargu-2 claim, the loitering-munition market
- `findings/generic_enablers_brief.md` — GNSS-denied navigation, edge-AI cost curve, open-source stacks, datasets
- `swarm-audit-brief.md` — sceptical audit of drone-swarm claims
- `criminal-misuse-brief.md` — documented criminal, terrorist and state-proxy misuse; the central negative finding on autonomy
- `drone-ai-threat-brief.md` — institutional evidence base: Europol, Commission, EPRS, NATO, UK, Germany, Netherlands
- `defender-economics-brief.md` — attacker/interceptor costs, exchange ratios, civilian-site protection costs
- `ai-planning-uplift-brief.md` — the AI "uplift" literature with effect sizes, and countervailing evidence

## Evidence handling

Every significant claim is graded **A** (primary/official) through **E** (vendor, advocacy,
anonymous) and carries a confidence rating. The report deliberately separates:

1. **Technical possibility** — demonstrated under military or experimental conditions
2. **Accessibility** — obtainable by non-state actors without state resources
3. **Operational plausibility** — realistic combination into something reliable
4. **Demonstrated misuse** — credible evidence of attempted or successful use

It also records what **failed verification**, including several widely repeated incidents.

## Scope note

This is defensive threat research. It describes capability, cost, availability and barriers
at the level needed to understand risk. It contains **no** weapon construction, payload
design, targeting procedures, software implementation, exploitation or evasion guidance.

## Method limitations

The primary web-search facility failed repeatedly during the research window; discovery fell
back to news-RSS search, publisher site search, sitemaps and direct document retrieval. This
biases coverage toward English-language and easily indexed sources. Paywalled investigative
journalism and non-English primary material are the main recall gaps. See Appendix C of the
main report for the full statement.
