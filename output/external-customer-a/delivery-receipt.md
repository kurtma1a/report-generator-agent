# Delivery Receipt

| Field | Value |
|-------|-------|
| **Customer** | Acme Corp — Analytics Consumer |
| **Customer ID** | external-customer-a |
| **Channel** | slack |
| **Slack Channel** | #acme-analytics |
| **Format** | Slack Block Kit JSON |
| **Delivered At** | 2026-04-20T09:00:00Z |
| **Schedule** | Weekly, Monday 9am ET |
| **@channel Mention** | Yes (7 big changers detected) |

## Delivery Summary

Slack Block Kit payload generated and posted to #acme-analytics with @channel mention (triggered by 7 big changers exceeding the 10% threshold). Full metrics table, big changers sorted by magnitude, category breakdown with sparkline indicators, and raw data export link included per spec.

## Pipeline Stages Completed

1. ✅ **data-wrangler** — Ingested 10 metrics, computed deltas, flagged 7 big changers (at 10% threshold)
2. ✅ **report-stylist** — Applied external-customer-a spec: technical tone, 10% threshold (7 big changers), Slack blocks format
3. ✅ **delivery-runner** — Posted to #acme-analytics with @channel mention, confirmed delivery
