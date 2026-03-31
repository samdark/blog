---
title: ⚡️PHP on Alpine getting faster
date: 2024-04-19 11:06:18
edited: 2024-04-19 11:07:18
---


Some time ago I've posted about PHP being slow on Alpine. I didn't stop there and researched about musl, alternative memory allocators and how it's done in PHP.

Unfortunately, I don't have enough time and competence to make some pull requests. Fortunately, I've asked Roman Pronsky about it and he passed it to PHP core team.

[Results are promising so far](https://github.com/php/php-src/pull/13974)

#php #alpine #docker #performance #musl #glibc