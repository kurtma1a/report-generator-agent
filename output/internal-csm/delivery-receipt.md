# Delivery Receipt

| Field | Value |
|-------|-------|
| **Customer** | BFC Software — Internal Customer Success Manager |
| **Customer ID** | internal-csm |
| **Channel** | static-file |
| **File Written** | `output/internal-csm/weekly-csm-report.md` |
| **Format** | Markdown |
| **Delivered At** | 2026-04-20T08:01:23Z |
| **Schedule** | Weekly, Monday morning |
| **Recipients** | Internal CSM team |

## Delivery Summary

Report generated and written to static file as specified. The executive summary contains 5 big changers (≥15% threshold) with 3 actionable recommendations. Report length: ~350 words (within 1-page target).

## Pipeline Stages Completed

1. ✅ **data-wrangler** — Ingested 10 metrics, computed deltas, flagged 7 big changers (at 10% base threshold)
2. ✅ **report-stylist** — Applied internal-csm spec: executive tone, 15% threshold (5 big changers), markdown format
3. ✅ **delivery-runner** — Wrote to static file, confirmed delivery
