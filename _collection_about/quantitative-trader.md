---
author: Alex Veden
date: 2024-04-03
layout: post
---

I’m keen on building production grade trading systems, including enterprise scale trading frameworks which include backtesting engines, order management systems, direct market access, and things of this nature.

Trading is not only my profession, but it’s my life. Since I made my first trade in April 2004, I find myself fascinating every time when I open trading terminal or starting a new research.

Throughout of my career I’ve been trading almost any market type in the world, including FX, Options, Futures, Commodities, Crypto, you name it… Therefore, I have a deep understanding how the market mechanics work, which approaches worth to research, and which are waste of time.

## Approach
- **Second level-thinking and quantamental models.** My trading is highly relied on quantified market sentiment and understanding underlying factors that may affect price movements. My approach is based on a three-level pyramid: where, how, when. I use fundamental factors to understand the general gravity force of the market (where), quantified sentiment models for testing the hypothesis (how), and price action for timing (when).
- **Holy trinity of dira, vola, rela.** I'm running a portfolio of strategies on 3 major types of alphas: dira - stands for direction trading strategies, vola - stands for options trading (i.e., volatility trading), rela - stands for relative value trading (pairs trading, spreads, arbitrage).
- **High-alpha / low-beta / low-delta.** I'm trying to maintain market neutrality in my portfolios, for example for each long directional position, I'm trying to open another short position in other asset, to offset directional risk. If you'd look at my trading book, you won't be able definitely say whether am I long or short on my portfolio.
- **Dynamic risk normalization.** I use a special algorithm of position sizing which depends on current asset volatility and normalizes it to my target level. It doesn't matter when to trade, i.e. volatility of my position in 2008 GFC environment, and calm market of 2013 would be the same, more or less. The same goes to the different asset classes if I opened position on Bitcoin and EURUSD the risk I was taking would be the same.
- **Monte-Carlo backtesting and risk simulation.** Through trials and errors, I came to conclusion that conventional approach to trading system development and backtesting doesn't reflect the full picture. Because prices have stochastic nature, the price path what have been realized on historical data the only one from many possible outcomes. Because of this, my job is to stress test my systems against all possible outcomes of price distribution. The Monte-Carlo simulations help me to reveal weak points and risk in my systems.

## Circle of competence
- **Systematic directional trading.** I'm focusing on major asset classes, instead on single stocks. I was always a futures trading guy, who acts in relatively small asset universe. My assets of choice are stock indexes, FX pairs, commodities futures, bonds futures.
- **Options trading.** I've been trading and researching options since 2008, and currently I have custom pricing models. Being natural short seller of options, I intensively use my dynamic risk normalization techniques and Monte-Carlo simulations to tightly control risks.
- **Pairs-trading / relative-value trading.** This approach allows me to maintain market-neutrality and diversification of my portfolio to major market moves, also it's a great supplement for consistency of returns.
- **Value investing / fair-value models.** As the old adage says, price is what you pay, value is what you get. Therefore, even in short-term trading, it's a good idea to have an understanding what is the fair-value of the asset or derivative. I use the fair-value as the baseline level of my trading approach, for understanding the direction of the weak forces which may push market prices in particular direction.

