---
title: 🧠 Assumptions
date: 2023-03-24 11:42:04
edited: 2024-02-19 06:59:49
tags:
  - process
---


A real case that happened a few days ago. It was *X of March*. I was busy performance-optimizing a PHP project to handle extra load from TV ads. The load testing went well, the gain in RPS was good. After some time alerts triggered showing that *X of March* the app started to error sending messages through SMTP.

First thought: optimizations broke the app since that the time when it stared to error. Right?

No! Wrong. The only thing we can really assume is "*It was broken at X of March*". That's it. To answer the question whenever the reason was code changes, an extra research is needed. The most productive way to do that is a binary search by using `git bisect`: [https://git-scm.com/docs/git-bisect](https://git-scm.com/docs/git-bisect)

**Moral**: First assumption is likely wrong. Ask yourself if it's correct before taking action.

#process