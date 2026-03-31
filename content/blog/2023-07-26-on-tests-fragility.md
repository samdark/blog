---
title: 🌓 On tests fragility
date: 2023-07-26 07:46:44
edited: 2023-07-26 07:48:17
image: /blog/assets/photo_46@26-07-2023_10-46-44.jpg
---

![](/blog/assets/photo_46@26-07-2023_10-46-44.jpg)


A good set of tests gives everyone involved with the project confidence and eases fear for change. It is essential for any project that's going to live for years.

But what's a good set of tests? Of course, coverage matters and, first of all, business logic coverage. Other than that, tests should be readable and, what's important, tests should be reliable.

Keep an eye on the following test reliability obstacles:

⭐️ Test should be executed in a certain order relative to other tests. That's never a good idea except some edge cases. In case of PHPUnit you can use [executionOrder set to random](https://github.com/yiisoft/cache/blob/master/phpunit.xml.dist#L13).

⭐️ Test doesn't clean up after itself leaving cache files, database records and other state data that might affect subsequent tests.

⭐️ Test relies on network/another API. Use mocks instead. Testing network or external service isn't the responsibility of the current project.

⭐️ Test relies on system time. [Use an interface and a frozen clock in your code](https://www.php-fig.org/psr/psr-20/meta/#42-example-implementations).

⭐️ Test uses randomness. That includes generating non-fixed fake data that is usually fine but might cause issues from time to time. Prefer fixed data.

*Overall, relying on any non-deterministic behavior makes the test unreliable or "flaky".*