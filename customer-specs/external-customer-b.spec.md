# Customer Spec: External Customer B

## Identity
- customer_id: external-customer-b
- customer_name: Unicorn Startup — VP of Engineering

## Report Format
- format: html
- output_filename: weekly-globex-report.html

## Tone
- style: executive
- voice: brief, visual, action-oriented
- max_length: 500 words

## Visual Theme: Unicorn
- primary_gradient: linear-gradient(135deg, #667eea, #764ba2)
- accent_color: #f093fb (pink)
- background: #faf5ff (light lavender)
- card_background: #f3e8ff with rounded corners (12px)
- header: gradient background with white text, include ✨ sparkle emoji in title
- font: -apple-system, BlinkMacSystemFont, 'Segoe UI', sans-serif
- big_changer_cards: rounded (12px), light purple background, bold delta in accent pink
- positive_icon: 🦄
- negative_icon: 🌧️
- footer: "Powered by BFC Analytics ✨" in muted purple

## Sections
Include these sections in this order:
1. **TL;DR** — 2-sentence summary with the single most important metric
2. **Big Changers** — metrics that moved more than 20% week-over-week, sorted by magnitude
3. **What We're Doing About It** — 2-3 bullet points on remediation steps

Exclude:
- Full metrics table
- Category breakdowns
- Raw data links

## Highlight Rules
- threshold: 20% week-over-week change
- direction: both (increases and decreases)
- label_positive: "🦄"
- label_negative: "🌧️"

## Delivery
- channel: email
- recipients: vp-eng@globex.com, cto@globex.com
- schedule: weekly, Monday 8am CT
- subject_line: "✨ Weekly Analytics Pulse — {{period}}"
