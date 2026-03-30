---
title: 🎁 Radix router for Yii3
date: 2026-02-21 14:20:49
edited: 2026-02-24 22:39:34
tags:
  - yii
  - router
  - radixrouter
---


About half a year ago [wilaak](https://github.com/wilaak) implemented [radix router](https://github.com/wilaak/radix-router). The router is base on [radix tree](https://en.wikipedia.org/wiki/Radix_tree) and is faster than [regex-based FastRoute](https://github.com/nikic/FastRoute) which is default "driver" for Yii3 router. 

Last month [sirix777](https://github.com/sirix777) implemented a "driver" for Yii3 router that uses radix router and did some benchmarks that prove that it's [way faster implementation](https://github.com/sirix777/yii-radixrouter/blob/main/benchmark-comparison/README.md).

There's a drawback, of course. Radix router doesn't support regexp. If the router would ever be a bottleneck in your app, you have a good option now.

[https://github.com/sirix777/yii-radixrouter](https://github.com/sirix777/yii-radixrouter)

#yii #router #radixrouter