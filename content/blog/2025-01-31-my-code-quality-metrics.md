---
title: 🤔 My code quality metrics
date: 2025-01-31 21:47:01
edited: 2025-01-31 21:47:07
tags:
  - metrics
  - quality
  - code
---


Yesterday GitHub asked for feedback about code metrics we use / think are important. Here's my answer. Order matters.

1. ✍️ Naming quality. Because we read code way more often than we write it.
2. 🧠 Number of entities used in context. [Should be <=4](https://pmc.ncbi.nlm.nih.gov/articles/PMC2864034/) 
3. 🤲 Coupling/cohesion.
4. ↕️  In-out dependencies.
5. 🔥Churn (too many changes to a single non-config file over time).
6. 🔍SLAP violations (how to detect that?)
7. 🤯 [Cognitive load overall](https://github.com/zakirullin/cognitive-load).
8. ✅ Code coverage (line is enough if point 2 is there, branch/path is good if not).
9. 🧟‍♀️Mutation score.
10. 🔬Type coverage and static analysis.
11. 🎢Cyclomatic complexity.
12. 🚌 Bus factor.
13. 📖Documentation coverage (every method ideally should have an explanatory doc-block).

#metrics #quality #code