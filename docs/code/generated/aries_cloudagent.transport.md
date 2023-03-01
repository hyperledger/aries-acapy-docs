# aries_cloudagent.transport package

## Subpackages


* [aries_cloudagent.transport.inbound package](aries_cloudagent.transport.inbound.md)


    * [Submodules](aries_cloudagent.transport.inbound.md#submodules)


    * [aries_cloudagent.transport.inbound.base module](aries_cloudagent.transport.inbound.md#aries-cloudagent-transport-inbound-base-module)


    * [aries_cloudagent.transport.inbound.delivery_queue module](aries_cloudagent.transport.inbound.md#aries-cloudagent-transport-inbound-delivery-queue-module)


    * [aries_cloudagent.transport.inbound.http module](aries_cloudagent.transport.inbound.md#aries-cloudagent-transport-inbound-http-module)


    * [aries_cloudagent.transport.inbound.manager module](aries_cloudagent.transport.inbound.md#aries-cloudagent-transport-inbound-manager-module)


    * [aries_cloudagent.transport.inbound.message module](aries_cloudagent.transport.inbound.md#module-aries_cloudagent.transport.inbound.message)


        * [`InboundMessage`](aries_cloudagent.transport.inbound.md#aries_cloudagent.transport.inbound.message.InboundMessage)


            * [`InboundMessage.dispatch_processing_complete()`](aries_cloudagent.transport.inbound.md#aries_cloudagent.transport.inbound.message.InboundMessage.dispatch_processing_complete)


            * [`InboundMessage.wait_processing_complete()`](aries_cloudagent.transport.inbound.md#aries_cloudagent.transport.inbound.message.InboundMessage.wait_processing_complete)


    * [aries_cloudagent.transport.inbound.receipt module](aries_cloudagent.transport.inbound.md#module-aries_cloudagent.transport.inbound.receipt)


        * [`MessageReceipt`](aries_cloudagent.transport.inbound.md#aries_cloudagent.transport.inbound.receipt.MessageReceipt)


            * [`MessageReceipt.REPLY_MODE_ALL`](aries_cloudagent.transport.inbound.md#aries_cloudagent.transport.inbound.receipt.MessageReceipt.REPLY_MODE_ALL)


            * [`MessageReceipt.REPLY_MODE_NONE`](aries_cloudagent.transport.inbound.md#aries_cloudagent.transport.inbound.receipt.MessageReceipt.REPLY_MODE_NONE)


            * [`MessageReceipt.REPLY_MODE_THREAD`](aries_cloudagent.transport.inbound.md#aries_cloudagent.transport.inbound.receipt.MessageReceipt.REPLY_MODE_THREAD)


            * [`MessageReceipt.connection_id`](aries_cloudagent.transport.inbound.md#aries_cloudagent.transport.inbound.receipt.MessageReceipt.connection_id)


            * [`MessageReceipt.direct_response_mode`](aries_cloudagent.transport.inbound.md#aries_cloudagent.transport.inbound.receipt.MessageReceipt.direct_response_mode)


            * [`MessageReceipt.direct_response_requested`](aries_cloudagent.transport.inbound.md#aries_cloudagent.transport.inbound.receipt.MessageReceipt.direct_response_requested)


            * [`MessageReceipt.in_time`](aries_cloudagent.transport.inbound.md#aries_cloudagent.transport.inbound.receipt.MessageReceipt.in_time)


            * [`MessageReceipt.parent_thread_id`](aries_cloudagent.transport.inbound.md#aries_cloudagent.transport.inbound.receipt.MessageReceipt.parent_thread_id)


            * [`MessageReceipt.raw_message`](aries_cloudagent.transport.inbound.md#aries_cloudagent.transport.inbound.receipt.MessageReceipt.raw_message)


            * [`MessageReceipt.recipient_did`](aries_cloudagent.transport.inbound.md#aries_cloudagent.transport.inbound.receipt.MessageReceipt.recipient_did)


            * [`MessageReceipt.recipient_did_public`](aries_cloudagent.transport.inbound.md#aries_cloudagent.transport.inbound.receipt.MessageReceipt.recipient_did_public)


            * [`MessageReceipt.recipient_verkey`](aries_cloudagent.transport.inbound.md#aries_cloudagent.transport.inbound.receipt.MessageReceipt.recipient_verkey)


            * [`MessageReceipt.sender_did`](aries_cloudagent.transport.inbound.md#aries_cloudagent.transport.inbound.receipt.MessageReceipt.sender_did)


            * [`MessageReceipt.sender_verkey`](aries_cloudagent.transport.inbound.md#aries_cloudagent.transport.inbound.receipt.MessageReceipt.sender_verkey)


            * [`MessageReceipt.thread_id`](aries_cloudagent.transport.inbound.md#aries_cloudagent.transport.inbound.receipt.MessageReceipt.thread_id)


    * [aries_cloudagent.transport.inbound.session module](aries_cloudagent.transport.inbound.md#aries-cloudagent-transport-inbound-session-module)


    * [aries_cloudagent.transport.inbound.ws module](aries_cloudagent.transport.inbound.md#aries-cloudagent-transport-inbound-ws-module)


* [aries_cloudagent.transport.outbound package](aries_cloudagent.transport.outbound.md)


    * [Submodules](aries_cloudagent.transport.outbound.md#submodules)


    * [aries_cloudagent.transport.outbound.base module](aries_cloudagent.transport.outbound.md#module-aries_cloudagent.transport.outbound.base)


        * [`BaseOutboundTransport`](aries_cloudagent.transport.outbound.md#aries_cloudagent.transport.outbound.base.BaseOutboundTransport)


            * [`BaseOutboundTransport.collector`](aries_cloudagent.transport.outbound.md#aries_cloudagent.transport.outbound.base.BaseOutboundTransport.collector)


            * [`BaseOutboundTransport.handle_message()`](aries_cloudagent.transport.outbound.md#aries_cloudagent.transport.outbound.base.BaseOutboundTransport.handle_message)


            * [`BaseOutboundTransport.start()`](aries_cloudagent.transport.outbound.md#aries_cloudagent.transport.outbound.base.BaseOutboundTransport.start)


            * [`BaseOutboundTransport.stop()`](aries_cloudagent.transport.outbound.md#aries_cloudagent.transport.outbound.base.BaseOutboundTransport.stop)


            * [`BaseOutboundTransport.wire_format`](aries_cloudagent.transport.outbound.md#aries_cloudagent.transport.outbound.base.BaseOutboundTransport.wire_format)


        * [`OutboundDeliveryError`](aries_cloudagent.transport.outbound.md#aries_cloudagent.transport.outbound.base.OutboundDeliveryError)


        * [`OutboundTransportError`](aries_cloudagent.transport.outbound.md#aries_cloudagent.transport.outbound.base.OutboundTransportError)


        * [`OutboundTransportRegistrationError`](aries_cloudagent.transport.outbound.md#aries_cloudagent.transport.outbound.base.OutboundTransportRegistrationError)


    * [aries_cloudagent.transport.outbound.http module](aries_cloudagent.transport.outbound.md#module-aries_cloudagent.transport.outbound.http)


        * [`HttpTransport`](aries_cloudagent.transport.outbound.md#aries_cloudagent.transport.outbound.http.HttpTransport)


            * [`HttpTransport.handle_message()`](aries_cloudagent.transport.outbound.md#aries_cloudagent.transport.outbound.http.HttpTransport.handle_message)


            * [`HttpTransport.is_external`](aries_cloudagent.transport.outbound.md#aries_cloudagent.transport.outbound.http.HttpTransport.is_external)


            * [`HttpTransport.schemes`](aries_cloudagent.transport.outbound.md#aries_cloudagent.transport.outbound.http.HttpTransport.schemes)


            * [`HttpTransport.start()`](aries_cloudagent.transport.outbound.md#aries_cloudagent.transport.outbound.http.HttpTransport.start)


            * [`HttpTransport.stop()`](aries_cloudagent.transport.outbound.md#aries_cloudagent.transport.outbound.http.HttpTransport.stop)


    * [aries_cloudagent.transport.outbound.manager module](aries_cloudagent.transport.outbound.md#aries-cloudagent-transport-outbound-manager-module)


    * [aries_cloudagent.transport.outbound.message module](aries_cloudagent.transport.outbound.md#aries-cloudagent-transport-outbound-message-module)


    * [aries_cloudagent.transport.outbound.status module](aries_cloudagent.transport.outbound.md#module-aries_cloudagent.transport.outbound.status)


        * [`OutboundSendStatus`](aries_cloudagent.transport.outbound.md#aries_cloudagent.transport.outbound.status.OutboundSendStatus)


            * [`OutboundSendStatus.QUEUED_FOR_DELIVERY`](aries_cloudagent.transport.outbound.md#aries_cloudagent.transport.outbound.status.OutboundSendStatus.QUEUED_FOR_DELIVERY)


            * [`OutboundSendStatus.SENT_TO_EXTERNAL_QUEUE`](aries_cloudagent.transport.outbound.md#aries_cloudagent.transport.outbound.status.OutboundSendStatus.SENT_TO_EXTERNAL_QUEUE)


            * [`OutboundSendStatus.SENT_TO_SESSION`](aries_cloudagent.transport.outbound.md#aries_cloudagent.transport.outbound.status.OutboundSendStatus.SENT_TO_SESSION)


            * [`OutboundSendStatus.UNDELIVERABLE`](aries_cloudagent.transport.outbound.md#aries_cloudagent.transport.outbound.status.OutboundSendStatus.UNDELIVERABLE)


            * [`OutboundSendStatus.WAITING_FOR_PICKUP`](aries_cloudagent.transport.outbound.md#aries_cloudagent.transport.outbound.status.OutboundSendStatus.WAITING_FOR_PICKUP)


            * [`OutboundSendStatus.topic`](aries_cloudagent.transport.outbound.md#aries_cloudagent.transport.outbound.status.OutboundSendStatus.topic)


    * [aries_cloudagent.transport.outbound.ws module](aries_cloudagent.transport.outbound.md#module-aries_cloudagent.transport.outbound.ws)


        * [`WsTransport`](aries_cloudagent.transport.outbound.md#aries_cloudagent.transport.outbound.ws.WsTransport)


            * [`WsTransport.handle_message()`](aries_cloudagent.transport.outbound.md#aries_cloudagent.transport.outbound.ws.WsTransport.handle_message)


            * [`WsTransport.is_external`](aries_cloudagent.transport.outbound.md#aries_cloudagent.transport.outbound.ws.WsTransport.is_external)


            * [`WsTransport.schemes`](aries_cloudagent.transport.outbound.md#aries_cloudagent.transport.outbound.ws.WsTransport.schemes)


            * [`WsTransport.start()`](aries_cloudagent.transport.outbound.md#aries_cloudagent.transport.outbound.ws.WsTransport.start)


            * [`WsTransport.stop()`](aries_cloudagent.transport.outbound.md#aries_cloudagent.transport.outbound.ws.WsTransport.stop)


* [aries_cloudagent.transport.queue package](aries_cloudagent.transport.queue.md)


    * [Submodules](aries_cloudagent.transport.queue.md#submodules)


    * [aries_cloudagent.transport.queue.base module](aries_cloudagent.transport.queue.md#module-aries_cloudagent.transport.queue.base)


        * [`BaseMessageQueue`](aries_cloudagent.transport.queue.md#aries_cloudagent.transport.queue.base.BaseMessageQueue)


            * [`BaseMessageQueue.dequeue()`](aries_cloudagent.transport.queue.md#aries_cloudagent.transport.queue.base.BaseMessageQueue.dequeue)


            * [`BaseMessageQueue.enqueue()`](aries_cloudagent.transport.queue.md#aries_cloudagent.transport.queue.base.BaseMessageQueue.enqueue)


            * [`BaseMessageQueue.join()`](aries_cloudagent.transport.queue.md#aries_cloudagent.transport.queue.base.BaseMessageQueue.join)


            * [`BaseMessageQueue.reset()`](aries_cloudagent.transport.queue.md#aries_cloudagent.transport.queue.base.BaseMessageQueue.reset)


            * [`BaseMessageQueue.stop()`](aries_cloudagent.transport.queue.md#aries_cloudagent.transport.queue.base.BaseMessageQueue.stop)


            * [`BaseMessageQueue.task_done()`](aries_cloudagent.transport.queue.md#aries_cloudagent.transport.queue.base.BaseMessageQueue.task_done)


    * [aries_cloudagent.transport.queue.basic module](aries_cloudagent.transport.queue.md#module-aries_cloudagent.transport.queue.basic)


        * [`BasicMessageQueue`](aries_cloudagent.transport.queue.md#aries_cloudagent.transport.queue.basic.BasicMessageQueue)


            * [`BasicMessageQueue.dequeue()`](aries_cloudagent.transport.queue.md#aries_cloudagent.transport.queue.basic.BasicMessageQueue.dequeue)


            * [`BasicMessageQueue.enqueue()`](aries_cloudagent.transport.queue.md#aries_cloudagent.transport.queue.basic.BasicMessageQueue.enqueue)


            * [`BasicMessageQueue.join()`](aries_cloudagent.transport.queue.md#aries_cloudagent.transport.queue.basic.BasicMessageQueue.join)


            * [`BasicMessageQueue.make_queue()`](aries_cloudagent.transport.queue.md#aries_cloudagent.transport.queue.basic.BasicMessageQueue.make_queue)


            * [`BasicMessageQueue.reset()`](aries_cloudagent.transport.queue.md#aries_cloudagent.transport.queue.basic.BasicMessageQueue.reset)


            * [`BasicMessageQueue.stop()`](aries_cloudagent.transport.queue.md#aries_cloudagent.transport.queue.basic.BasicMessageQueue.stop)


            * [`BasicMessageQueue.task_done()`](aries_cloudagent.transport.queue.md#aries_cloudagent.transport.queue.basic.BasicMessageQueue.task_done)


## Submodules

## aries_cloudagent.transport.error module

Transport-related error classes and codes.


### _exception_ aries_cloudagent.transport.error.RecipientKeysError(\*args, error_code: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, \*\*kwargs)
Bases: `WireFormatError`

Extract recipient keys error.


### _exception_ aries_cloudagent.transport.error.TransportError(\*args, error_code: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, \*\*kwargs)
Bases: [`BaseError`](aries_cloudagent.core.md#aries_cloudagent.core.error.BaseError)

Base class for all transport errors.


### _exception_ aries_cloudagent.transport.error.WireFormatEncodeError(\*args, error_code: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, \*\*kwargs)
Bases: `WireFormatError`

Encoding error when packing the wire format.


#### error_code(_ = 'message_encode_error_ )

### _exception_ aries_cloudagent.transport.error.WireFormatError(\*args, error_code: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, \*\*kwargs)
Bases: `TransportError`

Base class for wire-format errors.


### _exception_ aries_cloudagent.transport.error.WireFormatParseError(\*args, error_code: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, \*\*kwargs)
Bases: `WireFormatError`

Parse error when unpacking the wire format.


#### error_code(_ = 'message_parse_error_ )
## aries_cloudagent.transport.pack_format module

## aries_cloudagent.transport.stats module

aiohttp stats collector support.


### _class_ aries_cloudagent.transport.stats.StatsTracer(\*args: [Any](https://docs.python.org/3/library/typing.html#typing.Any), \*\*kwargs: [Any](https://docs.python.org/3/library/typing.html#typing.Any))
Bases: `TraceConfig`

Attach hooks to client session events and report statistics.


#### _async_ connection_queued_end(session, context, params)
Handle the end of a queued connection.


#### _async_ connection_queued_start(session, context, params)
Handle the start of a queued connection.


#### _async_ connection_ready(session, context, params)
Handle the end of connection acquisition.


#### _async_ dns_resolvehost_end(session, context, params)
Handle the end of a DNS resolution.


#### _async_ dns_resolvehost_start(session, context, params)
Handle the start of a DNS resolution.


#### _async_ request_end(session, context, params)
Handle the end of request.


#### _async_ request_start(session, context, params)
Handle the start of a request.


#### _async_ socket_connect_start(session, context, params)
Handle the start of a socket connection.

## aries_cloudagent.transport.wire_format module

Abstract wire format classes.


### _class_ aries_cloudagent.transport.wire_format.BaseWireFormat()
Bases: [`object`](https://docs.python.org/3/library/functions.html#object)

Abstract messaging wire format.


#### _abstract async_ encode_message(session: [ProfileSession](aries_cloudagent.core.md#aries_cloudagent.core.profile.ProfileSession), message_json: [Union](https://docs.python.org/3/library/typing.html#typing.Union)[[str](https://docs.python.org/3/library/stdtypes.html#str), [bytes](https://docs.python.org/3/library/stdtypes.html#bytes)], recipient_keys: [Sequence](https://docs.python.org/3/library/typing.html#typing.Sequence)[[str](https://docs.python.org/3/library/stdtypes.html#str)], routing_keys: [Sequence](https://docs.python.org/3/library/typing.html#typing.Sequence)[[str](https://docs.python.org/3/library/stdtypes.html#str)], sender_key: [str](https://docs.python.org/3/library/stdtypes.html#str))
Encode an outgoing message for transport.


* **Parameters**

    
    * **session** – The profile session for providing wallet access


    * **message_json** – The message body to serialize


    * **recipient_keys** – A sequence of recipient verkeys


    * **routing_keys** – A sequence of routing verkeys


    * **sender_key** – The verification key of the sending agent



* **Returns**

    The encoded message



* **Raises**

    **MessageEncodeError** – If the message could not be encoded



#### _abstract_ get_recipient_keys(message_body: [Union](https://docs.python.org/3/library/typing.html#typing.Union)[[str](https://docs.python.org/3/library/stdtypes.html#str), [bytes](https://docs.python.org/3/library/stdtypes.html#bytes)])
Get all recipient keys from a wire message.


* **Parameters**

    **message_body** – The body of the message



* **Returns**

    List of recipient keys from the message body



* **Raises**

    **RecipientKeysError** – If the recipient keys could not be extracted



#### _abstract async_ parse_message(session: [ProfileSession](aries_cloudagent.core.md#aries_cloudagent.core.profile.ProfileSession), message_body: [Union](https://docs.python.org/3/library/typing.html#typing.Union)[[str](https://docs.python.org/3/library/stdtypes.html#str), [bytes](https://docs.python.org/3/library/stdtypes.html#bytes)])
Deserialize an incoming message and further populate the request context.


* **Parameters**

    
    * **session** – The profile session for providing wallet access


    * **message_body** – The body of the message



* **Returns**

    A tuple of the parsed message and a message receipt instance



* **Raises**

    **WireFormatParseError** – If the message can’t be parsed



### _class_ aries_cloudagent.transport.wire_format.JsonWireFormat()
Bases: `BaseWireFormat`

Unencrypted wire format.


#### _abstract async_ encode_message(session: [ProfileSession](aries_cloudagent.core.md#aries_cloudagent.core.profile.ProfileSession), message_json: [Union](https://docs.python.org/3/library/typing.html#typing.Union)[[str](https://docs.python.org/3/library/stdtypes.html#str), [bytes](https://docs.python.org/3/library/stdtypes.html#bytes)], recipient_keys: [Sequence](https://docs.python.org/3/library/typing.html#typing.Sequence)[[str](https://docs.python.org/3/library/stdtypes.html#str)], routing_keys: [Sequence](https://docs.python.org/3/library/typing.html#typing.Sequence)[[str](https://docs.python.org/3/library/stdtypes.html#str)], sender_key: [str](https://docs.python.org/3/library/stdtypes.html#str))
Encode an outgoing message for transport.


* **Parameters**

    
    * **session** – The profile session for providing wallet access


    * **message_json** – The message body to serialize


    * **recipient_keys** – A sequence of recipient verkeys


    * **routing_keys** – A sequence of routing verkeys


    * **sender_key** – The verification key of the sending agent



* **Returns**

    The encoded message



* **Raises**

    **MessageEncodeError** – If the message could not be encoded



#### get_recipient_keys(message_body: [Union](https://docs.python.org/3/library/typing.html#typing.Union)[[str](https://docs.python.org/3/library/stdtypes.html#str), [bytes](https://docs.python.org/3/library/stdtypes.html#bytes)])
Get all recipient keys from a wire message.


* **Parameters**

    **message_body** – The body of the message



* **Returns**

    List of recipient keys from the message body



* **Raises**

    **RecipientKeysError** – If the recipient keys could not be extracted



#### _abstract async_ parse_message(session: [ProfileSession](aries_cloudagent.core.md#aries_cloudagent.core.profile.ProfileSession), message_body: [Union](https://docs.python.org/3/library/typing.html#typing.Union)[[str](https://docs.python.org/3/library/stdtypes.html#str), [bytes](https://docs.python.org/3/library/stdtypes.html#bytes)])
Deserialize an incoming message and further populate the request context.


* **Parameters**

    
    * **session** – The profile session for providing wallet access


    * **message_body** – The body of the message



* **Returns**

    A tuple of the parsed message and a message receipt instance



* **Raises**

    **WireFormatParseError** – If the JSON parsing failed
