---
title: "👩‍💻PHP: check if property is initialized"
date: 2024-11-06 09:16:21
edited: 2024-11-06 09:16:30
tags:
  - php
---



```php
<?php

final class MyClass 
{
  public string|null $string;
  
  public function isInitialized(): bool
  {
    return array_key_exists('string', get_object_vars($this));
  }
}

$class = new MyClass();

var_dump($class);
var_dump($class->isInitialized());

$class->string = null;

var_dump($class->isInitialized());
```


gives:


```
object(MyClass)#1 (0) {
  ["string"]=>
  uninitialized(?string)
}
bool(false)
bool(true)
```


Thanks, [@SergeiTigrov](https://t.me/SergeiTigrov)

#php