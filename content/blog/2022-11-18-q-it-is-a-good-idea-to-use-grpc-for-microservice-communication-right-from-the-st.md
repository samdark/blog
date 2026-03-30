---
title: "Q: It is a good idea to use gRPC for microservice communication right from the start? Or should I"
date: 2022-11-18 20:10:09
edited: 2022-11-19 06:06:34
---

Q: It is a good idea to use gRPC for microservice communication right from the start? Or should I start using it only when I'll have performance problems?

A: gRPC is good not only for performance but because proto-file contracts are defined strictly. Another good thing is that there are standard tools to generate code from these. Debugging isn't that pleasant but isn't too bad.