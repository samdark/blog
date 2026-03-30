---
title: ⚡️Download less when building Composer Docker image
date: 2024-10-08 21:06:19
edited: 2024-10-09 09:02:52
tags:
  - php
  - docker
---


When building your own Composer Docker image, which is a good idea to have the same environment as your production one, Docker is downloading quite large image, about 190MB, and then you copy a small 2.5MB binary from it:


```docker
FROM composer as composer

FROM your_php_image

COPY --from=composer /usr/bin/composer /usr/bin/composer
```


It's possible to download binary only:


```docker
FROM composer/composer:latest-bin as composer

FROM your_php_image

COPY --from=composer /composer /usr/bin/composer
```


All that [thanks to Grzegorz Korba](https://blog.codito.dev/2022/11/composer-binary-only-docker-images/).

See also [https://getcomposer.org/doc/00-intro.md#docker-image](https://getcomposer.org/doc/00-intro.md#docker-image)

#php #docker