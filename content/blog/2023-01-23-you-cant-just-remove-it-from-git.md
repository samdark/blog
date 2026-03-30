---
title: "😈 You can't just remove it from git"
date: 2023-01-23 18:01:16
edited: 2023-01-23 18:03:28
---


`git` is great for storing source code. Lightweight, fast, cheap branching, full change history. Ideal for development. *// Thanks, Linus!*

The problem with "full change history" is that `git` remembers **everything** including your secrets: API keys, passwords, tokens.

Checking for such stored secrets is a must. Fortunately, there is a tool for this called "gitleaks": [https://github.com/zricethezav/gitleaks](https://github.com/zricethezav/gitleaks)

You get the tool, run it with `gitleaks detect -v` and get a detailed list of secrets found including commit hashes, files etc.

I highly recommend running it on your codebase. Please share what you found in the comments (without details, of course).