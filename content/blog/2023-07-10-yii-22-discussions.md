---
title: Yii 2.2 discussions
date: 2023-07-10 03:15:00
edited: 2024-02-19 06:56:09
tags:
  - yii
image: /blog/assets/photo_45@10-07-2023_06-15-00.jpg
---

![](/blog/assets/photo_45@10-07-2023_06-15-00.jpg)


Yii is a tough project. Especially Yii3 that takes way too much time and isn't fully released yet which adds to the frustration about it. Of course, that's similar to what was with Yii2 back in the days of Yii 1.1 but a bit different. Yii2 was conceptually similar to Yii1. Despite not being backwards compatible, service locator, MVC and overall framework-ish stuff was similar. Yii3 is different in this regard. The concepts are more fundamentally correct, the ideas are a bit different. That's why we were constantly worried about the adoption of Yii3 among Yii2 users.

And that's, partially, why Yii 2.2 might happen now. So far, it's discussions and some drafts. The rough plan is:

1. [Refresh Yii 2.0 pipelines and builds](https://github.com/yiisoft/yii2/pull/19883) to be sure tests are alright.
2. [Up PHP version to 8.1](https://github.com/yiisoft/yii2/pull/19879), [remove deprecated stuff](https://github.com/yiisoft/yii2/discussions/19876).
3. [Reuse individual Yii3 packages](https://github.com/yiisoft/yii2/discussions/19875).

Point 3 is what is the most interesting in terms of Yii3 adoption. That would help us to stop maintaining two different code bases in many cases and result in improvement of Yii3 packages.

[https://github.com/yiisoft/yii2/discussions/categories/yii-2-2](https://github.com/yiisoft/yii2/discussions/categories/yii-2-2)

#yii