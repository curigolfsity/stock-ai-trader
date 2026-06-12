# Weekly Review

Friday reviews appended here.

Template for each entry:

## Week ending YYYY-MM-DD

### Stats
| Metric | Value |
|--------|-------|
| Starting portfolio | $X |
| Ending portfolio | $X |
| Week return | ±$X (±X%) |
| S&P 500 week | ±X% |
| Bot vs S&P | ±X% |
| Trades | N (W:X / L:Y / open:Z) |
| Win rate | X% |
| Best trade | SYM +X% |
| Worst trade | SYM -X% |
| Profit factor | X.XX |

### Closed Trades
| Ticker | Entry | Exit | P&L | Notes |

### Open Positions at Week End
| Ticker | Entry | Close | Unrealized | Stop |

### What Worked
-

### What Didn't Work
-

### Key Lessons
-

### Adjustments for Next Week
-

### Overall Grade: X

---

## Week ending 2026-05-15

### Stats
| Metric | Value |
|--------|-------|
| Starting portfolio | $100,223 (Mon May 11 open) |
| Ending portfolio | $100,067 (Fri May 15 live) |
| Week return | -$156 (-0.16%) |
| S&P 500 week | +1.5% (~7,390 → ~7,508) |
| Bot vs S&P | -1.66% |
| Trades | 0 (W:0 / L:0 / open:1) |
| Win rate | N/A |
| Best trade | N/A |
| Worst trade | N/A |
| Profit factor | N/A |

### Closed Trades
| Ticker | Entry | Exit | P&L | Notes |
|--------|-------|------|-----|-------|
| — | — | — | — | No trades closed this week |

### Open Positions at Week End
| Ticker | Entry | Close | Unrealized | Stop |
|--------|-------|-------|------------|------|
| CAT | $884.38 | $888.32 | +$66.99 (+0.45%) | $838.22 (10% trail GTC, HWM $931.35) |

### What Worked
- Trailing stop auto-advanced to $838.22 — protected breakeven+ floor through Friday's -3.9% intraday CAT drawdown without any manual intervention
- Entry gate discipline held under pressure — VIX >17 all week; GEV price was in zone ($1,042-$1,100) for 4 of 5 days but macro gates not cleared; no forcing
- Patience rule executed cleanly — 0/3 weekly trade capacity preserved; no impulse entries despite multiple tempting setups
- All risk factors pre-documented before they materialized (insider selling pattern, CPI hot print, stagflation combo, new Fed Chair uncertainty)
- CAT thesis actively validated at week end — Empire State Mfg +19.6 (4-yr high), Baird $1,165 / Evercore $1,103 / JPM $1,125 PTs intact; no fundamental break

### What Didn't Work
- GEV opportunity cost — price in entry zone on price all week; VIX gate kept us out; stock held while we waited; opportunity passed without a trigger clear
- CAT underperformed S&P by ~1.7% — industrial single-stock vs. a week driven by semis/tech (NVDA +4.4%, CSCO +13.4% on H200 China deal + AI infra)
- Portfolio concentration — 85% cash, one position, zero diversification; when that position lags the index the entire portfolio lags
- Stagflation macro combo (CPI +0.4% MoM, PPI +6.0% YoY) created persistent multiple-compression headwind for Industrials all week
- VIX gate miscalibrated to this volatility environment — market made ATHs (SPX 7,501+) with VIX 17-18; <17 gate was never cleared all week

### Key Lessons
- VIX <17 absolute gate may be too strict in an elevated-baseline regime; consider tracking VIX direction (declining toward 17) vs. requiring a sustained close <17
- Insider selling at CAT is now a pattern: 3 executives sold 16,643+ shares (~$15M+) in 2 weeks; not thesis-breaking but may signal an institutional valuation ceiling near $930-$950; monitor closely
- GEV at $1,042-$1,100 on price for the full week with strong fundamentals (EPS 792% beat, backlog +$13B, 28 analyst buys) — need a faster gate-clear process or accept that VIX >17 kills second-position entries in this environment

