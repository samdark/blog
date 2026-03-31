---
title: 🖼 WezTerm and mc for viewing images
date: 2026-02-11 18:37:48
edited: 2026-02-11 18:37:56
tags:
  - shell
  - bash
  - mc
  - wezterm
image: /blog/assets/photo_141@11-02-2026_21-37-48.jpg
---

![](/blog/assets/photo_141@11-02-2026_21-37-48.jpg)


I've recently started using excellent [WezTerm](https://wezterm.org/). It is fast, feature-rich and runs in Linux, macOS, Windows. [After some configuration](https://github.com/samdark/dotfiles/blob/master/.config/wezterm/wezterm.lua) it looks and runs just fine.

When I was using Windows, my go-to file manager was [Total Commander](https://www.ghisler.com/). Under Linux and macOS I've used console mostly but sometimes for sorting photos and freeing up space [mc](https://midnight-commander.org/) was super-helpful.

WezTerm can display images with its [imgcat](https://wezterm.org/cli/imgcat.html) so I've decided to make these two work together.

`mc.ext` is what mc uses when opening a file with F3. We forward all png and jpg to `mc-img.sh`. The shell script takes care of forwarding names to imgcat and adding keyboard navigation to view next/previous and first/last images.

[https://github.com/samdark/dotfiles/tree/master/\.config/mc](https://github.com/samdark/dotfiles/tree/master/.config/mc)

#shell #bash #mc #wezterm