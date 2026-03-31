---
title: Disabled XDebug performance
date: 2023-12-28 11:01:22
edited: 2024-02-16 13:24:02
tags:
  - php
image: /blog/assets/photo_54@28-12-2023_14-01-22.jpg
---

![](/blog/assets/photo_54@28-12-2023_14-01-22.jpg)

Having [XDebug](https://xdebug.org/) in a Docker image was a no-go for a long time because it was affecting OpCodes when it was installed. This fact often resulted in multiple images (development and production) extended from each other.

A few years ago, Derick Rethans, XDebug author told me that with XDebug 3 release it's no longer an issue but I haven't checked it myself back then.

At a recent [Russian PHP Community meetup](https://www.youtube.com/watch?v=tF9s785SxAM) [Kirill Nesmeyanov](https://github.com/SerafimArts) did a PHP quiz. One of the questions was "How many function calls would happen if XDebug is turned on?":


```php
function example() { return 42; }
example();
```


Kirill voiced a concern that even if XDebug is installed but not enabled, it affects OpCodes generated. Let's check it.

Let's put the code above into `test.php`. Now, [to dump OpCodes, we can run it like this](https://php.watch/articles/php-dump-opcodes):


```sh
phpdbg -p* -d opcache.opt_debug_level=0x20000 test.php
```


XDebug 3 installed without any configuration in php.ini except enabling the module via `zend_extension=php_xdebug-3.3.1-8.2-vs16-nts-x86_64.so`:


```
$_main:
     ; (lines=4, args=0, vars=0, tmps=2)
     ; C:\src\playground\test.php:1-5
L0004 0000 EXT_STMT
L0004 0001 INIT_FCALL 0 96 string("example")
L0004 0002 DO_FCALL
L0005 0003 RETURN int(1)

example:
     ; (lines=4, args=0, vars=0, tmps=1)
     ; C:\src\playground\test.php:3-3
L0003 0000 EXT_STMT
L0003 0001 RETURN int(42)
L0003 0002 EXT_STMT
L0003 0003 RETURN null

```

Now we turn off it explicitly via `xdebug.mode=off`:


```
$_main:
     ; (lines=1, args=0, vars=0, tmps=0)
     ; (after optimizer)
     ; C:\src\playground\test.php:1-5
0000 RETURN int(1)

example:
     ; (lines=1, args=0, vars=0, tmps=0)
     ; (after optimizer)
     ; C:\src\playground\test.php:3-3
0000 RETURN int(42)
$_main:
     ; (lines=1, args=0, vars=0, tmps=0)
     ; C:\src\playground\test.php:1-5
L0005 0000 RETURN int(1)

example:
     ; (lines=1, args=0, vars=0, tmps=0)
     ; C:\src\playground\test.php:3-3
L0003 0000 RETURN int(42)
```


So Derick was correct back then. XDebug **when turned off** doesn't affect PHP execution and could be safely included into Docker image.

#php #xdebug #performance