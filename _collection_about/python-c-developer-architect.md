---
title: Python and C developer / architect
author: Alex Veden
date: 2024-04-04
layout: post
---
This aspect of my skill set, ties all together into full-stack product, which I can offer to my clients. My knowledge of general C and Python programming, and Linux server administration allows me to maintain a project from the early concept stage, to the late production state without a need for building a team for maintaining the project.

There are a many types of side tasks I usually do along the lines of the primary (data science / trading) projects. For example, building dashboards for remote robots control, maintaining reporting system, using REST API to feed some secondary data or updating live-dataset.

## Experience
I started writing my “programs” in 9 grade of middle school, back then I was experimenting with C, Pascal, Delphi, and assembler. It was a hobby rather than an intention to start a career as a developer. Event though, when I was a student of economic faculty, and started trading in 2004, I quickly realized that algorithmization of decision-making process is the only way to go for me. From that moment, I started a process of fusing financial and programming skills to achieve success in predicting financial markets.

It was a long period of using C#/C for building trading systems between 2007 and 2012. And eventually I came across Python in 2013, since then I only use Python in my projects, with occasional C/Cython injections for high performance code, when I really need it. Since 2016 I've started professional career of quantitative developer in Python on everyday basis.

## Circle of competence
- **Trading / backtesting frameworks.** Through my life I've created 7+ production grade frameworks, for backtesting, optimization of trading systems on equities, futures, options and multi-leg instruments. I know how to design robust architectures which support not only backtesting, but seamless deployment and execution of trading strategies after that. See my open-source yauber-backtester project.
- **Order management / execution infrastructure.** I implemented multiple customized algorithmic orders for multi-leg positions (e.g. pairs, baskets, options), delta hedging and legging into option positions. FIX protocols, broker API, REST API, are also not a big deal for me.
- **High-performance data processing and storage.** I know how to efficiently build data structures for fast backtesting or live trading, typically I use MongoDB for this purpose.
- **Distributed infrastructure and microservices.** I'm a proponent of microservice approach when it comes to the infrastructure for projects I make. I use RabbitMQ or ZeroMQ for communication between services, and asyncio Python for scripts. See my open-source yauber-executor project, which I have used for every single project for the last 4 years.
- **High-speed Python code.** Python is considered as a scripting language, which may be incredibly slow. However, with a degree of knowledge, some tools, and methods, Python may become incredibly fast. In trading operations it's crucial to have fast calculations, because of this, my way of choice to use Numba or Cython for building high-performance Python apps. My open-source yauber-algo project it built on top of Numba, but when a need a pure speed I do everything on Cython (which is C compiled code with Python-like syntax). Take a look at my open-source cython-tools project, which I use on a daily basis to help my development process.
- **Low-latency C trading.** I'm a big fan of plain C (not ++) and using it for implementation of low-latency trading strategies and order management systems. This language provides ultimate speed and control over execution flow, allowing to achieve the lowest execution latency possible.
- **Linux servers.** I've been a full-time Linux user since 2012, so I'm fully capable of setting up, running and maintaining any Debian/Ubuntu Linux machine on any hosting / cloud provider on the web.

## Tech stack
During my career, I've faced many Python frameworks, DBs, and other arbitrary stuff which I had to understand or learn for tweaking or working-around some issues. My level of expertise is highly varied across all, so I will put my estimation in parentheses:

**Legend.** (low) – means I understand how the thing works, and able to deal with it on some basic level. (mid) – I made some projects with it, but not use it on daily basis. (pro) – I'm using this on a daily basis, including to be able to do highly sophisticated things with it. 

**General coding**

- Python 3.6+ (pro)
- Cython / Numba (pro) – high performance Python code
- C (not ++) (pro) – I'm able to build full-scale production software in C in area of high performance computing, low-latency trading, networking.
- Python asyncio (pro) – almost always for every infrastructure script
- Python multiprocessing (pro) – for high performance calculations / optimizations

**Financial protocols and APIs**
- FIX protocols (pro) - for order management, in C and Python
- FAST (Fix Adapted for STreaming) (pro) - for streaming exchange data, implemented my own FAST parser in C
- Interactive Brokers API (www.interactivebrokers.com)
- Trading Technologies API (www.tradingtechnologies.com)
- Moscow Exchange TWIME protocol (https://www.moex.com/msn/en-twime)

**Databases**

- MongoDB (pro) - including setup, backups, administration, sharding and things of this nature
- MySQL / MariaDB (mid) – can do it but don't like SQL

**Networking / communication**

- ZeroMQ (pro) – fast and reliable (my fast implementation of asyncio PyZMQ)
- RabbitMQ (pro) – my tech of choice when it comes to inter-process communication
- Python / C (linux) Sockets (pro) – low-level socket communications
- REST API (pro) – no big deal at all

**Data-science stack**
- NumPy / Pandas (pro) – using on daily basis
- Machine-Learning (Scikit-learn) (mid/pro) – it's too big to use everything on pro-level, however I use key models and features management techniques on almost daily basis (some of them, I customized)
- NLTK (low) – natural language processing, I was experimenting with it some times ago
- Jupyter / Matplotlib / Plotly (pro) – as a toolkit for running my research
- Data Scraping (pro) – typically I use Selenium + BeautifulSoup4 for scraping data from websites

**User interfaces / Dashboard**

- Python Dash (pro) – for almost every of my past projects, building dashboards, managing infrastructure, tweaking settings of strategies, etc.
- Textual (shell TUI) (mid) – cutting edge technology for building text user interfaces (available via SSH)
- Django / flask (mid) – typically for building back-end REST API servers for web-interfaces
- HTML / ReactJS / JS (low) – in the case when I have to add something custom on dashboards, or client requests some sort of user-interface (usually it appears not so eye-candy so to speak)

**Linux servers / configuration**
- Nginx / Apache
- Virtual Machine Supervisors: VMware, QEmu
- OpenVPN / SSH tunnels
- systemd / supervisord - for running scripts
- remote python / Jupyter environments
- remote X11 / VNC desktops
- MongoDB / MySQL
- Firewall configuration and security
- FIX tunnels
- Dropbox / FTP servers/clients / remote mounts via SSH fuse
