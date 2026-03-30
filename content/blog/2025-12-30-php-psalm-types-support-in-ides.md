---
title: 🔩 PHP Psalm types support in IDEs
date: 2025-12-30 08:57:51
edited: 2025-12-30 08:57:56
tags:
  - php
  - ide
  - types
  - psalm
  - phpstan
image: /blog/assets/photo_136@30-12-2025_11-57-51.jpg
---

![](/blog/assets/photo_136@30-12-2025_11-57-51.jpg)


[Maksim Spirkov](https://github.com/mspirkov) who joined Yii team recently, raised a question whether it is a good idea to use Psalm/PhpStan types without specific prefixes right in `@property` or `@var` in Yii.

I've tested for the most basic and useful things:

1. Generics.
2. Array shapes.
3. Whether it works without prefix.

And searched about support in general.


```php
<?php  
class Post  
{  
    public function getName(): string  
    {  
        return 'test';  
    }  
}  
  
/**  
 * @template Type  
 */  
class Container  
{  
    /**  
     * @param Type $value  
     */  
    public function __construct(private $value)  
    {  
    }  
  
    /**  
     * @return Type  
     */  
    public function getValue()  
    {  
        return $this->value;  
    }  
}

/** @var array<Post> $postArray */  
foreach ($postArray as $post) {  
    $post->
}
  
$container = new Container(new Post());  
$container->getValue()->    
 
/**  
 * @var array{name: string, age: int} $shapedArray
 */  
$shapedArray = [];
$shapedArray['
```


Findings:

1. PhpStorm [has a very good support for many annotations](https://www.jetbrains.com/help/phpstorm/php-type-checking.html).
2. Visual Studio Code and its numerous forks, Zed, Sublime Text, Vim and its variations — they all use language servers for PHP typing and auto-complete and language servers, such as [Intelephense](https://intelephense.com/), [Phpactor](https://phpactor.readthedocs.io/en/master/integrations/psalm.html), [Psalm language server](https://psalm.dev/docs/running_psalm/language_server/) etc., have decent support.
3. Eclipse PDT, NetBeans do not support any advanced types at all.

Overall, worth using advanced types directly except for users of Eclipse PDT or NetBeans.

#php #ide #types #psalm #phpstan