### Adjustments for Next Week
- VIX gate: trial <18 (relaxed from <17) for watchlist entries if market continues making ATHs; require VIX declining trend + SPX holding as confirming conditions
- GEV: if price breaks above $1,100 without VIX clearance, pass or reassess entry zone — do not chase; if price dips to $1,042-$1,065 on a VIX-clear day, enter ~9sh (stop ~$990 GTC trail, target ~$1,250-$1,320)
- CAT: two more executive sales = formal thesis re-evaluation; trailing stop at $838.22 protects floor; tighten to 7% trail if CAT reclaims $1,017+
- Position sizing: if a second slot opens, size 10-15% equity (not 20%) to allow room for a third position and reduce single-stock risk

### Overall Grade: C+
Rule adherence A, risk management A, relative performance D (bot -0.16% vs SPX +1.5%). Excellent discipline, meaningful alpha drag from concentration and VIX gate timing in a semis/tech-led week.

---

## Week ending 2026-05-29

### Stats
| Metric | Value |
|--------|-------|
| Starting portfolio | $100,129.56 (Mon May 26 open) |
| Ending portfolio | $99,003.69 (Fri May 29 live) |
| Week return | -$1,125.87 (-1.12%) |
| S&P 500 week | +0.9% (~7,501 → ~7,570; 9th consecutive week of gains) |
| Bot vs S&P | -2.02% |
| Trades | 1 (W:0 / L:1 / open:1) |
| Win rate | 0% (0/1 closed trades) |
| Best trade | N/A |
| Worst trade | GEV -$804.87 (-8.43%) |
| Profit factor | 0.00 |

### Closed Trades
| Ticker | Entry | Exit | P&L | Notes |
|--------|-------|------|-----|-------|
| GEV | $1,060.47 (May 26) | $971.04 (May 29) | -$804.87 (-8.43%) | Trailing stop d169532a triggered 10:24 AM ET; dropped through manual cut ($986.24) and trailing stop ($972.34) in same move; ~$136.80 avoidable slippage vs. manual cut rule |

### Open Positions at Week End
| Ticker | Entry | Close | Unrealized | Stop |
|--------|-------|-------|------------|------|
| CAT | $884.38 | $873.12 | -$191.40 (-1.27%) | $838.22 (10% trail GTC, HWM $931.35) |

### What Worked
- Trailing stop auto-executed GEV exit (order d169532a) without manual intervention — risk infrastructure functioned correctly
- GEV entry gate checks were sound at initiation: VIX 16.76 ✓, price $1,060.47 in zone ✓, Blue Energy 2.5GW catalyst documented ✓, 28 Buy / 0 Sell consensus ✓
- CAT thesis intact through macro volatility — stop buffer $34.90 (4.0%) protected; no fundamental break; analyst PTs unchanged
- XOM deferred to next week rather than chasing into Iran uncertainty — patience preserved capital
- Post-GEV exit cash restored to 85.1% ($84,161) — dry powder available for next catalyst window

### What Didn't Work
- Manual cut rule violated at Friday open — GEV stop buffer was <3% ($29.66 / 2.96%) at open; rule required manual cut immediately; instead waited; GEV gapped through manual cut level ($986.24) and trailing stop ($972.34) in one move; cost ~$136.80 avoidable loss
- GEV held into multi-compounding-headwinds: bearish analyst note May 28 + Wind segment tariff losses ($250-350M) + 3 insider/institutional selling signals + Iran Revolutionary Guard retaliation risk-off — each "not thesis-breaking" individually, collectively too many red flags
- CAT also down -1.94% on the week (closed Friday at $873.12), adding unrealized drag alongside GEV realized loss
- Bot underperformed S&P 500 by -2.02% — worst weekly relative performance of the challenge
- Iran risk-off (WTI +3% on May 28-29 Revolutionary Guard retaliation) created simultaneous headwind for both positions

