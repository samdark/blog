---
title: "Clean Architecture – A Craftsman's Guide to Software Structure by Robert \"Uncle Bob\" Martin @ DevTernity"
date: 2022-12-13 09:00:55
edited: 2022-12-13 09:05:46
image: /blog/assets/photo_6@13-12-2022_12-00-55.jpg
---

![](/blog/assets/photo_6@13-12-2022_12-00-55.jpg)

## Details

- Whenever there's arch boundary you want all dependencies point from lower level to higher level.
- Database is a detail. I/O device. No ORMs above architecture boundary. Below is OK.
- Do not create an interface unless there are multiple users. Tests are user as well.
- First make it work, then make it right, then make it fast.
- Never optimize w/o measuring first. Whatever slows system down isn't what you think.

## QA between me and Robert Martin:

> Isn't deferring too much result in: 1) Too many abstractions. 2) Too long development time.

No. It will result in right number of abstractions cause that's what abstractions are for. And it will help you go faster. There's old rule about software. You do software fast by doing it right and well. Don't rush, take your time and do things well. It's multiplied by a factor of 10 in software. No benefit in rushing.

#DevTernity