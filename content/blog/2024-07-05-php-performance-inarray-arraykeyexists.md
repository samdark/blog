---
title: "⚡️PHP performance: in_array → array_key_exists"
date: 2024-07-05 08:57:02
edited: 2024-07-05 09:06:18
tags:
  - php
  - in_array
  - array_key_exists
  - performance
---


Let's imagine we need to process each user exactly once:


```php
$processedIds = [];

foreach ($users as $user) {
    if (in_array($user['id'], $processedIds)) {
        continue;
    }

    // send an email to user

    $processedIds[] = $user['id'];
}
```


 The complexity of `in_array` is `O(n)` and that's not great considering `foreach` which makes it `O(n²)`. Is it possible to optimize? Yes:


```php
$processedIds = [];

foreach ($users as $user) {
    if (array_key_exists($user['id'], $processedIds)) {
        continue;
    }

    // send an email to user

    $processedIds[$user['id']] = 1;
}
```


We've reverted array so IDs are now keys. The complexity of `array_key_exists` is close to `O(1)` so total complexity is now `O(n)`.

#php #in_array #array_key_exists #performance