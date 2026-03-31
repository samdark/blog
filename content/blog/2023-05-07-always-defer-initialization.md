---
title: ✈️ Always defer initialization
date: 2023-05-07 13:25:35
edited: 2023-05-07 13:25:51
image: /blog/assets/photo_31@07-05-2023_16-25-35.jpg
---

![](/blog/assets/photo_31@07-05-2023_16-25-35.jpg)


Modern frameworks utilize dependency inversion, with auto-wiring and DI containers used to populate the dependency tree. However, this can lead to large dependency trees, which is not inherently problematic, as instantiation is typically inexpensive. Nevertheless, if a service has heavy initialization in its constructor, it can significantly impact performance.

For example, the [Symfony console initially defined command names and descriptions in non-static methods](https://github.com/symfony/symfony/pull/39851). As a result, when called without a command name, the console would instantiate every available command, some of which had expensive initializations such as connecting to a database, verifying API credentials, or reading files from disk. Although this issue has been resolved by using static metadata, it highlights the importance of deferring initialization for optimal performance.

To avoid performance issues caused by heavy initialization, it is crucial to defer initialization for as long as possible. By doing so, you can ensure that your application runs smoothly, regardless of the complexity of the dependency tree.

#php #performance