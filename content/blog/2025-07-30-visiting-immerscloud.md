---
title: 👀 Visiting immers.cloud
date: 2025-07-30 13:32:05
edited: 2025-07-30 13:37:02
tags:
  - gpu
  - datacenter
  - cloud
  - yii
image: /blog/assets/photo_119@30-07-2025_16-32-05.jpg
---

![](/blog/assets/photo_119@30-07-2025_16-32-05.jpg)


In early June, I visited [immers.cloud](https://immers.cloud/). As far as I know, this is the first of its kind in Russia. Since 2019, they run an unusual data center with high-end GPUs (there are about 12 models at the moment).

It is unusual because the GPUs consume a lot of energy. One "shelf" consumes as much as 80 kWh. That is about the same as 10 shelves in a classic data center. And there is more than one - about 2000 clients use it at the same time. In total, there are more than 40,000  clients. It generates a lot of heat, so classical cooling is not an option and all the hardware float in oil in specially designed horizontal containers. By the way, you can immediately see which of the GPUs is currently loaded. There will be ripples around it ... convection. A separate interesting thing is an external cooling system. I did not photograph it, but the sight is impressive.

All servers can do GPU passthrough and GPU enumeration, including NVlink. Clients rent cards starting from two hours to long-term for various purposes:

1. Train or run LLM. This is the majority of users since 2024.
2. Render 3D scenes, video, animation.
3. Play games.

The software inside and outside runs a lot on Yii2, which is very nice, because it is quite complex. There are also mass services like cloud gaming with streaming software, inference APIs, [TurboRender.com](https://turborender.com/).

I was pleasantly surprised by the project team. Very hardcore guys with a very broad knowledge and a bunch of ideas. And with a habit of doing the "impossible". We talked about very different topics. Very, very warm feelings about it.

Vlad, their CTO, [wrote a short note about it](https://t.me/vladgalyanin/75).

Hope to visit again one day.

#gpu #datacenter #cloud #yii