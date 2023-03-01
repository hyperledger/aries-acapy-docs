# aries_cloudagent.wallet package

Abstract and Indy wallet handling.

## Subpackages


* [aries_cloudagent.wallet.models package](aries_cloudagent.wallet.models.md)


    * [Submodules](aries_cloudagent.wallet.models.md#submodules)


    * [aries_cloudagent.wallet.models.wallet_record module](aries_cloudagent.wallet.models.md#aries-cloudagent-wallet-models-wallet-record-module)


## Submodules

## aries_cloudagent.wallet.askar module

## aries_cloudagent.wallet.base module

Wallet base class.


### _class_ aries_cloudagent.wallet.base.BaseWallet()
Bases: [`ABC`](https://docs.python.org/3/library/abc.html#abc.ABC)

Abstract wallet interface.


#### _abstract async_ create_local_did(method: DIDMethod, key_type: KeyType, seed: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, did: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, metadata: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[dict](https://docs.python.org/3/library/stdtypes.html#dict)] = None)
Create and store a new local DID.


* **Parameters**

    
    * **method** – The method to use for the DID


    * **key_type** – The key type to use for the DID


    * **seed** – Optional seed to use for DID


    * **did** – The DID to use


    * **metadata** – Metadata to store with DID



* **Returns**

    The created DIDInfo



#### _async_ create_public_did(method: DIDMethod, key_type: KeyType, seed: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, did: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, metadata: [dict](https://docs.python.org/3/library/stdtypes.html#dict) = {})
Create and store a new public DID.


* **Parameters**

    
    * **seed** – Optional seed to use for DID


    * **did** – The DID to use


    * **metadata** – Metadata to store with DID



* **Returns**

    The created DIDInfo



#### _abstract async_ create_signing_key(key_type: KeyType, seed: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, metadata: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[dict](https://docs.python.org/3/library/stdtypes.html#dict)] = None)
Create a new public/private signing keypair.


* **Parameters**

    
    * **key_type** – Key type to create


    * **seed** – Optional seed allowing deterministic key creation


    * **metadata** – Optional metadata to store with the keypair



* **Returns**

    A KeyInfo representing the new record



#### _abstract async_ get_local_did(did: [str](https://docs.python.org/3/library/stdtypes.html#str))
Find info for a local DID.


* **Parameters**

    **did** – The DID for which to get info



* **Returns**

    A DIDInfo instance for the DID



#### _abstract async_ get_local_did_for_verkey(verkey: [str](https://docs.python.org/3/library/stdtypes.html#str))
Resolve a local DID from a verkey.


* **Parameters**

    **verkey** – Verkey for which to get DID info



* **Returns**

    A DIDInfo instance for the DID



#### _abstract async_ get_local_dids()
Get list of defined local DIDs.


* **Returns**

    A list of DIDInfo instances



#### _async_ get_posted_dids()
Get list of defined posted DIDs.


* **Returns**

    A list of DIDInfo instances



#### _abstract async_ get_public_did()
Retrieve the public DID.


* **Returns**

    The currently public DIDInfo, if any



#### _abstract async_ get_signing_key(verkey: [str](https://docs.python.org/3/library/stdtypes.html#str))
Fetch info for a signing keypair.


* **Parameters**

    **verkey** – The verification key of the keypair



* **Returns**

    A KeyInfo representing the keypair



#### _abstract async_ pack_message(message: [str](https://docs.python.org/3/library/stdtypes.html#str), to_verkeys: [Sequence](https://docs.python.org/3/library/typing.html#typing.Sequence)[[str](https://docs.python.org/3/library/stdtypes.html#str)], from_verkey: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None)
Pack a message for one or more recipients.


* **Parameters**

    
    * **message** – The message to pack


    * **to_verkeys** – The verkeys to pack the message for


    * **from_verkey** – The sender verkey



* **Returns**

    The packed message



#### _abstract async_ replace_local_did_metadata(did: [str](https://docs.python.org/3/library/stdtypes.html#str), metadata: [dict](https://docs.python.org/3/library/stdtypes.html#dict))
Replace the metadata associated with a local DID.

Prefer set_did_endpoint() to set endpoint in metadata.


* **Parameters**

    
    * **did** – DID for which to replace metadata


    * **metadata** – The new metadata



#### _abstract async_ replace_signing_key_metadata(verkey: [str](https://docs.python.org/3/library/stdtypes.html#str), metadata: [dict](https://docs.python.org/3/library/stdtypes.html#dict))
Replace the metadata associated with a signing keypair.


* **Parameters**

    
    * **verkey** – The verification key of the keypair


    * **metadata** – The new metadata to store



#### _abstract async_ rotate_did_keypair_apply(did: [str](https://docs.python.org/3/library/stdtypes.html#str))
Apply temporary keypair as main for DID that wallet owns.


* **Parameters**

    **did** – signing DID



* **Raises**

    
    * **WalletNotFoundError** – if wallet does not own DID


    * **WalletError** – if wallet has not started key rotation



#### _abstract async_ rotate_did_keypair_start(did: [str](https://docs.python.org/3/library/stdtypes.html#str), next_seed: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None)
Begin key rotation for DID that wallet owns: generate new keypair.


* **Parameters**

    
    * **did** – signing DID


    * **next_seed** – seed for incoming ed25519 key pair (default random)



* **Returns**

    The new verification key



* **Raises**

    **WalletNotFoundError** – if wallet does not own DID



#### _async_ set_did_endpoint(did: [str](https://docs.python.org/3/library/stdtypes.html#str), endpoint: [str](https://docs.python.org/3/library/stdtypes.html#str), _ledger: [BaseLedger](aries_cloudagent.ledger.md#aries_cloudagent.ledger.base.BaseLedger), endpoint_type: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[EndpointType](aries_cloudagent.ledger.md#aries_cloudagent.ledger.endpoint_type.EndpointType)] = None, write_ledger: [bool](https://docs.python.org/3/library/functions.html#bool) = True, endorser_did: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, routing_keys: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[List](https://docs.python.org/3/library/typing.html#typing.List)[[str](https://docs.python.org/3/library/stdtypes.html#str)]] = None)
Update the endpoint for a DID in the wallet, send to ledger if public or posted.


* **Parameters**

    
    * **did** – DID for which to set endpoint


    * **endpoint** – the endpoint to set, None to clear


    * **ledger** – the ledger to which to send endpoint update if
    DID is public or posted


    * **endpoint_type** – the type of the endpoint/service. Only endpoint_type
    ‘endpoint’ affects local wallet



#### _abstract async_ set_public_did(did: [Union](https://docs.python.org/3/library/typing.html#typing.Union)[[str](https://docs.python.org/3/library/stdtypes.html#str), DIDInfo])
Assign the public DID.


* **Returns**

    The updated DIDInfo



#### _abstract async_ sign_message(message: [Union](https://docs.python.org/3/library/typing.html#typing.Union)[[List](https://docs.python.org/3/library/typing.html#typing.List)[[bytes](https://docs.python.org/3/library/stdtypes.html#bytes)], [bytes](https://docs.python.org/3/library/stdtypes.html#bytes)], from_verkey: [str](https://docs.python.org/3/library/stdtypes.html#str))
Sign message(s) using the private key associated with a given verkey.


* **Parameters**

    
    * **message** – The message(s) to sign


    * **from_verkey** – Sign using the private key related to this verkey



* **Returns**

    The signature



#### _abstract async_ unpack_message(enc_message: [bytes](https://docs.python.org/3/library/stdtypes.html#bytes))
Unpack a message.


* **Parameters**

    **enc_message** – The encrypted message



* **Returns**

    (message, from_verkey, to_verkey)



* **Return type**

    A tuple



#### _abstract async_ verify_message(message: [Union](https://docs.python.org/3/library/typing.html#typing.Union)[[List](https://docs.python.org/3/library/typing.html#typing.List)[[bytes](https://docs.python.org/3/library/stdtypes.html#bytes)], [bytes](https://docs.python.org/3/library/stdtypes.html#bytes)], signature: [bytes](https://docs.python.org/3/library/stdtypes.html#bytes), from_verkey: [str](https://docs.python.org/3/library/stdtypes.html#str), key_type: KeyType)
Verify a signature against the public key of the signer.


* **Parameters**

    
    * **message** – The message to verify


    * **signature** – The signature to verify


    * **from_verkey** – Verkey to use in verification


    * **key_type** – The key type to derive the signature verification algorithm from



* **Returns**

    True if verified, else False


## aries_cloudagent.wallet.bbs module

BBS+ crypto.


### _exception_ aries_cloudagent.wallet.bbs.BbsException(\*args, error_code: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, \*\*kwargs)
Bases: [`BaseError`](aries_cloudagent.core.md#aries_cloudagent.core.error.BaseError)

Base BBS exception.


### aries_cloudagent.wallet.bbs.create_bls12381g2_keypair(seed: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[bytes](https://docs.python.org/3/library/stdtypes.html#bytes)] = None)
Create a public and private bls12381g2 keypair from a seed value.


* **Parameters**

    **seed** – Seed for keypair



* **Returns**

    A tuple of (public key, secret key)



### aries_cloudagent.wallet.bbs.sign_messages_bls12381g2(messages: [List](https://docs.python.org/3/library/typing.html#typing.List)[[bytes](https://docs.python.org/3/library/stdtypes.html#bytes)], secret: [bytes](https://docs.python.org/3/library/stdtypes.html#bytes))
Sign messages using a bls12381g2 private signing key.


* **Parameters**

    
    * **messages** (*List**[*[*bytes*](https://docs.python.org/3/library/stdtypes.html#bytes)*]*) – The messages to sign


    * **secret** ([*bytes*](https://docs.python.org/3/library/stdtypes.html#bytes)) – The private signing key



* **Returns**

    The signature



* **Return type**

    [bytes](https://docs.python.org/3/library/stdtypes.html#bytes)



### aries_cloudagent.wallet.bbs.verify_signed_messages_bls12381g2(messages: [List](https://docs.python.org/3/library/typing.html#typing.List)[[bytes](https://docs.python.org/3/library/stdtypes.html#bytes)], signature: [bytes](https://docs.python.org/3/library/stdtypes.html#bytes), public_key: [bytes](https://docs.python.org/3/library/stdtypes.html#bytes))
Verify an ed25519 signed message according to a public verification key.


* **Parameters**

    
    * **signed** – The signed messages


    * **public_key** – The public key to use in verification



* **Returns**

    True if verified, else False


## aries_cloudagent.wallet.crypto module

## aries_cloudagent.wallet.did_info module

KeyInfo, DIDInfo.


### _class_ aries_cloudagent.wallet.did_info.DIDInfo(did, verkey, metadata, method, key_type)
Bases: [`tuple`](https://docs.python.org/3/library/stdtypes.html#tuple)


#### _property_ did()
Alias for field number 0


#### _property_ key_type()
Alias for field number 4


#### _property_ metadata()
Alias for field number 2


#### _property_ method()
Alias for field number 3


#### _property_ verkey()
Alias for field number 1


### _class_ aries_cloudagent.wallet.did_info.KeyInfo(verkey, metadata, key_type)
Bases: [`tuple`](https://docs.python.org/3/library/stdtypes.html#tuple)


#### _property_ key_type()
Alias for field number 2


#### _property_ metadata()
Alias for field number 1


#### _property_ verkey()
Alias for field number 0

## aries_cloudagent.wallet.did_method module

did method.py contains registry for did methods.


### _class_ aries_cloudagent.wallet.did_method.DIDMethod(name: [str](https://docs.python.org/3/library/stdtypes.html#str), key_types: [List](https://docs.python.org/3/library/typing.html#typing.List)[KeyType], rotation: [bool](https://docs.python.org/3/library/functions.html#bool) = False, holder_defined_did: HolderDefinedDid = HolderDefinedDid.NO)
Bases: [`object`](https://docs.python.org/3/library/functions.html#object)

Class to represent a did method.


#### holder_defined_did()
Return the did derivation policy.

eg: did:key DIDs are derived from the verkey -> HolderDefinedDid.NO
eg: did:web DIDs cannot be derived from key material -> HolderDefinedDid.REQUIRED


#### _property_ method_name()
Get method name.


#### _property_ supported_key_types()
Get supported key types.


#### supports_key_type(key_type: KeyType)
Check whether the current method supports the key type.


#### _property_ supports_rotation()
Check rotation support.


### _class_ aries_cloudagent.wallet.did_method.DIDMethods()
Bases: [`object`](https://docs.python.org/3/library/functions.html#object)

DID Method class specifying DID methods with supported key types.


#### from_did(did: [str](https://docs.python.org/3/library/stdtypes.html#str))
Get DID method instance from the did url.


#### from_metadata(metadata: [Mapping](https://docs.python.org/3/library/typing.html#typing.Mapping))
Get DID method instance from metadata object.

Returns SOV if no metadata was found for backwards compatibility.


#### from_method(method_name: [str](https://docs.python.org/3/library/stdtypes.html#str))
Retrieve a did method from method name.


#### register(method: DIDMethod)
Register a new did method.


#### registered(method: [str](https://docs.python.org/3/library/stdtypes.html#str))
Check for a supported method.


### _class_ aries_cloudagent.wallet.did_method.HolderDefinedDid(value)
Bases: [`Enum`](https://docs.python.org/3/library/enum.html#enum.Enum)

Define if a holder can specify its own did for a given method.


#### ALLOWED(_ = 'allowed_ )

#### NO(_ = 'no_ )

#### REQUIRED(_ = 'required_ )
## aries_cloudagent.wallet.did_posture module

Ledger utilities.


### _class_ aries_cloudagent.wallet.did_posture.DIDPosture(value)
Bases: [`Enum`](https://docs.python.org/3/library/enum.html#enum.Enum)

Enum for DID postures: public, posted but not public, or in wallet only.


#### POSTED(_ = DIDPostureSpec(moniker='posted', ordinal=1, public=False, posted=True_ )

#### PUBLIC(_ = DIDPostureSpec(moniker='public', ordinal=0, public=True, posted=True_ )

#### WALLET_ONLY(_ = DIDPostureSpec(moniker='wallet_only', ordinal=2, public=False, posted=False_ )

#### _static_ get(posture: [Union](https://docs.python.org/3/library/typing.html#typing.Union)[[str](https://docs.python.org/3/library/stdtypes.html#str), [Mapping](https://docs.python.org/3/library/typing.html#typing.Mapping)])
Return enum instance corresponding to input string or DID metadata.


#### _property_ metadata(_: [Mapping](https://docs.python.org/3/library/typing.html#typing.Mapping_ )
DID metadata for DID posture.


#### _property_ moniker(_: [str](https://docs.python.org/3/library/stdtypes.html#str_ )
Name for DID posture.


#### _property_ ordinal(_: [Mapping](https://docs.python.org/3/library/typing.html#typing.Mapping_ )
public first, then posted and wallet-only.


* **Type**

    Ordinal for presentation



### _class_ aries_cloudagent.wallet.did_posture.DIDPostureSpec(moniker, ordinal, public, posted)
Bases: [`tuple`](https://docs.python.org/3/library/stdtypes.html#tuple)


#### _property_ moniker()
Alias for field number 0


#### _property_ ordinal()
Alias for field number 1


#### _property_ posted()
Alias for field number 3


#### _property_ public()
Alias for field number 2

## aries_cloudagent.wallet.error module

Wallet-related exceptions.


### _exception_ aries_cloudagent.wallet.error.WalletDuplicateError(\*args, error_code: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, \*\*kwargs)
Bases: `WalletError`

Duplicate record exception.


### _exception_ aries_cloudagent.wallet.error.WalletError(\*args, error_code: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, \*\*kwargs)
Bases: [`BaseError`](aries_cloudagent.core.md#aries_cloudagent.core.error.BaseError)

General wallet exception.


### _exception_ aries_cloudagent.wallet.error.WalletNotFoundError(\*args, error_code: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, \*\*kwargs)
Bases: `WalletError`

Record not found exception.


### _exception_ aries_cloudagent.wallet.error.WalletSettingsError(\*args, error_code: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, \*\*kwargs)
Bases: `WalletError`

Invalid settings exception.

## aries_cloudagent.wallet.in_memory module

## aries_cloudagent.wallet.indy module

## aries_cloudagent.wallet.key_pair module

Key pair storage manager.


### _class_ aries_cloudagent.wallet.key_pair.KeyPairStorageManager(store: [BaseStorage](aries_cloudagent.storage.md#aries_cloudagent.storage.base.BaseStorage))
Bases: [`object`](https://docs.python.org/3/library/functions.html#object)

Key pair storage manager.


#### _async_ delete_key_pair(verkey: [str](https://docs.python.org/3/library/stdtypes.html#str))
Remove a previously-stored key pair record.


* **Raises**

    **StorageNotFoundError** – If the record is not found



#### _async_ find_key_pairs(tag_query: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[Mapping](https://docs.python.org/3/library/typing.html#typing.Mapping)] = None)
Find key pairs by tag query.


#### _async_ get_key_pair(verkey: [str](https://docs.python.org/3/library/stdtypes.html#str))
Retrieve signing key pair from storage by verkey.


* **Parameters**

    
    * **storage** (*BaseStorage*) – The storage to use for querying


    * **verkey** ([*str*](https://docs.python.org/3/library/stdtypes.html#str)) – The verkey to query for



* **Raises**

    
    * **StorageDuplicateError** – If more than one key pair is found for this verkey


    * **StorageNotFoundError** – If no key pair is found for this verkey


Returns

    dict: The key pair data


#### _async_ store_key_pair(public_key: [bytes](https://docs.python.org/3/library/stdtypes.html#bytes), secret_key: [bytes](https://docs.python.org/3/library/stdtypes.html#bytes), key_type: KeyType, metadata: [dict](https://docs.python.org/3/library/stdtypes.html#dict) = {}, tags: [dict](https://docs.python.org/3/library/stdtypes.html#dict) = {})
Store signing key pair in storage.


* **Parameters**

    
    * **public_key** ([*bytes*](https://docs.python.org/3/library/stdtypes.html#bytes)) – The public key


    * **secret_key** ([*bytes*](https://docs.python.org/3/library/stdtypes.html#bytes)) – The secret key


    * **key_type** (*KeyType*) – The key type


    * **metadata** ([*dict*](https://docs.python.org/3/library/stdtypes.html#dict)*, **optional*) – The metadata


    * **tags** ([*dict*](https://docs.python.org/3/library/stdtypes.html#dict)*, **optional*) – The tags.



#### _async_ update_key_pair_metadata(verkey: [str](https://docs.python.org/3/library/stdtypes.html#str), metadata: [dict](https://docs.python.org/3/library/stdtypes.html#dict))
Update the metadata of a key pair record by verkey.


* **Raises**

    **StorageNotFoundError** – If the record is not found.


## aries_cloudagent.wallet.key_type module

Key type code.


### _class_ aries_cloudagent.wallet.key_type.KeyType(key_type: [str](https://docs.python.org/3/library/stdtypes.html#str), multicodec_name: [str](https://docs.python.org/3/library/stdtypes.html#str), multicodec_prefix: [bytes](https://docs.python.org/3/library/stdtypes.html#bytes))
Bases: [`object`](https://docs.python.org/3/library/functions.html#object)

Key Type class.


#### _property_ key_type(_: [str](https://docs.python.org/3/library/stdtypes.html#str_ )
Get Key type, type.


#### _property_ multicodec_name(_: [str](https://docs.python.org/3/library/stdtypes.html#str_ )
Get key type multicodec name.


#### _property_ multicodec_prefix(_: [bytes](https://docs.python.org/3/library/stdtypes.html#bytes_ )
Get key type multicodec prefix.


### _class_ aries_cloudagent.wallet.key_type.KeyTypes()
Bases: [`object`](https://docs.python.org/3/library/functions.html#object)

KeyType class specifying key types with multicodec name.


#### from_key_type(key_type: [str](https://docs.python.org/3/library/stdtypes.html#str))
Get KeyType instance from the key type identifier.


#### from_multicodec_name(multicodec_name: [str](https://docs.python.org/3/library/stdtypes.html#str))
Get KeyType instance based on multicodec name. Returns None if not found.


#### from_multicodec_prefix(multicodec_prefix: [bytes](https://docs.python.org/3/library/stdtypes.html#bytes))
Get KeyType instance based on multicodec prefix. Returns None if not found.


#### from_prefixed_bytes(prefixed_bytes: [bytes](https://docs.python.org/3/library/stdtypes.html#bytes))
Get KeyType instance based on prefix in bytes. Returns None if not found.


#### register(key_type: KeyType)
Register a new key type.

## aries_cloudagent.wallet.routes module

## aries_cloudagent.wallet.util module

Wallet utility functions.


### aries_cloudagent.wallet.util.abbr_verkey(full_verkey: [str](https://docs.python.org/3/library/stdtypes.html#str), did: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None)
Given a full verkey and DID, return the abbreviated verkey.


### aries_cloudagent.wallet.util.b58_to_bytes(val: [str](https://docs.python.org/3/library/stdtypes.html#str))
Convert a base 58 string to bytes.


### aries_cloudagent.wallet.util.b64_to_bytes(val: [str](https://docs.python.org/3/library/stdtypes.html#str), urlsafe=False)
Convert a base 64 string to bytes.


### aries_cloudagent.wallet.util.b64_to_str(val: [str](https://docs.python.org/3/library/stdtypes.html#str), urlsafe=False, encoding=None)
Convert a base 64 string to string on input encoding (default utf-8).


### aries_cloudagent.wallet.util.bytes_to_b58(val: [bytes](https://docs.python.org/3/library/stdtypes.html#bytes))
Convert a byte string to base 58.


### aries_cloudagent.wallet.util.bytes_to_b64(val: [bytes](https://docs.python.org/3/library/stdtypes.html#bytes), urlsafe=False, pad=True, encoding: [str](https://docs.python.org/3/library/stdtypes.html#str) = 'ascii')
Convert a byte string to base 64.


### aries_cloudagent.wallet.util.default_did_from_verkey(verkey: [str](https://docs.python.org/3/library/stdtypes.html#str))
Given a verkey, return the default indy did.

By default the did is the first 16 bytes of the verkey.


### aries_cloudagent.wallet.util.full_verkey(did: [str](https://docs.python.org/3/library/stdtypes.html#str), abbr_verkey: [str](https://docs.python.org/3/library/stdtypes.html#str))
Given a DID and abbreviated verkey, return the full verkey.


### _async_ aries_cloudagent.wallet.util.notify_endorse_did_attrib_event(profile: [Profile](aries_cloudagent.core.md#aries_cloudagent.core.profile.Profile), did: [str](https://docs.python.org/3/library/stdtypes.html#str), meta_data: [dict](https://docs.python.org/3/library/stdtypes.html#dict))
Send notification for a DID ATTRIB post-process event.


### _async_ aries_cloudagent.wallet.util.notify_endorse_did_event(profile: [Profile](aries_cloudagent.core.md#aries_cloudagent.core.profile.Profile), did: [str](https://docs.python.org/3/library/stdtypes.html#str), meta_data: [dict](https://docs.python.org/3/library/stdtypes.html#dict))
Send notification for a DID post-process event.


### aries_cloudagent.wallet.util.pad(val: [str](https://docs.python.org/3/library/stdtypes.html#str))
Pad base64 values if need be: JWT calls to omit trailing padding.


### aries_cloudagent.wallet.util.random_seed()
Generate a random seed value.


* **Returns**

    A new random seed



### aries_cloudagent.wallet.util.set_urlsafe_b64(val: [str](https://docs.python.org/3/library/stdtypes.html#str), urlsafe: [bool](https://docs.python.org/3/library/functions.html#bool) = True)
Set URL safety in base64 encoding.


### aries_cloudagent.wallet.util.str_to_b64(val: [str](https://docs.python.org/3/library/stdtypes.html#str), urlsafe=False, encoding=None, pad=True)
Convert a string to base64 string on input encoding (default utf-8).


### aries_cloudagent.wallet.util.unpad(val: [str](https://docs.python.org/3/library/stdtypes.html#str))
Remove padding from base64 values if need be.
