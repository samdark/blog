---
title: 👍 Fixing git blame after reformatting all code
date: 2025-10-02 08:10:18
edited: 2025-10-02 08:10:23
tags:
  - git
  - github
---


Living without automated and enforced code style is a mess. But starting with it is painful as well cause it ruins `git blame`. It is starting to point to the developer who reformatting the code instaed of the one who wrote it. There’s a way to fix it.

1. Create `.git-blame-ignore-revs` and fill it with a list of commit IDs to ignore. The ones reformatting code.
2. Now either use `git blame --ignore-revs-file .git-blame-ignore-revs` or configure git to do it automatically with `git config blame.ignoreRevsFile .git-blame-ignore-revs`.

btw., we have such file in Yii2: [https://github.com/yiisoft/yii2/blob/master/.git-blame-ignore-revs](https://github.com/yiisoft/yii2/blob/master/.git-blame-ignore-revs) for exactly that case. [GitHub supports this exact file name in the root of the repository automatically](https://docs.github.com/en/repositories/working-with-files/using-files/viewing-and-understanding-files#ignore-commits-in-the-blame-view).

#git #github