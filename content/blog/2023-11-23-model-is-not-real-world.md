---
title: 🧠 Model is not real world
date: 2023-11-23 08:52:01
edited: 2023-11-23 08:52:10
image: /blog/assets/photo_48@23-11-2023_11-52-01.jpg
---

![](/blog/assets/photo_48@23-11-2023_11-52-01.jpg)


A good abstraction is all about **including what matters** and **excluding what doesn't matter** for **the context** of the problem to be solved.

You should never aim to make your model as close to real world as possible. There's always what matters and details that are unnecessary. 

For example, you want to count crows on the image. In order to do that you need to determine objects and then you need to find out if the object is a crow. In order to do that it is enough to use bird features and a corresponding database such as beak, wings, feather color etc. But the crow in real world is more complicated that that: behavior, calls, food chain, navigation, flight characteristics, migration paths etc. 

For our purpose we don't need any of that and modelling a real world crow is a big mistake.

#architecture #design #abstraction