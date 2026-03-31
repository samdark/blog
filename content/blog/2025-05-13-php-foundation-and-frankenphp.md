---
title: "PHP foundation and FrankenPHP"
date: 2025-05-13 21:04:20
edited: 2025-05-13 21:19:37
tags:
  - php
  - frankenphp
  - sapi
image: /blog/assets/photo_107@14-05-2025_00-04-20.jpg
---

![](/blog/assets/photo_107@14-05-2025_00-04-20.jpg)

PHP foundation had views on adopting [FrankenPHP](https://frankenphp.dev/), alternative SAPI to run PHP with [Caddy](https://caddyserver.com/) featuring worker mode support, for quite some time. I've seen some internal plans but it wasn't a great idea to disclose any of these before it happens. Now [it is finally confirmed](https://externals.io/message/127347).

FrankenPHP will be moved under [PHP GitHub organization](https://github.com/php), some docs will be moved to [php.net](https://www.php.net/). Maintainer stays the same, Kévin Dunglas. Good news. Likely such move will spark more usage, contributions and overall stability.

At [Twindo.ai](https://www.twindo.ai/) we're running it for a year without any significant issues (but with some quirks and not in the worker mode since we're afraid our code won't be able to do so).

*p.s.* [my talk about FrankenPHP](https://youtu.be/v-HuqmqI2Cs?si=38Hl3torHDmlx546)*. Slides are in English*, the talk is in Russian.

🎉  #php #frankenphp #sapi