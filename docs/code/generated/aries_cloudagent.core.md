# aries_cloudagent.core package

## Subpackages


* [aries_cloudagent.core.in_memory package](aries_cloudagent.core.in_memory.md)


    * [Subpackages](aries_cloudagent.core.in_memory.md#subpackages)


        * [aries_cloudagent.core.in_memory.didcomm package](aries_cloudagent.core.in_memory.didcomm.md)


            * [Submodules](aries_cloudagent.core.in_memory.didcomm.md#submodules)


            * [aries_cloudagent.core.in_memory.didcomm.derive_1pu module](aries_cloudagent.core.in_memory.didcomm.md#aries-cloudagent-core-in-memory-didcomm-derive-1pu-module)


            * [aries_cloudagent.core.in_memory.didcomm.derive_ecdh module](aries_cloudagent.core.in_memory.didcomm.md#aries-cloudagent-core-in-memory-didcomm-derive-ecdh-module)


    * [Submodules](aries_cloudagent.core.in_memory.md#submodules)


    * [aries_cloudagent.core.in_memory.profile module](aries_cloudagent.core.in_memory.md#aries-cloudagent-core-in-memory-profile-module)


## Submodules

## aries_cloudagent.core.conductor module

## aries_cloudagent.core.dispatcher module

## aries_cloudagent.core.error module

Common exception classes.


### _exception_ aries_cloudagent.core.error.BaseError(\*args, error_code: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, \*\*kwargs)
Bases: [`Exception`](https://docs.python.org/3/library/exceptions.html#Exception)

Generic exception class which other exceptions should inherit from.


#### _property_ message(_: [str](https://docs.python.org/3/library/stdtypes.html#str_ )
Accessor for the error message.


#### _property_ roll_up(_: [str](https://docs.python.org/3/library/stdtypes.html#str_ )
Accessor for nested error messages rolled into one line.

For display: aiohttp.web errors truncate after newline.


### _exception_ aries_cloudagent.core.error.ProfileDuplicateError(\*args, error_code: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, \*\*kwargs)
Bases: `ProfileError`

Profile with the given name already exists.


### _exception_ aries_cloudagent.core.error.ProfileError(\*args, error_code: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, \*\*kwargs)
Bases: `BaseError`

Base error for profile operations.


### _exception_ aries_cloudagent.core.error.ProfileNotFoundError(\*args, error_code: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, \*\*kwargs)
Bases: `ProfileError`

Requested profile was not found.


### _exception_ aries_cloudagent.core.error.ProfileSessionInactiveError(\*args, error_code: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, \*\*kwargs)
Bases: `ProfileError`

Error raised when a profile session is not currently active.


### _exception_ aries_cloudagent.core.error.ProtocolDefinitionValidationError(\*args, error_code: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, \*\*kwargs)
Bases: `BaseError`

Error raised when there is a problem validating a protocol definition.


### _exception_ aries_cloudagent.core.error.ProtocolMinorVersionNotSupported(\*args, error_code: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, \*\*kwargs)
Bases: `BaseError`

Minimum minor version protocol error.

Error raised when protocol support exists
but minimum minor version is higher than in @type parameter.


### _exception_ aries_cloudagent.core.error.StartupError(\*args, error_code: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, \*\*kwargs)
Bases: `BaseError`

Error raised when there is a problem starting the conductor.

## aries_cloudagent.core.event_bus module

A simple event bus.


### _class_ aries_cloudagent.core.event_bus.Event(topic: [str](https://docs.python.org/3/library/stdtypes.html#str), payload: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[Any](https://docs.python.org/3/library/typing.html#typing.Any)] = None)
Bases: [`object`](https://docs.python.org/3/library/functions.html#object)

A simple event object.


#### _property_ payload()
Return this event’s payload.


#### _property_ topic()
Return this event’s topic.


#### with_metadata(metadata: EventMetadata)
Annotate event with metadata and return EventWithMetadata object.


### _class_ aries_cloudagent.core.event_bus.EventBus()
Bases: [`object`](https://docs.python.org/3/library/functions.html#object)

A simple event bus implementation.


#### _async_ notify(profile: Profile, event: Event)
Notify subscribers of event.


* **Parameters**

    
    * **profile** (*Profile*) – context of the event


    * **event** (*Event*) – event to emit



#### subscribe(pattern: [Pattern](https://docs.python.org/3/library/typing.html#typing.Pattern), processor: [Callable](https://docs.python.org/3/library/typing.html#typing.Callable))
Subscribe to an event.


* **Parameters**

    
    * **pattern** (*Pattern*) – compiled regular expression for matching topics


    * **processor** (*Callable*) – async callable accepting profile and event



#### unsubscribe(pattern: [Pattern](https://docs.python.org/3/library/typing.html#typing.Pattern), processor: [Callable](https://docs.python.org/3/library/typing.html#typing.Callable))
Unsubscribe from an event.

This method is idempotent. Repeated calls to unsubscribe will not
result in errors.


* **Parameters**

    
    * **pattern** (*Pattern*) – regular expression used to subscribe the processor


    * **processor** (*Callable*) – processor to unsubscribe



#### wait_for_event(waiting_profile: Profile, pattern: [Pattern](https://docs.python.org/3/library/typing.html#typing.Pattern), cond: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[Callable](https://docs.python.org/3/library/typing.html#typing.Callable)[[Event], [bool](https://docs.python.org/3/library/functions.html#bool)]] = None)
Capture an event and retrieve its value.


### _class_ aries_cloudagent.core.event_bus.EventMetadata(pattern: [Pattern](https://docs.python.org/3/library/typing.html#typing.Pattern), match: [Match](https://docs.python.org/3/library/typing.html#typing.Match)[[str](https://docs.python.org/3/library/stdtypes.html#str)])
Bases: [`tuple`](https://docs.python.org/3/library/stdtypes.html#tuple)

Metadata passed alongside events to add context.


#### _property_ match()
Alias for field number 1


#### _property_ pattern()
Alias for field number 0


### _class_ aries_cloudagent.core.event_bus.EventWithMetadata(topic: [str](https://docs.python.org/3/library/stdtypes.html#str), payload: [Any](https://docs.python.org/3/library/typing.html#typing.Any), metadata: EventMetadata)
Bases: `Event`

Event with metadata passed alongside events to add context.


#### _property_ metadata(_: EventMetadat_ )
Return metadata.


### _class_ aries_cloudagent.core.event_bus.MockEventBus()
Bases: `EventBus`

A mock EventBus for testing.


#### _async_ notify(profile: Profile, event: Event)
Append the event to MockEventBus.events.

## aries_cloudagent.core.goal_code_registry module

Handle registration and publication of supported goal codes.


### _class_ aries_cloudagent.core.goal_code_registry.GoalCodeRegistry()
Bases: [`object`](https://docs.python.org/3/library/functions.html#object)

Goal code registry.


#### goal_codes_matching_query(query: [str](https://docs.python.org/3/library/stdtypes.html#str))
Return a list of goal codes matching a query string.


#### register_controllers(\*controller_sets)
Add new controllers.


* **Parameters**

    **controller_sets** – Mappings of controller to coroutines


## aries_cloudagent.core.oob_processor module

## aries_cloudagent.core.plugin_registry module

Handle registration of plugin modules for extending functionality.


### _class_ aries_cloudagent.core.plugin_registry.PluginRegistry(blocklist: [Iterable](https://docs.python.org/3/library/typing.html#typing.Iterable)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = [])
Bases: [`object`](https://docs.python.org/3/library/functions.html#object)

Plugin registry for indexing application plugins.


#### _async_ init_context(context: [InjectionContext](aries_cloudagent.config.md#aries_cloudagent.config.injection_context.InjectionContext))
Call plugin setup methods on the current context.


#### _async_ load_protocol_version(context: [InjectionContext](aries_cloudagent.config.md#aries_cloudagent.config.injection_context.InjectionContext), mod: module, version_definition: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[dict](https://docs.python.org/3/library/stdtypes.html#dict)] = None)
Load a particular protocol version.


#### _async_ load_protocols(context: [InjectionContext](aries_cloudagent.config.md#aries_cloudagent.config.injection_context.InjectionContext), plugin: module)
For modules that don’t implement setup, register protocols manually.


#### _property_ plugin_names(_: [Sequence](https://docs.python.org/3/library/typing.html#typing.Sequence)[[str](https://docs.python.org/3/library/stdtypes.html#str)_ )
Accessor for a list of all plugin modules.


#### _property_ plugins(_: [Sequence](https://docs.python.org/3/library/typing.html#typing.Sequence)[module_ )
Accessor for a list of all plugin modules.


#### post_process_routes(app)
Call route binary file response OpenAPI fixups if applicable.


#### _async_ register_admin_routes(app)
Call route registration methods on the current context.


#### register_package(package_name: [str](https://docs.python.org/3/library/stdtypes.html#str))
Register all modules (sub-packages) under a given package name.


#### register_plugin(module_name: [str](https://docs.python.org/3/library/stdtypes.html#str))
Register a plugin module.


#### register_protocol_events(context: [InjectionContext](aries_cloudagent.config.md#aries_cloudagent.config.injection_context.InjectionContext))
Call route register_events methods on the current context.


#### validate_version(version_list, module_name)
Validate version dict format.

## aries_cloudagent.core.profile module

Classes for managing profile information within a request context.


### _class_ aries_cloudagent.core.profile.Profile(\*, context: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[InjectionContext](aries_cloudagent.config.md#aries_cloudagent.config.injection_context.InjectionContext)] = None, name: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, created: [bool](https://docs.python.org/3/library/functions.html#bool) = False)
Bases: [`ABC`](https://docs.python.org/3/library/abc.html#abc.ABC)

Base abstraction for handling identity-related state.


#### BACKEND_NAME(_: [str](https://docs.python.org/3/library/stdtypes.html#str_ _ = Non_ )

#### DEFAULT_NAME(_: [str](https://docs.python.org/3/library/stdtypes.html#str_ _ = 'default_ )

#### _property_ backend(_: [str](https://docs.python.org/3/library/stdtypes.html#str_ )
Accessor for the backend implementation name.


#### _async_ close()
Close the profile instance.


#### _property_ context(_: [InjectionContext](aries_cloudagent.config.md#aries_cloudagent.config.injection_context.InjectionContext_ )
Accessor for the injection context.


#### _property_ created(_: [bool](https://docs.python.org/3/library/functions.html#bool_ )
Accessor for the created flag indicating a new profile.


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



#### _property_ name(_: [str](https://docs.python.org/3/library/stdtypes.html#str_ )
Accessor for the profile name.


#### _async_ notify(topic: [str](https://docs.python.org/3/library/stdtypes.html#str), payload: [Any](https://docs.python.org/3/library/typing.html#typing.Any))
Signal an event.


#### _async_ remove()
Remove the profile.


#### _abstract_ session(context: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[InjectionContext](aries_cloudagent.config.md#aries_cloudagent.config.injection_context.InjectionContext)] = None)
Start a new interactive session with no transaction support requested.


#### _property_ settings(_: [BaseSettings](aries_cloudagent.config.md#aries_cloudagent.config.base.BaseSettings_ )
Accessor for scope-specific settings.


#### _abstract_ transaction(context: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[InjectionContext](aries_cloudagent.config.md#aries_cloudagent.config.injection_context.InjectionContext)] = None)
Start a new interactive session with commit and rollback support.

If the current backend does not support transactions, then commit
and rollback operations of the session will not have any effect.


### _class_ aries_cloudagent.core.profile.ProfileManager()
Bases: [`ABC`](https://docs.python.org/3/library/abc.html#abc.ABC)

Handle provision and open for profile instances.


#### _abstract async_ open(context: [InjectionContext](aries_cloudagent.config.md#aries_cloudagent.config.injection_context.InjectionContext), config: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[Mapping](https://docs.python.org/3/library/typing.html#typing.Mapping)[[str](https://docs.python.org/3/library/stdtypes.html#str), [Any](https://docs.python.org/3/library/typing.html#typing.Any)]] = None)
Open an instance of an existing profile.


#### _abstract async_ provision(context: [InjectionContext](aries_cloudagent.config.md#aries_cloudagent.config.injection_context.InjectionContext), config: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[Mapping](https://docs.python.org/3/library/typing.html#typing.Mapping)[[str](https://docs.python.org/3/library/stdtypes.html#str), [Any](https://docs.python.org/3/library/typing.html#typing.Any)]] = None)
Provision a new instance of a profile.


### _class_ aries_cloudagent.core.profile.ProfileManagerProvider()
Bases: [`BaseProvider`](aries_cloudagent.config.md#aries_cloudagent.config.base.BaseProvider)

The standard profile manager provider which keys off the selected wallet type.


#### MANAGER_TYPES(_ = {'askar': 'aries_cloudagent.askar.profile.AskarProfileManager', 'in_memory': 'aries_cloudagent.core.in_memory.InMemoryProfileManager', 'indy': 'aries_cloudagent.indy.sdk.profile.IndySdkProfileManager'_ )

#### provide(settings: [BaseSettings](aries_cloudagent.config.md#aries_cloudagent.config.base.BaseSettings), injector: [BaseInjector](aries_cloudagent.config.md#aries_cloudagent.config.base.BaseInjector))
Create the profile manager instance.


### _class_ aries_cloudagent.core.profile.ProfileSession(profile: Profile, \*, context: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[InjectionContext](aries_cloudagent.config.md#aries_cloudagent.config.injection_context.InjectionContext)] = None, settings: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[Mapping](https://docs.python.org/3/library/typing.html#typing.Mapping)[[str](https://docs.python.org/3/library/stdtypes.html#str), [Any](https://docs.python.org/3/library/typing.html#typing.Any)]] = None)
Bases: [`ABC`](https://docs.python.org/3/library/abc.html#abc.ABC)

An active connection to the profile management backend.


#### _property_ active(_: [bool](https://docs.python.org/3/library/functions.html#bool_ )
Accessor for the session active state.


#### _async_ commit()
Commit any updates performed within the transaction.

If the current session is not a transaction, then nothing is performed.


#### _property_ context(_: [InjectionContext](aries_cloudagent.config.md#aries_cloudagent.config.injection_context.InjectionContext_ )
Accessor for the associated injection context.


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



#### _property_ is_transaction(_: [bool](https://docs.python.org/3/library/functions.html#bool_ )
Check if the session supports commit and rollback operations.


#### _property_ profile(_: Profil_ )
Accessor for the associated profile instance.


#### _async_ rollback()
Roll back any updates performed within the transaction.

If the current session is not a transaction, then nothing is performed.


#### _property_ settings(_: [BaseSettings](aries_cloudagent.config.md#aries_cloudagent.config.base.BaseSettings_ )
Accessor for scope-specific settings.

## aries_cloudagent.core.protocol_registry module

Handle registration and publication of supported protocols.


### _class_ aries_cloudagent.core.protocol_registry.ProtocolRegistry()
Bases: [`object`](https://docs.python.org/3/library/functions.html#object)

Protocol registry for indexing message families.


#### _property_ controllers(_: [Mapping](https://docs.python.org/3/library/typing.html#typing.Mapping)[[str](https://docs.python.org/3/library/stdtypes.html#str), [str](https://docs.python.org/3/library/stdtypes.html#str)_ )
Accessor for a list of all protocol controller functions.


#### create_msg_types_for_minor_version(typesets, version_definition)
Return mapping of message type to module path for minor versions.


* **Parameters**

    
    * **typesets** – Mappings of message types to register


    * **version_definition** – Optional version definition dict



* **Returns**

    Typesets mapping



#### _property_ message_types(_: [Sequence](https://docs.python.org/3/library/typing.html#typing.Sequence)[[str](https://docs.python.org/3/library/stdtypes.html#str)_ )
Accessor for a list of all message types.


#### parse_type_string(message_type)
Parse message type string and return dict with info.


#### _async_ prepare_disclosed(context: [InjectionContext](aries_cloudagent.config.md#aries_cloudagent.config.injection_context.InjectionContext), protocols: [Sequence](https://docs.python.org/3/library/typing.html#typing.Sequence)[[str](https://docs.python.org/3/library/stdtypes.html#str)])
Call controllers and return publicly supported message families and roles.


#### _property_ protocols(_: [Sequence](https://docs.python.org/3/library/typing.html#typing.Sequence)[[str](https://docs.python.org/3/library/stdtypes.html#str)_ )
Accessor for a list of all message protocols.


#### protocols_matching_query(query: [str](https://docs.python.org/3/library/stdtypes.html#str))
Return a list of message protocols matching a query string.


#### register_controllers(\*controller_sets, version_definition=None)
Add new controllers.


* **Parameters**

    **controller_sets** – Mappings of message families to coroutines



#### register_message_types(\*typesets, version_definition=None)
Add new supported message types.


* **Parameters**

    
    * **typesets** – Mappings of message types to register


    * **version_definition** – Optional version definition dict



#### resolve_message_class(message_type: [str](https://docs.python.org/3/library/stdtypes.html#str))
Resolve a message_type to a message class.

Given a message type identifier, this method
returns the corresponding registered message class.


* **Parameters**

    **message_type** – Message type to resolve



* **Returns**

    The resolved message class


## aries_cloudagent.core.util module
