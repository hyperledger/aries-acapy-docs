# aries_cloudagent.resolver package

Interfaces and base classes for DID Resolution.


### _async_ aries_cloudagent.resolver.setup(context: [InjectionContext](aries_cloudagent.config.md#aries_cloudagent.config.injection_context.InjectionContext))
Set up default resolvers.

## Subpackages


* [aries_cloudagent.resolver.default package](aries_cloudagent.resolver.default.md)


    * [Submodules](aries_cloudagent.resolver.default.md#submodules)


    * [aries_cloudagent.resolver.default.indy module](aries_cloudagent.resolver.default.md#aries-cloudagent-resolver-default-indy-module)


    * [aries_cloudagent.resolver.default.key module](aries_cloudagent.resolver.default.md#aries-cloudagent-resolver-default-key-module)


    * [aries_cloudagent.resolver.default.universal module](aries_cloudagent.resolver.default.md#module-aries_cloudagent.resolver.default.universal)


        * [`UniversalResolver`](aries_cloudagent.resolver.default.md#aries_cloudagent.resolver.default.universal.UniversalResolver)


            * [`UniversalResolver.setup()`](aries_cloudagent.resolver.default.md#aries_cloudagent.resolver.default.universal.UniversalResolver.setup)


            * [`UniversalResolver.supported_did_regex`](aries_cloudagent.resolver.default.md#aries_cloudagent.resolver.default.universal.UniversalResolver.supported_did_regex)


    * [aries_cloudagent.resolver.default.web module](aries_cloudagent.resolver.default.md#aries-cloudagent-resolver-default-web-module)


## Submodules

## aries_cloudagent.resolver.base module

Base Class for DID Resolvers.


### _class_ aries_cloudagent.resolver.base.BaseDIDResolver(type_: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[ResolverType] = None)
Bases: [`ABC`](https://docs.python.org/3/library/abc.html#abc.ABC)

Base Class for DID Resolvers.


#### _property_ native()
Return if this resolver is native.


#### _async_ resolve(profile: [Profile](aries_cloudagent.core.md#aries_cloudagent.core.profile.Profile), did: [Union](https://docs.python.org/3/library/typing.html#typing.Union)[[str](https://docs.python.org/3/library/stdtypes.html#str), pydid.DID], service_accept: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[Sequence](https://docs.python.org/3/library/typing.html#typing.Sequence)[[str](https://docs.python.org/3/library/stdtypes.html#str)]] = None)
Resolve a DID using this resolver.


#### _abstract async_ setup(context: [InjectionContext](aries_cloudagent.config.md#aries_cloudagent.config.injection_context.InjectionContext))
Do asynchronous resolver setup.


#### _property_ supported_did_regex(_: [Pattern](https://docs.python.org/3/library/typing.html#typing.Pattern_ )
Supported DID regex for matching this resolver to DIDs it can resolve.

Override this property with a class var or similar to use regex
matching on DIDs to determine if this resolver supports a given DID.


#### _property_ supported_methods(_: [Sequence](https://docs.python.org/3/library/typing.html#typing.Sequence)[[str](https://docs.python.org/3/library/stdtypes.html#str)_ )
Return supported methods.

DEPRECATED: Use supported_did_regex instead.


#### _async_ supports(profile: [Profile](aries_cloudagent.core.md#aries_cloudagent.core.profile.Profile), did: [str](https://docs.python.org/3/library/stdtypes.html#str))
Return if this resolver supports the given DID.

Override this method to determine if this resolver supports a DID based
on information other than just a regular expression; i.e. check a value
in storage, query a resolver connection record, etc.


### _exception_ aries_cloudagent.resolver.base.DIDMethodNotSupported(\*args, error_code: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, \*\*kwargs)
Bases: `ResolverError`

Raised when no resolver is registered for a given did method.


### _exception_ aries_cloudagent.resolver.base.DIDNotFound(\*args, error_code: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, \*\*kwargs)
Bases: `ResolverError`

Raised when DID is not found in verifiable data registry.


### _class_ aries_cloudagent.resolver.base.ResolutionMetadata(resolver_type: ResolverType, resolver: [str](https://docs.python.org/3/library/stdtypes.html#str), retrieved_time: [str](https://docs.python.org/3/library/stdtypes.html#str), duration: [int](https://docs.python.org/3/library/functions.html#int))
Bases: [`tuple`](https://docs.python.org/3/library/stdtypes.html#tuple)

Resolution Metadata.


#### _property_ duration()
Alias for field number 3


#### _property_ resolver()
Alias for field number 1


#### _property_ resolver_type()
Alias for field number 0


#### _property_ retrieved_time()
Alias for field number 2


#### serialize()
Return serialized resolution metadata.


### _class_ aries_cloudagent.resolver.base.ResolutionResult(did_document: [dict](https://docs.python.org/3/library/stdtypes.html#dict), metadata: ResolutionMetadata)
Bases: [`object`](https://docs.python.org/3/library/functions.html#object)

Resolution Class to pack the DID Doc and the resolution information.


#### serialize()
Return serialized resolution result.


### _exception_ aries_cloudagent.resolver.base.ResolverError(\*args, error_code: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, \*\*kwargs)
Bases: [`BaseError`](aries_cloudagent.core.md#aries_cloudagent.core.error.BaseError)

Base class for resolver exceptions.


### _class_ aries_cloudagent.resolver.base.ResolverType(value)
Bases: [`Enum`](https://docs.python.org/3/library/enum.html#enum.Enum)

Resolver Type declarations.


#### NATIVE(_ = 'native_ )

#### NON_NATIVE(_ = 'non-native_ )
## aries_cloudagent.resolver.did_resolver module

the did resolver.

responsible for keeping track of all resolvers. more importantly
retrieving did’s from different sources provided by the method type.


### _class_ aries_cloudagent.resolver.did_resolver.DIDResolver(resolvers: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[List](https://docs.python.org/3/library/typing.html#typing.List)[BaseDIDResolver]] = None)
Bases: [`object`](https://docs.python.org/3/library/functions.html#object)

did resolver singleton.


#### _async_ dereference(profile: [Profile](aries_cloudagent.core.md#aries_cloudagent.core.profile.Profile), did_url: [str](https://docs.python.org/3/library/stdtypes.html#str), \*, document: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[pydid.doc.doc.BaseDIDDocument] = None)
Dereference a DID URL to its corresponding DID Doc object.


#### register_resolver(resolver: BaseDIDResolver)
Register a new resolver.


#### _async_ resolve(profile: [Profile](aries_cloudagent.core.md#aries_cloudagent.core.profile.Profile), did: [Union](https://docs.python.org/3/library/typing.html#typing.Union)[[str](https://docs.python.org/3/library/stdtypes.html#str), pydid.DID], service_accept: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[Sequence](https://docs.python.org/3/library/typing.html#typing.Sequence)[[str](https://docs.python.org/3/library/stdtypes.html#str)]] = None)
Resolve a DID.


#### _async_ resolve_with_metadata(profile: [Profile](aries_cloudagent.core.md#aries_cloudagent.core.profile.Profile), did: [Union](https://docs.python.org/3/library/typing.html#typing.Union)[[str](https://docs.python.org/3/library/stdtypes.html#str), pydid.DID])
Resolve a DID and return the ResolutionResult.

## aries_cloudagent.resolver.routes module
