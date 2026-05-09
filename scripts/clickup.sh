#!/usr/bin/env bash
# Notification wrapper. Tries ntfy.sh first, then Discord, then local fallback.
# Usage: bash scripts/clickup.sh "<message>"
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
FALLBACK="$ROOT/DAILY-SUMMARY.md"

if [[ $# -gt 0 ]]; then
  msg="$*"
else
  msg="$(cat)"
fi

if [[ -z "${msg// /}" ]]; then
  echo "usage: bash scripts/clickup.sh \"<message>\"" >&2
  exit 1
fi

stamp="$(date '+%Y-%m-%d %H:%M %Z')"

NTFY_TOPIC="${NTFY_TOPIC:-}"
NTFY_TOPIC="${NTFY_TOPIC//[$'\t\r\n ']}"

DISCORD_WEBHOOK_URL="${DISCORD_WEBHOOK_URL:-}"
DISCORD_WEBHOOK_URL="${DISCORD_WEBHOOK_URL//[$'\t\r\n ']}"

# Try ntfy.sh (preferred — works from all cloud IPs)
if [[ -n "$NTFY_TOPIC" ]]; then
  curl -fsS -X POST "https://ntfy.sh/${NTFY_TOPIC}" \
    -H "Content-Type: text/plain" \
    --data-binary "$msg"
  echo
  echo "[ntfy] sent to topic: $NTFY_TOPIC"
  exit 0
fi

# Fallback: Discord webhook
if [[ -n "$DISCORD_WEBHOOK_URL" ]]; then
  payload="$(jq -n --arg content "$msg" '{"content": $content}')"
  curl -fsS -X POST "$DISCORD_WEBHOOK_URL" \
    -H "Content-Type: application/json" \
    -d "$payload"
  echo
  echo "[discord] sent"
  exit 0
fi

# Last resort: write to local file
printf "\n---\n## %s (fallback — no notification service configured)\n%s\n" "$stamp" "$msg" >> "$FALLBACK"
echo "[fallback] appended to DAILY-SUMMARY.md"
echo "$msg"
