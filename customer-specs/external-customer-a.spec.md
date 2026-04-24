# Customer Spec: External Customer A

## Identity
- customer_id: external-customer-a
- customer_name: Acme Corp — Analytics Consumer

## Report Format
- format: html
- output_filename: weekly-acme-report.html

## Tone
- style: technical
- voice: detailed, data-driven, neutral
- max_length: no limit

## Visual Theme: Acme Corp
- primary_color: #111111 (black)
- accent_color: #e60000 (red)
- secondary_color: #333333
- background: #f5f5f5
- card_background: white with left border (4px solid #e60000)
- header: solid black (#111111) with white text, Acme Corp logo placeholder, no emoji
- font: 'Inter', 'Helvetica Neue', Arial, sans-serif
- table_style: striped rows, black header row (#111111 with white text), tight padding
- big_changer_cards: sharp corners (2px), red accent border, bold monospace delta in red
- positive_icon: ▲ (simple triangle)
- negative_icon: ▼ (simple triangle)
- footer: "Acme Corp Analytics · Confidential" in small gray text

## Sections
Include these sections in this order:
1. **Weekly Snapshot** — full metrics table with current value, prior value, and % change
2. **Big Changers** — metrics that moved more than 10% week-over-week, sorted by magnitude
3. **Category Breakdown** — per-category subtotals with directional indicators
4. **Raw Data Link** — link to the full dataset export

Exclude:
- Recommendations (customer does their own analysis)
- Executive summary

## Highlight Rules
- threshold: 10% week-over-week change
- direction: both
- label_positive: "▲"
- label_negative: "▼"
- label_flat: "—"

## Delivery
- channel: email
- recipients: analytics-team@acmecorp.com
- schedule: weekly, Monday 9am ET
- subject_line: "Weekly Analytics Report — {{period}}"
