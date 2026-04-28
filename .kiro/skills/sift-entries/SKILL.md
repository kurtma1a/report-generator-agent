---
name: sift-entries
description: Guide for writing and submitting SIFT (Sales Inputs & Field Trends) entries in AWSentral. Use when drafting SIFT insights, preparing MBR entries, writing field insights, or needing help with SIFT templates, tags, and best practices.
---

# SIFT Entry Submission SOP

Standard Operating Procedure for writing and submitting high-quality SIFT (Sales Inputs & Field Trends) entries for ES-NAMER TAMs.

## What is SIFT?

SIFT is an AI-enhanced platform within AWSentral that captures field insights from customer engagements. It replaces Marshal and feeds into Monthly Business Reviews (MBRs), leadership visibility, and the Tech Awards program.

- **Access SIFT**: https://aws-crm.lightning.force.com/lightning/n/Sales_Insights_Field_Trends
- **Field Insight Narrative**: https://aws-crm.lightning.force.com/lightning/n/Field_Insight_Narrative
- **Slack**: #awsentral-sift

## Pre-Draft Checklist (MANDATORY)

Before writing any SIFT entry, the following questions MUST be answered. Do NOT draft until all are confirmed.

### Verify the Facts

1. **What did the TAM actually do?** — Attended a meeting? Led a discussion? Built a solution? Do not assume from file contents.
2. **Who authored the supporting documents?** — Did the TAM write them, or were they AI-generated, sourced from a colleague, or pulled from a service team? Check file metadata (author, "Prepared by" fields).
3. **What is the current status?** — Is this deployed, in testing, proposed, or still under investigation? Do not write completed outcomes for in-progress work.
4. **Has anything been delivered to the customer?** — Documents on disk are not the same as documents shared with the customer.

### Validate the Technical Claims

5. **Do the proposed solutions actually apply to this customer's setup?** — Check AWS documentation to confirm. Example: ACM EventBridge events only fire for certificates ACM knows about, not for certs issued directly via Private CA API.
6. **Are the metrics accurate and verifiable?** — Verify cost figures, percentages, and timelines against source material. If a metric cannot be verified (e.g., number of CAs the customer runs), either omit it or state it as conditional ("per CA"). Do not present unverified numbers as total impact. When in doubt, describe the scale qualitatively ("thousands of microservice client certificates") rather than fabricating a dollar figure.

### Gather Missing Context

7. **What is the customer's response?** — Are they receptive, pushing back, or undecided? What blockers exist?
8. **Are there next steps or open items?** — What happens after this entry? Who owns what? If work is in progress, state the next concrete action (e.g., "The TAM will present the solution upon completing validation"). Do not leave Results as only a status update. Even for in-progress work, include what happens next.

### Apply Standards

9. **Write in 3rd person** — "The TAM identified..." not "I identified..."
10. **Apply Amazonian writing style** — Active voice, no weasel words, specific metrics, front-loaded information. Invoke the amazon-writing skill.
11. **Stay under 300 words** — Bias for brevity.
12. **Use SAR format** — Situation, Actions, Results. Results must reflect actual outcomes, not aspirational ones.

## Writing Standards

All SIFT entries MUST follow Amazon's writing excellence standards. For comprehensive guidance on narrative structure, weasel word elimination, data presentation, and document formatting, invoke the **amazon-writing** skill. Key Amazon writing principles that apply directly to SIFT entries:

- **Eliminate weasel words** — replace vague language with specific metrics and commitments
- **Use active voice** — clarify who did what
- **Be data-driven** — support claims with specific numbers, not qualitative statements
- **Front-load important information** — lead with the key insight, not the backstory
- **SCQA framework** — Situation, Complication, Question, Answer for structuring observations

Run `check-weasel-words.sh` (from the amazon-writing skill) against your draft before submitting.

## Writing Format: SAR Method

All SIFT entries use the **Situation, Actions, Results (SAR)** format. Target **200 words or less**, with a hard ceiling of **300 words**.

### Structure

1. **Situation**: State the fact. What happened or is happening? Quantify where possible.
2. **Actions**: Describe the TAM's specific actions taken. Name owners. Actions must be in progress or completed, not aspirational.
3. **Results**: Quantify the outcome. Use dollar values, percentages, time saved, or customer impact metrics.

