# Stock AI Trader

An autonomous swing-trading bot run by **Claude Code**. The goal is to beat the S&P 500 while following
a strict, rule-based risk framework.

There is no traditional application code. The "bot" is Claude itself, running on a
schedule. It reads its rulebook and logs from `memory/`, does research, places
orders through small shell wrappers, and commits everything back to Git.

> ⚠️ Paper trading only. This is an experiment, not financial advice.

## How It Works

```
Cloud routine (cron) ──► Claude Code agent
                             │
                             ├─ reads   memory/*.md   (strategy, trade log, research)
                             ├─ research scripts/perplexity.sh
                             ├─ trades   scripts/alpaca.sh
                             ├─ notifies scripts/clickup.sh
                             └─ commits  updated memory back to Git
```

Git is the bot's memory. If a change isn't committed, it didn't happen.

### Daily schedule (US/Eastern)

| Time | Days | Routine | Purpose |
|------|------|---------|---------|
| 06:00 | Mon–Fri | `pre-market` | Research catalysts, build trade ideas |
| 08:30 | Mon–Fri | `market-open` | Execute planned trades, set stops |
| 12:00 | Mon–Fri | `midday` | Cut losers, tighten trailing stops |
| 15:00 | Mon–Fri | `daily-summary` | EOD snapshot + notification |
| 16:00 | Fri | `weekly-review` | Weekly stats, grade, lessons |

## Strategy Rules (summary)

The full rulebook is in [`memory/TRADING-STRATEGY.md`](memory/TRADING-STRATEGY.md).

- **Stocks only.** No options, ever.
- 5–6 positions max, ≤ 20% of equity each, 75–85% of capital deployed.
- Max 3 new trades per week.
- 10% trailing stop on every position, placed as a real GTC order.
- Cut losers manually at −7%.
- Tighten the trail to 7% at +15% and to 5% at +20%. Never move a stop down.
- Follow sector momentum. Exit a sector after 2 failed trades.
- Every buy needs a documented catalyst and at least 2:1 reward/risk.
- Patience > activity.

## Repository Layout

```
.
├── CLAUDE.md               # Agent instructions (loaded every session)
├── memory/                 # The bot's persistent state
│   ├── PROJECT-CONTEXT.md  #   mission & schedule
│   ├── TRADING-STRATEGY.md #   rulebook
│   ├── TRADE-LOG.md        #   entries, exits, stops
│   ├── RESEARCH-LOG.md     #   daily research notes
│   └── WEEKLY-REVIEW.md    #   weekly performance reviews
├── routines/               # Prompts for Claude Code cloud routines (cron)
├── .claude/commands/       # Same workflows as local slash commands
└── scripts/
    ├── alpaca.sh           # Alpaca trading/data API wrapper
    ├── perplexity.sh       # Perplexity research wrapper
    └── clickup.sh          # Notifications (ntfy.sh → Discord → local file)
```

## Setup

1. **Clone the repo**
   ```bash
   git clone https://github.com/curigolfsity/stock-ai-trader.git
   cd stock-ai-trader
   ```

2. **Create `.env`** in the repo root. It is gitignored.
   ```bash
   # Alpaca (paper)
   ALPACA_API_KEY=
   ALPACA_SECRET_KEY=
   ALPACA_ENDPOINT=https://paper-api.alpaca.markets/v2
   ALPACA_DATA_ENDPOINT=https://data.alpaca.markets/v2

   # Perplexity (research)
   PERPLEXITY_API_KEY=
   PERPLEXITY_MODEL=

   # Notifications (either or both)
   NTFY_TOPIC=
   DISCORD_WEBHOOK_URL=
   ```

3. **Schedule the cloud routines.** Paste each file in [`routines/`](routines/)
   verbatim into a Claude Code cloud routine with the cron schedule listed in
   [`routines/README.md`](routines/README.md). Set the same environment variables
   on each routine.

## Local Usage

Open the repo in Claude Code and run any workflow by hand:

| Command | What it does |
|---------|--------------|
| `/pre-market` | Run pre-market research |
| `/market-open` | Run market-open execution |
| `/midday` | Run the midday scan |
| `/daily-summary` | Run the end-of-day summary |
| `/weekly-review` | Run the weekly review (Fridays) |
| `/portfolio` | Read-only snapshot of account, positions, and stops |
| `/trade SYMBOL SHARES buy\|sell` | Manual trade, checked against every strategy rule |

You can also call the wrappers directly:

```bash
bash scripts/alpaca.sh account
bash scripts/alpaca.sh positions
bash scripts/alpaca.sh quote AAPL
bash scripts/perplexity.sh "top sector momentum this week"
bash scripts/clickup.sh "test notification"
```

## Disclaimer

This project is for educational and experimental purposes only. It trades a paper
account with simulated money. Nothing here is investment advice.
