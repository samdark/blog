---
title: 🖼 Fast and memory efficient PHP image resizing
date: 2024-04-10 05:30:59
edited: 2024-04-10 05:31:43
tags:
  - php
  - images
image: /blog/assets/photo_67@10-04-2024_08-30-59.jpg
---

![](/blog/assets/photo_67@10-04-2024_08-30-59.jpg)


In our current project we've adopted a very efficient solution for image resizing based on [libvips](https://www.libvips.org/). It is [really fast and memory efficient](https://github.com/libvips/libvips/wiki/Speed-and-memory-use).

[PHP binding is available](https://github.com/libvips/libvips). It is a good example of using FFI. Here you can see [the benchmark with PHP](https://github.com/jcupitt/php-vips-bench). 


```php
$filename = 'image.jpg';
$image = Vips\Image::thumbnail($filename, 200, ['height' => 200]);
$image->writeToFile('my-thumbnail.jpg');
```


*// If you have trouble with XDebug,* [see this issue](https://github.com/libvips/php-vips/issues/236)*. In my case it was PHP 8.2*

#php #images