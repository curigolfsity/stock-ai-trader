# Cloud Routines

Paste each file verbatim into a Claude Code cloud routine. Do not paraphrase.

| File | Cron (US/Eastern) | Purpose |
|------|-------------------|---------|
| pre-market.md | `0 6 * * 1-5` | Research + trade ideas |
| market-open.md | `30 8 * * 1-5` | Execute planned trades |
| midday.md | `0 12 * * 1-5` | Cut losers, tighten stops |
| daily-summary.md | `0 15 * * 1-5` | EOD snapshot + notification |
| weekly-review.md | `0 16 * * 5` | Weekly stats + grade |

See Part 7 of the setup guide for step-by-step routine configuration.
