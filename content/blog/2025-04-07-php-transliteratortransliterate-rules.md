---
title: 📕PHP transliterator_transliterate() rules
date: 2025-04-07 13:01:53
edited: 2025-04-07 14:46:49
tags:
  - php
  - intl
---


Had to adjust `transliterator_transliterate()` rule. `Any-Latin; NFD; [:Nonspacing Mark:] Remove; NFC; [:Punctuation:] Remove; Lower();` to be precise. Since I don't use these often, I don't remember the syntax. [PHP guide does not have it](https://www.php.net/manual/en/transliterator.createfromrules.php) but since that's intl, its docs are the way to go:

[https://unicode-org.github.io/icu/userguide/transforms/general/#overview](https://unicode-org.github.io/icu/userguide/transforms/general/#overview)

#php #intl