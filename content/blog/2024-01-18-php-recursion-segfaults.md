---
title: PHP recursion segfaults
date: 2024-01-18 12:26:31
edited: 2024-02-16 19:25:18
tags:
  - php
---


PHP doesn't detect recursion by itself causing stack overflow and a segfault with SIGSEGV, exit code 139. In order to have a proper error with a stack trace you can[ install Xdebug](https://xdebug.org/) and enable it in develop mode with `XDEBUG_MODE=develop` environment variable.

Then you'll get a proper stack trace pointing exactly to the cause:


```
/app/src/Entity/WeatherAlert/WeatherAlertSiteSettings.php:586
/app/src/Entity/Project/Site.php:354
/app/src/Entity/WeatherAlert/WeatherAlertSiteSettings.php:586
/app/src/Entity/Project/Site.php:354
/app/src/Entity/WeatherAlert/WeatherAlertSiteSettings.php:586
/app/src/Entity/Project/Site.php:354
```


#php