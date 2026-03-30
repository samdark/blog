---
title: 🔧 WSL2 read only file system
date: 2024-03-28 08:52:13
edited: 2024-04-04 14:19:20
tags:
  - wsl
---


Likely my SSD is starting to fail and I've got corrupted WSL2 file system. The fix is easy.


In WSL itself:


```sh
mount | grep ext4
```


Search for FS that is mounted as `/`. In my case it's `/dev/sdc`.


```sh
sudo e2fsck /dev/sdc -y
```

Then in host PowerShell:


```sh
wsl --shutdown
```



#wsl