---
title: 🛠 PHP dev-dependencies
date: 2025-01-29 19:51:14
edited: 2025-01-29 19:51:22
tags:
  - php
  - composer
  - dependencies
  - require
  - dev
---


In PHP the package manager, Composer, has two types of dependencies:

1. `require` — production dependencies, the ones installed when you require a package.
2. `require-dev` — development dependencies, the ones installed when you check out package repository and develop it.

Often, a useful development tool can't keep up with PHP versions. Recent examples are [Psalm](https://psalm.dev/) which lagged PHP 8.4 a bit (already solved) and [ComposerRequireChecker](https://github.com/maglnet/ComposerRequireChecker) which is still an issue.  In CI/CD for Yii we have to run with a number of supported PHP versions including PHP 8.4. That means installing a package, installing its development dependencies and running a tool to check if everything's OK.

With ComposerRequireChecker there's no need to use 8.4. It works with whatever PHP version. But, since it's in `require-dev`, you can't test with 8.4. Your `require-dev` isn't satisfied and package dependencies are failing to install.

I see two types of such tools:

🔸**Isolated**. You may have configs for these in your repository but you don't use any code from the tool itself in your tests or elsewhere. Examples are Rector, Infection, Phing, ComposerRequireChecker.
🔸**Integrated**. You actually rely of the tool code in your tests or other sources. Examples are PHPUnit, Codeception.

➡️ Integrated ones should definitely be in `require-dev`. Isolated — not really.

The [issue was raised in Composer long time ago](https://github.com/composer/composer/issues/9636) but solutions are controversial so it is not implemented.

Current solutions are:

1. For tool maintainer is to use [PHP Scoper](https://github.com/humbug/php-scoper) and serve package as PHAR binary. [See how PhpStan does it](https://github.com/phpstan/phpstan-src/blob/2.1.x/.github/workflows/phar.yml). And that's perfect ❤️ (Psalm [serves a PHAR-package as well](https://github.com/psalm/phar)).
2. If tool isn't available as a package with PHAR or there are issues with it, either use [PHIVE](https://phar.io/) or [composer bin plugin](https://github.com/bamarni/composer-bin-plugin).

#php #composer #dependencies #require #dev