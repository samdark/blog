---
title: "Immutable objects"
date: 2016-05-03 12:00:00
edited: 2016-05-03 12:00:00
---

In this short article we will see what immutable objects are and why we should consider to use them.

Immutable object is an object that does not change its state after it was created. Immutable objects usually are very simple. You may already seen them as enum types or primitives like `DateTimeImmutable`.

Further in this article you will learn that making simple objects immutable may save significant amount of your time by making impossible to make certain types of mistakes.

When implementing immutable object you need to:

- declare class as `final` so it can't be overridden adding methods that modify internal state;
- declare properties as `private` so, again, state can't be modified;
- avoid setters and use constructor to inject parameters;
- do not store references to mutable objects or collections. If you store collection inside immutable object, it should be immutable too;
- make sure that when you need to modify immutable object you make a copy instead of reusing existing one.

Accidental side effects when changing object in one place results it being unexpectedly changed in another place are quite hard to debug. Such issues could be anywhere: in third party libraries, in language structures, etc. You can avoid these by using immutable object.

So the benefits of using correctly implemented immutable objects are the following:

- program state becomes more predictable since less objects change their state;
- debugging becomes easier because shared references issue isn't possible;
- it is suitable for concurrent programs (not explained in this article).

> Note: Immutability still could be violated via reflection, serialization / unserialization, anonymous function binding or magic methods.
> Still, all these are not trivial to implement and unlikely to be used by accident.

Let's get to immutable object example:

```php
<?php

final class Address
{
    private $city;

    private $house;

    private $flat;

    public function __construct($city, $house, $flat)
    {
        $this->city = (string)$city;
        $this->house = (string)$house;
        $this->flat = (string)$flat;
    }

    public function getCity()
    {
        return $this->city;
    }

    public function getHouse()
    {
        return $this->house;
    }

    public function getFlat()
    {
        return $this->flat;
    }
}
```

This object does not change its state after it was created and thus can be considered immutable.

## Example

Now let's check a case of money transfer where lack of immutability leads to wrong result. We have `Money` class to represent a certain amount of money.

```php
<?php

class Money 
{
    private $amount;

    public function getAmount()
    {
        return $this->amount;
    }

    public function add($amount)
    {
        $this->amount += $amount;
        return $this;
    }
}
```

We use it the following way:

```php
<?php

$userAmount = Money::USD(2);
/**
 * Mark is going to send 2 USD to Alex. Since there's comission of 3%
 * we are adding it to the sum we operate with.
 */
$processedAmount = $userAmount->add($userAmount->getAmount() * 0.03);
/**
 * Get 2$ to transfer plus 3% comission from Mark's card
 */
$markCard->withdraw($processedAmount);
/**
 * Send 2$ to Alex
 */
$alexCard->deposit($userAmount);
```

> Note: Float type only used for example simplicity. In real life you should consider to use bcmath extension or other vendor libraries that provide operations with correct precision.

Everything should be OK. However, as you can see, since `Money` class is mutable, Alex will get 2 USD and 6 cents (3% commission) instead of just 2 USD expected because both `$userAmount` and `$processedAmount` are referring to the same object. A good way to solve the problem would be to use Immutable Object.

Instead of modifying existing object either new object should be created or existing one should be copied. Let's modify code above to create another object:

```php
<?php

final class Money 
{
    private $amount;

    public function getAmount()
    {
        return $this->amount;
    }
}
```

```php
<?php

$userAmount = Money::USD(2);
$commission = $userAmount->val() * 3 / 100;
$processedAmount = Money::USD($userAmount->getAmount() + $commission);
$markCard->withdraw($processedAmount);
$alexCard->deposit($userAmount);
```

The approach is OK for simple objects but if initialization is complex, it's better to start from a copy of existing object:

```php
<?php

final class Money 
{
    private $amount;

    public function getAmount()
    {
        return $this->amount;
    }

    public function add($amount)
    {
        return new self($this->amount + $amount, $this->currency);
    }
}
```

Usage is the same as it was initially:

```php
<?php

$userAmount = Money::USD(2);
/**
 * Mark is going to send 2 USD to Alex. Since there's comission of 3%
 * we are adding it to the sum we operate with.
 */
$processedAmount = $userAmount->add($userAmount->val() * 0.03);
/**
 * Get 2$ to transfer plus 3% comission from Mark's card
 */
$markCard->withdraw($processedAmount);
/**
 * Send 2$ to Alex
 */
$alexCard->deposit($userAmount);
```

In the code above Alex gets intended 2 USD without commission, and Mark is charged correctly with 2 USD plus commission.

## Accidental mutability

There are common mistakes that could be made when implementing immutable object in fact making it mutable. These are very important to know and understand.

### Leaking internal object reference

We have a mutable class and want to have immutable object that uses it.

