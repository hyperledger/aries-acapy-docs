# aries_cloudagent.indy.sdk package

## Submodules

## aries_cloudagent.indy.sdk.error module

Indy error handling.


### _class_ aries_cloudagent.indy.sdk.error.IndyErrorHandler(message: ~typing.Optional[str] = None, error_cls: ~typing.Type[~aries_cloudagent.core.error.BaseError] = <class 'aries_cloudagent.core.error.BaseError'>)
Bases: [`object`](https://docs.python.org/3/library/functions.html#object)

Trap IndyError and raise an appropriate LedgerError instead.


#### _classmethod_ wrap_error(err_value: indy.error.IndyError, message: ~typing.Optional[str] = None, error_cls: ~typing.Type[~aries_cloudagent.core.error.BaseError] = <class 'aries_cloudagent.core.error.BaseError'>)
Create an instance of BaseError from an IndyError.

## aries_cloudagent.indy.sdk.holder module

Indy SDK holder implementation.


### _class_ aries_cloudagent.indy.sdk.holder.IndySdkHolder(wallet: IndyOpenWallet)
Bases: [`IndyHolder`](aries_cloudagent.indy.md#aries_cloudagent.indy.holder.IndyHolder)

Indy-SDK holder implementation.


#### _async_ create_credential_request(credential_offer: [dict](https://docs.python.org/3/library/stdtypes.html#dict), credential_definition: [dict](https://docs.python.org/3/library/stdtypes.html#dict), holder_did: [str](https://docs.python.org/3/library/stdtypes.html#str))
Create a credential request for the given credential offer.


* **Parameters**

    
    * **credential_offer** – The credential offer to create request for


    * **credential_definition** – The credential definition to create an offer for


    * **holder_did** – the DID of the agent making the request



* **Returns**

    A tuple of the credential request and credential request metadata



#### _async_ create_presentation(presentation_request: [dict](https://docs.python.org/3/library/stdtypes.html#dict), requested_credentials: [dict](https://docs.python.org/3/library/stdtypes.html#dict), schemas: [dict](https://docs.python.org/3/library/stdtypes.html#dict), credential_definitions: [dict](https://docs.python.org/3/library/stdtypes.html#dict), rev_states: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[dict](https://docs.python.org/3/library/stdtypes.html#dict)] = None)
Get credentials stored in the wallet.


* **Parameters**

    
    * **presentation_request** – Valid indy format presentation request


    * **requested_credentials** – Indy format requested credentials


    * **schemas** – Indy formatted schemas JSON


    * **credential_definitions** – Indy formatted credential definitions JSON


    * **rev_states** – Indy format revocation states JSON



#### _async_ create_revocation_state(cred_rev_id: [str](https://docs.python.org/3/library/stdtypes.html#str), rev_reg_def: [dict](https://docs.python.org/3/library/stdtypes.html#dict), rev_reg_delta: [dict](https://docs.python.org/3/library/stdtypes.html#dict), timestamp: [int](https://docs.python.org/3/library/functions.html#int), tails_file_path: [str](https://docs.python.org/3/library/stdtypes.html#str))
Create current revocation state for a received credential.


* **Parameters**

    
    * **cred_rev_id** – credential revocation id in revocation registry


    * **rev_reg_def** – revocation registry definition


    * **rev_reg_delta** – revocation delta


    * **timestamp** – delta timestamp



* **Returns**

    the revocation state



#### _async_ credential_revoked(ledger: [BaseLedger](aries_cloudagent.ledger.md#aries_cloudagent.ledger.base.BaseLedger), credential_id: [str](https://docs.python.org/3/library/stdtypes.html#str), fro: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[int](https://docs.python.org/3/library/functions.html#int)] = None, to: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[int](https://docs.python.org/3/library/functions.html#int)] = None)
Check ledger for revocation status of credential by cred id.


* **Parameters**

    **credential_id** – Credential id to check



#### _async_ delete_credential(credential_id: [str](https://docs.python.org/3/library/stdtypes.html#str))
Remove a credential stored in the wallet.


* **Parameters**

    **credential_id** – Credential id to remove



#### _async_ get_credential(credential_id: [str](https://docs.python.org/3/library/stdtypes.html#str))
Get a credential stored in the wallet.


* **Parameters**

    **credential_id** – Credential id to retrieve



#### _async_ get_credentials(start: [int](https://docs.python.org/3/library/functions.html#int), count: [int](https://docs.python.org/3/library/functions.html#int), wql: [dict](https://docs.python.org/3/library/stdtypes.html#dict))
Get credentials stored in the wallet.


* **Parameters**

    
    * **start** – Starting index


    * **count** – Number of records to return


    * **wql** – wql query dict



#### _async_ get_credentials_for_presentation_request_by_referent(presentation_request: [dict](https://docs.python.org/3/library/stdtypes.html#dict), referents: [Sequence](https://docs.python.org/3/library/typing.html#typing.Sequence)[[str](https://docs.python.org/3/library/stdtypes.html#str)], start: [int](https://docs.python.org/3/library/functions.html#int), count: [int](https://docs.python.org/3/library/functions.html#int), extra_query: [dict](https://docs.python.org/3/library/stdtypes.html#dict) = {})
Get credentials stored in the wallet.


* **Parameters**

    
    * **presentation_request** – Valid presentation request from issuer


    * **referents** – Presentation request referents to use to search for creds


    * **start** – Starting index


    * **count** – Maximum number of records to return


    * **extra_query** – wql query dict



#### _async_ get_mime_type(credential_id: [str](https://docs.python.org/3/library/stdtypes.html#str), attr: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None)
Get MIME type per attribute (or for all attributes).


* **Parameters**

    
    * **credential_id** – credential id


    * **attr** – attribute of interest or omit for all


Returns: Attribute MIME type or dict mapping attribute names to MIME types

    attr_meta_json = all_meta.tags.get(attr)


#### _async_ store_credential(credential_definition: [dict](https://docs.python.org/3/library/stdtypes.html#dict), credential_data: [dict](https://docs.python.org/3/library/stdtypes.html#dict), credential_request_metadata: [dict](https://docs.python.org/3/library/stdtypes.html#dict), credential_attr_mime_types=None, credential_id: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, rev_reg_def: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[dict](https://docs.python.org/3/library/stdtypes.html#dict)] = None)
Store a credential in the wallet.


* **Parameters**

    
    * **credential_definition** – Credential definition for this credential


    * **credential_data** – Credential data generated by the issuer


    * **credential_request_metadata** – credential request metadata generated
    by the issuer


    * **credential_attr_mime_types** – dict mapping attribute names to (optional)
    MIME types to store as non-secret record, if specified


    * **credential_id** – optionally override the stored credential id


    * **rev_reg_def** – revocation registry definition in json



* **Returns**

    the ID of the stored credential


## aries_cloudagent.indy.sdk.issuer module

## aries_cloudagent.indy.sdk.profile module

## aries_cloudagent.indy.sdk.util module

Indy utilities.


### _async_ aries_cloudagent.indy.sdk.util.create_tails_reader(tails_file_path: [str](https://docs.python.org/3/library/stdtypes.html#str))
Get a handle for the blob_storage file reader.


### _async_ aries_cloudagent.indy.sdk.util.create_tails_writer(tails_base_dir: [str](https://docs.python.org/3/library/stdtypes.html#str))
Get a handle for the blob_storage file writer.

## aries_cloudagent.indy.sdk.verifier module

## aries_cloudagent.indy.sdk.wallet_plugin module

Utility for loading Postgres wallet plug-in.


### aries_cloudagent.indy.sdk.wallet_plugin.file_ext()
Determine file extension based on platform.


### aries_cloudagent.indy.sdk.wallet_plugin.load_postgres_plugin(storage_config, storage_creds, raise_exc=False)
Load postgres dll and configure postgres wallet.

## aries_cloudagent.indy.sdk.wallet_setup module

Indy-SDK wallet setup and configuration.


### _class_ aries_cloudagent.indy.sdk.wallet_setup.IndyOpenWallet(config: IndyWalletConfig, created, handle, master_secret_id: [str](https://docs.python.org/3/library/stdtypes.html#str))
Bases: [`object`](https://docs.python.org/3/library/functions.html#object)

Handle and metadata for an opened Indy wallet.


#### _async_ close()
Close previously-opened wallet, removing it if so configured.


#### _property_ name(_: [str](https://docs.python.org/3/library/stdtypes.html#str_ )
Accessor for the opened wallet name.


### _class_ aries_cloudagent.indy.sdk.wallet_setup.IndyWalletConfig(config: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[Mapping](https://docs.python.org/3/library/typing.html#typing.Mapping)[[str](https://docs.python.org/3/library/stdtypes.html#str), [Any](https://docs.python.org/3/library/typing.html#typing.Any)]] = None)
Bases: [`object`](https://docs.python.org/3/library/functions.html#object)

A helper class for handling Indy-SDK wallet configuration.


#### DEFAULT_FRESHNESS(_ = Fals_ )

#### DEFAULT_KEY(_ = '_ )

#### DEFAULT_KEY_DERIVATION(_ = 'ARGON2I_MOD_ )

#### DEFAULT_STORAGE_TYPE(_ = Non_ )

#### KEY_DERIVATION_ARGON2I_INT(_ = 'ARGON2I_INT_ )

#### KEY_DERIVATION_ARGON2I_MOD(_ = 'ARGON2I_MOD_ )

#### KEY_DERIVATION_RAW(_ = 'RAW_ )

#### _async_ create_wallet()
Create a new wallet.


* **Raises**

    
    * **ProfileDuplicateError** – If there was an existing wallet with the same name


    * **ProfileError** – If there was a problem removing the wallet


    * **ProfileError** – If there was another libindy error



#### _async_ open_wallet(created: [bool](https://docs.python.org/3/library/functions.html#bool) = False)
Open wallet, removing and/or creating it if so configured.


* **Raises**

    
    * **ProfileError** – If wallet not found after creation


    * **ProfileNotFoundError** – If the wallet is not found


    * **ProfileError** – If the wallet is already open


    * **ProfileError** – If there is another libindy error



#### _async_ remove_wallet()
Remove an existing wallet.


* **Raises**

    
    * **ProfileNotFoundError** – If the wallet could not be found


    * **ProfileError** – If there was another libindy error



#### _property_ wallet_access(_: [dict](https://docs.python.org/3/library/stdtypes.html#dict_ )
Accessor the Indy wallet access info.


#### _property_ wallet_config(_: [dict](https://docs.python.org/3/library/stdtypes.html#dict_ )
Accessor for the Indy wallet config.
