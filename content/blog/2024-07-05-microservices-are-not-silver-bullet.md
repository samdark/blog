---
title: 👷Microservices are not silver bullet
date: 2024-07-05 12:00:26
edited: 2024-07-05 12:01:49
tags:
  - microservices
  - architecture
image: /blog/assets/photo_75@05-07-2024_15-00-26.jpg
---

![](/blog/assets/photo_75@05-07-2024_15-00-26.jpg)


👎 You likely don't need microservices if:

1. You aren't ready to handle increased complexity: more infrastructure💰, more error handling, extra tools for debugging and logging 🧠
2. You aren't familiar with bounded contexts and think that "micro" in a microservice is about "doing one job" 🤯
3. You have no problems that microservices solve.

👍 You likely need microservices if:

1. You have multiple teams working on the same code base and there are constant conflicts. Responsibilities are not clear 😖
2. Some parts of the systems have slightly different performance and durability requirements ⚡️
3. The system overall is too complex so you need big abstractions 🧠
4. You want part of the system to use different tech stack.

#microservices #architecture