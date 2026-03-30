---
title: 🔥 Profiling in PHP with excimer and how to export the data 🚀
date: 2025-07-08 07:48:14
edited: 2025-07-08 07:48:32
origin: Oleg Mifle
tags:
  - observability
---


Continuing the #observability series, I want to share how to export profiling data collected using excimer.
Now, excimer isn’t the most popular profiling module — and I think that’s unfair. It’s tightly integrated into PHP and has minimal CPU overhead ⚡

Any downsides? Of course — it lacks built-in visualization.
But there are plenty of visualizers out there: Pyroscope from Grafana, for example. Or Speedscope.
The real problem is — how to send the data there, since excimer doesn’t support OpenTelemetry or any common format out of the box.

So what to do?

Well… write a wrapper and adapters yourself 😎
That’s exactly what I did.
And that’s how the open source package excimetry was born 👩‍💻 - [https://github.com/excimetry/excimetry](https://github.com/excimetry/excimetry)

Personally, I find it really convenient. I’ve added native integration with OpenTelemetry clients, sending binary data using protobuf.
It currently supports:
✅ Pyroscope
✅ Speedscope
✅ File export
✅ CLI command profiling

Here’s an example:

```php

use Excimetry\Profiler\ExcimerProfiler;
use Excimetry\Exporter\CollapsedExporter;
use Excimetry\Backend\PyroscopeBackend;

// Create a profiler
$profiler = new ExcimerProfiler();

// Start profiling
$profiler->start();

// Your code to profile here
// ...

// Stop profiling
$profiler->stop();

// Get the profile
$log = $profiler->getLog();

// Send to Pyroscope
$exporter = new CollapsedExporter();
$backend = new PyroscopeBackend(
    serverUrl: 'http://localhost:4040',
    appName: 'my-application',
    labels: ['env' => 'production'],
    exporter: $exporter,
);

// Send the profile to Pyroscope
$backend->send($log);

// You can also set the backend to send asynchronously
$backend->setAsync(true);
$backend->send($log); // Returns immediately, sends in background

// Add custom labels
$backend->addLabel('version', '1.0.0');
$backend->addLabel('region', 'us-west');

```


Honestly, I don’t know how far this will go — but I genuinely like the idea 💡
Maybe excimer will get just a little more attention thanks to excimetry.

Would love to get your ⭐️ on GitHub, reposts, and feedback ❤️

⸻

[Let’s stay in touch](https://t.me/ask_for_oleg)  ☄️