---
title: 🌵 Performance impact of immutable methods in PHP
date: 2024-10-29 18:39:08
edited: 2024-10-29 18:39:18
tags:
  - php
image: /blog/assets/photo_86@29-10-2024_21-39-08.jpg
---

![](/blog/assets/photo_86@29-10-2024_21-39-08.jpg)


> Translated version of a post by Yii core team member, Sergey Predvoditelev: https://t.me/sergei_predvoditelev/132

Immutable objects make code more predictable, guaranteeing immutable state to avoid unexpected behavior. Such objects often contain methods that allow you to create a clone of the object with a changed value of some property. For example, the request object from PSR-7:


```php
$request = $request
    ->withMethod('OPTIONS')
    ->withRequestTarget('*')
    ->withUri(new Uri('https://example.org/'));
```


A question that often comes up in discussions is how this approach affects memory consumption and execution speed.

I tried to take some measurements using PHPBench:

• I took two identical classes, differing only in mutability;
• reading files with classes was taken out of the tests so that it wouldn't affect the results;
• made 3 variants of tests: for 1, 14 and 36 method calls;
• ran 50 iterations and calculated the average.

You can see the results on the screenshot [or in the repository at GitHub](https://github.com/vjik/php-immutable-vs-mutable-bench).

⭐️  In terms of memory everything is identical, cloning itself does not lead to increased consumption. 

⭐️ The execution time has increased relatively significantly, but in absolute numbers it is very insignificant.

Predictability of program behavior is worth these microseconds, don't you think? 🧐

#php