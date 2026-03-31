---
title: final vs not final
date: 2023-02-03 11:44:00
edited: 2023-02-03 11:49:19
---


A reddit thread emerged today raising the topic again: [https://www.reddit.com/r/PHP/comments/10secwq/95_final_readonly_classes_what_is_your_superpower/](https://www.reddit.com/r/PHP/comments/10secwq/95_final_readonly_classes_what_is_your_superpower/)

viktorprogger in comments is Yii3 core team member and what he wrote I fully agree with:

> Hi! I'm not the OP, but we in r/yii3 make classes final by default. The idea is simple: you should not change class behavior, only extend it (O and L in SOLID). And this is achievable with composition instead of inheritance. If not, it's treated as a bug in the framework.
>
> Now let me answer your questions:
>
> Yes, all our services are final. Not all of them has interface, because some of them not meant to be replaced with another implementation. These are usually facades for a complicated set of classes.
>
> Yes, testing becomes more complicated, because you have to really create object for all the final classes. Anyway, all our released packages has ~100% tests coverage, ~100% mutation score via Infection, and Psalm set at level 1 without any errors.

There are also good comments about mocking in testing overall.

#php #final