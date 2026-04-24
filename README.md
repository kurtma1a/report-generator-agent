# Custom Agent Demo: Spec-Driven Report Generation

## What This Demonstrates

Same data in, different reports out — controlled entirely by customer spec files, not by building separate agents per customer.

This demo shows how Kiro's custom agent architecture lets BFC Software's analytics team serve multiple stakeholders (internal CSM, external customers) from a single data pipeline by swapping a spec file instead of rewriting code.

## Architecture

```
┌─────────────────┐     ┌──────────────────────────────┐     ┌──────────────────┐
│  Data Wrangler   │────▶│  Report Stylist               │────▶│  Delivery Runner  │
│  (shared agent)  │     │  + customer spec file          │     │  (shared agent)   │
│                  │     │                                │     │                   │
│  Ingests raw     │     │  Formats output per spec:      │     │  Routes to:       │
│  data, computes  │     │  - tone (exec vs technical)    │     │  - Slack          │
│  week-over-week  │     │  - sections (include/exclude)  │     │  - Email          │
│  deltas          │     │  - thresholds (15% vs 10%)     │     │  - Static file    │
└─────────────────┘     │  - format (md, slack, email)   │     └──────────────────┘
                         └──────────────────────────────┘
                                      ▲
                                      │
                         ┌────────────┴────────────┐
                         │    Customer Spec Files    │
                         │                           │
                         │  internal-csm.spec.md     │
                         │  external-customer-a.spec │
                         │  (add more here)          │
                         └───────────────────────────┘
```

## File Structure

```
demo/
├── agents/
│   ├── data-wrangler.agent-spec.json      # Upstream: data ingestion + delta computation
│   ├── report-stylist.agent-spec.json     # Middle: applies customer spec to format output
│   └── delivery-runner.agent-spec.json    # Downstream: routes to Slack, email, or file
├── customer-specs/
│   ├── internal-csm.spec.md               # 1-page executive summary, 15% threshold
│   └── external-customer-a.spec.md        # Full Slack digest, 10% threshold, @channel
├── sample-data/
│   └── weekly-analytics.json              # 10 metrics with seeded big changers
└── README.md                              # This file
```

## The Key Insight

Adding a new customer does NOT require:
- A new agent
- Code changes
- Pipeline modifications

It requires ONE new file: a `.spec.md` in `customer-specs/`.

## Sample Data Highlights

The `weekly-analytics.json` contains 10 metrics deliberately seeded to show different behavior at different thresholds:

| Metric | Change | Flagged at 10%? | Flagged at 15%? |
|--------|--------|:---:|:---:|
| Error Rate | +100.0% | Yes | Yes |
| Support Tickets | +67.3% | Yes | Yes |
| Churn Rate | +23.5% | Yes | Yes |
| P95 Latency | +18.3% | Yes | Yes |
| Session Duration | +16.9% | Yes | Yes |
| Active Users | +14.7% | Yes | No |
| New Signups | -12.7% | Yes | No |
| Revenue | +3.3% | No | No |
| API Calls | +2.2% | No | No |
| Feature Adoption | +1.8% | No | No |

The internal CSM (15% threshold) sees 5 big changers.
External Customer A (10% threshold) sees 7 big changers.

Same data. Different reports. That's the demo.

## How to Run the Demo

1. Point the data-wrangler at `sample-data/weekly-analytics.json`
2. Run the report-stylist twice — once with each customer spec
3. Compare the two outputs side by side
4. Show that adding `customer-specs/external-customer-b.spec.md` produces a third report with zero code changes

## Extending the Demo

To add a new customer:
```bash
cp customer-specs/internal-csm.spec.md customer-specs/new-customer.spec.md
# Edit the spec to match the new customer's preferences
# Re-run the pipeline — done
```
