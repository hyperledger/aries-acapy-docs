# aries_cloudagent.protocols.endorse_transaction.v1_0 package

## Subpackages


* [aries_cloudagent.protocols.endorse_transaction.v1_0.handlers package](aries_cloudagent.protocols.endorse_transaction.v1_0.handlers.md)


    * [Submodules](aries_cloudagent.protocols.endorse_transaction.v1_0.handlers.md#submodules)


    * [aries_cloudagent.protocols.endorse_transaction.v1_0.handlers.endorsed_transaction_response_handler module](aries_cloudagent.protocols.endorse_transaction.v1_0.handlers.md#aries-cloudagent-protocols-endorse-transaction-v1-0-handlers-endorsed-transaction-response-handler-module)


    * [aries_cloudagent.protocols.endorse_transaction.v1_0.handlers.refused_transaction_response_handler module](aries_cloudagent.protocols.endorse_transaction.v1_0.handlers.md#aries-cloudagent-protocols-endorse-transaction-v1-0-handlers-refused-transaction-response-handler-module)


    * [aries_cloudagent.protocols.endorse_transaction.v1_0.handlers.transaction_acknowledgement_handler module](aries_cloudagent.protocols.endorse_transaction.v1_0.handlers.md#aries-cloudagent-protocols-endorse-transaction-v1-0-handlers-transaction-acknowledgement-handler-module)


    * [aries_cloudagent.protocols.endorse_transaction.v1_0.handlers.transaction_cancel_handler module](aries_cloudagent.protocols.endorse_transaction.v1_0.handlers.md#aries-cloudagent-protocols-endorse-transaction-v1-0-handlers-transaction-cancel-handler-module)


    * [aries_cloudagent.protocols.endorse_transaction.v1_0.handlers.transaction_job_to_send_handler module](aries_cloudagent.protocols.endorse_transaction.v1_0.handlers.md#aries-cloudagent-protocols-endorse-transaction-v1-0-handlers-transaction-job-to-send-handler-module)


    * [aries_cloudagent.protocols.endorse_transaction.v1_0.handlers.transaction_request_handler module](aries_cloudagent.protocols.endorse_transaction.v1_0.handlers.md#aries-cloudagent-protocols-endorse-transaction-v1-0-handlers-transaction-request-handler-module)


    * [aries_cloudagent.protocols.endorse_transaction.v1_0.handlers.transaction_resend_handler module](aries_cloudagent.protocols.endorse_transaction.v1_0.handlers.md#aries-cloudagent-protocols-endorse-transaction-v1-0-handlers-transaction-resend-handler-module)


* [aries_cloudagent.protocols.endorse_transaction.v1_0.messages package](aries_cloudagent.protocols.endorse_transaction.v1_0.messages.md)


    * [Submodules](aries_cloudagent.protocols.endorse_transaction.v1_0.messages.md#submodules)


    * [aries_cloudagent.protocols.endorse_transaction.v1_0.messages.cancel_transaction module](aries_cloudagent.protocols.endorse_transaction.v1_0.messages.md#aries-cloudagent-protocols-endorse-transaction-v1-0-messages-cancel-transaction-module)


    * [aries_cloudagent.protocols.endorse_transaction.v1_0.messages.endorsed_transaction_response module](aries_cloudagent.protocols.endorse_transaction.v1_0.messages.md#aries-cloudagent-protocols-endorse-transaction-v1-0-messages-endorsed-transaction-response-module)


    * [aries_cloudagent.protocols.endorse_transaction.v1_0.messages.messages_attach module](aries_cloudagent.protocols.endorse_transaction.v1_0.messages.md#aries-cloudagent-protocols-endorse-transaction-v1-0-messages-messages-attach-module)


    * [aries_cloudagent.protocols.endorse_transaction.v1_0.messages.refused_transaction_response module](aries_cloudagent.protocols.endorse_transaction.v1_0.messages.md#aries-cloudagent-protocols-endorse-transaction-v1-0-messages-refused-transaction-response-module)


    * [aries_cloudagent.protocols.endorse_transaction.v1_0.messages.transaction_acknowledgement module](aries_cloudagent.protocols.endorse_transaction.v1_0.messages.md#aries-cloudagent-protocols-endorse-transaction-v1-0-messages-transaction-acknowledgement-module)


    * [aries_cloudagent.protocols.endorse_transaction.v1_0.messages.transaction_job_to_send module](aries_cloudagent.protocols.endorse_transaction.v1_0.messages.md#aries-cloudagent-protocols-endorse-transaction-v1-0-messages-transaction-job-to-send-module)


    * [aries_cloudagent.protocols.endorse_transaction.v1_0.messages.transaction_request module](aries_cloudagent.protocols.endorse_transaction.v1_0.messages.md#aries-cloudagent-protocols-endorse-transaction-v1-0-messages-transaction-request-module)


    * [aries_cloudagent.protocols.endorse_transaction.v1_0.messages.transaction_resend module](aries_cloudagent.protocols.endorse_transaction.v1_0.messages.md#aries-cloudagent-protocols-endorse-transaction-v1-0-messages-transaction-resend-module)


* [aries_cloudagent.protocols.endorse_transaction.v1_0.models package](aries_cloudagent.protocols.endorse_transaction.v1_0.models.md)


    * [Submodules](aries_cloudagent.protocols.endorse_transaction.v1_0.models.md#submodules)


    * [aries_cloudagent.protocols.endorse_transaction.v1_0.models.transaction_record module](aries_cloudagent.protocols.endorse_transaction.v1_0.models.md#aries-cloudagent-protocols-endorse-transaction-v1-0-models-transaction-record-module)


## Submodules

## aries_cloudagent.protocols.endorse_transaction.v1_0.controller module

Protocol controller for endorse transaction.


### _class_ aries_cloudagent.protocols.endorse_transaction.v1_0.controller.Controller(protocol: [str](https://docs.python.org/3/library/stdtypes.html#str))
Bases: [`object`](https://docs.python.org/3/library/functions.html#object)

Endorse transaction protocol controller.


#### determine_goal_codes()
Return defined goal_codes.

## aries_cloudagent.protocols.endorse_transaction.v1_0.manager module

## aries_cloudagent.protocols.endorse_transaction.v1_0.message_types module

Message type identifiers for Transactions.

## aries_cloudagent.protocols.endorse_transaction.v1_0.routes module

## aries_cloudagent.protocols.endorse_transaction.v1_0.transaction_jobs module

Class to manage jobs in Connection Record.


### _class_ aries_cloudagent.protocols.endorse_transaction.v1_0.transaction_jobs.TransactionJob(value)
Bases: [`Enum`](https://docs.python.org/3/library/enum.html#enum.Enum)

Represents jobs in Connection Record.


#### TRANSACTION_AUTHOR(_ = (1,_ )

#### TRANSACTION_ENDORSER(_ = (2,_ )
## aries_cloudagent.protocols.endorse_transaction.v1_0.util module
