---
title: "Clean Code: Eternal Principles by Jakub Pilimon @Devternity"
date: 2022-12-12 11:00:36
edited: 2022-12-12 11:16:02
---


⭐️ SLAP principle and cognitive load

Keep code at the same level of abstraction.

Keeping level of abstraction consistent is something that's often hard to grasp until you actually feel the pain of having to work with mixed abstraction levels.

Bad:


Map<String, String> getAffiliates(Customer customer)


Good:

Customers getAffiliates(Customer customer)

We reduce cognitive load by:  

1.  Increasing the level of abstraction (following SLAP).
2.  Increasing cohesion (keep **related** things together, **unrelated** – separately)
3.  Decomposition