### Key Lessons
- **3% buffer rule is mandatory, not advisory:** When overnight stop buffer < 3%, plan the exit for the opening print — intraday recovery is wishful thinking; the move will gap through the trigger before action is possible
- Compounding headwinds (analyst note + insider selling + sector pressure + geopolitical binary) warrant immediate re-evaluation, not a "monitor" decision — one headwind is thesis-watch; three or more is a sell signal
- Post-entry bearish catalyst within 48 hours (analyst note May 28 on position opened May 26) = immediate reassessment, not a "hold and see"

### Adjustments for Next Week
- **3% buffer protocol added to TRADING-STRATEGY.md** — if overnight stop buffer < 3%, execute manual cut at the open; no exceptions
- XOM: if VIX <17 + Iran situation stabilizes → evaluate 8-9sh at live open price ~$150-155 (stop 10% GTC trail, ~9% equity, target +20%); Iran resolution is pre-condition to avoid repeat gap-down scenario
- CAT: trailing stop $838.22 (HWM $931.35) — hold; tighten to 7% trail if CAT reclaims $1,017 (+15%)
- GEV sector (Energy/Power): first failed trade logged; one more consecutive failure = sector exit rule triggers per strategy
- Entry timing: prefer Tuesday/Wednesday entries; avoid initiating positions on Fridays or directly into known geopolitical binary events

### Overall Grade: D+
Rule adherence C (manual cut protocol violated), risk management B (stop system worked; sizing correct), relative performance D (bot -1.12% vs SPX +0.9% = -2.02% gap). GEV loss is primary driver; entry process was sound but multiple compounding headwinds were individually dismissed; manual cut failure was costly and avoidable.

---

## Week ending 2026-06-05

### Stats
| Metric | Value |
|--------|-------|
| Starting portfolio | $99,002 (Mon Jun 1 open) |
| Ending portfolio | $99,557 (Fri Jun 5 live) |
| Week return | +$555 (+0.56%) |
| S&P 500 week | +1.6% (9th consecutive weekly gain; multiple record highs) |
| Bot vs S&P | -1.04% |
| Trades | 1 (W:0 / L:0 / open:2) |
| Win rate | N/A (no closed trades) |
| Best trade | N/A |
| Worst trade | N/A |
| Profit factor | N/A |

### Closed Trades
| Ticker | Entry | Exit | P&L | Notes |
|--------|-------|------|-----|-------|
| — | — | — | — | No trades closed this week |

### Open Positions at Week End
| Ticker | Entry | Close | Unrealized | Stop |
|--------|-------|-------|------------|------|
| CAT | $884.38 | $903.76 | +$329 (+2.19%) | $852.15 (10% trail GTC, HWM $946.83) |
| XOM | $147.484 | $150.74 | +$33 (+2.21%) | $139.41 (10% trail GTC, HWM $154.90) |

