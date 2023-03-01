# aries_cloudagent.resolver.default package

Resolvers included in ACA-Py by Default.

## Submodules

## aries_cloudagent.resolver.default.indy module

## aries_cloudagent.resolver.default.key module

## aries_cloudagent.resolver.default.universal module

HTTP Universal DID Resolver.


### _class_ aries_cloudagent.resolver.default.universal.UniversalResolver(\*, endpoint: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, supported_did_regex: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[Pattern](https://docs.python.org/3/library/typing.html#typing.Pattern)] = None, bearer_token: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None)
Bases: [`BaseDIDResolver`](aries_cloudagent.resolver.md#aries_cloudagent.resolver.base.BaseDIDResolver)

Universal DID Resolver with HTTP bindings.


#### _async_ setup(context: [InjectionContext](aries_cloudagent.config.md#aries_cloudagent.config.injection_context.InjectionContext))
Perform setup, populate supported method list, configuration.


#### _property_ supported_did_regex(_: [Pattern](https://docs.python.org/3/library/typing.html#typing.Pattern_ )
Return supported methods regex.

## aries_cloudagent.resolver.default.web module
