---
title: "📊 DI container doesn't really need lazy objects"
date: 2025-10-22 09:37:08
edited: 2025-10-22 09:38:22
tags:
  - php
  - di
  - performance
---


[Lazy objects](https://www.php.net/manual/en/language.oop5.lazy-objects.php) in PHP are a very interesting feature that allows you to defer heavy initialization in many cases. I wanted to use these immediately somewhere where it would give maximum performance gains. The obvious choice was a DI container. It instantiates many objects every request or worker initialization; thus, the impact should be significant.

But, thinking more about it, it's not the case. Dependencies are nowadays obtained by type-hinting mostly:


```php
final class MyClass
{
    public function __construct(
        private MyDependency $dependency,
        private CacheInterface $cache
    )
    {}
}
```


The key here is that what we obtain what we use almost immediately, usually in the same class, and all modern DI containers are lazy nowadays; no object is being created if it's not going to be used. Thus, the laziness of the service object itself doesn't give us anything unless the code of the application is very messy.

#php #di #performance