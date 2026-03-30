---
title: 🎁 On Docker + WSL 2 performance
date: 2023-02-07 19:10:05
edited: 2023-02-07 19:11:21
---


I'm using Windows 11 daily on my PC and also using Docker to have a controllable development environment for PHP. WSL2 is fully compatible with Linux so more than suitable to run Docker but there's one quirk. Using Windows file system from WSL or using WSL file system from Windows is **extremely slow**. The only way to have a performance that is comparable to native Linux is to avoid these cross-OS [Plan9 file shares](https://nelsonslog.wordpress.com/2019/02/16/plan-9-rides-again-wsl-file-access/):

1. Work in WSL file system.
2. Avoid `/mnt/c` and other Windows FS mounts.

The same is true about IDE. Accessing files using WSL FS via `\\wsl.localhost\Ubuntu` or `\\wsl$` makes IDE quite slow. Thankfully, there are remote development capabilities in both [PhpStorm](https://www.jetbrains.com/help/phpstorm/remote-development-starting-page.html) and [VSCode](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-wsl).

**References**

- [https://docs.docker.com/desktop/windows/wsl/](https://docs.docker.com/desktop/windows/wsl/)
- [https://learn.microsoft.com/en-us/windows/wsl/install](https://learn.microsoft.com/en-us/windows/wsl/install)
- [https://www.docker.com/blog/docker-desktop-wsl-2-best-practices/](https://www.docker.com/blog/docker-desktop-wsl-2-best-practices/)
- [https://www.jetbrains.com/help/phpstorm/remote-development-starting-page.html](https://www.jetbrains.com/help/phpstorm/remote-development-starting-page.html)
- [https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-wsl](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-wsl)