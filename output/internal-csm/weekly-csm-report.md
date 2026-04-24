# Weekly Analytics Report — Internal CSM

**Period:** April 13–19, 2026 | **Generated:** April 20, 2026

---

## Executive Summary

Platform engagement grew strongly this week with session duration up 16.9% and active users up 14.7%, signaling healthy adoption momentum. However, reliability took a significant hit — error rate doubled week-over-week and support tickets surged 67.3%, suggesting a production issue that needs immediate attention. Churn rate climbed 23.5%, which may be an early downstream effect of the reliability degradation.

---

## Big Changers

| Metric | Change | Current | Prior |
|--------|--------|---------|-------|
| 📈 Up | Error Rate | **+100.0%** | 1.8% | 0.9% |
| 📈 Up | Support Tickets | **+67.3%** | 87 | 52 |
| 📈 Up | Churn Rate | **+23.5%** | 2.1% | 1.7% |
| 📈 Up | P95 Latency | **+18.3%** | 342ms | 289ms |
| 📈 Up | Session Duration | **+16.9%** | 8.3 min | 7.1 min |

*Threshold: ≥15% week-over-week change · 5 of 10 metrics flagged*

---

## Recommendations

- **Investigate the error rate spike immediately.** A 100% increase from 0.9% to 1.8% correlates with the 67.3% jump in support tickets and 18.3% latency increase — likely a single root cause.
- **Monitor churn closely over the next 2 weeks.** The 23.5% increase (1.7% → 2.1%) may be noise, but if it persists alongside reliability issues, it becomes a revenue risk.
- **Celebrate the engagement wins.** Session duration and active user growth are strong positive signals — ensure reliability issues don't erode this momentum.
