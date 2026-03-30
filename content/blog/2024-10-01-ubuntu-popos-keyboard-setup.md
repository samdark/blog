---
title: "⌨️ Ubuntu / Pop!_OS keyboard setup"
date: 2024-10-01 09:14:23
edited: 2024-10-01 09:14:32
tags:
  - linux
  - typograpy
  - keyboards
---


Linux is awesome about how deep you can dive about setting up things in detail but is quite limited in UI to do configuration. Here's what it takes to configure layout changes, indication and typographical layout in my case:


```sh
gsettings set org.gnome.desktop.input-sources xkb-options "['grp:caps_toggle', 'grp_led:caps', 'grp_led:num', 'numpad:mac', 'misc:typo', 'lv3:ralt_switch']"

gsettings set org.gnome.desktop.wm.keybindings switch-input-source "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-input-source-backward "[]"
```


- Layout is switched via pressing `CAPS LOCK`.
- Keyboard LEDs are indicating layout.
-Numlock is always on. The key itself does nothing.
- `RIGHT ALT` when held turns on alternative typographical layout so you can enter different symbols such as → this ←


#linux #typograpy #keyboards