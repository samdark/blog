---
title: "🎁 Yii Database **2.0"
date: 2025-12-05 21:23:32
edited: 2025-12-05 21:23:35
origin: Yii3 Chronicles
tags:
  - yiisoftdb
  - yiisoftdbmssql
  - yiisoftdbmysql
  - yiisoftdbpgsql
  - yiisoftdbsqlite
  - yiisoftdboracle
  - majorrelease
  - release
---

#yiisoftDb #yiisoftDbMssql #yiisoftDbMysql #yiisoftDbPgsql #yiisoftDbSqlite #yiisoftDbOracle #MajorRelease #Release

**🎁** [Yii Database](https://github.com/yiisoft/db) **2.0
🎁** [Yii DB MSSQL Server](https://github.com/yiisoft/db-mssql) **2.0
🎁** [Yii DB MySQL](https://github.com/yiisoft/db-mysql) **2.0
🎁** [Yii DB PostgreSQL](https://github.com/yiisoft/db-pgsql) **2.0
🎁** [Yii DB SQLite](https://github.com/yiisoft/db-sqlite) **2.0
🎁** [Yii DB Oracle](https://github.com/yiisoft/db-oracle) **2.0**

We're excited to announce Yii Database 2.0, a major release modernizing the database abstraction layer with PHP 8.1+ features, enhanced type safety, and powerful new capabilities. The drivers have been released as well.

**New Features**

- Implement `ColumnInterface` classes according to the data type of database table columns  
  for type casting performance
- `ConnectionProvider` for connection management
- `ColumnBuilder` for column creation
- `CaseX` expression for CASE-WHEN-THEN-ELSE statements
- New conditions: `All`, `None`, `ArrayOverlaps`, `JsonOverlaps`
- PHP backed enums support
- User-defined type casting
- `ServerInfoInterface` and its implementation

**Enhancements**

- Optimized SQL generation and query building
- Improved type safety with psalm annotations
- Method chaining for column classes
- Better exception messages
- Refactored core components for better maintainability
- PHP 8.5 support

There have also been many refactorings and bug fixes. See [CHANGELOG.md](https://github.com/yiisoft/db/blob/2.0.0/CHANGELOG.md) for more information. 

See [upgrading instructions](https://github.com/yiisoft/db/blob/2.0.0/UPGRADE.md) with notes about upgrading package in your application to this major version.