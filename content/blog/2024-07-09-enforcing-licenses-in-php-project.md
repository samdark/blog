---
title: 📃 Enforcing licenses in PHP project
date: 2024-07-09 14:29:55
edited: 2024-07-09 14:30:44
tags:
  - licenses
  - composer
  - php
---


It is important for commercial projects, especially involving investors, to take care of not violating any licenses. Thus, likely avoiding proprietary packages, packages with viral licenses such as GPL and packages with no license.

Checking all the licenses by hand isn't a good option. Luckily, there's very handy [Composer License Manager](https://github.com/arokettu/composer-license-manager).


```json
{
    "extras": {
        "arokettu/composer-license-manager": {
            "licenses": {
                "allowed": ["MIT", "LGPL-*"],
                "forbidden": ["GPL-3.0", "AGPL-*"],
                "allow-empty": false
            },
            "packages": {
                "allowed": ["mycompany/*"]
            },
            "enforced": true
        }
    }
}
```


In the above `composer.json`, we allow MIT and LGPL, deny GPL and AGPL as viral, allow all packages from our own `mycompany` and enforce checks so composer won't install if there are packages that do not comply with what's allowed.

#licenses #composer #php