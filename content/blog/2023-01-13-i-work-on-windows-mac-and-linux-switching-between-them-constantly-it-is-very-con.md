---
title: "I work on Windows, Mac and Linux switching between them constantly. It is very convenient when you"
date: 2023-01-13 17:35:05
edited: 2023-01-13 17:35:15
image: /blog/assets/photo_14@13-01-2023_20-35-05.jpg
---

![](/blog/assets/photo_14@13-01-2023_20-35-05.jpg)

I work on Windows, Mac and Linux switching between them constantly. It is very convenient when you have similar keyboard layout, locale switching, hotkeys and shell.

**⭐️ Keyboard layout**

Custom keyboard layout by Ilya Birman works on Windows, Linux and MacOS in a similar way.

English: [https://ilyabirman.net/typography-layout/](https://ilyabirman.net/typography-layout/)

Russian: [https://ilyabirman.ru/typography-layout/](https://ilyabirman.ru/typography-layout/)

**⭐️ Caps lock to switch keyboard layout**

📌 Linux

Works by default.

📌 Windows 

1. Download [https://haali.net/winutils/lswitch.exe](https://haali.net/winutils/lswitch.exe) by *Mike Matsnev*
2. Open regedit.msc
3. Go to HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run
4. Add "String value". Name is "lswitch". Value is c:\path_to\lswitch.exe" 20
5. Reboot

📌 MacOS

1. System Preferences → Language & Region → Keyboard Preferences
2. "Use the Caps Lock Key to Switch ..."

**⭐️ Shell**

📌 A good shell

- On Linux — bash.
- On MacOS — zsh.
- On Windows — bash is installed with git: [https://git-scm.com/download/win](https://git-scm.com/download/win)

📌 Starship

[https://starship.rs/](https://starship.rs/)