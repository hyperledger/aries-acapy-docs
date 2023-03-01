# aries_cloudagent.cache package

## Submodules

## aries_cloudagent.cache.base module

Abstract base classes for cache.


### _class_ aries_cloudagent.cache.base.BaseCache()
Bases: [`ABC`](https://docs.python.org/3/library/abc.html#abc.ABC)

Abstract cache interface.


#### acquire(key: [str](https://docs.python.org/3/library/stdtypes.html#str))
Acquire a lock on a given cache key.


#### _abstract async_ clear(key: [str](https://docs.python.org/3/library/stdtypes.html#str))
Remove an item from the cache, if present.


* **Parameters**

    **key** – the key to remove



#### _abstract async_ flush()
Remove all items from the cache.


#### _abstract async_ get(key: [str](https://docs.python.org/3/library/stdtypes.html#str))
Get an item from the cache.


* **Parameters**

    **key** – the key to retrieve an item for



* **Returns**

    The record found or None



#### release(key: [str](https://docs.python.org/3/library/stdtypes.html#str))
Release the lock on a given cache key.


#### _abstract async_ set(keys: [Union](https://docs.python.org/3/library/typing.html#typing.Union)[[str](https://docs.python.org/3/library/stdtypes.html#str), [Sequence](https://docs.python.org/3/library/typing.html#typing.Sequence)[[str](https://docs.python.org/3/library/stdtypes.html#str)]], value: [Any](https://docs.python.org/3/library/typing.html#typing.Any), ttl: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[int](https://docs.python.org/3/library/functions.html#int)] = None)
Add an item to the cache with an optional ttl.


* **Parameters**

    
    * **keys** – the key or keys for which to set an item


    * **value** – the value to store in the cache


    * **ttl** – number of second that the record should persist



### _exception_ aries_cloudagent.cache.base.CacheError(\*args, error_code: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, \*\*kwargs)
Bases: [`BaseError`](aries_cloudagent.core.md#aries_cloudagent.core.error.BaseError)

Base class for cache-related errors.


### _class_ aries_cloudagent.cache.base.CacheKeyLock(cache: BaseCache, key: [str](https://docs.python.org/3/library/stdtypes.html#str))
Bases: [`object`](https://docs.python.org/3/library/functions.html#object)

A lock on a particular cache key.

Used to prevent multiple async threads from generating
or querying the same semi-expensive data. Not thread safe.


#### _property_ done(_: [bool](https://docs.python.org/3/library/functions.html#bool_ )
Accessor for the done state.


#### _property_ future(_: Futur_ )
Fetch the result in the form of an awaitable future.


#### _property_ parent(_: CacheKeyLoc_ )
Accessor for the parent key lock, if any.


#### release()
Release the cache lock.


#### _property_ result(_: [Any](https://docs.python.org/3/library/typing.html#typing.Any_ )
Fetch the current result, if any.


#### _async_ set_result(value: [Any](https://docs.python.org/3/library/typing.html#typing.Any), ttl: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[int](https://docs.python.org/3/library/functions.html#int)] = None)
Set the result, updating the cache and any waiters.

## aries_cloudagent.cache.in_memory module

Basic in-memory cache implementation.


### _class_ aries_cloudagent.cache.in_memory.InMemoryCache()
Bases: `BaseCache`

Basic in-memory cache class.


#### _async_ clear(key: [str](https://docs.python.org/3/library/stdtypes.html#str))
Remove an item from the cache, if present.


* **Parameters**

    **key** – the key to remove



#### _async_ flush()
Remove all items from the cache.


#### _async_ get(key: [str](https://docs.python.org/3/library/stdtypes.html#str))
Get an item from the cache.


* **Parameters**

    **key** – the key to retrieve an item for



* **Returns**

    The record found or None



#### _async_ set(keys: [Union](https://docs.python.org/3/library/typing.html#typing.Union)[[str](https://docs.python.org/3/library/stdtypes.html#str), [Sequence](https://docs.python.org/3/library/typing.html#typing.Sequence)[[str](https://docs.python.org/3/library/stdtypes.html#str)]], value: [Any](https://docs.python.org/3/library/typing.html#typing.Any), ttl: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[int](https://docs.python.org/3/library/functions.html#int)] = None)
Add an item to the cache with an optional ttl.

Overwrites existing cache entries.


* **Parameters**

    
    * **keys** – the key or keys for which to set an item


    * **value** – the value to store in the cache


    * **ttl** – number of seconds that the record should persist
