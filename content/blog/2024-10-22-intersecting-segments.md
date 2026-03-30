---
title: 💡Intersecting segments
date: 2024-10-22 09:48:49
edited: 2024-10-22 09:48:56
image: /blog/assets/photo_85@22-10-2024_12-48-49.jpg
---

![](/blog/assets/photo_85@22-10-2024_12-48-49.jpg)


A common task of filtering segments by being visible in a certain range is the one that is coming back to me often. The solution condition is quite elegant and isn't intuitive (at least for me):


```
E >= your start && S <= your end
```


*// We use it to load only visible time slots (tasks in form of date-time intervals) at* [Twindo.ai](https://Twindo.ai) *planner*.