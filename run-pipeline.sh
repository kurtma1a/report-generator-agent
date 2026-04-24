#!/usr/bin/env bash
set -euo pipefail

# BFC Software — Custom Agent Demo Pipeline
# Usage: ./run-pipeline.sh <customer-spec-path>
# Example: ./run-pipeline.sh customer-specs/internal-csm.spec.md

DEMO_DIR="$(cd "$(dirname "$0")" && pwd)"
DATA_FILE="$DEMO_DIR/sample-data/weekly-analytics.json"

if [[ $# -lt 1 ]]; then
  echo "Usage: $0 <customer-spec-path>"
  echo "Example: $0 customer-specs/internal-csm.spec.md"
  exit 1
fi

SPEC_PATH="$1"
# Resolve relative paths from demo dir
[[ "$SPEC_PATH" != /* ]] && SPEC_PATH="$DEMO_DIR/$SPEC_PATH"

if [[ ! -f "$SPEC_PATH" ]]; then
  echo "Error: spec file not found: $SPEC_PATH"
  exit 1
fi

# Derive customer ID from spec filename (e.g. internal-csm.spec.md → internal-csm)
CUSTOMER_ID="$(basename "$SPEC_PATH" .spec.md)"
OUTPUT_DIR="$DEMO_DIR/output/$CUSTOMER_ID"
mkdir -p "$OUTPUT_DIR"

echo "═══════════════════════════════════════════════"
echo "  BFC Software — Report Pipeline"
echo "  Customer: $CUSTOMER_ID"
echo "  Spec:     $SPEC_PATH"
echo "  Output:   $OUTPUT_DIR"
echo "═══════════════════════════════════════════════"
echo ""

# ── Stage 1: Data Wrangler ──────────────────────
echo "▶ Stage 1/3: data-wrangler — ingesting & computing deltas..."
kiro-cli chat \
  --agent "$DEMO_DIR/agents/data-wrangler.agent-spec.json" \
  --no-interactive \
  --prompt "Read the analytics data from $DATA_FILE. Normalize it and compute week-over-week deltas for every metric. Output the result as valid JSON to $OUTPUT_DIR/wrangled-data.json. Include report_metadata, and for each metric include: name, category, current, prior, change_pct, and a boolean is_big_changer (true if absolute change_pct > 10)." \
  > /dev/null 2>&1
echo "  ✓ Wrangled data → $OUTPUT_DIR/wrangled-data.json"
echo ""

# ── Stage 2: Report Stylist ─────────────────────
echo "▶ Stage 2/3: report-stylist — applying customer spec..."
kiro-cli chat \
  --agent "$DEMO_DIR/agents/report-stylist.agent-spec.json" \
  --no-interactive \
  --prompt "Read the wrangled data from $OUTPUT_DIR/wrangled-data.json and the customer spec from $SPEC_PATH. Apply the spec's formatting rules (tone, sections, thresholds, format) to produce the report. Write the output to $OUTPUT_DIR/ using the output_filename from the spec. Follow the spec exactly — it is the contract." \
  > /dev/null 2>&1
echo "  ✓ Styled report → $OUTPUT_DIR/"
echo ""

# ── Stage 3: Delivery Runner ────────────────────
echo "▶ Stage 3/3: delivery-runner — routing to channel..."
kiro-cli chat \
  --agent "$DEMO_DIR/agents/delivery-runner.agent-spec.json" \
  --no-interactive \
  --prompt "Read the customer spec from $SPEC_PATH to determine the delivery channel. Read the formatted report from $OUTPUT_DIR/. Route it: for static-file, confirm the file is written; for slack, write a delivery-receipt.md to $OUTPUT_DIR/ summarizing what would be posted and where; for email, write a delivery-receipt.md with the email body and recipients. Write a delivery-receipt.md to $OUTPUT_DIR/ confirming delivery." \
  > /dev/null 2>&1
echo "  ✓ Delivery confirmed → $OUTPUT_DIR/delivery-receipt.md"
echo ""

echo "═══════════════════════════════════════════════"
echo "  ✅ Pipeline complete for: $CUSTOMER_ID"
echo "  Output directory: $OUTPUT_DIR"
echo "═══════════════════════════════════════════════"
ls -la "$OUTPUT_DIR/"
