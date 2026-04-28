> **⚠️ DEMO ONLY — NOT FOR PRODUCTION USE**
>
> This project is provided as a demonstration and sample code only. It is not intended for production workloads. Use at your own risk. See [LICENSE](LICENSE) for terms.

# Custom Agent Demo: Spec-Driven Report Generation

## What This Demonstrates

Same data in, different reports out — controlled entirely by customer spec files, not by building separate agents per customer.

This demo shows how Kiro's custom agent architecture lets BFC Software's analytics team serve multiple stakeholders from a single data pipeline by swapping a spec file instead of rewriting code. Both reports are HTML, but the spec controls the visual theme, tone, sections, thresholds, and delivery channel.

## Architecture

```
┌─────────────────┐     ┌──────────────────────────────┐     ┌──────────────────┐
│  Data Wrangler   │────▶│  Report Stylist               │────▶│  Delivery Runner  │
│  (shared agent)  │     │  + customer spec file          │     │  (shared agent)   │
│                  │     │                                │     │                   │
│  Ingests raw     │     │  Applies per-customer rules:   │     │  Routes to:       │
│  data, computes  │     │  - visual theme & branding     │     │  - Email          │
│  week-over-week  │     │  - tone (exec vs technical)    │     │  - Static file    │
│  deltas          │     │  - thresholds (15% vs 10%)     │     │  - Slack          │
└─────────────────┘     │  - sections (include/exclude)  │     └──────────────────┘
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

## The Two Reports

| | Internal CSM | Acme Corp |
|---|---|---|
| **Theme** | 🦄 Unicorn — purple gradients, sparkles, rounded cards | 🏢 Corporate — dark header, striped tables, sharp edges |
| **Tone** | Executive, concise | Technical, data-driven |
| **Threshold** | 15% | 10% |
| **Big Changers** | 5 | 7 |
| **Sections** | Summary → Big Changers → Recommendations | Snapshot Table → Big Changers → Categories → Raw Data |
| **Delivery** | Static file | Email |
| **Output** | `output/internal-csm/weekly-csm-report.html` | `output/external-customer-a/weekly-acme-report.html` |

Open both HTML files in a browser to see the visual contrast.

## File Structure

```
├── agents/
│   ├── data-wrangler.agent-spec.json      # Upstream: data ingestion + delta computation
│   ├── report-stylist.agent-spec.json     # Middle: applies customer spec to format output
│   └── delivery-runner.agent-spec.json    # Downstream: routes to delivery channel
├── customer-specs/
│   ├── internal-csm.spec.md               # Unicorn theme, executive, 15% threshold
│   └── external-customer-a.spec.md        # Acme Corp theme, technical, 10% threshold
├── output/
│   ├── internal-csm/                      # 🦄 Unicorn-themed HTML report
│   └── external-customer-a/               # 🏢 Acme Corp branded HTML report
├── sample-data/
│   └── weekly-analytics.json              # 10 metrics with seeded big changers
├── run-pipeline.sh                        # Runs the 3-stage pipeline for a given spec
└── README.md
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

The internal CSM (15% threshold) sees **5 big changers**.
Acme Corp (10% threshold) sees **7 big changers**.

Same data. Different reports. That's the demo.

## How to Run

```bash
# Run the pipeline for a specific customer
./run-pipeline.sh customer-specs/internal-csm.spec.md
./run-pipeline.sh customer-specs/external-customer-a.spec.md

# Or use the workspace agent directly
kiro-cli chat
# then: /agent report-pipeline
# then: "Run the pipeline for customer-specs/internal-csm.spec.md"
```

## Adding a New Customer

```bash
cp customer-specs/internal-csm.spec.md customer-specs/new-customer.spec.md
# Edit the spec: change the theme, tone, threshold, sections, delivery channel
# Run the pipeline — done
```

## Security

See [CONTRIBUTING](CONTRIBUTING.md#security-issue-notifications) for more information.

## License

This project is licensed under the MIT-0 License. See the [LICENSE](LICENSE) file.
