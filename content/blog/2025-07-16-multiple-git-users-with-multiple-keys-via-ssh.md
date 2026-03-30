---
title: Multiple git users with multiple keys via SSH
date: 2025-07-16 08:46:18
edited: 2025-07-22 18:43:58
tags:
  - ssh
  - github
  - bitbucket
  - gitlab
---


Sometimes you need to have multiple users at GitHub, GitLab or BitBucket. In this case you need different SSH keys. You can do it with a simple hack.

In `~/.ssh/config`:


```
Host github.com-user1
    HostName github.com
    User git
    IdentityFile ~/.ssh/user1
    IdentitiesOnly yes

Host github.com-user2
    HostName github.com
    User git
    IdentityFile ~/.ssh/user2
    IdentitiesOnly yes
```


Then in repository config, `.git/config`:


```
[remote "origin"]
url = git@github.com-user1:company/repository.git
```


#ssh #github #bitbucket #gitlab