---
title: Getting started with tech debt
date: 2022-12-19 08:45:54
edited: 2022-12-19 08:50:46
---

An interesting consequence but today I was asked about getting started with tech debt. So below is my short version.

🚒 **Getting started with tech debt**

- It's your job as a developer/lead to care about tech debt, it's not a problem management should take care of.
- Ideally it should be transparent to business. Non-ideally, tech debt could be silently included into estimates.
- Every non-critical tech debt should be created as a ticket. Ideally, doable in a day or two.
- About 30% of a sprint (or any other iteration) should be about tech debt. If it's bad, up to 50% of team capacity should go there.

💡**Ideas to find tech debt**

1. Churn. See [https://rmcreative.ru/blog/post/git-churn](https://rmcreative.ru/blog/post/git-churn) (that's my short article in Russian from 2020, use Google translate if needed).
2. Coupling.
3. Whatever breaks too often.
4. Updating dependency versions.
5. Automated tests.
6. Introduce strict types.
7. Add Sentry/Rollbar to the project. Fix errors.

#techdebt #churn #refactoring