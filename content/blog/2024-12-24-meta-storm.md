---
title: ⚡️Meta Storm
date: 2024-12-24 08:22:19
edited: 2024-12-24 08:22:43
tags:
  - php
  - phpstorm
  - ide
image: /blog/assets/photo_95@24-12-2024_11-22-19.jpg
---

![](/blog/assets/photo_95@24-12-2024_11-22-19.jpg)


Dmitry from Yii3 team released his plugin for PhpStorm that allows to get PHP usability to a whole new level without framework-specific plugins. The post is by [@handle_topic](https://t.me/handle_topic)

**Quick Overview of Features**

The plugin allows strings to be more than just string literals.

For example, a string can represent:

- A filename
- A class property name
- A method name
- Something else?

Knowing that we may use all the possible values to:

- Autocomplete
- Direct and back references
- Validating wrong values

**Reference System**

The plugin includes a basic reference system that can be used for various computations:

- **Project**
- **Directory**
- **Current file**
- **Variable** (`$var->...`)
- **Argument** (`method($var, ...)`)

By describing these elements, you can perform quite complex computations using a simple declarative language.

**Example Suggestions**

Yii2 `render()` Method

```xml
<files  
  className="\yii\base\Controller"  
  methodName="render"  
  argumentIndex="0"  
  fileExt="php"  
  relatedTo="file"  
>  
  <directoryProcessors>  
    <regexp from="Controller\.php" to=""/>  
    <regexp from="([a-z])([A-Z])" to="$1-$2"/>  
    <regexp from="/controllers/" to="/views/"/>  
    <regexp from="/modules/([^\\/]+)/views/" to="/themes/default/modules/$1/views/"/>  
  </directoryProcessors>  
</files>
```


`render()` Method in a View File

```xml
<files  
  className="\yii\base\View"  
  methodName="render"  
  argumentIndex="0"  
  fileExt="php"  
  relatedTo="directory"  
/>
```


Mailer Suggestions

```xml
<files  
  className="\yii\swiftmailer\Mailer"  
  methodName="compose"  
  argumentIndex="0"  
  fileExt="php"  
  relatedTo="project"  
>  
  <directoryProcessors>  
    <append value="common/mail/" />  
  </directoryProcessors>  
</files>
```


Active Form Suggestions


```xml
<properties  
  className="\yii\widgets\ActiveForm"  
  methodName="field"  
  argumentIndex="1"  
  relatedTo="argument"  
  relatedArgumentIndex="0"  
/>
```



**Additional Features**

- The plugin supports **combining multiple configuration files**.  
- You can distribute configurations through libraries, allowing end-users to have a complete set of suggestions.  
- The focus is on creating **configurations** for a unified plugin, rather than building plugins for individual technologies.

**Resources**

- [Article at Habr in Russian  ](https://habr.com/ru/articles/868898)
- [Public Repository](https://github.com/xepozz/meta-storm-idea-plugin)
- [Plugin at JetBrains Marketplace](https://plugins.jetbrains.com/plugin/26121-meta-storm)

#php #phpstorm #ide