### Alternative Framework (UKGi/Revenue Commentary)

For revenue-focused entries, use **Situation, Impact, Fix, Timeline (SIFT)**:

| Element  | Purpose |
|----------|---------|
| Situation | State the fact with quantification |
| Impact | Quantify revenue or business consequence ($, %, customer counts) |
| Fix | Describe action taken or underway with named owner |
| Timeline | Specific date or date range for resolution |

## Manager's Style Requirements

These are mandatory for all entries:

1. **Write in 3rd person** — "The TAM identified..." not "I identified..." When Payment LT reads "I did this", it loses ownership detail.
2. **Tag entries per this guide** — see Tags section below.
3. **Bias for brevity** — entries will be boiled down further up the chain. Target under 300 words total.

## Writing Best Practices

### Do

- Use **active voice** and write in **3rd person**
- Be **quantitative**: include specific metrics, dollar amounts, percentages
- Use **$K** for thousands, **$MM** for millions, **$B** for billions
- Include **trends over time** (MoM / YoY / QoQ) where relevant
- Spell out numbers under 10, use numerals for 10 and above
- Provide **context for metrics** (vs. plan, vs. prior periods)
- **Bold customer names** in the entry
- Include **customer quotes or anecdotes** in quotation marks
- Write for a **managerial audience** — no unknown abbreviations, no nitty-gritty details
- Write out all acronyms the first time they are used

### Don't

- Use weasel words: "about", "almost", "generally", "significant", "soon", "many", "several"
- Use uncertain verbs: "aim to", "believe", "hope", "may", "might", "should", "try"
- Use vague descriptors: "aligned", "dramatic", "easy", "effective", "seamless", "streamline"
- Use "I" or "we" — always 3rd person
- Write diary-style entries of all activities — these are **insights**, not activity logs
- Reference customer people by name — use their role/title instead
- Exceed 300 words

### Weasel Word Replacements

| Instead of | Write |
|-----------|-------|
| "We will launch soon" | "The team will launch on October 15, 2025" |
| "Performance significantly improved" | "Response time decreased from 300ms to 120ms" |
| "Many users reported issues" | "42 users reported login failures between 2-4pm" |
| "The TAM helped reduce costs" | "The TAM identified $1.2MM in annual savings through Reserved Instance optimization" |

## Templates

Search "ES-NAMER" in SIFT's Insight Templates tab. Set your most-used template as default.

| Template | When to Use |
|----------|-------------|
| **ES-NAMER-Customer** | Customer impact stories — highlights, lowlights, cost optimization, tech solutions, churn/attrition risk |
| **ES-NAMER-Countdown** | Completed Countdown/IEM events. Do NOT submit if part of a larger IEM |
| **ES-NAMER-Individual-Tech Excellence** | Published external content: GitHub, AWS Solutions, Case Studies, blog posts, re:Invent talks |
| **ES-NAMER-Internal Business Contribution** | Internal contributions at Local/Area/Global level |
| **ES-NAMER-People/DEI** | Diversity, inclusion, and employee-obsessed culture stories |
| **ES-NAMER-Risk/Issue/Challenge** | Internal risks/issues/challenges (not customer churn — use Customer template for that) |

## Insight Tags

Add the appropriate tag under "Custom Tags" when using the **ES-NAMER-Customer** template:

| Tag | Description |
|-----|-------------|
| `cost optimization` | TAM contributions leading to cost savings or reinvestment |
| `efficiency` | Architectural improvements to existing workloads |
| `tech solution` | Deep-dive into customer workload problems with cross-team solutions |
| `tech contribution` | Published white papers, blog posts, or internal artifacts (include URL) |
| `customer health` | Customer health success stories |
| `ops excellence` | Strategy and architectural changes improving operations/reliability/resiliency |
| `tech solution ai` | AI/ML service solutions (Bedrock, SageMaker, Amazon Q, etc.) |
| `amazon q` | Outstanding Amazon Q customer engagements |
| `churn` | Customer churn or risk of attrition |
| `retain_grow the business` | Customer extending contract or signing new ES deal |

**Note**: Insight Tags feed into the Tech Awards program and other reporting mechanisms.

