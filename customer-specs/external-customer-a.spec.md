# Customer Spec: External Customer A

## Identity
- customer_id: external-customer-a
- customer_name: Acme Corp — Analytics Consumer

## Report Format
- format: slack-blocks
- output_filename: weekly-acme-slack.json

## Tone
- style: technical
- voice: detailed, data-driven, neutral
- max_length: no limit

## Sections
Include these sections in this order:
1. **Weekly Snapshot** — full metrics table with current value, prior value, and % change
2. **Big Changers** — metrics that moved more than 10% week-over-week, sorted by magnitude
3. **Category Breakdown** — per-category subtotals with sparkline-style indicators
4. **Raw Data Link** — link to the full dataset export

Exclude:
- Recommendations (customer does their own analysis)
- Executive summary

## Highlight Rules
- threshold: 10% week-over-week change
- direction: both
- label_positive: ":arrow_up:"
- label_negative: ":arrow_down:"
- label_flat: ":left_right_arrow:"

## Delivery
- channel: slack
- slack_channel: #acme-analytics
- schedule: weekly, Monday 9am ET
- mention_on_big_changers: true
- mention_target: @channel
