---
title: 📦 Context and events
date: 2024-08-06 05:23:39
edited: 2024-08-06 05:23:52
tags:
  - events
  - cohesion
  - coupling
  - complexity
image: /blog/assets/photo_78@06-08-2024_08-23-39.jpg
---

![](/blog/assets/photo_78@06-08-2024_08-23-39.jpg)


Events within a single service are very attractive conceptually. They potentially allow you to reduce coupling to a minimum, so you can even move functionality to another system in the future.

The problem is that when you introduce events within the same bounded context or module (i.e., something that is conceptually whole), they reduce cohesion, so it's easy to produce a system where abstraction is more complicated than the original. 

I've seen the problem when events were used for obviously sequential processes within the same context. Cohesion drops a lot since now parts of the whole are communicating with an extra layer — events. It's very hard to read code like that. Also, coupling isn't removed, it just becomes "temporal coupling," i.e., dependent on the order of the events. Overall, it brings severe testing and maintenance issues.

#events #cohesion #coupling #complexity