---
title: "Reasons and Ways to Improve Code Quality by Venkat Subramaniam @ Devternity"
date: 2022-12-12 13:02:09
edited: 2022-12-12 13:08:45
---


⭐️ On quality:

- Quality is the measure of how easy the code is to change.
- Optimize for reading. A good code reads like a story.
- Lowering the quality lengthens the development time.
- Slow down in order to gain speed.
- Make it work, then make it better really soon.
- Look for the flow in the code.
- Prefer minimalistic code and design.
- We can't be agile if our code stinks.

⭐️ On complexity:

- Extensibility is important but often leads to unnecessary complexity.
- Using principles dogmatically w/o context leads to unnecessary complexity.
- Simple and small code is also easy to modify, because there is little to modify.
- A sign of a poor design is if you see a lot stubs and mocks in your tests. If I see test files where every test has at least 3 different mocked dependencies.  I start to wonder if we're actually testing anything at all.

⭐️ On principles:

- SLAP (Single level of abstraction) is more important than SRP (cohesion).
- Low coupling = fewer dependencies is better.
- Loose coupling = depend on interfaces, not classes.

⭐️ On tech debt:

1. Write down
2. Sort by importance
3. Allocate time to pay debts

⭐️ On tactical code reviews:

1. Review tests.
2. What's the quality of tests?
3. Found a bug — write a test for it.