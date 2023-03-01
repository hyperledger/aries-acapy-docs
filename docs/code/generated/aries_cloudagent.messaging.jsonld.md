# aries_cloudagent.messaging.jsonld package

## Submodules

## aries_cloudagent.messaging.jsonld.create_verify_data module

Contains the functions needed to produce and verify a json-ld signature.

This file was ported from
[https://github.com/transmute-industries/Ed25519Signature2018/blob/master/src/createVerifyData/index.js](https://github.com/transmute-industries/Ed25519Signature2018/blob/master/src/createVerifyData/index.js)


### aries_cloudagent.messaging.jsonld.create_verify_data.create_verify_data(data, signature_options, document_loader=None)
Encapsulate process of constructing string used during sign and verify.

## aries_cloudagent.messaging.jsonld.credential module

## aries_cloudagent.messaging.jsonld.error module

JSON-LD messaging Exceptions.


### _exception_ aries_cloudagent.messaging.jsonld.error.BadJWSHeaderError(\*args, error_code: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, \*\*kwargs)
Bases: `BaseJSONLDMessagingError`

Exception indicating invalid JWS header.


### _exception_ aries_cloudagent.messaging.jsonld.error.BaseJSONLDMessagingError(\*args, error_code: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, \*\*kwargs)
Bases: [`BaseError`](aries_cloudagent.core.md#aries_cloudagent.core.error.BaseError)

Base exception class for JSON-LD messaging.


### _exception_ aries_cloudagent.messaging.jsonld.error.DroppedAttributeError(\*args, error_code: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, \*\*kwargs)
Bases: `BaseJSONLDMessagingError`

Exception used to track that an attribute was removed.


### _exception_ aries_cloudagent.messaging.jsonld.error.InvalidVerificationMethod(\*args, error_code: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, \*\*kwargs)
Bases: `BaseJSONLDMessagingError`

Exception indicating an invalid verification method in doc to verify.


### _exception_ aries_cloudagent.messaging.jsonld.error.MissingVerificationMethodError(\*args, error_code: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, \*\*kwargs)
Bases: `BaseJSONLDMessagingError`

Exception indicating missing verification method from signature options.


### _exception_ aries_cloudagent.messaging.jsonld.error.SignatureTypeError(\*args, error_code: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, \*\*kwargs)
Bases: `BaseJSONLDMessagingError`

Exception indicating Signature type error.

## aries_cloudagent.messaging.jsonld.routes module
