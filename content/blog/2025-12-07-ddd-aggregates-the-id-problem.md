---
title: "🤔 DDD Aggregates: The ID Problem"
date: 2025-12-07 19:36:21
edited: 2025-12-07 19:36:26
tags:
  - ddd
  - uuid
  - autoincrement
  - aggregate
---


When I was learning DDD concepts, I had trouble implementing aggregates: a set of objects that are saved together in a single transaction. The theory made sense, but the practice felt wrong.

The problem was auto-increment IDs from the database. When the database creates IDs, you must save your object first to get an ID. This means your aggregate isn't complete until after you save it. This breaks the DDD concept—aggregates should be complete, valid objects before touching the database.

Transactions became messy. Do I save the parent first, then the children? How do I connect child objects before they have IDs?

The solution is to generate UUIDs in PHP instead. Once I've started using these instead of auto-increment, I was able to create aggregates in memory with all relationships before saving anything. In this case child objects have IDs immediately. Transactions are simple—save everything at once. The database is just storage, not something that controls my code structure.

This one change made DDD aggregates finally work for me. If you have similar problems, try generating IDs in your code instead of using database auto-increment.

#ddd #uuid #autoincrement #aggregate