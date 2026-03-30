---
title: 😞 GitHub self-hosted runners
date: 2025-04-22 21:25:01
edited: 2025-04-22 21:51:16
tags:
  - php
  - github
  - runner
  - selfhosted
---


[Ahost.eu ](https://ahost.eu/)provided Yii team a server (👍) to test if self-hosted runners for GitHub could give us better build times and no waiting in queue.

- INTEL SSDSC2KB48.
- Intel(R) Xeon(R) CPU E5-2630 v4 @ 2.20GHz.
- 32GiB DIMM DDR4 Synchronous 2667 MHz (0.4 ns) ×2

👷Setting it up involved:

- [Setting up a server and the runner itself](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/adding-self-hosted-runners). It was not easy. Whole team helped me with quirks.
- [A fix for setup-php action by Shivam Mathur 😍 ](https://github.com/shivammathur/setup-php/issues/929)

🕔 After all, [it worked](https://github.com/yiisoft/db-oracle/pull/312). We took db-oracle for test and I was disappointed comparing timings. GitHub took 8 minutes 5 seconds on PHP 8.4 while self-hosted runner completed in 10 minutes.

🤔 Overall:

1. Microsoft provides well-made infra for actions. Even to OpenSource 🚀
2. Self-hosted runner takes time to set up and it needs maintenance.
3. Performance very much depends on the server. Likely with decent nvme it could be faster. Not sure if it will be faster than Microsoft servers.

p.s. GitHub posted "[When to choose GitHub-Hosted runners or self-hosted runners with GitHub Actions](https://github.blog/enterprise-software/ci-cd/when-to-choose-github-hosted-runners-or-self-hosted-runners-with-github-actions/)". Just in time.

#php #github #runner #selfhosted