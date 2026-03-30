---
title: "Stumbled upon https://php-di.org/doc/attributes.html#inject and had a flashback from late 2000 when"
date: 2023-01-12 16:56:05
edited: 2023-01-12 16:57:40
image: /blog/assets/photo_12@12-01-2023_19-56-05.jpg
---

![](/blog/assets/photo_12@12-01-2023_19-56-05.jpg)

Stumbled upon [https://php-di.org/doc/attributes.html#inject](https://php-di.org/doc/attributes.html#inject) and had a flashback from late 2000 when I've developed with J2EE and Spring. That was 2007 — 2008 and all the code was filled with annotations pointing about what dependency to inject where. Using attributes in PHP for the same purpose, as used in PHP-DI, ties your code to specific container implementation and violates the whole idea of dependency inversion principle that your classes should not specify what is injected.

The problem in Java world was big enough so in 2009, a set of injection annotations was defined and standardized as JSR-330 [https://jcp.org/en/jsr/detail?id=330](https://jcp.org/en/jsr/detail?id=330). That allowed container interoperability but did not solve the problem of violating dependency inversion.

PHP seems to fall into the same trap, only 13 years later.