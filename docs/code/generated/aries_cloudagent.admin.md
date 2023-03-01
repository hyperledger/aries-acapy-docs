# aries_cloudagent.admin package

## Submodules

## aries_cloudagent.admin.base_server module

Abstract admin server interface.


### _class_ aries_cloudagent.admin.base_server.BaseAdminServer()
Bases: [`ABC`](https://docs.python.org/3/library/abc.html#abc.ABC)

Admin HTTP server class.


#### _abstract async_ start()
Start the webserver.


* **Raises**

    **AdminSetupError** – If there was an error starting the webserver



#### _abstract async_ stop()
Stop the webserver.

## aries_cloudagent.admin.error module

Admin error classes.


### _exception_ aries_cloudagent.admin.error.AdminError(\*args, error_code: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, \*\*kwargs)
Bases: [`BaseError`](aries_cloudagent.core.md#aries_cloudagent.core.error.BaseError)

Base class for Admin-related errors.


### _exception_ aries_cloudagent.admin.error.AdminSetupError(\*args, error_code: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, \*\*kwargs)
Bases: `AdminError`

Admin server setup or configuration error.

## aries_cloudagent.admin.request_context module

Admin request context class.

A request context provided by the admin server to admin route handlers.


### _class_ aries_cloudagent.admin.request_context.AdminRequestContext(profile: [Profile](aries_cloudagent.core.md#aries_cloudagent.core.profile.Profile), \*, context: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[InjectionContext](aries_cloudagent.config.md#aries_cloudagent.config.injection_context.InjectionContext)] = None, settings: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[Mapping](https://docs.python.org/3/library/typing.html#typing.Mapping)[[str](https://docs.python.org/3/library/stdtypes.html#str), [object](https://docs.python.org/3/library/functions.html#object)]] = None)
Bases: [`object`](https://docs.python.org/3/library/functions.html#object)

Context established by the Conductor and passed into message handlers.


#### inject(base_cls: [Type](https://docs.python.org/3/library/typing.html#typing.Type)[InjectType], settings: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[Mapping](https://docs.python.org/3/library/typing.html#typing.Mapping)[[str](https://docs.python.org/3/library/stdtypes.html#str), [object](https://docs.python.org/3/library/functions.html#object)]] = None)
Get the provided instance of a given class identifier.


* **Parameters**

    
    * **cls** – The base class to retrieve an instance of


    * **settings** – An optional mapping providing configuration to the provider



* **Returns**

    An instance of the base class, or None



#### inject_or(base_cls: [Type](https://docs.python.org/3/library/typing.html#typing.Type)[InjectType], settings: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[Mapping](https://docs.python.org/3/library/typing.html#typing.Mapping)[[str](https://docs.python.org/3/library/stdtypes.html#str), [object](https://docs.python.org/3/library/functions.html#object)]] = None, default: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[InjectType] = None)
Get the provided instance of a given class identifier or default if not found.


* **Parameters**

    
    * **base_cls** – The base class to retrieve an instance of


    * **settings** – An optional dict providing configuration to the provider


    * **default** – default return value if no instance is found



* **Returns**

    An instance of the base class, or None



#### _property_ injector(_: [Injector](aries_cloudagent.config.md#aries_cloudagent.config.injector.Injector_ )
Accessor for the associated Injector instance.


#### _property_ profile(_: [Profile](aries_cloudagent.core.md#aries_cloudagent.core.profile.Profile_ )
Accessor for the associated Profile instance.


#### session()
Start a new interactive session with no transaction support requested.


#### _property_ settings(_: [Settings](aries_cloudagent.config.md#aries_cloudagent.config.settings.Settings_ )
Accessor for the context settings.


#### _classmethod_ test_context(session_inject: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[dict](https://docs.python.org/3/library/stdtypes.html#dict)] = None, profile: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[Profile](aries_cloudagent.core.md#aries_cloudagent.core.profile.Profile)] = None)
Quickly set up a new admin request context for tests.


#### transaction()
Start a new interactive session with commit and rollback support.

If the current backend does not support transactions, then commit
and rollback operations of the session will not have any effect.


#### update_settings(settings: [Mapping](https://docs.python.org/3/library/typing.html#typing.Mapping)[[str](https://docs.python.org/3/library/stdtypes.html#str), [object](https://docs.python.org/3/library/functions.html#object)])
Update the current scope with additional settings.

## aries_cloudagent.admin.server module
