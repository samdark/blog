---
title: 🎁 Yii Active Record 1.0
date: 2025-12-09 07:39:44
edited: 2025-12-09 07:39:48
origin: Yii3 Chronicles
tags:
  - yiisoftactiverecord
  - firstrelease
  - majorrelease
  - release
---

We are pleased to present the first stable release of [Yii Active Record](https://github.com/yiisoft/active-record) — an implementation of the [Active Record](https://ru.wikipedia.org/wiki/ActiveRecord) pattern for PHP.

The package is built on top of [Yii DB](https://github.com/yiisoft/db), which means it comes with out-of-the-box support for major relational databases: PostgreSQL, MySQL, MSSQL, Oracle, SQLite.

⭐️ **Flexible Model Property Handling**

• Dynamic properties — fast prototyping with `#[\AllowDynamicProperties]`
• Public properties
• Protected properties — encapsulation via getters/setters
• Private properties
• Magic properties

⭐️ **Powerful Relation System**

• One-to-one
• One-to-many
• Many-to-one
• Many-to-many — three implementation approaches (junction table, junction model, key array)
• Deep relations — access to related records through intermediate relations
• Inverse relations
• Eager loading — solves the N+1 problem

⭐️ **Extensibility via Traits**

• `ArrayableTrait` — convert a model to an array
• `ArrayAccessTrait` — array-style access to properties
• `ArrayIteratorTrait` — iterate over model properties
• `CustomConnectionTrait` — custom database connection
• `EventsTrait` — event/handler system
• `FactoryTrait` — [Yii Factory](https://github.com/yiisoft/factory) integration for DI
• `MagicPropertiesTrait` and `MagicRelationsTrait` — magic accessors
• `RepositoryTrait` — repository pattern

⭐️ **Additional Features**

• Optimistic Locking — concurrency control using record versioning
• Dependency Injection — support for constructor-based injection
• Flexible configuration — multiple ways to define the database connection

🖼 **Example**

Example AR class:


```php
/**
 * Entity User
 *
 * Database fields:
 * @property int $id
 * @property string $username
 * @property string $email
 **/
#[\AllowDynamicProperties]
final class User extends \Yiisoft\ActiveRecord\ActiveRecord
{
    public function tableName(): string
    {
        return '{{%user}}';
    }
}
```


And its usage:


```php
// Creating a new record
$user = new User();
$user->set('username', 'alexander-pushkin');
$user->set('email', 'pushkin@example.com');
$user->save();

// Retrieving a record
$user = User::query()->findByPk(1);

// Read properties
$username = $user->get('username');
$email = $user->get('email');
```

#yiisoftActiveRecord #FirstRelease #MajorRelease #Release