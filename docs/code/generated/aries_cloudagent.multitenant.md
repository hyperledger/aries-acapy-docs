# aries_cloudagent.multitenant package

## Subpackages


* [aries_cloudagent.multitenant.admin package](aries_cloudagent.multitenant.admin.md)


    * [Submodules](aries_cloudagent.multitenant.admin.md#submodules)


    * [aries_cloudagent.multitenant.admin.routes module](aries_cloudagent.multitenant.admin.md#aries-cloudagent-multitenant-admin-routes-module)


## Submodules

## aries_cloudagent.multitenant.askar_profile_manager module

## aries_cloudagent.multitenant.base module

## aries_cloudagent.multitenant.cache module

Cache for multitenancy profiles.


### _class_ aries_cloudagent.multitenant.cache.ProfileCache(capacity: [int](https://docs.python.org/3/library/functions.html#int))
Bases: [`object`](https://docs.python.org/3/library/functions.html#object)

Profile cache that caches based on LRU strategy.


#### get(key: [str](https://docs.python.org/3/library/stdtypes.html#str))
Get profile with associated key from cache.

If a profile is open but has been evicted from the cache, this will
reinsert the profile back into the cache. This prevents attempting to
open a profile that is already open. Triggers clean up.


* **Parameters**

    **key** ([*str*](https://docs.python.org/3/library/stdtypes.html#str)) – the key to get the profile for.



* **Returns**

    Profile if found in cache.



* **Return type**

    Optional[Profile]



#### has(key: [str](https://docs.python.org/3/library/stdtypes.html#str))
Check whether there is a profile with associated key in the cache.


* **Parameters**

    **key** ([*str*](https://docs.python.org/3/library/stdtypes.html#str)) – the key to check for a profile



* **Returns**

    Whether the key exists in the cache



* **Return type**

    [bool](https://docs.python.org/3/library/functions.html#bool)



#### put(key: [str](https://docs.python.org/3/library/stdtypes.html#str), value: [Profile](aries_cloudagent.core.md#aries_cloudagent.core.profile.Profile))
Add profile with associated key to the cache.

If new profile exceeds the cache capacity least recently used profiles
that are not used will be removed from the cache.


* **Parameters**

    
    * **key** ([*str*](https://docs.python.org/3/library/stdtypes.html#str)) – the key to set


    * **value** (*Profile*) – the profile to set



#### remove(key: [str](https://docs.python.org/3/library/stdtypes.html#str))
Remove profile with associated key from the cache.


* **Parameters**

    **key** ([*str*](https://docs.python.org/3/library/stdtypes.html#str)) – The key to remove from the cache.


## aries_cloudagent.multitenant.error module

Multitenant error classes.


### _exception_ aries_cloudagent.multitenant.error.WalletKeyMissingError(\*args, error_code: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, \*\*kwargs)
Bases: [`BaseError`](aries_cloudagent.core.md#aries_cloudagent.core.error.BaseError)

Wallet key missing exception.

## aries_cloudagent.multitenant.manager module

## aries_cloudagent.multitenant.manager_provider module

Profile manager for multitenancy.


### _class_ aries_cloudagent.multitenant.manager_provider.MultitenantManagerProvider(root_profile)
Bases: [`BaseProvider`](aries_cloudagent.config.md#aries_cloudagent.config.base.BaseProvider)

Multitenant manager provider.

Decides which manager to use based on the settings.


#### MANAGER_TYPES(_ = {'askar-profile': 'aries_cloudagent.multitenant.askar_profile_manager.AskarProfileMultitenantManager', 'basic': 'aries_cloudagent.multitenant.manager.MultitenantManager'_ )

#### askar_profile_manager_path(_ = 'aries_cloudagent.multitenant.askar_profile_manager.AskarProfileMultitenantManager_ )

#### provide(settings: [BaseSettings](aries_cloudagent.config.md#aries_cloudagent.config.base.BaseSettings), injector: [BaseInjector](aries_cloudagent.config.md#aries_cloudagent.config.base.BaseInjector))
Create the multitenant manager instance.

## aries_cloudagent.multitenant.route_manager module
