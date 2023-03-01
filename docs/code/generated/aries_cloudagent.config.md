# aries_cloudagent.config package

## Submodules

## aries_cloudagent.config.argparse module

## aries_cloudagent.config.banner module

Module to contain logic to generate the banner for ACA-py.


### _class_ aries_cloudagent.config.banner.Banner(border: [str](https://docs.python.org/3/library/stdtypes.html#str), length: [int](https://docs.python.org/3/library/functions.html#int))
Bases: [`object`](https://docs.python.org/3/library/functions.html#object)

Management class to generate a banner for ACA-py.


#### lr_pad(content: [str](https://docs.python.org/3/library/stdtypes.html#str))
Pad string content with defined border character.


* **Parameters**

    **content** – String content to pad



#### print_border()
Print a full line using the border character.


#### print_list(items)
Print a list of items, prepending a dash to each item.


#### print_spacer()
Print an empty line with the border character only.


#### print_subtitle(title)
Print a subtitle for a section.


#### print_title(title)
Print the main title element.


#### print_version(version)
Print the current `version`.

## aries_cloudagent.config.base module

Configuration base classes.


### _class_ aries_cloudagent.config.base.BaseInjector()
Bases: [`ABC`](https://docs.python.org/3/library/abc.html#abc.ABC)

Base injector class.


#### _abstract_ copy()
Produce a copy of the injector instance.


#### _abstract_ inject(base_cls: [Type](https://docs.python.org/3/library/typing.html#typing.Type)[InjectType], settings: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[Mapping](https://docs.python.org/3/library/typing.html#typing.Mapping)[[str](https://docs.python.org/3/library/stdtypes.html#str), [Any](https://docs.python.org/3/library/typing.html#typing.Any)]] = None)
Get the provided instance of a given class identifier.


* **Parameters**

    
    * **cls** – The base class to retrieve an instance of


    * **settings** – An optional mapping providing configuration to the provider



* **Returns**

    An instance of the base class, or None



#### _abstract_ inject_or(base_cls: [Type](https://docs.python.org/3/library/typing.html#typing.Type)[InjectType], settings: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[Mapping](https://docs.python.org/3/library/typing.html#typing.Mapping)[[str](https://docs.python.org/3/library/stdtypes.html#str), [Any](https://docs.python.org/3/library/typing.html#typing.Any)]] = None, default: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[InjectType] = None)
Get the provided instance of a given class identifier or default if not found.


* **Parameters**

    
    * **base_cls** – The base class to retrieve an instance of


    * **settings** – An optional dict providing configuration to the provider


    * **default** – default return value if no instance is found



* **Returns**

    An instance of the base class, or None



### _class_ aries_cloudagent.config.base.BaseProvider()
Bases: [`ABC`](https://docs.python.org/3/library/abc.html#abc.ABC)

Base provider class.


#### provide(settings: BaseSettings, injector: BaseInjector)
Provide the object instance given a config and injector.


### _class_ aries_cloudagent.config.base.BaseSettings(\*args, \*\*kwds)
Bases: [`Mapping`](https://docs.python.org/3/library/typing.html#typing.Mapping)[[`str`](https://docs.python.org/3/library/stdtypes.html#str), [`Any`](https://docs.python.org/3/library/typing.html#typing.Any)]

Base settings class.


#### _abstract_ copy()
Produce a copy of the settings instance.


#### _abstract_ extend(other: [Mapping](https://docs.python.org/3/library/typing.html#typing.Mapping)[[str](https://docs.python.org/3/library/stdtypes.html#str), [Any](https://docs.python.org/3/library/typing.html#typing.Any)])
Merge another mapping to produce a new settings instance.


#### get_bool(\*var_names, default: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[bool](https://docs.python.org/3/library/functions.html#bool)] = None)
Fetch a setting as a boolean value.


* **Parameters**

    
    * **var_names** – A list of variable name alternatives


    * **default** – The default value to return if none are defined



#### get_int(\*var_names, default: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[int](https://docs.python.org/3/library/functions.html#int)] = None)
Fetch a setting as an integer value.


* **Parameters**

    
    * **var_names** – A list of variable name alternatives


    * **default** – The default value to return if none are defined



#### get_str(\*var_names, default: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None)
Fetch a setting as a string value.


* **Parameters**

    
    * **var_names** – A list of variable name alternatives


    * **default** – The default value to return if none are defined



#### _abstract_ get_value(\*var_names, default: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[Any](https://docs.python.org/3/library/typing.html#typing.Any)] = None)
Fetch a setting.


* **Parameters**

    
    * **var_names** – A list of variable name alternatives


    * **default** – The default value to return if none are defined



* **Returns**

    The setting value, if defined, otherwise the default value



### _exception_ aries_cloudagent.config.base.ConfigError(\*args, error_code: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, \*\*kwargs)
Bases: [`BaseError`](aries_cloudagent.core.md#aries_cloudagent.core.error.BaseError)

A base exception for all configuration errors.


### _exception_ aries_cloudagent.config.base.InjectionError(\*args, error_code: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, \*\*kwargs)
Bases: `ConfigError`

The base exception raised by Injector and Provider implementations.


### _exception_ aries_cloudagent.config.base.SettingsError(\*args, error_code: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, \*\*kwargs)
Bases: `ConfigError`

The base exception raised by BaseSettings implementations.

## aries_cloudagent.config.base_context module

Base injection context builder classes.


### _class_ aries_cloudagent.config.base_context.ContextBuilder(settings: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[Mapping](https://docs.python.org/3/library/typing.html#typing.Mapping)[[str](https://docs.python.org/3/library/stdtypes.html#str), [Any](https://docs.python.org/3/library/typing.html#typing.Any)]] = None)
Bases: [`ABC`](https://docs.python.org/3/library/abc.html#abc.ABC)

Base injection context builder class.


#### _abstract async_ build_context()
Build the base injection context.


#### update_settings(settings: [Mapping](https://docs.python.org/3/library/typing.html#typing.Mapping)[[str](https://docs.python.org/3/library/stdtypes.html#str), [object](https://docs.python.org/3/library/functions.html#object)])
Update the context builder with additional settings.

## aries_cloudagent.config.default_context module

## aries_cloudagent.config.error module

Errors for config modules.


### _exception_ aries_cloudagent.config.error.ArgsParseError(\*args, error_code: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, \*\*kwargs)
Bases: `ConfigError`

Error raised when there is a problem parsing the command-line arguments.

## aries_cloudagent.config.injection_context module

Injection context implementation.


### _class_ aries_cloudagent.config.injection_context.InjectionContext(\*, settings: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[Mapping](https://docs.python.org/3/library/typing.html#typing.Mapping)[[str](https://docs.python.org/3/library/stdtypes.html#str), [object](https://docs.python.org/3/library/functions.html#object)]] = None, enforce_typing: [bool](https://docs.python.org/3/library/functions.html#bool) = True)
Bases: `BaseInjector`

Manager for configuration settings and class providers.


#### ROOT_SCOPE(_ = 'application_ )

#### copy()
Produce a copy of the injector instance.


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



#### _property_ injector(_: Injecto_ )
Accessor for scope-specific injector.


#### injector_for_scope(scope_name: [str](https://docs.python.org/3/library/stdtypes.html#str))
Fetch the injector for a specific scope.


* **Parameters**

    **scope_name** – The unique scope identifier



#### _property_ scope_name(_: [str](https://docs.python.org/3/library/stdtypes.html#str_ )
Accessor for the current scope name.


#### _property_ settings(_: Setting_ )
Accessor for scope-specific settings.


#### start_scope(scope_name: [str](https://docs.python.org/3/library/stdtypes.html#str), settings: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[Mapping](https://docs.python.org/3/library/typing.html#typing.Mapping)[[str](https://docs.python.org/3/library/stdtypes.html#str), [object](https://docs.python.org/3/library/functions.html#object)]] = None)
Begin a new named scope.


* **Parameters**

    
    * **scope_name** – The unique name for the scope being entered


    * **settings** – An optional mapping of additional settings to apply



* **Returns**

    A new injection context representing the scope



#### update_settings(settings: [Mapping](https://docs.python.org/3/library/typing.html#typing.Mapping)[[str](https://docs.python.org/3/library/stdtypes.html#str), [object](https://docs.python.org/3/library/functions.html#object)])
Update the scope with additional settings.


### _exception_ aries_cloudagent.config.injection_context.InjectionContextError(\*args, error_code: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, \*\*kwargs)
Bases: `InjectionError`

Base class for issues in the injection context.


### _class_ aries_cloudagent.config.injection_context.Scope(name, injector)
Bases: [`tuple`](https://docs.python.org/3/library/stdtypes.html#tuple)


#### _property_ injector()
Alias for field number 1


#### _property_ name()
Alias for field number 0

## aries_cloudagent.config.injector module

Standard Injector implementation.


### _class_ aries_cloudagent.config.injector.Injector(settings: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[Mapping](https://docs.python.org/3/library/typing.html#typing.Mapping)[[str](https://docs.python.org/3/library/stdtypes.html#str), [object](https://docs.python.org/3/library/functions.html#object)]] = None, \*, enforce_typing: [bool](https://docs.python.org/3/library/functions.html#bool) = True)
Bases: `BaseInjector`

Injector implementation with static and dynamic bindings.


#### bind_instance(base_cls: [Type](https://docs.python.org/3/library/typing.html#typing.Type)[InjectType], instance: InjectType)
Add a static instance as a class binding.


#### bind_provider(base_cls: [Type](https://docs.python.org/3/library/typing.html#typing.Type)[InjectType], provider: BaseProvider, \*, cache: [bool](https://docs.python.org/3/library/functions.html#bool) = False)
Add a dynamic instance resolver as a class binding.


#### clear_binding(base_cls: [Type](https://docs.python.org/3/library/typing.html#typing.Type)[InjectType])
Remove a previously-added binding.


#### copy()
Produce a copy of the injector instance.


#### get_provider(base_cls: [Type](https://docs.python.org/3/library/typing.html#typing.Type)[InjectType])
Find the provider associated with a class binding.


#### inject(base_cls: [Type](https://docs.python.org/3/library/typing.html#typing.Type)[InjectType], settings: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[Mapping](https://docs.python.org/3/library/typing.html#typing.Mapping)[[str](https://docs.python.org/3/library/stdtypes.html#str), [object](https://docs.python.org/3/library/functions.html#object)]] = None)
Get the provided instance of a given class identifier.


* **Parameters**

    
    * **cls** – The base class to retrieve an instance of


    * **params** – An optional dict providing configuration to the provider



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



#### _property_ settings(_: Setting_ )
Accessor for scope-specific settings.

## aries_cloudagent.config.ledger module

## aries_cloudagent.config.logging module

Utilities related to logging.


### _class_ aries_cloudagent.config.logging.LoggingConfigurator()
Bases: [`object`](https://docs.python.org/3/library/functions.html#object)

Utility class used to configure logging and print an informative start banner.


#### _classmethod_ configure(logging_config_path: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, log_level: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, log_file: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None)
Configure logger.


* **Parameters**

    
    * **logging_config_path** – str: (Default value = None) Optional path to
    custom logging config


    * **log_level** – str: (Default value = None)



#### _classmethod_ print_banner(agent_label, inbound_transports, outbound_transports, public_did, admin_server=None, banner_length=40, border_character=':')
Print a startup banner describing the configuration.


* **Parameters**

    
    * **agent_label** – Agent Label


    * **inbound_transports** – Configured inbound transports


    * **outbound_transports** – Configured outbound transports


    * **admin_server** – Admin server info


    * **public_did** – Public DID


    * **banner_length** – (Default value = 40) Length of the banner


    * **border_character** – (Default value = “:”) Character to use in banner


    * **border** – 



### aries_cloudagent.config.logging.load_resource(path: [str](https://docs.python.org/3/library/stdtypes.html#str), encoding: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None)
Open a resource file located in a python package or the local filesystem.


* **Parameters**

    **path** – The resource path in the form of dir/file or package:dir/file



* **Returns**

    A file-like object representing the resource


## aries_cloudagent.config.plugin_settings module

Settings implementation for plugins.


### _class_ aries_cloudagent.config.plugin_settings.PluginSettings(values: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[Mapping](https://docs.python.org/3/library/typing.html#typing.Mapping)[[str](https://docs.python.org/3/library/stdtypes.html#str), [Any](https://docs.python.org/3/library/typing.html#typing.Any)]] = None)
Bases: `BaseSettings`

Retrieve immutable settings for plugins.

Plugin settings should be retrieved by calling:

> PluginSettings.for_plugin(settings, “my_plugin”, {“default”: “values”})

This will extract the PLUGIN_CONFIG_KEY in “settings” and return a new
PluginSettings instance.


#### copy()
Produce a copy of the settings instance.


#### extend(other: [Mapping](https://docs.python.org/3/library/typing.html#typing.Mapping)[[str](https://docs.python.org/3/library/stdtypes.html#str), [Any](https://docs.python.org/3/library/typing.html#typing.Any)])
Merge another settings instance to produce a new instance.


#### _classmethod_ for_plugin(settings: BaseSettings, plugin: [str](https://docs.python.org/3/library/stdtypes.html#str), default: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[Mapping](https://docs.python.org/3/library/typing.html#typing.Mapping)[[str](https://docs.python.org/3/library/stdtypes.html#str), [Any](https://docs.python.org/3/library/typing.html#typing.Any)]] = None)
Construct a PluginSettings object from another settings object.

PLUGIN_CONFIG_KEY is read from settings.


#### get_value(\*var_names: [str](https://docs.python.org/3/library/stdtypes.html#str), default: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[Any](https://docs.python.org/3/library/typing.html#typing.Any)] = None)
Fetch a setting.


* **Parameters**

    
    * **var_names** – A list of variable name alternatives


    * **default** – The default value to return if none are defined


## aries_cloudagent.config.provider module

Service provider implementations.


### _class_ aries_cloudagent.config.provider.CachedProvider(provider: BaseProvider, unique_settings_keys: [tuple](https://docs.python.org/3/library/stdtypes.html#tuple) = ())
Bases: `BaseProvider`

Cache the result of another provider.


#### provide(config: BaseSettings, injector: BaseInjector)
Provide the object instance given a config and injector.

Instances are cached keyed on a SHA256 digest of the relevant subset
of settings.


### _class_ aries_cloudagent.config.provider.ClassProvider(instance_cls: [Union](https://docs.python.org/3/library/typing.html#typing.Union)[[str](https://docs.python.org/3/library/stdtypes.html#str), [type](https://docs.python.org/3/library/functions.html#type)], \*ctor_args, init_method: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, \*\*ctor_kwargs)
Bases: `BaseProvider`

Provider for a particular class.


#### _class_ Inject(base_cls: [type](https://docs.python.org/3/library/functions.html#type))
Bases: [`object`](https://docs.python.org/3/library/functions.html#object)

A class for passing injected arguments to the constructor.


#### provide(config: BaseSettings, injector: BaseInjector)
Provide the object instance given a config and injector.


### _class_ aries_cloudagent.config.provider.InstanceProvider(instance)
Bases: `BaseProvider`

Provider for a previously-created instance.


#### provide(config: BaseSettings, injector: BaseInjector)
Provide the object instance given a config and injector.


### _class_ aries_cloudagent.config.provider.StatsProvider(provider: BaseProvider, methods: [Sequence](https://docs.python.org/3/library/typing.html#typing.Sequence)[[str](https://docs.python.org/3/library/stdtypes.html#str)], \*, ignore_missing: [bool](https://docs.python.org/3/library/functions.html#bool) = True)
Bases: `BaseProvider`

Add statistics to the results of another provider.


#### provide(config: BaseSettings, injector: BaseInjector)
Provide the object instance given a config and injector.

## aries_cloudagent.config.settings module

Settings implementation.


### _class_ aries_cloudagent.config.settings.Settings(values: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[Mapping](https://docs.python.org/3/library/typing.html#typing.Mapping)[[str](https://docs.python.org/3/library/stdtypes.html#str), [Any](https://docs.python.org/3/library/typing.html#typing.Any)]] = None)
Bases: `BaseSettings`, [`MutableMapping`](https://docs.python.org/3/library/typing.html#typing.MutableMapping)[[`str`](https://docs.python.org/3/library/stdtypes.html#str), [`Any`](https://docs.python.org/3/library/typing.html#typing.Any)]

Mutable settings implementation.


#### clear_value(var_name: [str](https://docs.python.org/3/library/stdtypes.html#str))
Remove a setting.


* **Parameters**

    **var_name** – The name of the setting



#### copy()
Produce a copy of the settings instance.


#### extend(other: [Mapping](https://docs.python.org/3/library/typing.html#typing.Mapping)[[str](https://docs.python.org/3/library/stdtypes.html#str), [Any](https://docs.python.org/3/library/typing.html#typing.Any)])
Merge another settings instance to produce a new instance.


#### for_plugin(plugin: [str](https://docs.python.org/3/library/stdtypes.html#str), default: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[Mapping](https://docs.python.org/3/library/typing.html#typing.Mapping)[[str](https://docs.python.org/3/library/stdtypes.html#str), [Any](https://docs.python.org/3/library/typing.html#typing.Any)]] = None)
Retrieve settings for plugin.


#### get_value(\*var_names, default=None)
Fetch a setting.


* **Parameters**

    
    * **var_names** – A list of variable name alternatives


    * **default** – The default value to return if none are defined



#### set_default(var_name: [str](https://docs.python.org/3/library/stdtypes.html#str), value)
Add a setting if not currently defined.


* **Parameters**

    
    * **var_name** – The name of the setting


    * **value** – The value to assign



#### set_value(var_name: [str](https://docs.python.org/3/library/stdtypes.html#str), value)
Add a setting.


* **Parameters**

    
    * **var_name** – The name of the setting


    * **value** – The value to assign



#### update(other: [Mapping](https://docs.python.org/3/library/typing.html#typing.Mapping)[[str](https://docs.python.org/3/library/stdtypes.html#str), [Any](https://docs.python.org/3/library/typing.html#typing.Any)])
Update the settings in place.

## aries_cloudagent.config.util module

Entrypoint.


### _class_ aries_cloudagent.config.util.BoundedInt(min: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[int](https://docs.python.org/3/library/functions.html#int)] = None, max: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[int](https://docs.python.org/3/library/functions.html#int)] = None)
Bases: [`object`](https://docs.python.org/3/library/functions.html#object)

Argument value parser for a bounded integer.


### _class_ aries_cloudagent.config.util.ByteSize(min: [int](https://docs.python.org/3/library/functions.html#int) = 0, max: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[int](https://docs.python.org/3/library/functions.html#int)] = None)
Bases: [`object`](https://docs.python.org/3/library/functions.html#object)

Argument value parser for byte sizes.


### aries_cloudagent.config.util.common_config(settings: [Mapping](https://docs.python.org/3/library/typing.html#typing.Mapping)[[str](https://docs.python.org/3/library/stdtypes.html#str), [Any](https://docs.python.org/3/library/typing.html#typing.Any)])
Perform common app configuration.

## aries_cloudagent.config.wallet module
