# Customer Spec: Internal CSM

## Identity
- customer_id: internal-csm
- customer_name: BFC Software — Internal Customer Success Manager

## Report Format
- format: markdown
- output_filename: weekly-csm-report.md

## Tone
- style: executive
- voice: concise, high-level, action-oriented
- max_length: 1 page (roughly 400 words)

## Sections
Include these sections in this order:
1. **Executive Summary** — 3-sentence overview of the week
2. **Big Changers** — only metrics that moved more than 15% week-over-week
3. **Recommendations** — 2-3 bullet points on what to watch or act on

Exclude:
- Raw data tables
- Detailed breakdowns by sub-category
- Historical trend charts

## Highlight Rules
- threshold: 15% week-over-week change
- direction: both (increases and decreases)
- label_positive: "📈 Up"
- label_negative: "📉 Down"

## Delivery
- channel: static-file
- schedule: weekly, Monday morning
- recipients: internal CSM team
