---
title: 🐘 PostgreSQL collations
date: 2026-03-25 16:47:40
edited: 2026-03-25 16:48:24
tags:
  - postgresql
  - collation
  - encoding
---


In PostgreSQL collation determines how strings are sorted and compared. Nowadays projects operate all over the world so we need good support for UTF-8 with natural language sorting which works for any language.

There three sources of collation/locale available in PostgreSQL:

1. builtin — only byte-sorting is available. Doesn’t work for the case.

2. libc — unpredictable, tied to the OS, and doesn’t survive upgrades well.

3. ICU — predictable, portable across OS, properly versioned, natural-sorting, deterministic (suitable for unique indexes and keys). That’s what we need.

From ICU-based locales, we need `und-x-icu`. `und` there is an "undefined" locale. It works reasonably well for any language, including Asian ones.

To make it work, the following should be in the env variable:


```sh
POSTGRES_INITDB_ARGS="--locale-provider=icu --icu-locale=und --encoding=UTF8"
```


It sets up defaults instance-wide. There's one quirk though — defaults can't be changed if you already have the database so the only way to do it right is to:

1. Backup existing data.
2. Kill the instance and wipe the data.
3. Up new instance with proper settings.
4. Restore the data.

#postgresql #collation #encoding