---
title: Q&A from online conference
date: 2022-11-18 19:52:22
edited: 2022-11-18 19:52:25
---

I was participating in an online conference round table recently and there were some interesting questions afterwards I've answered.

> It is a good idea to use gRPC for microservice communication right from the start? Or should I start using it only when I'll have performance problems?

gRPC is good not only for performance but because proto-file contracts are defined strictly. Another good thing is that there are standard tools to generate code from these. Debugging isn't that pleasant but isn't too bad.

> Any good PHP and overall books you can recommend?

Matthias Noback. Robert Martin. Andrew Tannenbaum. Jeffery Friedl.

> Have you practiced Design Review? What are advantages and disadvantages? Doesn't it add too much overhead for tech lead / architect?

I did at Skyeng. Highly recommended. In the end team does more in less time.

> How to determine what task needs design review and what does not?

Can assignee immediately tell about how it should be done in a list of steps? If no — you need design review.

> How to use doctrine relations between entities when you're doing DDD and modules?

You should not. ORM doesn't fit well into tactical patterns of DDD.

> Should I think about future architecture in details on MVP stage?

Overall — yes. But don't get into details too much.

> Should I use ready solutions such as API Platform or is it better to create my own for an MVP?

API Platform enforces its own approach. It is not great for non-CRUDs. You have to fight it.

> What scalability is true scalability? Horizontal or vertical?

Both are true. Both are finite.

> What set of tools you'll pick for a new PHP app?

Composer + satis or private packagist. Docker + k8s. Psalm. Infection. PHPUnit. Yii3.

> What steps do you take to do an enhancements with maximum effectiveness? Do you draw schemas? Communicate with colleagues? Anything else?

I pursue full understanding of the task and the code before I implement anything.

> What type of microservice communication to prefer?

Async communication and background jobs with failover and guarantees you need. See [https://microservices.io/](https://microservices.io/)

> When launching an MVP what could / should be sacrificed and what should not be sacrificed in case you need a fast launch?

Do not sacrifice interfaces. Sacrifice implementation details and feature scope.

#qa #books #php #architecture #ddd #microservices