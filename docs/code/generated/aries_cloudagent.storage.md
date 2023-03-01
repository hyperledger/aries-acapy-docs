# aries_cloudagent.storage package

## Subpackages


* [aries_cloudagent.storage.vc_holder package](aries_cloudagent.storage.vc_holder.md)


    * [Submodules](aries_cloudagent.storage.vc_holder.md#submodules)


    * [aries_cloudagent.storage.vc_holder.askar module](aries_cloudagent.storage.vc_holder.md#aries-cloudagent-storage-vc-holder-askar-module)


    * [aries_cloudagent.storage.vc_holder.base module](aries_cloudagent.storage.vc_holder.md#aries-cloudagent-storage-vc-holder-base-module)


    * [aries_cloudagent.storage.vc_holder.in_memory module](aries_cloudagent.storage.vc_holder.md#aries-cloudagent-storage-vc-holder-in-memory-module)


    * [aries_cloudagent.storage.vc_holder.indy module](aries_cloudagent.storage.vc_holder.md#aries-cloudagent-storage-vc-holder-indy-module)


    * [aries_cloudagent.storage.vc_holder.vc_record module](aries_cloudagent.storage.vc_holder.md#aries-cloudagent-storage-vc-holder-vc-record-module)


    * [aries_cloudagent.storage.vc_holder.xform module](aries_cloudagent.storage.vc_holder.md#aries-cloudagent-storage-vc-holder-xform-module)


## Submodules

## aries_cloudagent.storage.askar module

## aries_cloudagent.storage.base module

Abstract base classes for non-secrets storage.


### _class_ aries_cloudagent.storage.base.BaseStorage()
Bases: [`ABC`](https://docs.python.org/3/library/abc.html#abc.ABC)

Abstract stored records interface.


#### _abstract async_ add_record(record: StorageRecord)
Add a new record to the store.


* **Parameters**

    **record** – StorageRecord to be stored



#### _abstract async_ delete_all_records(type_filter: [str](https://docs.python.org/3/library/stdtypes.html#str), tag_query: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[Mapping](https://docs.python.org/3/library/typing.html#typing.Mapping)] = None)
Remove all records matching a particular type filter and tag query.


#### _abstract async_ delete_record(record: StorageRecord)
Delete an existing record.


* **Parameters**

    **record** – StorageRecord to delete



#### _abstract async_ find_all_records(type_filter: [str](https://docs.python.org/3/library/stdtypes.html#str), tag_query: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[Mapping](https://docs.python.org/3/library/typing.html#typing.Mapping)] = None, options: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[Mapping](https://docs.python.org/3/library/typing.html#typing.Mapping)] = None)
Retrieve all records matching a particular type filter and tag query.


#### _async_ find_record(type_filter: [str](https://docs.python.org/3/library/stdtypes.html#str), tag_query: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[Mapping](https://docs.python.org/3/library/typing.html#typing.Mapping)] = None, options: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[Mapping](https://docs.python.org/3/library/typing.html#typing.Mapping)] = None)
Find a record using a unique tag filter.


* **Parameters**

    
    * **type_filter** – Filter string


    * **tag_query** – Tags to query


    * **options** – Dictionary of backend-specific options



#### _abstract async_ get_record(record_type: [str](https://docs.python.org/3/library/stdtypes.html#str), record_id: [str](https://docs.python.org/3/library/stdtypes.html#str), options: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[Mapping](https://docs.python.org/3/library/typing.html#typing.Mapping)] = None)
Fetch a record from the store by type and ID.


* **Parameters**

    
    * **record_type** – The record type


    * **record_id** – The record id


    * **options** – A dictionary of backend-specific options



* **Returns**

    A StorageRecord instance



#### _abstract async_ update_record(record: StorageRecord, value: [str](https://docs.python.org/3/library/stdtypes.html#str), tags: [Mapping](https://docs.python.org/3/library/typing.html#typing.Mapping))
Update an existing stored record’s value and tags.


* **Parameters**

    
    * **record** – StorageRecord to update


    * **value** – The new value


    * **tags** – The new tags



### _class_ aries_cloudagent.storage.base.BaseStorageSearch()
Bases: [`ABC`](https://docs.python.org/3/library/abc.html#abc.ABC)

Abstract stored records search interface.


#### _abstract_ search_records(type_filter: [str](https://docs.python.org/3/library/stdtypes.html#str), tag_query: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[Mapping](https://docs.python.org/3/library/typing.html#typing.Mapping)] = None, page_size: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[int](https://docs.python.org/3/library/functions.html#int)] = None, options: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[Mapping](https://docs.python.org/3/library/typing.html#typing.Mapping)] = None)
Create a new record query.


* **Parameters**

    
    * **type_filter** – Filter string


    * **tag_query** – Tags to query


    * **page_size** – Page size


    * **options** – Dictionary of backend-specific options



* **Returns**

    An instance of BaseStorageSearchSession



### _class_ aries_cloudagent.storage.base.BaseStorageSearchSession()
Bases: [`ABC`](https://docs.python.org/3/library/abc.html#abc.ABC)

Abstract stored records search session interface.


#### _async_ close()
Dispose of the search query.


#### _abstract async_ fetch(max_count: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[int](https://docs.python.org/3/library/functions.html#int)] = None)
Fetch the next list of results from the store.


* **Parameters**

    **max_count** – Max number of records to return. If not provided,
    defaults to the backend’s preferred page size



* **Returns**

    A list of StorageRecord instances



### _class_ aries_cloudagent.storage.base.IterSearch(search: BaseStorageSearchSession, page_size: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[int](https://docs.python.org/3/library/functions.html#int)] = None)
Bases: [`object`](https://docs.python.org/3/library/functions.html#object)

A generic record search async iterator.


### aries_cloudagent.storage.base.validate_record(record: StorageRecord, \*, delete=False)
Ensure that a record is ready to be saved/updated/deleted.

## aries_cloudagent.storage.error module

Storage-related exceptions.


### _exception_ aries_cloudagent.storage.error.StorageDuplicateError(\*args, error_code: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, \*\*kwargs)
Bases: `StorageError`

Duplicate record found in storage.


### _exception_ aries_cloudagent.storage.error.StorageError(\*args, error_code: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, \*\*kwargs)
Bases: [`BaseError`](aries_cloudagent.core.md#aries_cloudagent.core.error.BaseError)

Base class for Storage errors.


### _exception_ aries_cloudagent.storage.error.StorageNotFoundError(\*args, error_code: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, \*\*kwargs)
Bases: `StorageError`

Record not found in storage.


### _exception_ aries_cloudagent.storage.error.StorageSearchError(\*args, error_code: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, \*\*kwargs)
Bases: `StorageError`

General exception during record search.

## aries_cloudagent.storage.in_memory module

## aries_cloudagent.storage.indy module

Indy implementation of BaseStorage interface.


### _class_ aries_cloudagent.storage.indy.IndySdkStorage(wallet: [IndyOpenWallet](aries_cloudagent.indy.sdk.md#aries_cloudagent.indy.sdk.wallet_setup.IndyOpenWallet))
Bases: `BaseStorage`, `BaseStorageSearch`

Indy Non-Secrets interface.


#### _async_ add_record(record: StorageRecord)
Add a new record to the store.


* **Parameters**

    **record** – StorageRecord to be stored



#### _async_ delete_all_records(type_filter: [str](https://docs.python.org/3/library/stdtypes.html#str), tag_query: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[Mapping](https://docs.python.org/3/library/typing.html#typing.Mapping)] = None)
Remove all records matching a particular type filter and tag query.


#### _async_ delete_record(record: StorageRecord)
Delete a record.


* **Parameters**

    **record** – StorageRecord to delete



* **Raises**

    
    * **StorageNotFoundError** – If record not found


    * **StorageError** – If a libindy error occurs



#### _async_ find_all_records(type_filter: [str](https://docs.python.org/3/library/stdtypes.html#str), tag_query: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[Mapping](https://docs.python.org/3/library/typing.html#typing.Mapping)] = None, options: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[Mapping](https://docs.python.org/3/library/typing.html#typing.Mapping)] = None)
Retrieve all records matching a particular type filter and tag query.


#### _async_ get_record(record_type: [str](https://docs.python.org/3/library/stdtypes.html#str), record_id: [str](https://docs.python.org/3/library/stdtypes.html#str), options: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[Mapping](https://docs.python.org/3/library/typing.html#typing.Mapping)] = None)
Fetch a record from the store by type and ID.


* **Parameters**

    
    * **record_type** – The record type


    * **record_id** – The record id


    * **options** – A dictionary of backend-specific options



* **Returns**

    A StorageRecord instance



* **Raises**

    
    * **StorageError** – If the record is not provided


    * **StorageError** – If the record ID not provided


    * **StorageNotFoundError** – If the record is not found


    * **StorageError** – If record not found



#### search_records(type_filter: [str](https://docs.python.org/3/library/stdtypes.html#str), tag_query: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[Mapping](https://docs.python.org/3/library/typing.html#typing.Mapping)] = None, page_size: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[int](https://docs.python.org/3/library/functions.html#int)] = None, options: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[Mapping](https://docs.python.org/3/library/typing.html#typing.Mapping)] = None)
Search stored records.


* **Parameters**

    
    * **type_filter** – Filter string


    * **tag_query** – Tags to query


    * **page_size** – Page size


    * **options** – Dictionary of backend-specific options



* **Returns**

    An instance of IndySdkStorageSearch



#### _async_ update_record(record: StorageRecord, value: [str](https://docs.python.org/3/library/stdtypes.html#str), tags: [Mapping](https://docs.python.org/3/library/typing.html#typing.Mapping))
Update an existing stored record’s value and tags.


* **Parameters**

    
    * **record** – StorageRecord to update


    * **value** – The new value


    * **tags** – The new tags



* **Raises**

    
    * **StorageNotFoundError** – If record not found


    * **StorageError** – If a libindy error occurs



#### _property_ wallet(_: [IndyOpenWallet](aries_cloudagent.indy.sdk.md#aries_cloudagent.indy.sdk.wallet_setup.IndyOpenWallet_ )
Accessor for IndyOpenWallet instance.


### _class_ aries_cloudagent.storage.indy.IndySdkStorageSearch(store: IndySdkStorage, type_filter: [str](https://docs.python.org/3/library/stdtypes.html#str), tag_query: [Mapping](https://docs.python.org/3/library/typing.html#typing.Mapping), page_size: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[int](https://docs.python.org/3/library/functions.html#int)] = None, options: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[Mapping](https://docs.python.org/3/library/typing.html#typing.Mapping)] = None)
Bases: `BaseStorageSearchSession`

Represent an active stored records search.


#### _async_ close()
Dispose of the search query.


#### _async_ fetch(max_count: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[int](https://docs.python.org/3/library/functions.html#int)] = None)
Fetch the next list of results from the store.


* **Parameters**

    **max_count** – Max number of records to return. If not provided,
    defaults to the backend’s preferred page size



* **Returns**

    A list of StorageRecord instances



* **Raises**

    **StorageSearchError** – If the search query has not been opened


## aries_cloudagent.storage.record module

Record instance stored and searchable by BaseStorage implementation.


### _class_ aries_cloudagent.storage.record.StorageRecord(type, value, tags: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[dict](https://docs.python.org/3/library/stdtypes.html#dict)] = None, id: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None)
Bases: `StorageRecord`

Storage record class.
