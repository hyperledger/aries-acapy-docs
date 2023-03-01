# aries_cloudagent.messaging package

## Subpackages


* [aries_cloudagent.messaging.credential_definitions package](aries_cloudagent.messaging.credential_definitions.md)


    * [Submodules](aries_cloudagent.messaging.credential_definitions.md#submodules)


    * [aries_cloudagent.messaging.credential_definitions.routes module](aries_cloudagent.messaging.credential_definitions.md#aries-cloudagent-messaging-credential-definitions-routes-module)


    * [aries_cloudagent.messaging.credential_definitions.util module](aries_cloudagent.messaging.credential_definitions.md#aries-cloudagent-messaging-credential-definitions-util-module)


* [aries_cloudagent.messaging.decorators package](aries_cloudagent.messaging.decorators.md)


    * [Submodules](aries_cloudagent.messaging.decorators.md#submodules)


    * [aries_cloudagent.messaging.decorators.attach_decorator module](aries_cloudagent.messaging.decorators.md#aries-cloudagent-messaging-decorators-attach-decorator-module)


    * [aries_cloudagent.messaging.decorators.base module](aries_cloudagent.messaging.decorators.md#aries-cloudagent-messaging-decorators-base-module)


    * [aries_cloudagent.messaging.decorators.default module](aries_cloudagent.messaging.decorators.md#aries-cloudagent-messaging-decorators-default-module)


    * [aries_cloudagent.messaging.decorators.localization_decorator module](aries_cloudagent.messaging.decorators.md#aries-cloudagent-messaging-decorators-localization-decorator-module)


    * [aries_cloudagent.messaging.decorators.please_ack_decorator module](aries_cloudagent.messaging.decorators.md#aries-cloudagent-messaging-decorators-please-ack-decorator-module)


    * [aries_cloudagent.messaging.decorators.service_decorator module](aries_cloudagent.messaging.decorators.md#aries-cloudagent-messaging-decorators-service-decorator-module)


    * [aries_cloudagent.messaging.decorators.signature_decorator module](aries_cloudagent.messaging.decorators.md#aries-cloudagent-messaging-decorators-signature-decorator-module)


    * [aries_cloudagent.messaging.decorators.thread_decorator module](aries_cloudagent.messaging.decorators.md#aries-cloudagent-messaging-decorators-thread-decorator-module)


    * [aries_cloudagent.messaging.decorators.timing_decorator module](aries_cloudagent.messaging.decorators.md#aries-cloudagent-messaging-decorators-timing-decorator-module)


    * [aries_cloudagent.messaging.decorators.trace_decorator module](aries_cloudagent.messaging.decorators.md#aries-cloudagent-messaging-decorators-trace-decorator-module)


    * [aries_cloudagent.messaging.decorators.transport_decorator module](aries_cloudagent.messaging.decorators.md#aries-cloudagent-messaging-decorators-transport-decorator-module)


* [aries_cloudagent.messaging.jsonld package](aries_cloudagent.messaging.jsonld.md)


    * [Submodules](aries_cloudagent.messaging.jsonld.md#submodules)


    * [aries_cloudagent.messaging.jsonld.create_verify_data module](aries_cloudagent.messaging.jsonld.md#module-aries_cloudagent.messaging.jsonld.create_verify_data)


        * [`create_verify_data()`](aries_cloudagent.messaging.jsonld.md#aries_cloudagent.messaging.jsonld.create_verify_data.create_verify_data)


    * [aries_cloudagent.messaging.jsonld.credential module](aries_cloudagent.messaging.jsonld.md#aries-cloudagent-messaging-jsonld-credential-module)


    * [aries_cloudagent.messaging.jsonld.error module](aries_cloudagent.messaging.jsonld.md#module-aries_cloudagent.messaging.jsonld.error)


        * [`BadJWSHeaderError`](aries_cloudagent.messaging.jsonld.md#aries_cloudagent.messaging.jsonld.error.BadJWSHeaderError)


        * [`BaseJSONLDMessagingError`](aries_cloudagent.messaging.jsonld.md#aries_cloudagent.messaging.jsonld.error.BaseJSONLDMessagingError)


        * [`DroppedAttributeError`](aries_cloudagent.messaging.jsonld.md#aries_cloudagent.messaging.jsonld.error.DroppedAttributeError)


        * [`InvalidVerificationMethod`](aries_cloudagent.messaging.jsonld.md#aries_cloudagent.messaging.jsonld.error.InvalidVerificationMethod)


        * [`MissingVerificationMethodError`](aries_cloudagent.messaging.jsonld.md#aries_cloudagent.messaging.jsonld.error.MissingVerificationMethodError)


        * [`SignatureTypeError`](aries_cloudagent.messaging.jsonld.md#aries_cloudagent.messaging.jsonld.error.SignatureTypeError)


    * [aries_cloudagent.messaging.jsonld.routes module](aries_cloudagent.messaging.jsonld.md#aries-cloudagent-messaging-jsonld-routes-module)


* [aries_cloudagent.messaging.models package](aries_cloudagent.messaging.models.md)


    * [Submodules](aries_cloudagent.messaging.models.md#submodules)


    * [aries_cloudagent.messaging.models.base module](aries_cloudagent.messaging.models.md#aries-cloudagent-messaging-models-base-module)


    * [aries_cloudagent.messaging.models.base_record module](aries_cloudagent.messaging.models.md#aries-cloudagent-messaging-models-base-record-module)


    * [aries_cloudagent.messaging.models.openapi module](aries_cloudagent.messaging.models.md#aries-cloudagent-messaging-models-openapi-module)


* [aries_cloudagent.messaging.schemas package](aries_cloudagent.messaging.schemas.md)


    * [Submodules](aries_cloudagent.messaging.schemas.md#submodules)


    * [aries_cloudagent.messaging.schemas.routes module](aries_cloudagent.messaging.schemas.md#aries-cloudagent-messaging-schemas-routes-module)


    * [aries_cloudagent.messaging.schemas.util module](aries_cloudagent.messaging.schemas.md#aries-cloudagent-messaging-schemas-util-module)


## Submodules

## aries_cloudagent.messaging.agent_message module

## aries_cloudagent.messaging.base_handler module

## aries_cloudagent.messaging.base_message module

Base message.


### _class_ aries_cloudagent.messaging.base_message.BaseMessage()
Bases: [`ABC`](https://docs.python.org/3/library/abc.html#abc.ABC)

Abstract base class for messages.

This formally defines a “minimum viable message” and provides an
unopinionated class for plugins to extend in whatever way makes sense in
the context of the plugin.


#### _abstract property_ Handler(_: [Type](https://docs.python.org/3/library/typing.html#typing.Type)[BaseHandler_ )
Return reference to handler class.


#### _abstract classmethod_ deserialize(value: [dict](https://docs.python.org/3/library/stdtypes.html#dict), msg_format: DIDCommVersion = DIDCommVersion.v1)
Return message object deserialized from value in format specified.


#### _abstract_ serialize(msg_format: DIDCommVersion = DIDCommVersion.v1)
Return serialized message in format specified.


### _class_ aries_cloudagent.messaging.base_message.DIDCommVersion(value)
Bases: [`Enum`](https://docs.python.org/3/library/enum.html#enum.Enum)

Serialized message formats.


#### v1(_ = _ )

#### v2(_ = _ )
## aries_cloudagent.messaging.error module

Messaging-related error classes and codes.


### _exception_ aries_cloudagent.messaging.error.MessageParseError(\*args, error_code: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, \*\*kwargs)
Bases: [`BaseError`](aries_cloudagent.core.md#aries_cloudagent.core.error.BaseError)

Message parse error.


#### error_code(_ = 'message_parse_error_ )

### _exception_ aries_cloudagent.messaging.error.MessagePrepareError(\*args, error_code: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, \*\*kwargs)
Bases: [`BaseError`](aries_cloudagent.core.md#aries_cloudagent.core.error.BaseError)

Message preparation error.


#### error_code(_ = 'message_prepare_error_ )
## aries_cloudagent.messaging.request_context module

## aries_cloudagent.messaging.responder module

## aries_cloudagent.messaging.util module

Utils for messages.


### aries_cloudagent.messaging.util.canon(raw_attr_name: [str](https://docs.python.org/3/library/stdtypes.html#str))
Canonicalize input attribute name for indy proofs and credential offers.


* **Parameters**

    **raw_attr_name** – raw attribute name



* **Returns**

    canonicalized attribute name



### aries_cloudagent.messaging.util.datetime_now()
Timestamp in UTC.


### aries_cloudagent.messaging.util.datetime_to_str(dt: [Union](https://docs.python.org/3/library/typing.html#typing.Union)[[str](https://docs.python.org/3/library/stdtypes.html#str), [datetime](https://docs.python.org/3/library/datetime.html#datetime.datetime)])
Convert a datetime object to an indy-standard datetime string.


* **Parameters**

    **dt** – May be a string or datetime to allow automatic conversion



### aries_cloudagent.messaging.util.encode(orig: [Any](https://docs.python.org/3/library/typing.html#typing.Any))
Encode a credential value as an int.

Encode credential attribute value, purely stringifying any int32
and leaving numeric int32 strings alone, but mapping any other
input to a stringified 256-bit (but not 32-bit) integer.
Predicates in indy-sdk operate
on int32 values properly only when their encoded values match their raw values.


* **Parameters**

    **orig** – original value to encode



* **Returns**

    encoded value



### aries_cloudagent.messaging.util.epoch_to_str(epoch: [int](https://docs.python.org/3/library/functions.html#int))
Convert epoch seconds to indy-standard datetime string.


* **Parameters**

    **epoch** – epoch seconds



### aries_cloudagent.messaging.util.str_to_datetime(dt: [Union](https://docs.python.org/3/library/typing.html#typing.Union)[[str](https://docs.python.org/3/library/stdtypes.html#str), [datetime](https://docs.python.org/3/library/datetime.html#datetime.datetime)])
Convert an indy-standard datetime string to a datetime.

Using a fairly lax regex pattern to match slightly different formats.
In Python 3.7 datetime.fromisoformat might be used.


* **Parameters**

    **dt** – May be a string or datetime to allow automatic conversion



### aries_cloudagent.messaging.util.str_to_epoch(dt: [Union](https://docs.python.org/3/library/typing.html#typing.Union)[[str](https://docs.python.org/3/library/stdtypes.html#str), [datetime](https://docs.python.org/3/library/datetime.html#datetime.datetime)])
Convert an indy-standard datetime string to epoch seconds.


* **Parameters**

    **dt** – May be a string or datetime to allow automatic conversion



### aries_cloudagent.messaging.util.time_now()
Timestamp in ISO format.

## aries_cloudagent.messaging.valid module
