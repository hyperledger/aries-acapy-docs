# aries_cloudagent.transport.inbound package

## Submodules

## aries_cloudagent.transport.inbound.base module

## aries_cloudagent.transport.inbound.delivery_queue module

## aries_cloudagent.transport.inbound.http module

## aries_cloudagent.transport.inbound.manager module

## aries_cloudagent.transport.inbound.message module

Classes representing inbound messages.


### _class_ aries_cloudagent.transport.inbound.message.InboundMessage(payload: [Union](https://docs.python.org/3/library/typing.html#typing.Union)[[str](https://docs.python.org/3/library/stdtypes.html#str), [bytes](https://docs.python.org/3/library/stdtypes.html#bytes)], receipt: MessageReceipt, \*, connection_id: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, session_id: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, transport_type: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None)
Bases: [`object`](https://docs.python.org/3/library/functions.html#object)

Container class linking a message payload with its receipt details.


#### dispatch_processing_complete()
Dispatch processing complete.


#### _async_ wait_processing_complete()
Wait for processing to complete.

## aries_cloudagent.transport.inbound.receipt module

Classes for representing message receipt details.


### _class_ aries_cloudagent.transport.inbound.receipt.MessageReceipt(\*, connection_id: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, direct_response_mode: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, in_time: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[datetime](https://docs.python.org/3/library/datetime.html#datetime.datetime)] = None, raw_message: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, recipient_verkey: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, recipient_did: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, recipient_did_public: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[bool](https://docs.python.org/3/library/functions.html#bool)] = None, sender_did: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, sender_verkey: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, thread_id: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, parent_thread_id: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None)
Bases: [`object`](https://docs.python.org/3/library/functions.html#object)

Properties of an agent message’s delivery.


#### REPLY_MODE_ALL(_ = 'all_ )

#### REPLY_MODE_NONE(_ = 'none_ )

#### REPLY_MODE_THREAD(_ = 'thread_ )

#### _property_ connection_id(_: [str](https://docs.python.org/3/library/stdtypes.html#str_ )
Accessor for the pairwise connection identifier.


* **Returns**

    This context’s connection identifier



#### _property_ direct_response_mode(_: [str](https://docs.python.org/3/library/stdtypes.html#str_ )
Accessor for the requested direct response mode.


* **Returns**

    This context’s requested direct response mode



#### _property_ direct_response_requested(_: [str](https://docs.python.org/3/library/stdtypes.html#str_ )
Accessor for the the state of the direct response mode.


* **Returns**

    This context’s requested direct response mode



#### _property_ in_time(_: [str](https://docs.python.org/3/library/stdtypes.html#str_ )
Accessor for the datetime the message was received.


* **Returns**

    This context’s received time



#### _property_ parent_thread_id(_: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)_ )
Accessor for the identifier of the message parent thread.


* **Returns**

    The delivery parent thread ID



#### _property_ raw_message(_: [str](https://docs.python.org/3/library/stdtypes.html#str_ )
Accessor for the raw message text.


* **Returns**

    The raw message text



#### _property_ recipient_did(_: [str](https://docs.python.org/3/library/stdtypes.html#str_ )
Accessor for the recipient DID which corresponds with the verkey.


* **Returns**

    The recipient DID



#### _property_ recipient_did_public(_: [bool](https://docs.python.org/3/library/functions.html#bool_ )
Check if the recipient did is public.

Indicates whether the message is associated with
a public (ledger) recipient DID.


* **Returns**

    True if the recipient’s DID is public, else false



#### _property_ recipient_verkey(_: [str](https://docs.python.org/3/library/stdtypes.html#str_ )
Accessor for the recipient verkey key used to pack the incoming request.


* **Returns**

    The recipient verkey



#### _property_ sender_did(_: [str](https://docs.python.org/3/library/stdtypes.html#str_ )
Accessor for the sender DID which corresponds with the verkey.


* **Returns**

    The sender did



#### _property_ sender_verkey(_: [str](https://docs.python.org/3/library/stdtypes.html#str_ )
Accessor for the sender public key used to pack the incoming request.


* **Returns**

    This context’s sender’s verkey



#### _property_ thread_id(_: [str](https://docs.python.org/3/library/stdtypes.html#str_ )
Accessor for the identifier of the message thread.


* **Returns**

    The delivery thread ID


## aries_cloudagent.transport.inbound.session module

## aries_cloudagent.transport.inbound.ws module