```php
<?php

class MutableX
{
    protected $y;

    public function setY($y)
    {
         $this->y = $y;
    }
}

class Immutable
{
    protected $x;

    public function __construct($x)
    {
        $this->x = $x;
    }

    public function getX()
    {
        return $this->x;
    }
}
```

Immutable class has getters only, the only property is assigned via constructor. Looks OK, right? Now let's use these:

```php
<?php

$immutable = new Immutable(new MutableX());
var_dump(md5(serialize($immutable))); // f48ac85e653586b6a972251a85dd6268

$immutable->getX();
var_dump(md5(serialize($immutable))); // f48ac85e653586b6a972251a85dd6268
```

Object is still the same. State wasn't changed. Looks perfect!

Not let's play with X a bit:

```php
<?php

$immutable->getX()->setY(5);
var_dump(md5(serialize($immutable))); // 8d390a0505c85aea084c8c0026c1621e
```

Immutable object state was changed so it's not really immutable despite being very alike. What happened when implementing it is ignoring "do not store references to mutable objects" rule from the very beginning of this article. So remember that *immutable objects should store immutable data or objects only*.

### Collections

Using collections is common. So what if instead of constructing immutable object with another object we'll construct it with a collection of objects?

First of all, let's implement a collection:

```php
<?php

class Collection
{
    protected $elements = [];

    public function __construct(array $elements)
    {
        $this->elements = $elements;
    }

    public function add($element)
    {
        $this->elements[] = $element;   
    }

    public function get($key)
    {
        return isset($this->elements[$key]) ? $this->elements[$key] : null ;
    }
}
```

Now let's use it:

```php
<?php

$immutable = new Immutable(new Collection([new XMutable(), new XMutable()]));
var_dump(md5(serialize($immutable))); // 9d095d565a96740e175ae07f1192930f

$immutable->getX();
var_dump(md5(serialize($immutable))); // 9d095d565a96740e175ae07f1192930f

$immutable->getX()->get(0)->setY(5);
var_dump(md5(serialize($immutable))); // 803b801abfa2a9882073eed4efe72fa0
```

As we've already learned, having mutable objects inside immutable one is bad so let's replace mutable objects with scalars.

```php
<?php

$immutable = new Immutable(new Collection([1, 2]));
var_dump(md5(serialize($immutable))); // 24f1de7dc42cfa14ff46239b0274d54d

$immutable->getX();
var_dump(md5(serialize($immutable))); // 24f1de7dc42cfa14ff46239b0274d54d

$immutable->getX()->add(10);
var_dump(md5(serialize($immutable))); // 70c0a32d7c82a9f52f9f2b2731fdbd7f
```

Since our collection provides method to add more elements we can indirectly change immutable object state. So when working with collection in immutable objects, make sure that collection itself is not mutable i.e. that it contains immutable data only and that there are no methods to add more elements, remove elements or modify collection state in any other way.

### Inheritance

Another common case is about inheritance. We know that we should use getters only, instantiate via constructor and store immutable data only inside immutable object. Let's modify our `Immutable` class to only accept `Immutable` objects.

```php
<?php

class Immutable
{
    protected $x;

    public function __construct(Immutable $x)
    {
        $this->x = $x;
    }

    public function getX()
    {
        return $this->x;
    }

}
```

Looks OK... until someone extends your class:

```php
<?php

class Mutant extends Immutable
{
    public function __construct()
    {
    }

    public function getX()
    {
        return rand(1, 1000000);
    }

    public function setX($x)
    {
        $this->x = $x;
    }
}
```

```php
<?php

$mutant = new Mutant();
$immutable = new Immutable($mutant);

var_dump(md5(serialize($immutable->getX()->getX()))); // c52903b4f0d531b34390c281c400abad
var_dump(md5(serialize($immutable->getX()->getX()))); // 6c0538892dc1010ba9b7458622c2d21d
var_dump(md5(serialize($immutable->getX()->getX()))); // ef2c2964dbc2f378bd4802813756fa7d
var_dump(md5(serialize($immutable->getX()->getX()))); // 143ecd4d85771ee134409fd62490f295
```

As you can see, it went bad again. This is why immutable objects should be declared as `final` to be never extended.

## Conclusion

You've learned what is immutable object, when it could be useful and that you should follow a certain set of rules when implementing it:

- declare class as `final` so it can't be overridden adding methods that modify internal state;
- declare properties as `private` so, again, state can't be modified;
- avoid setters and use constructor to inject parameters;
- do not store references to mutable objects or collections. If you store collection inside immutable object, it should be immutable too;
- make sure that when you need to modify immutable object you make a copy instead of reusing existing one.


--

_Authored by [Mark Ragazzo](https://github.com/Ragazzo), editorial by [Alexander Makarov](https://github.com/samdark) and [Vladimir Chub](https://github.com/ChubV)._
Originally published at https://ragazzo.github.io/immutability/oop/2016/05/03/immutability.html

#php #immutability
