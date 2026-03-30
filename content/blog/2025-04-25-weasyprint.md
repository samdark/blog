---
title: ⚙️ WeasyPrint
date: 2025-04-25 09:43:34
edited: 2025-04-25 09:46:02
tags:
  - pdf
image: /blog/assets/photo_105@25-04-2025_12-43-34.jpg
---

![](/blog/assets/photo_105@25-04-2025_12-43-34.jpg)


At [Twindo.ai](https://Twindo.ai) we generate many complex and big reports in PDF based on HTML and CSS. After jumping a few solutions we ended up using [WeasyPrint](https://weasyprint.org/). It is a separate binary that is called via PHP in a queue worker.

Previously we were using [mPDF](https://mpdf.github.io/) and it was alright for simpler reports but since it doesn't support modern CSS, it was harder and harder to do complicated layouts.

WeasyPrint:

1. Supports modern HTML5 and CSS including flexbox, page, and print-related.
2. Can fetch external resources and embed these into PDF.
3. Supports forms (haven't used that part).
4. Supports attachments.

[And more](https://doc.courtbouillon.org/weasyprint/stable/api_reference.html#supported-features).

Disadvantage for using WeasyPrint was lower performance until recently. Their team [did some optimizations](https://kozea.github.io/WeasyPerf/) and now it seems to be faster than [Gotenberg](https://gotenberg.dev/) for big PDFs with images.

#pdf