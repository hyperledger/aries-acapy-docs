# aries_cloudagent.askar package

## Subpackages


* [aries_cloudagent.askar.didcomm package](aries_cloudagent.askar.didcomm.md)


    * [Submodules](aries_cloudagent.askar.didcomm.md#submodules)


    * [aries_cloudagent.askar.didcomm.v1 module](aries_cloudagent.askar.didcomm.md#aries-cloudagent-askar-didcomm-v1-module)


    * [aries_cloudagent.askar.didcomm.v2 module](aries_cloudagent.askar.didcomm.md#aries-cloudagent-askar-didcomm-v2-module)


## Submodules

## aries_cloudagent.askar.profile module

## aries_cloudagent.askar.store module

Aries-Askar backend store configuration.


### _class_ aries_cloudagent.askar.store.AskarOpenStore(config: AskarStoreConfig, created, store: aries_askar.Store)
Bases: [`object`](https://docs.python.org/3/library/functions.html#object)

Handle and metadata for an opened Askar store.


#### _async_ close()
Close previously-opened store, removing it if so configured.


#### _property_ name(_: [str](https://docs.python.org/3/library/stdtypes.html#str_ )
Accessor for the store name.


### _class_ aries_cloudagent.askar.store.AskarStoreConfig(config: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[dict](https://docs.python.org/3/library/stdtypes.html#dict)] = None)
Bases: [`object`](https://docs.python.org/3/library/functions.html#object)

A helper class for handling Askar store configuration.


#### DEFAULT_KEY(_ = '_ )

#### DEFAULT_KEY_DERIVATION(_ = 'kdf:argon2i:mod_ )

#### DEFAULT_STORAGE_TYPE(_ = Non_ )

#### KEY_DERIVATION_ARGON2I_INT(_ = 'kdf:argon2i:int_ )

#### KEY_DERIVATION_ARGON2I_MOD(_ = 'kdf:argon2i:mod_ )

#### KEY_DERIVATION_RAW(_ = 'RAW_ )

#### get_uri(create: [bool](https://docs.python.org/3/library/functions.html#bool) = False)
Accessor for the storage URI.


#### _async_ open_store(provision: [bool](https://docs.python.org/3/library/functions.html#bool) = False)
Open a store, removing and/or creating it if so configured.


* **Raises**

    
    * **ProfileNotFoundError** – If the store is not found


    * **ProfileError** – If there is another aries_askar error



#### _async_ remove_store()
Remove an existing store.


* **Raises**

    
    * **ProfileNotFoundError** – If the wallet could not be found


    * **ProfileError** – If there was another aries_askar error
