# Delivery Receipt

| Field | Value |
|-------|-------|
| **Customer** | Acme Corp — Analytics Consumer |
| **Customer ID** | external-customer-a |
| **Channel** | email |
| **Recipients** | analytics-team@acmecorp.com |
| **Subject** | Weekly Analytics Report — April 13–19, 2026 |
| **Format** | HTML (Acme Corp theme) |
| **Delivered At** | 2026-04-20T09:00:00Z |
| **Schedule** | Weekly, Monday 9am ET |

## Delivery Summary

Acme Corp branded HTML report generated and emailed. Full metrics table, 7 big changers (≥10% threshold) sorted by magnitude, category breakdown, and raw data export link. Dark corporate header, striped data tables, red accent borders, monospace deltas.

## Pipeline Stages Completed

1. ✅ **data-wrangler** — Ingested 10 metrics, computed deltas
2. ✅ **report-stylist** — Applied external-customer-a spec: technical tone, 10% threshold, Acme Corp HTML theme
3. ✅ **delivery-runner** — Emailed to analytics-team@acmecorp.com, confirmed delivery
