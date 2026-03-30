---
title: 🐧 Switching to Linux
date: 2024-07-08 05:49:55
edited: 2024-07-09 09:15:25
tags:
  - linux
  - popos
  - ubuntu
  - windows
---


A few month ago I've switched from Windows 11 to Linux as my primary OS for work. The goal was to have better Docker host than WSL. I've tried Ubuntu but it didn't work well with my hardware, especially nVidia despite installing proprietary drivers: 100% CPU load all the time. Might be the driver itself, might be wayland. So I've tried [Pop!_OS](https://pop.system76.com/) and it worked well right out of the box.

After a while, despite some rough edges, it is pretty good:

1. Window manager overall is fine and doesn't require much tweaking.
2. Hardware support is good. No fatal issues. Audio, mic, nVidia, USB devices etc. are fine.
3. DPI scaling is way better in Windows. Fractional scaling is basically not usable so I've got used to 200% with some font size adjustments.
4. There are some problems with suspend mode. Sometimes when you're out of it, there's no Internet (LAN works well), one or two times monitors didn't pick up, sometimes USB sound is missing. Usually solved with a reboot. Inconvenient but not critical.
5. Installing software isn't as straightforward as on Windows or MacOS. Sometimes you have to read logs, install missing dependencies and/or fix permissions.
6. [Pop!_OS](https://pop.system76.com/) uses flatpak. It feels like apps management in MacOS and is alright so far.
7. Gnome terminal is alright. Not as good as Windows terminal but good enough.
8. OS login screen doesn't focus on input by default.
9. Setting up keyboard layout is tricky. Spent a few days on it. Result is awesome but it wasn't straightforward at all.
~~10. Lost gaming. I didn't play for more than a year anyway.~~
11. Wine works well for many Windows apps.
12. Missing some Total Commander awesomeness but Nautilus + console are OK as well.
13. Missing Photoshop and Camera RAW. Darktable and gimp are alright but I'm not used to these.

And finally, **Docker is perfect** if you don't use Docker desktop.

#linux #popos #ubuntu #windows