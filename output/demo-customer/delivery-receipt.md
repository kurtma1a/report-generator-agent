# Delivery Receipt

- **Customer Name:** Greenleaf Industries — Operations Team
- **Customer ID:** demo-customer
- **Channel:** email
- **Format:** html
- **Timestamp:** 2026-04-27T10:53:13Z
- **Schedule:** weekly, Monday 8am ET
- **Recipients:** ops-team@greenleaf.io, analytics@greenleaf.io
- **Subject Line:** Weekly Analytics Report — 2026-04-13 to 2026-04-19

## Pipeline Summary

| Stage | Status | Output |
|---|---|---|
| Data Wrangler | ✅ Complete | `output/demo-customer/wrangled-data.json` |
| Report Stylist | ✅ Complete | `output/demo-customer/weekly-greenleaf-report.html` |
| Delivery Runner | ✅ Complete | This receipt |

**Metrics filter applied:** New Signups, Active Users, Churn Rate (%)
**Big changers (≥5% threshold):** 3 of 3 filtered metrics
**Report sections:** Executive Summary, Big Changers, Full Metrics Table, Recommendations
