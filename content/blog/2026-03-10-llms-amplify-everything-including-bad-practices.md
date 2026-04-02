---
title: 🤔 LLMs amplify everything including bad practices
date: 2026-03-10 11:29:01
edited: 2026-03-10 11:29:04
tags:
  - llm
---


LLMs amplify good parts of a human engineer — they help shipping more, they free us from many routine tasks. They can even help with less trivial things like code review and even some architectural decisions and that's great.

At the same time, they amplify bad parts many times more:

1. Unmanaged tech debt grows very fast. You can't postpone automated tests, removing clutches etc. It hits you in months or even weeks.
2. Engineer absolutely can't vibe-code without checking results now. Shipping code that wasn't run once was possible (but still quite bad) before. Now it's not. A sure way to get fired.
3. Bottlenecks in the SDLC are becoming obvious almost immediately and are usually making performance boost either minor or impossible.
4. Not thinking and blindly relying on key decisions made by LLM leads to disaster quite fast as well.

It seems that the most valuable engineering skill of future would be an ability to take full responsibility of what you deliver doing everything necessary so it works properly and solves the problem in question:

1. Understanding the problem. *// previously analysts, architects*
2. Verifying solution. *// previously leads*
3. Actually testing results. *// previously  testers*

Engineer role shifts from coding to thinking and verifying results.

#llm