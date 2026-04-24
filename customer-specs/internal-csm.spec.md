# Customer Spec: Internal CSM

## Identity
- customer_id: internal-csm
- customer_name: BFC Software — Internal Customer Success Manager

## Report Format
- format: html
- output_filename: weekly-csm-report.html

## Tone
- style: executive
- voice: concise, high-level, action-oriented
- max_length: 1 page (roughly 400 words)

## Visual Theme: BFC Software
- primary_color: #1b2a4a (dark navy)
- accent_color: #2ecc71 (green — food operations brand)
- warning_color: #e74c3c (red for negative changers)
- background: #f5f6f8
- card_background: white with left border (4px solid #2ecc71)
- header: solid dark navy (#1b2a4a) with white text, "BFC Analytics" branding
- font: -apple-system, BlinkMacSystemFont, 'Segoe UI', sans-serif
- big_changer_cards: clean white cards, green left-border for positive, red left-border for negative, bold delta
- positive_icon: ▲
- negative_icon: ▼
- footer: "BFC Analytics · Internal Report" in muted gray

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
- label_positive: "▲ Up"
- label_negative: "▼ Down"

## Delivery
- channel: static-file
- schedule: weekly, Monday morning
- recipients: internal CSM team
