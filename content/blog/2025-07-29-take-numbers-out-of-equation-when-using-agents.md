---
title: 🧐 Take numbers out of equation when using agents
date: 2025-07-29 09:03:28
edited: 2025-07-29 09:03:39
tags:
  - llm
  - agents
  - php
  - phpbench
image: /blog/assets/photo_118@29-07-2025_12-03-28.jpg
---

![](/blog/assets/photo_118@29-07-2025_12-03-28.jpg)


At Yii3 we're lucky that we have nearly 100% test coverage. This way we can safely experiment with LLM coding agents without the fear of broken anything.

Previously I did some experiments about improving performance of our foundational packages such as arrays and strings. It kinda worked this way:

Ensure tests are OK, run benchmark, remember numbers, did optimization, ensure tests are still OK, run benchmark and compare numbers. If these improved, commit the change.

The weak part here is numbers. LLMs are awful at these. It is improving but is still quite bad. So I thought, can we take the numbers out of LLM responsibility... and yes, we can.

Here's what I've ended up with for PHP:


```
Iteratively improve performance.

1) Run `./vendor/bin/phpbench run --tag=original --retry-threshold=2 --iterations=10 --revs=1000`.
2) Do a single and focused optimization. Do not run tests at this step.
3) Run the following to get benchmark results replacing "Good optimization" with a short summary of the change
  `./vendor/bin/phpunit && ./vendor/bin/phpbench run --report=aggregate --ref=original --retry-threshold=2 --iterations=10 --revs=1000 --assert="mode(variant.time.avg) <= mode(baseline.time.avg) +/- 5% and mode(variant.mem.peak) < mode(baseline.mem.peak) +/- 1%" && git add . -- ':!.phpbench' && git commit -m "Good optimization" || git checkout -- .`.
4) Repeat from step 1.
```


#llm #agents #php #phpbench