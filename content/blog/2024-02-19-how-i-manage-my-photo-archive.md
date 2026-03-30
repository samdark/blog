---
title: 💾 How I manage my photo archive
date: 2024-02-19 06:52:19
edited: 2024-02-19 07:35:46
tags:
  - photo
image: /blog/assets/photo_61@19-02-2024_09-52-19.jpg
---

![](/blog/assets/photo_61@19-02-2024_09-52-19.jpg)


I was a photo a enthusiast for years, making and processing photos just for fun, learning how to get nice images. Of course, the question of how to store all these photos was actual from the very beginning. Here's what I've learned.

Clouds are good only as backup. You're going to store precious images for lifetime and services are dying. Even big ones such as [Google Picasa](https://picasa.google.com/). So the only good option is to store images locally.

I use [Synology NAS](https://www.synology.com/) with two disks mirrored. It does backup to [Microsoft OneDrive](https://www.microsoft.com/en/microsoft-365/onedrive/online-cloud-storage) automatically. 

Synology was chosen because it just works and is convenient.

OneDrive was chosen after trying many cloud solutions. It has enough performance and stability. 1TB is included into [Microsoft 360](https://www.microsoft.com/en/microsoft-365) subscription.

Directory structure is the following:


```
!incoming
  2024-05-11 incoming
  phone_trash1
photo
  2023
    2023-12-07 Birthday
    2023-11-11 Home
  2022
    2022-06-12 Village
  2021
    2021-05-11 Birthday
```


Initially, everything goes into `!incoming`. When bad photos are deleted and the reset are processed, it goes into `photos`. There, directories are named by years and the by events starting with `YYYY-mm-dd` format. Such structure allows to quickly locate the pictures you need and view events chronologically.

By the way, the following is useful when starting to name directories:


```sh
exiftool "-Directory<DateTimeOriginal" -d "%Y-%m-%d" .
```


Another thing is RAWs. When I've used Canon camera, I was filming into RAW and then processing into JPEGs. That was giving quite good images but processing itself was not a quick process. I have many of these RAWs unprocessed starting from 2014. A few years ago I've switched to Fujifilm because I liked their JPEGs. RAWs are available as well for exceptional situations such as filming aurora or lightning storms.

#photo