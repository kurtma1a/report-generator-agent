# Customer Spec: Demo Customer

## Identity
- customer_id: demo-customer
- customer_name: Greenleaf Industries — Operations Team

## Report Format
- format: html
- output_filename: weekly-greenleaf-report.html

## Tone
- style: executive
- voice: clear, concise, action-oriented
- max_length: 600 words

## Visual Theme: Greenleaf
- primary_color: #1a5632 (forest green)
- accent_color: #2ecc71 (emerald green)
- secondary_color: #27ae60
- background: #f0faf4
- card_background: white with left border (4px solid #2ecc71)
- header: solid forest green (#1a5632) with white text, "Greenleaf Industries" branding
- font: 'Segoe UI', Roboto, Arial, sans-serif
- table_style: striped rows, green header row (#1a5632 with white text), comfortable padding
- big_changer_cards: rounded (8px), white background, green left-border for positive, orange left-border for negative, bold delta
- positive_icon: ✅
- negative_icon: ⚠️
- footer: "Greenleaf Industries · Weekly Analytics" in muted gray

## Metrics Filter
Only include these metrics in all sections:
- New Signups
- Active Users
- Churn Rate (%)

## Sections
Include these sections in this order:
1. **Executive Summary** — 3-sentence overview of the week's performance
2. **Big Changers** — metrics that moved more than 5% week-over-week, sorted by magnitude
3. **Full Metrics Table** — all metrics with current value, prior value, and % change
4. **Recommendations** — 2-3 bullet points on areas to watch

Exclude:
- Category breakdowns
- Raw data links

## Highlight Rules
- threshold: 5% week-over-week change
- direction: both
- label_positive: "✅ Up"
- label_negative: "⚠️ Down"
- label_flat: "—"

## Delivery
- channel: email
- recipients: ops-team@greenleaf.io, analytics@greenleaf.io
- schedule: weekly, Monday 8am ET
- subject_line: "Weekly Analytics Report — {{period}}"
