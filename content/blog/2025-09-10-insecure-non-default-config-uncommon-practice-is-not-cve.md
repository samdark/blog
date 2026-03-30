---
title: 🔐 Insecure non-default config / uncommon practice is not CVE
date: 2025-09-10 15:46:59
edited: 2025-09-10 15:52:55
tags:
  - yii
  - security
  - cve
---


At Yii we get some security reports. Some are valid. Some are controversial. One of these require many prerequisites: turning off some protection layers, not validating input, using input to configure services at runtime and more. 

I'm usually stuck with thinking about these for a long time. Especially when doing a fix breaks intended framework functionality.

Finally, fellow developers got it answered for me. "[CVE Numbering Authority (CNA) Operational Rules](https://www.cve.org/resourcessupport/allresources/cnarules)", point 4.1.3 says:

> 4.1.3 Well-documented or commonly understood non-default configuration or runtime changes made by an authorized user SHOULD NOT be determined to be Vulnerabilities.

Means such pre-requisites are invalid for a CVE.

*That doesn't mean that we immediately reject such reports but we'll certainly do if changes to mitigate these hinder functionality or performance of the framework.*

#yii #security #cve