## Required Tags (Every Entry)

Every submitted entry MUST have these custom tags:

1. **`es-namer-submitted`** — confirms the insight is no longer in draft status
2. **Segment-specific tag** — based on your customer alignment:

| Segment | Tags |
|---------|------|
| ENT | `ent-acs`, `ent-admk`, `ent-csc`, `ent-ecrtl`, `ent-energy`, `ent-ht`, `ent-t&h`, `ent-fmp`, `ent-swim` |
| S2HF | `S2HF-SMB`, `S2HF-SUP`, `S2HF-AMS`, `S2HF-HOU`, `S2HF-FAI` |
| UOps | `uops-highlight`, `uops-lowlight`, `uops-ric`, `security-ir` |
| HCLS | See HCLS-specific tags (ES-WWPS-HCLS-*) |
| AUTO-MFG | `automfg territory insights` |

**Note**: All tags are lowercase in SIFT.

## Insight Categories

Each entry falls into one of these categories:

| Category | When to Use |
|----------|-------------|
| **Highlight** | Positive outcome: deal launched ahead of schedule, new logo, territory exceeded plan |
| **Lowlight** | Negative outcome that already occurred: revenue missed, deal lost, target not met |
| **Risk** | Identified problem without quantifiable data yet; action required to assess and mitigate |
| **Blocker** | Quantifiable problem needing senior leadership help; seller cannot unblock alone |
| **Challenge** | Problem within seller's control; must include action plan and timeline |
| **Observation** | Trends and insights spanning 3+ customers/partners (Top Observation) |
| **Health of the Business** | General business health indicators |

## Weekly Cadence

| When | Who | Action |
|------|-----|--------|
| Throughout the week | TAM | Create and draft insights |
| **EOD Wednesday** | TAM | Submit all insights (add `es-namer-submitted` tag) |
| **EOD Friday** | ESM | Review and promote insights (add `es-namer-esm-reviewed` or promotion tags) |
| Following Monday | Area Leader | Recognize "Insight of the Week" |

## Step-by-Step Submission

1. Navigate to SIFT → click "Add Field Insight"
2. Select your ES-NAMER template (or use your default)
3. For customer insights, search and select the customer in the "Account" field
4. Write your insight in "Your field input" using SAR format (200 words or less, 3rd person)
5. Include customer quotes/anecdotes in quotation marks
6. Click "Generate Insight" — SIFT AI will format and suggest improvements
7. **Review and edit all AI-generated fields** (click pencil icon next to each box)
8. Add Custom Tags:
   - Appropriate Insight Tag (e.g., `cost optimization`, `tech solution`)
   - `es-namer-submitted`
   - Your segment-specific tag
9. Add your manager's alias and contributor aliases
10. Click "Submit"
11. If you added collaborators, add a Comment tagging them so they get notified

## Quality Scoring (What Makes a Great Entry)

Entries are scored on these factors (out of 17 points):

| Factor | Points |
|--------|--------|
| Has measurable result ($$, %, time saved) | +3 |
| Has customer quote or anecdote | +3 |
| Involves P1/P2 or escalation | +2 |
| Cross-functional (TAM + SA/AM/CSE) | +2 |
| Aligns with Tech Awards tags | +2 |
| Multiple evidence sources (case + email + meeting) | +2 |
| Proactive (TAM-initiated, not reactive) | +1 |
| Recent (last 7 days) | +1 |

## Resources

- **ES NAMER SIFT User Guide**: https://w.amazon.com/bin/view/AWS/Teams/TAM/NAMER/SIFT/UserGuide/
- **SIFT Best Practices (HCLS)**: https://w.amazon.com/bin/view/WWSO-AWS-Industries/Verticals/HCLS/2x2/
- **UKGi SIFT Commentary**: https://w.amazon.com/bin/view/UKGi-Ops/References/SIFTCommentary/
- **TAM Business Reporting**: https://w.amazon.com/bin/view/AWS/Teams/TAM/BusinessReporting/About/
- **Write-A-Lot Training**: https://w.amazon.com/bin/view/AWS/Teams/TAM/Write-A-Lot/
- **Slack**: #awsentral-sift
- **SIFT Broadcast Channel**: https://broadcast.amazon.com/channels/96153
