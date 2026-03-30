---
title: Client-side apps and htmx
date: 2023-05-28 07:35:46
edited: 2023-05-28 07:37:40
image: /blog/assets/photo_41@28-05-2023_10-35-46.jpg
---

![](/blog/assets/photo_41@28-05-2023_10-35-46.jpg)


There's a certain amount of hype about [htmx](https://htmx.org/) now.

⭐️ The idea is that some websites are not meant to be SPA (single page apps) but there are some nice things SPAs do such as making content load asynchronously without page reload. To achieve it, the JS library uses content negotiation and backend, depending on what's requested, either answers with full page HTML or just the block of HTML that is meant to be replaced.

📕 The approach isn't new. I've implemented [Stay project web](https://www.asgeir.xyz/stay) like that in 2012 and it worked quite well back then (except that there was a mobile app with offline capabilities and we needed API anyway). Two years later, [pjax, created by GitHub founder](https://github.com/defunkt/jquery-pjax/) in 2011, was included into Yii2. Then came [Turbolinks from DHH, creator of RoR and Basecamp](https://github.com/turbolinks/turbolinks) that eventually superseded by [Hotwire used in Hey email service](https://hotwired.dev/). The same idea lies within [livewire](https://laravel-livewire.com/) that repeated the path in 2019 and other alternatives.

The htmx itself isn't new as well. It was named [intercooler.js](https://intercoolerjs.org/) and first version came up about 2013.

💭 The approach itself works but not for everything. It won't work well if:

1. You need a native mobile app and API for it. You'll have to support both serverside HTML generation and API at the backend + rendering on the mobile app which is more similar to SPA than to serverside rendering.
2. You have a really complex UI. That's the valid case for SPA.


⭐️ If you do something for 10 years, it usually takes a complete shape so I recommend to at least [read its docs and think about the approach overall](https://htmx.org/docs/).