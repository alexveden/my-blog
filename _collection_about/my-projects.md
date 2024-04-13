---
title: My projects
author: Alex Veden
date: 2024-04-12
layout: post
---


## My proprietary projects

<a id="uber-hf-2"></a>
### UberHF 2.0 (ultra low-latency trading)
Implemented in pure C (not ++) trading framework for ultra low-latency trading, market-making and arbitrage. 

**Highlights:**
- Micro-app architecture
- In-memory quotes and datafeed.
- Shared-memory driven events and RPC communication (no system calls on hot path).
- 67k (including 35k of unit tests) lines of code in pure C and growing.
- Smart Execution / Algo Orders.
- Support of stocks, futures and options
- Custom FAST (Fix Adapted for STreaming) protocol parser (faster than [mFAST](https://github.com/objectcomputing/mFAST) in 5-7x)
- FIX (SBE) order management 


<a id="micro-strategy"></a>
### MicroStrategy Framework
Low-frequency execution framework in Python adapted for model trading, smart-order execution, complex position handling. Working in production since 2021.

**Highlights:**
- Independent position handling
- Support of execution order internal netting for cutting transaction costs.
- Support of execution of multileg positions (baskets, spread, pairs).
- Multi-market / multi-broker support of execution.
- Smart-order execution - time-slice orders, options delta hedge orders.
- Historical backtesting for options, spreads, pairs, futures, and any complex positions.
- 61k lines of code in Python (including 45k of units tests)

<a id="uber-miner"></a>
### UberMiner
This project is an analysis engine of my trading vehicle. I've been developing it since 2017, and it's a life-long process without end. I use it for signal generation and modelling for my trading operations.

**Highlights:**
- OmniFeed - universal datafeed for stocks, futures, spreads, pairs and options.
- DMlib - a library for alpha-generation and analysis.
- Monte-Carlo simulation for portfolio risks.
- ML-driven market research.
- Bullet-proof indicators - written Numba, vector based, not future reference, no unpredictable behavior on bad data. Based on my [yauber-algo](#yauber-algo) open source project.
- AsyncIO micro-service infrastructure scripts are driven by [yauber-executor](#yauber-executor) open source framework.
- 69k lines of code in Python and Cython.


## Projects for my clients
### ArbSwarm proprietary trading group
I adapted my MicroStrategy framework for this client, implemented the Hive &copy; analysis tool for generation of alpha swarms and signals on US futures. [MicroStrategy](#micro-strategy) framework is used for execution and running positions, and [UberMiner](#uber-miner) for analysis and datafeed. Also, I implemented FIX order execution for TrandingTechnologies broker for US futures and maintained Linux-based server infrastructure for operations.

<a id="tmqr-exo"></a>
### TMQR EXO Trading Framework
Enterprise quality framework for quantitative trading, backtesting, and running multi-account fund on futures, options and US stocks.

**Highlights**:
- Built alpha backtesting engine which allowed to backtest machine-learning/AI models on futures, stocks and options
- Implemented datafeed and execution infrastructure for running multi-account execution 
- Implemented in-house research environment accessible via VPN, based on Jupyter Notebooks
- Core was written in Python (31k lines of code) and Jupyter Notebooks (20k lines of code)
- Set up and maintained Linux server infrastructure.
- Order execution via TrandingTechnologies FIX and InteractiveBrokers API


## Open-source projects


### AsyncFIX - AsyncIO FIX Protocol Python Framework

[AsyncFIX - AsyncIO FIX Protocol Python Framework](https://github.com/alexveden/asyncfix)

[AsyncFIX docs](https://alexveden.github.io/asyncfix/)

**Highlights**:

- Pythonic way of dealing with FIX messages
- Full support of AsyncIO
- Schema validation
- Tools for unit testing client apps
- NewOrderSingle container / state management support
- Session management included (FIX journaling, session restoring, heartbeats, resets)
- FIX Tester - tool for FIX unit testing (schema validation, order management, protocol message exchange)
- FIX 4.4 protocol implemented
- 100% unit test code coverage

### UberHF 1.0 Cython (archived/pre-alpha)
[UberHF Cython (archived/pre-alpha)](https://github.com/alexveden/uberhf_cython)

First generation of high-frequency trading framework written in C, Cython and Python.

I decided to rewrite this project completely in pure C. So it's archived now.

**Highlights:**

- Micro-service architecture.
- ZeroMQ driven, binary protocol communication between apps.
- FIX friendly.
- In-memory shared datafeed.
- Smart Order execution (algorithmic order with logic).


<a id="yauber-algo"></a>

### YAUBER - Algo Lib

[Yet Another Universal Backtesting Engine Release (YAUBER) - Algo Lib](https://github.com/alexveden/yauber-algo)

This package is a collection of standalone algorithms for financial time series analysis.

**Highlights:**

- Heavily uses Numba for improving performance of the code. It's generally faster than comparable Pandas algorithms.
- Based on strict principles: future reference free, consistent when starting point of history changes, NaN friendly, built-in data validation checks
- Stable and well tested, this means that logic of algorithms won't change in the future and any algorithm in this package is 100% covered by unit tests.

### YAUBER - Backtester

[Yet Another Universal Backtesting Engine Release (YAUBER) - Backtester](https://github.com/alexveden/yauber-backtester)

**yauber-backtester is bare-bone portfolio backtesting engine that**:

- Supports various portfolio management techniques: asset ranking, basket trading, portfolio rebalancing, etc.
- Intended to work on large asset universes (like 2000-3000 US Stocks EOD), or small intraday asset universes (like futures or forex, 1h timeframe).
- Supports meta-strategies, building and managing a portfolio of other trading strategies
- Allows simulating capital allocations, costs, margin trading, etc.

<a id="yauber-executor"></a>

### YAUBER - Executor

[Yet Another Universal Backtesting Engine Release (YAUBER) - Executor](https://github.com/alexveden/yauber-executor)

**A boilerplate project for building asyncio Python distributed infrastructure.**

- Fully asynchronous
- Uses RabbitMQ and MongoDB
- Supports message communication between scripts and RPC calls
- Sample infrastructure example
- Works in production projects 24/7 since 2019

### Cython Tools: toolkit for efficient Cython development

[Cython Tools: toolkit for efficient Cython development](https://github.com/alexveden/cython-tools)

**Key features**

- Keeping all development tools in one place with minimal efforts
- Built-in Cython debugger (including low-level cdef / C code, based on GDB)
- Cython code unit testing with coverage reports
- Line-profiler
- Easy running .pyx files by entry-point functions
- Cython annotations and index file for all project
- Cython project boilerplate
- Cython snippets for low-level C-code and debugging tricks

### ATest: Minimalist C Unit Testing Framework

[ATest: Minimalist C Unit Testing Framework](https://github.com/alexveden/atest)

**Features**

- Minimal requirements (only single file is needed)
- Multiple assert types
- Supports function mocking via gcc --wrap and fff.h
- Configurable context and verbosity via test command arguments
- Configurable output to any FILE* stream, by default to STDOUT
- Included atest utility for automatic updating new tests in the suite, just add new ATEST_F and atest will change the source to make sure to include new test function.
- Supports setup/shutdown functions

### Quik Lua Datafeed

[Quik Lua Datafeed](https://github.com/alexveden/quik-lua-datafeed)

Quik is legacy Russian trading terminal used by 90% of Russian brokers. It has built-in support of LUA scripting language. This project is a proof of building high quality code in LUA: OOP, unit testing, unit test mocks, code coverage.


### Quik Lua AsyncIO Python API

[Quik Lua AsyncIO Python API](https://github.com/alexveden/quik-lua-async-client-python)

Quik is legacy Russian trading terminal used by 90% of Russian brokers. A client API for calling Quik LUA API in Pythonic way.

