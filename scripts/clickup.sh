#!/usr/bin/env bash
# Notification wrapper. Posts to Discord webhook.
# Usage: bash scripts/clickup.sh "<message>"
# If DISCORD_WEBHOOK_URL is unset, appends to a local fallback file and exits 0.
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

DISCORD_WEBHOOK_URL="${DISCORD_WEBHOOK_URL:-}"
DISCORD_WEBHOOK_URL="${DISCORD_WEBHOOK_URL//[$'\t\r\n ']}"  # strip all whitespace/newlines

if [[ -z "${DISCORD_WEBHOOK_URL:-}" ]]; then
  printf "\n---\n## %s (fallback — Discord not configured)\n%s\n" "$stamp" "$msg" >> "$FALLBACK"
  echo "[discord fallback] appended to DAILY-SUMMARY.md"
  echo "$msg"
  exit 0
fi

payload="$(jq -n --arg content "$msg" '{"content": $content}')"

curl -fsS -X POST "$DISCORD_WEBHOOK_URL" \
  -H "Content-Type: application/json" \
  -d "$payload"
echo
