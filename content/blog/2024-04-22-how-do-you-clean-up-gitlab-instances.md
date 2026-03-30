---
title: ❓How do you clean up GitLab instances?
date: 2024-04-22 15:59:18
edited: 2024-04-22 15:59:26
tags:
  - gitlab
---


For now I have the following in my crontab so GitLab doesn't take all the disk space:


```sh
rm -rf /home/gitlab-runner/builds/* && docker system prune -f && docker volume prune -f && docker image prune -af
```


Is there a better way?

#gitlab