---
title: On naming boolean getters // in Java
date: 2023-04-08 11:45:49
edited: 2023-04-09 22:25:27
image: /blog/assets/photo_26@08-04-2023_14-45-49.jpg
---

![](/blog/assets/photo_26@08-04-2023_14-45-49.jpg)


During Yii3 development an interesting topic was risen. How to name boolean getters for properties like `$allowNull`. Possible names were:

- `isAllowNull()
`- `allowsNull()
`- `isNullable()
`- `shouldAllowNull()
`- `hasNullAllowed()

`One of the arguments for `isAllowNull()` i.e. always prefixing property name with `is` was that it is used in Java for years.

Since I was coding in Java before switching to mainly PHP, I remember why is that:

1. It is part of [Java Beans spec](http://www.oracle.com/technetwork/java/javase/documentation/spec-136004.html). Beans defined like that are able to work with tools using reflection. It can read data from methods prefixed with `is` and `get`.
2. It later became part of JSP.

So overall, that is pure technical limitation and has nothing to do with either readability or correct English.