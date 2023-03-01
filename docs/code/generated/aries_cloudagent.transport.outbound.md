# aries_cloudagent.transport.outbound package

## Submodules

## aries_cloudagent.transport.outbound.base module

Base outbound transport.


### _class_ aries_cloudagent.transport.outbound.base.BaseOutboundTransport(wire_format: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[BaseWireFormat](aries_cloudagent.transport.md#aries_cloudagent.transport.wire_format.BaseWireFormat)] = None, root_profile: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[Profile](aries_cloudagent.core.md#aries_cloudagent.core.profile.Profile)] = None)
Bases: [`ABC`](https://docs.python.org/3/library/abc.html#abc.ABC)

Base outbound transport class.


#### _property_ collector(_: [Collector](aries_cloudagent.utils.md#aries_cloudagent.utils.stats.Collector_ )
Accessor for the stats collector instance.


#### _abstract async_ handle_message(profile: [Profile](aries_cloudagent.core.md#aries_cloudagent.core.profile.Profile), payload: [Union](https://docs.python.org/3/library/typing.html#typing.Union)[[str](https://docs.python.org/3/library/stdtypes.html#str), [bytes](https://docs.python.org/3/library/stdtypes.html#bytes)], endpoint: [str](https://docs.python.org/3/library/stdtypes.html#str), metadata: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[dict](https://docs.python.org/3/library/stdtypes.html#dict)] = None)
Handle message.


* **Parameters**

    
    * **profile** – the profile that produced the message


    * **payload** – message payload in string or byte format


    * **endpoint** – URI endpoint for delivery


    * **metadata** – Additional metadata associated with the payload



#### _abstract async_ start()
Start the transport.


#### _abstract async_ stop()
Shut down the transport.


#### _property_ wire_format(_: [BaseWireFormat](aries_cloudagent.transport.md#aries_cloudagent.transport.wire_format.BaseWireFormat_ )
Accessor for a custom wire format for the transport.


### _exception_ aries_cloudagent.transport.outbound.base.OutboundDeliveryError(\*args, error_code: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, \*\*kwargs)
Bases: `OutboundTransportError`

Base exception when a message cannot be delivered via an outbound transport.


### _exception_ aries_cloudagent.transport.outbound.base.OutboundTransportError(\*args, error_code: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, \*\*kwargs)
Bases: [`TransportError`](aries_cloudagent.transport.md#aries_cloudagent.transport.error.TransportError)

Generic outbound transport error.


### _exception_ aries_cloudagent.transport.outbound.base.OutboundTransportRegistrationError(\*args, error_code: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, \*\*kwargs)
Bases: `OutboundTransportError`

Outbound transport registration error.

## aries_cloudagent.transport.outbound.http module

Http outbound transport.


### _class_ aries_cloudagent.transport.outbound.http.HttpTransport(\*\*kwargs)
Bases: `BaseOutboundTransport`

Http outbound transport class.


#### _async_ handle_message(profile: [Profile](aries_cloudagent.core.md#aries_cloudagent.core.profile.Profile), payload: [Union](https://docs.python.org/3/library/typing.html#typing.Union)[[str](https://docs.python.org/3/library/stdtypes.html#str), [bytes](https://docs.python.org/3/library/stdtypes.html#bytes)], endpoint: [str](https://docs.python.org/3/library/stdtypes.html#str), metadata: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[dict](https://docs.python.org/3/library/stdtypes.html#dict)] = None, api_key: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None)
Handle message from queue.


* **Parameters**

    
    * **profile** – the profile that produced the message


    * **payload** – message payload in string or byte format


    * **endpoint** – URI endpoint for delivery


    * **metadata** – Additional metadata associated with the payload



#### is_external(_ = Fals_ )

#### schemes(_ = ('http', 'https'_ )

#### _async_ start()
Start the transport.


#### _async_ stop()
Stop the transport.

## aries_cloudagent.transport.outbound.manager module

## aries_cloudagent.transport.outbound.message module

## aries_cloudagent.transport.outbound.status module

Enum representing captured send status of outbound messages.


### _class_ aries_cloudagent.transport.outbound.status.OutboundSendStatus(value)
Bases: [`Enum`](https://docs.python.org/3/library/enum.html#enum.Enum)

Send status of outbound messages.


#### QUEUED_FOR_DELIVERY(_ = 'queued_for_delivery_ )

#### SENT_TO_EXTERNAL_QUEUE(_ = 'sent_to_external_queue_ )

#### SENT_TO_SESSION(_ = 'sent_to_session_ )

#### UNDELIVERABLE(_ = 'undeliverable_ )

#### WAITING_FOR_PICKUP(_ = 'waiting_for_pickup_ )

#### _property_ topic()
Return an event topic associated with a given status.

## aries_cloudagent.transport.outbound.ws module

Websockets outbound transport.


### _class_ aries_cloudagent.transport.outbound.ws.WsTransport(\*\*kwargs)
Bases: `BaseOutboundTransport`

Websockets outbound transport class.


#### _async_ handle_message(profile: [Profile](aries_cloudagent.core.md#aries_cloudagent.core.profile.Profile), payload: [Union](https://docs.python.org/3/library/typing.html#typing.Union)[[str](https://docs.python.org/3/library/stdtypes.html#str), [bytes](https://docs.python.org/3/library/stdtypes.html#bytes)], endpoint: [str](https://docs.python.org/3/library/stdtypes.html#str), metadata: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[dict](https://docs.python.org/3/library/stdtypes.html#dict)] = None, api_key: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None)
Handle message from queue.


* **Parameters**

    
    * **profile** – the profile that produced the message


    * **payload** – message payload in string or byte format


    * **endpoint** – URI endpoint for delivery


    * **metadata** – Additional metadata associated with the payload



#### is_external(_ = Fals_ )

#### schemes(_ = ('ws', 'wss'_ )

#### _async_ start()
Start the outbound transport.


#### _async_ stop()
Stop the outbound transport.
