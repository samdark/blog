---
title: 🧹 Yii3 DB scope narrowed to relational DBs
date: 2026-02-02 06:52:14
edited: 2026-02-02 06:55:47
tags:
  - yii
  - db
---


Did some cleanup in Yii3 this morning by archiving ElasticSearch, Redis, MongoDB and Sphinx drivers for [Yii3 DB](https://github.com/yiisoft/db).

Such drivers were first introduced for Yii2 Active Record. The idea was to be able to use these transparently, do JOINs etc. It kinda worked but some problems were revealed:

1. All these are not relational databases. Some, like Sphinx search, are very close even supporting MySQL protocol. Some are quite different conceptually such as MongoDB or very low level such as Redis where we used [some Lua scripts to add SQL-like features](https://github.com/yiisoft/yii2-redis/blob/master/src/LuaScriptBuilder.php).
2. All these are for specific use-cases. Using these the same way as relational databases is not efficient.
3. Maintaining these proved to be not so easy so we'd  focus on better support for relational databases.

#yii #db