### What Worked
- XOM entry (Jun 1) executed cleanly: all buy-side gates cleared (VIX 15.32 ✓, Energy #1 YTD +34.5% ✓, catalyst documented ✓); filled @ $147.484 at open
- Both trailing stops auto-advanced correctly — CAT HWM set new all-time phase high $946.83 (Thu Jun 4); XOM HWM advanced to $154.90; no manual intervention needed
- CAT +4.83% on Tue Jun 2 (JOLTS April beat 7.6M) confirmed industrial capex cycle thesis — largest single-day gain since May 26
- XOM Iran risk premium + Q2 dividend $1.03/sh payable Jun 10 providing near-term price floor; -1.17% NFP selloff muted vs broad market
- Phase P&L recovered from -$1.04% (end of Week 4) to +0.56% for the week; narrowed overall phase deficit to -$443

### What Didn't Work
- NFP strong beat (+172K vs +85K est) triggered hawkish Fed repricing on Jun 5 — rate-cut expectations pushed further out; CAT -3.56%, XOM -1.17% on the day; erased Thursday's gains
- XOM trailing stop not placed at open on Jun 1 — corrected at midday; same process failure as GEV on May 26; created a ~3-hour risk window without stop coverage
- Bot underperformed S&P 500 by -1.04% for the week — AVGO -12.6% dragged tech/semis while industrial/energy held; S&P breadth was tech-led
- Phase P&L still negative (-$443 / -0.44%) after 5 weeks; CAT has been held for 24 sessions with +2.19% unrealized net of all volatility
- 2/3 weekly trade capacity unused — XOM was the only entry; no 3rd position established despite NFP ✓ and VIX clear

### Key Lessons
- Trailing stop placement is a T+0 mandatory action at fill confirmation, not a midday task — the same process failure (GEV May 26, XOM Jun 1) has now occurred twice; requires checklist-gate enforcement before any other midday action
- NFP hawkish repricing is a predictable risk: strong print → rate-cut delay → expensive industrials/energy sell pressure post-open; do not add positions on NFP day regardless of gate checks
- CAT HWM $946.83 = stop now $852.15; 6.05% buffer is below the 7% soft threshold created at peak intraday; tighten trigger ($1,017 / +15% → 7% trail) remains active and is the next key decision point

### Adjustments for Next Week
- Trailing stop checklist: place stop immediately on fill — verify via orders API before proceeding to any other action; no exceptions
- 3rd position (Mon Jun 8 open, fresh 0/3 capacity): candidates OXY / MPC / ETN / GEV re-entry; gates → VIX <17 + SPX holds + catalyst documented + position cost ≤20%
- CAT: tighten trigger $1,017 (+15%) → 7% trail; monitor CAT Shareholder Meeting Jun 10 for any capital allocation signals
- XOM: Q2 dividend $1.03/sh ex-date approaching Jun 10 (payable Jun 10) — ex-div price adjustment expected; hold through; tighten trigger $169.61 (+15%) → 7% trail
- Avoid new entries on NFP days — strong-print hawkish-repricing drag is predictable; wait for post-print settlement before adding capital

### Overall Grade: B-
Rule adherence B (XOM stop placement delayed — repeated process failure; no other violations), risk management A (both stops healthy, HWMs advancing, no manual cuts needed, buffers above 3% threshold), relative performance C (bot +0.56% vs SPX +1.6% = -1.04% gap; NFP hawkish close weighed on industrials/energy; phase P&L improving but still negative).

---

## Week ending 2026-06-12

### Stats
| Metric | Value |
|--------|-------|
| Starting portfolio | $99,888.80 (Mon Jun 8 open) |
| Ending portfolio | $99,301.33 (Fri Jun 12 live) |
| Week return | −$587.47 (−0.59%) |
| S&P 500 week | ~+2.0% (Iran peace deal rally; 10th consecutive positive week) |
| Bot vs S&P | ~−2.59% |
| Trades | 1 (W:0 / L:1 / open:2) |
| Win rate | N/A (0/1 closed trades) |
| Best trade | N/A |
| Worst trade | OXY −$330.15 (−3.71%) |
| Profit factor | 0.00 |

### Closed Trades
| Ticker | Entry | Exit | P&L | Notes |
|--------|-------|------|-----|-------|
| OXY | $57.44 (Jun 8) | $55.31 (Jun 12) | −$330.15 (−3.71%) | Thesis-break exit at open — WTI $83.80 < $85 hard threshold; Iran peace deal removed war premium; held 4 trading days |

### Open Positions at Week End
| Ticker | Entry | Close | Unrealized | Stop |
|--------|-------|-------|------------|------|
| CAT | $884.38 | $910.57 | +$445.25 (+2.96%) | $852.15 (10% trail GTC, HWM $946.83) |
| XOM | $147.484 | $146.60 | −$8.84 (−0.60%) | $139.41 (10% trail GTC, HWM $154.90) |

### What Worked
- Thesis-break rule on OXY executed cleanly and immediately — WTI pre-market $83.80 < $85 threshold → market sell at open, no hesitation; strategy discipline A
- OXY stop placed T+0 at fill on Jun 8 (process improvement from XOM week 5 delay; no recurrence)
- CAT recovered +4.49% Thu (Jun 11) and +1.65% Fri (Jun 12) after −6.22% CPI crash on Wed — thesis intact throughout; AI power-gen + margin tailwind as oil declines
- All 3 GTC stops confirmed ACTIVE via orders API daily throughout the week; no execution failures
- Iran peace deal actually improves CAT Q2 margin thesis (WTI declining = lower input costs); risk-on rotated into Industrials at week end

### What Didn't Work
- OXY entry timing was poor — entered Mon Jun 8 on the exact day of peak Iran escalation (first direct missile exchange since April truce); oil premium unwound by Friday; entered and exited the same geopolitical narrative in 4 days
- CAT buffer hit critically thin territory: 0.66% on Wed Jun 10 after −6.22% session; GTC stop was the sole guard; one gap-down open would have triggered
- XOM thesis weakening — WTI declining on peace deal; stop buffer 5.28% ⚠; if oil breaks $80 the thesis breaks with no unrealized cushion
- Energy sector track record: GEV (−8.43%), OXY (−3.71%) = 2 confirmed Energy losses; XOM is a 3rd Energy position still open — sector exit rule proximity is a risk
- Bot underperformed S&P by ~−2.59%; 6 consecutive weeks of negative relative performance

### Key Lessons
- **Never enter high-beta E&P on the day of an oil-spike event** — geopolitical binary catalysts (Iran missile exchange) move E&P stocks 3–5% at open; entering the same day means chasing the spike; require 2 confirmed sessions of sustained oil premium before entering OXY-class positions
- **Sector exit rule proximity:** GEV + OXY = 2 Energy sector failures; strategy requires exit after 2 consecutive failed trades; XOM is the 3rd Energy position — if XOM closes as a realized loss, the Energy sector exit rule activates and no further Energy trades are permitted until one other sector re-qualifies
- CAT at 0.66% stop buffer (Jun 10) is survivable when the underlying thesis is intact and the drop is macro-not-fundamental; but this is not a position to add to at current HWM distance

### Adjustments for Next Week
- **XOM hard watch:** if WTI breaks sustained close below $80 → thesis-break exit at next open (same protocol as OXY); if WTI holds $83–86 → hold with current stop; buffer 5.28% ⚠ — GTC stop is guard
- **Energy sector alert:** 2 closed Energy losses logged (GEV, OXY); XOM is 3rd open Energy position; one more confirmed loss = sector exit rule triggers; no new Energy trades until this risk resolves
- **FOMC Jun 16–17:** dominant macro binary; no new entries before the decision; post-FOMC if dovish lean + VIX drops below 17 → evaluate 3rd position from non-Energy sectors (ETN / SMCI / non-correlated)
- **CAT:** buffer 6.34% ⚠ (below 7% soft threshold); watch for HWM advance above $946.83; tighten trigger $1,017 (+15%) → 7% trail remains active; Iran peace = Q2 margin tailwind = net thesis improvement
- Avoid entering new positions on days with known macro binaries (CPI/PPI days reconfirmed as high-risk intraday)

### Overall Grade: C
Rule adherence A (thesis-break on OXY executed immediately; all stops active; manual cut rule never violated; no process failures), risk management B (OXY entry on oil-spike peak was poor timing; CAT buffer critically thin Jun 10; XOM buffer deteriorating), relative performance D (bot −0.59% vs SPX ~+2.0% = ~−2.59% gap; 6th consecutive week of negative relative performance; phase P&L −$698.67 / −0.70%). Discipline on exits was excellent; entry timing on OXY was the critical error.

---
