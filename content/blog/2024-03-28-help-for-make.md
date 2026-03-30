---
title: 🪛 Help for make
date: 2024-03-28 10:44:35
edited: 2024-03-28 10:44:44
tags:
  - make
image: /blog/assets/photo_65@28-03-2024_13-44-35.jpg
---

![](/blog/assets/photo_65@28-03-2024_13-44-35.jpg)


Make is a good build tool that is available out of the box. For this reason I prefer it to more modern ones. One thing it is missing is `help` command.

Luckily, [François Zaninotto came up with a solution](https://marmelab.com/blog/2016/02/29/auto-documented-makefile.html) long time ago:


```make
.PHONY: help

help: ## This help.
  @awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)
```


#make