# aries_cloudagent.revocation package

## Subpackages


* [aries_cloudagent.revocation.models package](aries_cloudagent.revocation.models.md)


    * [Submodules](aries_cloudagent.revocation.models.md#submodules)


    * [aries_cloudagent.revocation.models.indy module](aries_cloudagent.revocation.models.md#aries-cloudagent-revocation-models-indy-module)


    * [aries_cloudagent.revocation.models.issuer_cred_rev_record module](aries_cloudagent.revocation.models.md#aries-cloudagent-revocation-models-issuer-cred-rev-record-module)


    * [aries_cloudagent.revocation.models.issuer_rev_reg_record module](aries_cloudagent.revocation.models.md#aries-cloudagent-revocation-models-issuer-rev-reg-record-module)


    * [aries_cloudagent.revocation.models.revocation_registry module](aries_cloudagent.revocation.models.md#module-aries_cloudagent.revocation.models.revocation_registry)


        * [`RevocationRegistry`](aries_cloudagent.revocation.models.md#aries_cloudagent.revocation.models.revocation_registry.RevocationRegistry)


            * [`RevocationRegistry.MAX_SIZE`](aries_cloudagent.revocation.models.md#aries_cloudagent.revocation.models.revocation_registry.RevocationRegistry.MAX_SIZE)


            * [`RevocationRegistry.MIN_SIZE`](aries_cloudagent.revocation.models.md#aries_cloudagent.revocation.models.revocation_registry.RevocationRegistry.MIN_SIZE)


            * [`RevocationRegistry.cred_def_id`](aries_cloudagent.revocation.models.md#aries_cloudagent.revocation.models.revocation_registry.RevocationRegistry.cred_def_id)


            * [`RevocationRegistry.from_definition()`](aries_cloudagent.revocation.models.md#aries_cloudagent.revocation.models.revocation_registry.RevocationRegistry.from_definition)


            * [`RevocationRegistry.get_or_fetch_local_tails_path()`](aries_cloudagent.revocation.models.md#aries_cloudagent.revocation.models.revocation_registry.RevocationRegistry.get_or_fetch_local_tails_path)


            * [`RevocationRegistry.get_receiving_tails_local_path()`](aries_cloudagent.revocation.models.md#aries_cloudagent.revocation.models.revocation_registry.RevocationRegistry.get_receiving_tails_local_path)


            * [`RevocationRegistry.has_local_tails_file()`](aries_cloudagent.revocation.models.md#aries_cloudagent.revocation.models.revocation_registry.RevocationRegistry.has_local_tails_file)


            * [`RevocationRegistry.issuer_did`](aries_cloudagent.revocation.models.md#aries_cloudagent.revocation.models.revocation_registry.RevocationRegistry.issuer_did)


            * [`RevocationRegistry.max_creds`](aries_cloudagent.revocation.models.md#aries_cloudagent.revocation.models.revocation_registry.RevocationRegistry.max_creds)


            * [`RevocationRegistry.reg_def`](aries_cloudagent.revocation.models.md#aries_cloudagent.revocation.models.revocation_registry.RevocationRegistry.reg_def)


            * [`RevocationRegistry.reg_def_type`](aries_cloudagent.revocation.models.md#aries_cloudagent.revocation.models.revocation_registry.RevocationRegistry.reg_def_type)


            * [`RevocationRegistry.registry_id`](aries_cloudagent.revocation.models.md#aries_cloudagent.revocation.models.revocation_registry.RevocationRegistry.registry_id)


            * [`RevocationRegistry.retrieve_tails()`](aries_cloudagent.revocation.models.md#aries_cloudagent.revocation.models.revocation_registry.RevocationRegistry.retrieve_tails)


            * [`RevocationRegistry.tag`](aries_cloudagent.revocation.models.md#aries_cloudagent.revocation.models.revocation_registry.RevocationRegistry.tag)


            * [`RevocationRegistry.tails_hash`](aries_cloudagent.revocation.models.md#aries_cloudagent.revocation.models.revocation_registry.RevocationRegistry.tails_hash)


            * [`RevocationRegistry.tails_local_path`](aries_cloudagent.revocation.models.md#aries_cloudagent.revocation.models.revocation_registry.RevocationRegistry.tails_local_path)


            * [`RevocationRegistry.tails_public_uri`](aries_cloudagent.revocation.models.md#aries_cloudagent.revocation.models.revocation_registry.RevocationRegistry.tails_public_uri)


## Submodules

## aries_cloudagent.revocation.error module

Revocation error classes.


### _exception_ aries_cloudagent.revocation.error.RevocationError(\*args, error_code: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, \*\*kwargs)
Bases: [`BaseError`](aries_cloudagent.core.md#aries_cloudagent.core.error.BaseError)

Base exception for revocation-related errors.


### _exception_ aries_cloudagent.revocation.error.RevocationNotSupportedError(\*args, error_code: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, \*\*kwargs)
Bases: `RevocationError`

Attempted to perform revocation-related operation where inapplicable.


### _exception_ aries_cloudagent.revocation.error.RevocationRegistryBadSizeError(\*args, error_code: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, \*\*kwargs)
Bases: `RevocationError`

Attempted to create registry with maximum credentials too large or too small.

## aries_cloudagent.revocation.indy module

## aries_cloudagent.revocation.manager module

## aries_cloudagent.revocation.recover module

Recover a revocation registry.


### aries_cloudagent.revocation.recover.LOGGER(_ = <Logger aries_cloudagent.revocation.recover (WARNING)_ )
This module calculates a new ledger accumulator, based on the revocation status
on the ledger vs revocations recorded in the wallet.
The calculated transaction can be written to the ledger to get the ledger back
in sync with the wallet.
This function can be used if there were previous revocation errors (i.e. the
credential revocation was successfully written to the wallet but the ledger write
failed.)


### _exception_ aries_cloudagent.revocation.recover.RevocRecoveryException()
Bases: [`Exception`](https://docs.python.org/3/library/exceptions.html#Exception)

Raise exception generating the recovery transaction.


### _async_ aries_cloudagent.revocation.recover.fetch_txns(genesis_txns, registry_id)
Fetch tails file and revocation registry information.


### _async_ aries_cloudagent.revocation.recover.generate_ledger_rrrecovery_txn(genesis_txns, registry_id, set_revoked)
Generate a new ledger accum entry, based on wallet vs ledger revocation state.

## aries_cloudagent.revocation.routes module

## aries_cloudagent.revocation.util module

Revocation utilities.


### _async_ aries_cloudagent.revocation.util.notify_pending_cleared_event(profile: [Profile](aries_cloudagent.core.md#aries_cloudagent.core.profile.Profile), rev_reg_id: [str](https://docs.python.org/3/library/stdtypes.html#str))
Send notification of credential revoked as issuer.


### _async_ aries_cloudagent.revocation.util.notify_revocation_entry_endorsed_event(profile: [Profile](aries_cloudagent.core.md#aries_cloudagent.core.profile.Profile), rev_reg_id: [str](https://docs.python.org/3/library/stdtypes.html#str), meta_data: [dict](https://docs.python.org/3/library/stdtypes.html#dict))
Send notification for a revocation registry entry endorsement event.


### _async_ aries_cloudagent.revocation.util.notify_revocation_entry_event(profile: [Profile](aries_cloudagent.core.md#aries_cloudagent.core.profile.Profile), issuer_rev_id: [str](https://docs.python.org/3/library/stdtypes.html#str), meta_data: [dict](https://docs.python.org/3/library/stdtypes.html#dict))
Send notification for a revocation registry entry event.


### _async_ aries_cloudagent.revocation.util.notify_revocation_published_event(profile: [Profile](aries_cloudagent.core.md#aries_cloudagent.core.profile.Profile), rev_reg_id: [str](https://docs.python.org/3/library/stdtypes.html#str), crids: [Sequence](https://docs.python.org/3/library/typing.html#typing.Sequence)[[str](https://docs.python.org/3/library/stdtypes.html#str)])
Send notification of credential revoked as issuer.


### _async_ aries_cloudagent.revocation.util.notify_revocation_reg_endorsed_event(profile: [Profile](aries_cloudagent.core.md#aries_cloudagent.core.profile.Profile), rev_reg_id: [str](https://docs.python.org/3/library/stdtypes.html#str), meta_data: [dict](https://docs.python.org/3/library/stdtypes.html#dict))
Send notification for a revocation registry endorsement event.


### _async_ aries_cloudagent.revocation.util.notify_revocation_reg_init_event(profile: [Profile](aries_cloudagent.core.md#aries_cloudagent.core.profile.Profile), issuer_rev_id: [str](https://docs.python.org/3/library/stdtypes.html#str), create_pending_rev_reg: [bool](https://docs.python.org/3/library/functions.html#bool) = False, endorser_connection_id: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None)
Send notification for a revocation registry init event.
