# aries_cloudagent.ledger package

## Subpackages

- [aries_cloudagent.ledger.merkel_validation package](aries_cloudagent.ledger.merkel_validation.md)

  - [Submodules](aries_cloudagent.ledger.merkel_validation.md#submodules)

  - [aries_cloudagent.ledger.merkel_validation.constants module](aries_cloudagent.ledger.merkel_validation.md#module-aries_cloudagent.ledger.merkel_validation.constants)

  - [aries_cloudagent.ledger.merkel_validation.domain_txn_handler module](aries_cloudagent.ledger.merkel_validation.md#module-aries_cloudagent.ledger.merkel_validation.domain_txn_handler)

    - [`decode_state_value()`](aries_cloudagent.ledger.merkel_validation.md#aries_cloudagent.ledger.merkel_validation.domain_txn_handler.decode_state_value)

    - [`encode_state_value()`](aries_cloudagent.ledger.merkel_validation.md#aries_cloudagent.ledger.merkel_validation.domain_txn_handler.encode_state_value)

    - [`extract_params_write_request()`](aries_cloudagent.ledger.merkel_validation.md#aries_cloudagent.ledger.merkel_validation.domain_txn_handler.extract_params_write_request)

    - [`get_proof_nodes()`](aries_cloudagent.ledger.merkel_validation.md#aries_cloudagent.ledger.merkel_validation.domain_txn_handler.get_proof_nodes)

    - [`hash_of()`](aries_cloudagent.ledger.merkel_validation.md#aries_cloudagent.ledger.merkel_validation.domain_txn_handler.hash_of)

    - [`make_state_path_for_attr()`](aries_cloudagent.ledger.merkel_validation.md#aries_cloudagent.ledger.merkel_validation.domain_txn_handler.make_state_path_for_attr)

    - [`make_state_path_for_claim_def()`](aries_cloudagent.ledger.merkel_validation.md#aries_cloudagent.ledger.merkel_validation.domain_txn_handler.make_state_path_for_claim_def)

    - [`make_state_path_for_nym()`](aries_cloudagent.ledger.merkel_validation.md#aries_cloudagent.ledger.merkel_validation.domain_txn_handler.make_state_path_for_nym)

    - [`make_state_path_for_revoc_def()`](aries_cloudagent.ledger.merkel_validation.md#aries_cloudagent.ledger.merkel_validation.domain_txn_handler.make_state_path_for_revoc_def)

    - [`make_state_path_for_revoc_reg_entry()`](aries_cloudagent.ledger.merkel_validation.md#aries_cloudagent.ledger.merkel_validation.domain_txn_handler.make_state_path_for_revoc_reg_entry)

    - [`make_state_path_for_revoc_reg_entry_accum()`](aries_cloudagent.ledger.merkel_validation.md#aries_cloudagent.ledger.merkel_validation.domain_txn_handler.make_state_path_for_revoc_reg_entry_accum)

    - [`make_state_path_for_schema()`](aries_cloudagent.ledger.merkel_validation.md#aries_cloudagent.ledger.merkel_validation.domain_txn_handler.make_state_path_for_schema)

    - [`parse_attr_txn()`](aries_cloudagent.ledger.merkel_validation.md#aries_cloudagent.ledger.merkel_validation.domain_txn_handler.parse_attr_txn)

    - [`prepare_attr_for_state()`](aries_cloudagent.ledger.merkel_validation.md#aries_cloudagent.ledger.merkel_validation.domain_txn_handler.prepare_attr_for_state)

    - [`prepare_claim_def_for_state()`](aries_cloudagent.ledger.merkel_validation.md#aries_cloudagent.ledger.merkel_validation.domain_txn_handler.prepare_claim_def_for_state)

    - [`prepare_for_state_read()`](aries_cloudagent.ledger.merkel_validation.md#aries_cloudagent.ledger.merkel_validation.domain_txn_handler.prepare_for_state_read)

    - [`prepare_for_state_write()`](aries_cloudagent.ledger.merkel_validation.md#aries_cloudagent.ledger.merkel_validation.domain_txn_handler.prepare_for_state_write)

    - [`prepare_get_attr_for_state()`](aries_cloudagent.ledger.merkel_validation.md#aries_cloudagent.ledger.merkel_validation.domain_txn_handler.prepare_get_attr_for_state)

    - [`prepare_get_claim_def_for_state()`](aries_cloudagent.ledger.merkel_validation.md#aries_cloudagent.ledger.merkel_validation.domain_txn_handler.prepare_get_claim_def_for_state)

    - [`prepare_get_nym_for_state()`](aries_cloudagent.ledger.merkel_validation.md#aries_cloudagent.ledger.merkel_validation.domain_txn_handler.prepare_get_nym_for_state)

    - [`prepare_get_revoc_def_for_state()`](aries_cloudagent.ledger.merkel_validation.md#aries_cloudagent.ledger.merkel_validation.domain_txn_handler.prepare_get_revoc_def_for_state)

    - [`prepare_get_revoc_reg_delta_for_state()`](aries_cloudagent.ledger.merkel_validation.md#aries_cloudagent.ledger.merkel_validation.domain_txn_handler.prepare_get_revoc_reg_delta_for_state)

    - [`prepare_get_revoc_reg_entry_accum_for_state()`](aries_cloudagent.ledger.merkel_validation.md#aries_cloudagent.ledger.merkel_validation.domain_txn_handler.prepare_get_revoc_reg_entry_accum_for_state)

    - [`prepare_get_revoc_reg_entry_for_state()`](aries_cloudagent.ledger.merkel_validation.md#aries_cloudagent.ledger.merkel_validation.domain_txn_handler.prepare_get_revoc_reg_entry_for_state)

    - [`prepare_get_schema_for_state()`](aries_cloudagent.ledger.merkel_validation.md#aries_cloudagent.ledger.merkel_validation.domain_txn_handler.prepare_get_schema_for_state)

    - [`prepare_nym_for_state()`](aries_cloudagent.ledger.merkel_validation.md#aries_cloudagent.ledger.merkel_validation.domain_txn_handler.prepare_nym_for_state)

    - [`prepare_revoc_def_for_state()`](aries_cloudagent.ledger.merkel_validation.md#aries_cloudagent.ledger.merkel_validation.domain_txn_handler.prepare_revoc_def_for_state)

    - [`prepare_revoc_reg_entry_accum_for_state()`](aries_cloudagent.ledger.merkel_validation.md#aries_cloudagent.ledger.merkel_validation.domain_txn_handler.prepare_revoc_reg_entry_accum_for_state)

    - [`prepare_revoc_reg_entry_for_state()`](aries_cloudagent.ledger.merkel_validation.md#aries_cloudagent.ledger.merkel_validation.domain_txn_handler.prepare_revoc_reg_entry_for_state)

    - [`prepare_schema_for_state()`](aries_cloudagent.ledger.merkel_validation.md#aries_cloudagent.ledger.merkel_validation.domain_txn_handler.prepare_schema_for_state)

  - [aries_cloudagent.ledger.merkel_validation.hasher module](aries_cloudagent.ledger.merkel_validation.md#module-aries_cloudagent.ledger.merkel_validation.hasher)

    - [`HexTreeHasher`](aries_cloudagent.ledger.merkel_validation.md#aries_cloudagent.ledger.merkel_validation.hasher.HexTreeHasher)

      - [`HexTreeHasher.hash_children()`](aries_cloudagent.ledger.merkel_validation.md#aries_cloudagent.ledger.merkel_validation.hasher.HexTreeHasher.hash_children)

      - [`HexTreeHasher.hash_leaf()`](aries_cloudagent.ledger.merkel_validation.md#aries_cloudagent.ledger.merkel_validation.hasher.HexTreeHasher.hash_leaf)

    - [`TreeHasher`](aries_cloudagent.ledger.merkel_validation.md#aries_cloudagent.ledger.merkel_validation.hasher.TreeHasher)

      - [`TreeHasher.hash_children()`](aries_cloudagent.ledger.merkel_validation.md#aries_cloudagent.ledger.merkel_validation.hasher.TreeHasher.hash_children)

      - [`TreeHasher.hash_leaf()`](aries_cloudagent.ledger.merkel_validation.md#aries_cloudagent.ledger.merkel_validation.hasher.TreeHasher.hash_leaf)

  - [aries_cloudagent.ledger.merkel_validation.merkel_verifier module](aries_cloudagent.ledger.merkel_validation.md#module-aries_cloudagent.ledger.merkel_validation.merkel_verifier)

    - [`MerkleVerifier`](aries_cloudagent.ledger.merkel_validation.md#aries_cloudagent.ledger.merkel_validation.merkel_verifier.MerkleVerifier)

      - [`MerkleVerifier.calculate_root_hash()`](aries_cloudagent.ledger.merkel_validation.md#aries_cloudagent.ledger.merkel_validation.merkel_verifier.MerkleVerifier.calculate_root_hash)

      - [`MerkleVerifier.lsb()`](aries_cloudagent.ledger.merkel_validation.md#aries_cloudagent.ledger.merkel_validation.merkel_verifier.MerkleVerifier.lsb)

  - [aries_cloudagent.ledger.merkel_validation.trie module](aries_cloudagent.ledger.merkel_validation.md#module-aries_cloudagent.ledger.merkel_validation.trie)

    - [`SubTrie`](aries_cloudagent.ledger.merkel_validation.md#aries_cloudagent.ledger.merkel_validation.trie.SubTrie)

      - [`SubTrie.get_new_trie_with_proof_nodes()`](aries_cloudagent.ledger.merkel_validation.md#aries_cloudagent.ledger.merkel_validation.trie.SubTrie.get_new_trie_with_proof_nodes)

      - [`SubTrie.root_hash`](aries_cloudagent.ledger.merkel_validation.md#aries_cloudagent.ledger.merkel_validation.trie.SubTrie.root_hash)

      - [`SubTrie.set_root_hash()`](aries_cloudagent.ledger.merkel_validation.md#aries_cloudagent.ledger.merkel_validation.trie.SubTrie.set_root_hash)

      - [`SubTrie.verify_spv_proof()`](aries_cloudagent.ledger.merkel_validation.md#aries_cloudagent.ledger.merkel_validation.trie.SubTrie.verify_spv_proof)

  - [aries_cloudagent.ledger.merkel_validation.utils module](aries_cloudagent.ledger.merkel_validation.md#module-aries_cloudagent.ledger.merkel_validation.utils)

    - [`ascii_chr()`](aries_cloudagent.ledger.merkel_validation.md#aries_cloudagent.ledger.merkel_validation.utils.ascii_chr)

    - [`audit_path_length()`](aries_cloudagent.ledger.merkel_validation.md#aries_cloudagent.ledger.merkel_validation.utils.audit_path_length)

    - [`bin_to_nibbles()`](aries_cloudagent.ledger.merkel_validation.md#aries_cloudagent.ledger.merkel_validation.utils.bin_to_nibbles)

    - [`encode_hex()`](aries_cloudagent.ledger.merkel_validation.md#aries_cloudagent.ledger.merkel_validation.utils.encode_hex)

    - [`sha3_256()`](aries_cloudagent.ledger.merkel_validation.md#aries_cloudagent.ledger.merkel_validation.utils.sha3_256)

    - [`unpack_to_nibbles()`](aries_cloudagent.ledger.merkel_validation.md#aries_cloudagent.ledger.merkel_validation.utils.unpack_to_nibbles)

- [aries_cloudagent.ledger.multiple_ledger package](aries_cloudagent.ledger.multiple_ledger.md)

  - [Submodules](aries_cloudagent.ledger.multiple_ledger.md#submodules)

  - [aries_cloudagent.ledger.multiple_ledger.base_manager module](aries_cloudagent.ledger.multiple_ledger.md#aries-cloudagent-ledger-multiple-ledger-base-manager-module)

  - [aries_cloudagent.ledger.multiple_ledger.indy_manager module](aries_cloudagent.ledger.multiple_ledger.md#aries-cloudagent-ledger-multiple-ledger-indy-manager-module)

  - [aries_cloudagent.ledger.multiple_ledger.indy_vdr_manager module](aries_cloudagent.ledger.multiple_ledger.md#aries-cloudagent-ledger-multiple-ledger-indy-vdr-manager-module)

  - [aries_cloudagent.ledger.multiple_ledger.ledger_config_schema module](aries_cloudagent.ledger.multiple_ledger.md#aries-cloudagent-ledger-multiple-ledger-ledger-config-schema-module)

  - [aries_cloudagent.ledger.multiple_ledger.ledger_requests_executor module](aries_cloudagent.ledger.multiple_ledger.md#aries-cloudagent-ledger-multiple-ledger-ledger-requests-executor-module)

  - [aries_cloudagent.ledger.multiple_ledger.manager_provider module](aries_cloudagent.ledger.multiple_ledger.md#aries-cloudagent-ledger-multiple-ledger-manager-provider-module)

## Submodules

## aries_cloudagent.ledger.base module

Ledger base class.

### _class_ aries_cloudagent.ledger.base.BaseLedger()

Bases: [`ABC`](https://docs.python.org/3/library/abc.html#abc.ABC)

Base class for ledger.

#### BACKEND*NAME(*: [str](https://docs.python.org/3/library/stdtypes.html#str_ _ = Non_ )

#### _abstract async_ accept_txn_author_agreement(taa_record: [dict](https://docs.python.org/3/library/stdtypes.html#dict), mechanism: [str](https://docs.python.org/3/library/stdtypes.html#str), accept_time: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[int](https://docs.python.org/3/library/functions.html#int)] = None)

Save a new record recording the acceptance of the TAA.

#### _property_ backend(_: [str](https://docs.python.org/3/library/stdtypes.html#str_ )

Accessor for the ledger backend name.

#### _async_ check_existing_schema(public_did: [str](https://docs.python.org/3/library/stdtypes.html#str), schema_name: [str](https://docs.python.org/3/library/stdtypes.html#str), schema_version: [str](https://docs.python.org/3/library/stdtypes.html#str), attribute_names: [Sequence](https://docs.python.org/3/library/typing.html#typing.Sequence)[[str](https://docs.python.org/3/library/stdtypes.html#str)])

Check if a schema has already been published.

#### _async_ create_and_send_credential_definition(issuer: [IndyIssuer](aries_cloudagent.indy.md#aries_cloudagent.indy.issuer.IndyIssuer), schema_id: [str](https://docs.python.org/3/library/stdtypes.html#str), signature_type: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, tag: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, support_revocation: [bool](https://docs.python.org/3/library/functions.html#bool) = False, write_ledger: [bool](https://docs.python.org/3/library/functions.html#bool) = True, endorser_did: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None)

Send credential definition to ledger and store relevant key matter in wallet.

- **Parameters**

  - **issuer** – The issuer instance to use for credential definition creation

  - **schema_id** – The schema id of the schema to create cred def for

  - **signature_type** – The signature type to use on the credential definition

  - **tag** – Optional tag to distinguish multiple credential definitions

  - **support_revocation** – Optional flag to enable revocation for this cred def

- **Returns**

  Tuple with cred def id, cred def structure, and whether it’s novel

#### _async_ create_and_send_schema(issuer: [IndyIssuer](aries_cloudagent.indy.md#aries_cloudagent.indy.issuer.IndyIssuer), schema_name: [str](https://docs.python.org/3/library/stdtypes.html#str), schema_version: [str](https://docs.python.org/3/library/stdtypes.html#str), attribute_names: [Sequence](https://docs.python.org/3/library/typing.html#typing.Sequence)[[str](https://docs.python.org/3/library/stdtypes.html#str)], write_ledger: [bool](https://docs.python.org/3/library/functions.html#bool) = True, endorser_did: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None)

Send schema to ledger.

- **Parameters**

  - **issuer** – The issuer instance to use for schema creation

  - **schema_name** – The schema name

  - **schema_version** – The schema version

  - **attribute_names** – A list of schema attributes

#### did_to_nym(did: [str](https://docs.python.org/3/library/stdtypes.html#str))

Remove the ledger’s DID prefix to produce a nym.

#### _abstract async_ fetch_schema_by_id(schema_id: [str](https://docs.python.org/3/library/stdtypes.html#str))

Get schema from ledger.

- **Parameters**

  **schema_id** – The schema id (or stringified sequence number) to retrieve

- **Returns**

  Indy schema dict

#### _abstract async_ fetch_schema_by_seq_no(seq_no: [int](https://docs.python.org/3/library/functions.html#int))

Fetch a schema by its sequence number.

- **Parameters**

  **seq_no** – schema ledger sequence number

- **Returns**

  Indy schema dict

#### _abstract async_ fetch_txn_author_agreement()

Fetch the current AML and TAA from the ledger.

#### _abstract async_ get_all_endpoints_for_did(did: [str](https://docs.python.org/3/library/stdtypes.html#str))

Fetch all endpoints for a ledger DID.

- **Parameters**

  **did** – The DID to look up on the ledger or in the cache

#### _abstract async_ get_credential_definition(credential_definition_id: [str](https://docs.python.org/3/library/stdtypes.html#str))

Get a credential definition from the cache if available, otherwise the ledger.

- **Parameters**

  **credential_definition_id** – The schema id of the schema to fetch cred def for

#### _abstract async_ get_endpoint_for_did(did: [str](https://docs.python.org/3/library/stdtypes.html#str), endpoint_type: EndpointType = EndpointType.ENDPOINT)

Fetch the endpoint for a ledger DID.

- **Parameters**

  - **did** – The DID to look up on the ledger or in the cache

  - **endpoint_type** – The type of the endpoint (default ‘endpoint’)

#### _abstract async_ get_key_for_did(did: [str](https://docs.python.org/3/library/stdtypes.html#str))

Fetch the verkey for a ledger DID.

- **Parameters**

  **did** – The DID to look up on the ledger or in the cache

#### _abstract async_ get_latest_txn_author_acceptance()

Look up the latest TAA acceptance.

#### _abstract async_ get_nym_role(did: [str](https://docs.python.org/3/library/stdtypes.html#str))

Return the role registered to input public DID on the ledger.

- **Parameters**

  **did** – DID to register on the ledger.

#### _abstract async_ get_revoc_reg_def(revoc_reg_id: [str](https://docs.python.org/3/library/stdtypes.html#str))

Look up a revocation registry definition by ID.

#### _abstract async_ get_revoc_reg_delta(revoc_reg_id: [str](https://docs.python.org/3/library/stdtypes.html#str), timestamp_from=0, timestamp_to=None)

Look up a revocation registry delta by ID.

#### _abstract async_ get_revoc_reg_entry(revoc_reg_id: [str](https://docs.python.org/3/library/stdtypes.html#str), timestamp: [int](https://docs.python.org/3/library/functions.html#int))

Get revocation registry entry by revocation registry ID and timestamp.

#### _abstract async_ get_schema(schema_id: [str](https://docs.python.org/3/library/stdtypes.html#str))

Get a schema from the cache if available, otherwise fetch from the ledger.

- **Parameters**

  **schema_id** – The schema id (or stringified sequence number) to retrieve

#### _abstract async_ get_txn_author_agreement(reload: [bool](https://docs.python.org/3/library/functions.html#bool) = False)

Get the current transaction author agreement, fetching it if necessary.

#### _abstract async_ get_wallet_public_did()

Fetch the public DID from the wallet.

#### _abstract async_ is_ledger_read_only()

Check if ledger is read-only including TAA.

#### _abstract_ nym_to_did(nym: [str](https://docs.python.org/3/library/stdtypes.html#str))

Format a nym with the ledger’s DID prefix.

#### _abstract property_ read*only(*: [bool](https://docs.python.org/3/library/functions.html#bool_)

Accessor for the ledger read-only flag.

#### _abstract async_ register_nym(did: [str](https://docs.python.org/3/library/stdtypes.html#str), verkey: [str](https://docs.python.org/3/library/stdtypes.html#str), alias: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, role: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, write_ledger: [bool](https://docs.python.org/3/library/functions.html#bool) = True, endorser_did: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None)

Register a nym on the ledger.

- **Parameters**

  - **did** – DID to register on the ledger.

  - **verkey** – The verification key of the keypair.

  - **alias** – Human-friendly alias to assign to the DID.

  - **role** – For permissioned ledgers, what role should the new DID have.

#### _abstract async_ rotate_public_did_keypair(next_seed: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None)

Rotate keypair for public DID: create new key, submit to ledger, update wallet.

- **Parameters**

  **next_seed** – seed for incoming ed25519 keypair (default random)

#### _abstract async_ send_revoc_reg_def(revoc_reg_def: [dict](https://docs.python.org/3/library/stdtypes.html#dict), issuer_did: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, write_ledger: [bool](https://docs.python.org/3/library/functions.html#bool) = True, endorser_did: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None)

Publish a revocation registry definition to the ledger.

#### _abstract async_ send_revoc_reg_entry(revoc_reg_id: [str](https://docs.python.org/3/library/stdtypes.html#str), revoc_def_type: [str](https://docs.python.org/3/library/stdtypes.html#str), revoc_reg_entry: [dict](https://docs.python.org/3/library/stdtypes.html#dict), issuer_did: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, write_ledger: [bool](https://docs.python.org/3/library/functions.html#bool) = True, endorser_did: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None)

Publish a revocation registry entry to the ledger.

#### taa_digest(version: [str](https://docs.python.org/3/library/stdtypes.html#str), text: [str](https://docs.python.org/3/library/stdtypes.html#str))

Generate the digest of a TAA record.

#### _abstract async_ txn_endorse(request_json: [str](https://docs.python.org/3/library/stdtypes.html#str), endorse_did: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[DIDInfo](aries_cloudagent.wallet.md#aries_cloudagent.wallet.did_info.DIDInfo)] = None)

Endorse (sign) the provided transaction.

<!-- #### _abstract async_ txn_submit(request_json: str, sign: bool, taa_accept: ~typing.Optional[bool] = None, sign_did: ~aries_cloudagent.wallet.did_info.DIDInfo = <object object>, write_ledger: bool = True)
Write the provided (signed and possibly endorsed) transaction to the ledger. -->

#### _abstract async_ update_endpoint_for_did(did: [str](https://docs.python.org/3/library/stdtypes.html#str), endpoint: [str](https://docs.python.org/3/library/stdtypes.html#str), endpoint_type: EndpointType = EndpointType.ENDPOINT, write_ledger: [bool](https://docs.python.org/3/library/functions.html#bool) = True, endorser_did: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, routing_keys: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[List](https://docs.python.org/3/library/typing.html#typing.List)[[str](https://docs.python.org/3/library/stdtypes.html#str)]] = None)

Check and update the endpoint on the ledger.

- **Parameters**

  - **did** – The ledger DID

  - **endpoint** – The endpoint address

  - **endpoint_type** – The type of the endpoint (default ‘endpoint’)

### _class_ aries_cloudagent.ledger.base.Role(value)

Bases: [`Enum`](https://docs.python.org/3/library/enum.html#enum.Enum)

Enum for indy roles.

#### ENDORSER(_ = (101,_ )

#### NETWORK*MONITOR(* = (201,\_ )

#### ROLE*REMOVE(* = ('',\_ )

#### STEWARD(_ = (2,_ )

#### TRUSTEE(_ = (0,_ )

#### USER(_ = (None, ''_ )

#### _static_ get(token: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[Union](https://docs.python.org/3/library/typing.html#typing.Union)[[str](https://docs.python.org/3/library/stdtypes.html#str), [int](https://docs.python.org/3/library/functions.html#int)]] = None)

Return enum instance corresponding to input token.

- **Parameters**

  **token** – token identifying role to indy-sdk:
  “STEWARD”, “TRUSTEE”, “ENDORSER”, “” or None

#### to_indy_num_str()

Return (typically, numeric) string value that indy-sdk associates with role.

Recall that None signifies USER and “” signifies a role undergoing reset.

#### token()

Return token identifying role to indy-sdk.

## aries_cloudagent.ledger.endpoint_type module

Ledger utilities.

### _class_ aries_cloudagent.ledger.endpoint_type.EndpointType(value)

Bases: [`Enum`](https://docs.python.org/3/library/enum.html#enum.Enum)

Enum for endpoint/service types.

#### ENDPOINT(_ = EndpointTypeName(w3c='Endpoint', indy='endpoint'_ )

#### LINKED*DOMAINS(* = EndpointTypeName(w3c='LinkedDomains', indy='linked*domains'* )

#### PROFILE(_ = EndpointTypeName(w3c='Profile', indy='profile'_ )

#### _static_ get(name: [str](https://docs.python.org/3/library/stdtypes.html#str))

Return enum instance corresponding to input string.

#### _property_ indy()

internally-facing, on ledger and in wallet.

- **Type**

  Indy name of endpoint type

#### _property_ w3c()

externally-facing.

- **Type**

  W3C name of endpoint type

### _class_ aries_cloudagent.ledger.endpoint_type.EndpointTypeName(w3c, indy)

Bases: [`tuple`](https://docs.python.org/3/library/stdtypes.html#tuple)

#### _property_ indy()

Alias for field number 1

#### _property_ w3c()

Alias for field number 0

## aries_cloudagent.ledger.error module

Ledger related errors.

### _exception_ aries_cloudagent.ledger.error.BadLedgerRequestError(\*args, error_code: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, \*\*kwargs)

Bases: `LedgerError`

The current request cannot proceed.

### _exception_ aries_cloudagent.ledger.error.ClosedPoolError(\*args, error_code: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, \*\*kwargs)

Bases: `LedgerError`

Indy pool is closed.

### _exception_ aries_cloudagent.ledger.error.LedgerConfigError(\*args, error_code: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, \*\*kwargs)

Bases: `LedgerError`

Base class for ledger configuration errors.

### _exception_ aries_cloudagent.ledger.error.LedgerError(\*args, error_code: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, \*\*kwargs)

Bases: [`BaseError`](aries_cloudagent.core.md#aries_cloudagent.core.error.BaseError)

Base class for ledger errors.

### _exception_ aries_cloudagent.ledger.error.LedgerTransactionError(\*args, error_code: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, \*\*kwargs)

Bases: `LedgerError`

The ledger rejected the transaction.

## aries_cloudagent.ledger.indy module

Indy ledger implementation.

### _class_ aries_cloudagent.ledger.indy.IndySdkLedger(pool: IndySdkLedgerPool, profile: IndySdkProfile)

Bases: `BaseLedger`

Indy ledger class.

#### BACKEND*NAME(*: [str](https://docs.python.org/3/library/stdtypes.html#str_ _ = 'indy_ )

#### _async_ accept_txn_author_agreement(taa_record: [dict](https://docs.python.org/3/library/stdtypes.html#dict), mechanism: [str](https://docs.python.org/3/library/stdtypes.html#str), accept_time: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[int](https://docs.python.org/3/library/functions.html#int)] = None)

Save a new record recording the acceptance of the TAA.

#### _async_ build_and_return_get_nym_request(submitter_did: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)], target_did: [str](https://docs.python.org/3/library/stdtypes.html#str))

Build GET_NYM request and return request_json.

#### _async_ credential_definition_id2schema_id(credential_definition_id)

From a credential definition, get the identifier for its schema.

- **Parameters**

  **credential_definition_id** – The identifier of the credential definition
  from which to identify a schema

#### _async_ fetch_credential_definition(credential_definition_id: [str](https://docs.python.org/3/library/stdtypes.html#str))

Get a credential definition from the ledger by id.

- **Parameters**

  **credential_definition_id** – The cred def id of the cred def to fetch

#### _async_ fetch_schema_by_id(schema_id: [str](https://docs.python.org/3/library/stdtypes.html#str))

Get schema from ledger.

- **Parameters**

  **schema_id** – The schema id (or stringified sequence number) to retrieve

- **Returns**

  Indy schema dict

#### _async_ fetch_schema_by_seq_no(seq_no: [int](https://docs.python.org/3/library/functions.html#int))

Fetch a schema by its sequence number.

- **Parameters**

  **seq_no** – schema ledger sequence number

- **Returns**

  Indy schema dict

#### _async_ fetch_txn_author_agreement()

Fetch the current AML and TAA from the ledger.

#### _async_ get_all_endpoints_for_did(did: [str](https://docs.python.org/3/library/stdtypes.html#str))

Fetch all endpoints for a ledger DID.

- **Parameters**

  **did** – The DID to look up on the ledger or in the cache

#### _async_ get_credential_definition(credential_definition_id: [str](https://docs.python.org/3/library/stdtypes.html#str))

Get a credential definition from the cache if available, otherwise the ledger.

- **Parameters**

  **credential_definition_id** – The schema id of the schema to fetch cred def for

#### _async_ get_endpoint_for_did(did: [str](https://docs.python.org/3/library/stdtypes.html#str), endpoint_type: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[EndpointType] = None)

Fetch the endpoint for a ledger DID.

- **Parameters**

  - **did** – The DID to look up on the ledger or in the cache

  - **endpoint_type** – The type of the endpoint. If none given, returns all

#### _async_ get_indy_storage()

Get an IndySdkStorage instance for the current wallet.

#### _async_ get_key_for_did(did: [str](https://docs.python.org/3/library/stdtypes.html#str))

Fetch the verkey for a ledger DID.

- **Parameters**

  **did** – The DID to look up on the ledger or in the cache

#### _async_ get_latest_txn_author_acceptance()

Look up the latest TAA acceptance.

#### _async_ get_nym_role(did: [str](https://docs.python.org/3/library/stdtypes.html#str))

Return the role of the input public DID’s NYM on the ledger.

- **Parameters**

  **did** – DID to query for role on the ledger.

#### _async_ get_revoc_reg_def(revoc_reg_id: [str](https://docs.python.org/3/library/stdtypes.html#str))

Get revocation registry definition by ID; augment with ledger timestamp.

#### _async_ get_revoc_reg_delta(revoc_reg_id: [str](https://docs.python.org/3/library/stdtypes.html#str), fro=0, to=None)

Look up a revocation registry delta by ID.

:param revoc_reg_id revocation registry id
:param fro earliest EPOCH time of interest
:param to latest EPOCH time of interest

:returns delta response, delta timestamp

#### _async_ get_revoc_reg_entry(revoc_reg_id: [str](https://docs.python.org/3/library/stdtypes.html#str), timestamp: [int](https://docs.python.org/3/library/functions.html#int))

Get revocation registry entry by revocation registry ID and timestamp.

#### _async_ get_schema(schema_id: [str](https://docs.python.org/3/library/stdtypes.html#str))

Get a schema from the cache if available, otherwise fetch from the ledger.

- **Parameters**

  **schema_id** – The schema id (or stringified sequence number) to retrieve

#### _async_ get_txn_author_agreement(reload: [bool](https://docs.python.org/3/library/functions.html#bool) = False)

Get the current transaction author agreement, fetching it if necessary.

#### _async_ get_wallet_public_did()

Fetch the public DID from the wallet.

#### _async_ is_ledger_read_only()

Check if ledger is read-only including TAA.

#### nym_to_did(nym: [str](https://docs.python.org/3/library/stdtypes.html#str))

Format a nym with the ledger’s DID prefix.

#### _property_ pool_handle()

Accessor for the ledger pool handle.

#### _property_ pool*name(*: [str](https://docs.python.org/3/library/stdtypes.html#str_)

Accessor for the ledger pool name.

#### _property_ read*only(*: [bool](https://docs.python.org/3/library/functions.html#bool_)

Accessor for the ledger read-only flag.

#### _async_ register_nym(did: [str](https://docs.python.org/3/library/stdtypes.html#str), verkey: [str](https://docs.python.org/3/library/stdtypes.html#str), alias: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, role: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, write_ledger: [bool](https://docs.python.org/3/library/functions.html#bool) = True, endorser_did: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None)

Register a nym on the ledger.

- **Parameters**

  - **did** – DID to register on the ledger.

  - **verkey** – The verification key of the keypair.

  - **alias** – Human-friendly alias to assign to the DID.

  - **role** – For permissioned ledgers, what role should the new DID have.

#### _async_ rotate_public_did_keypair(next_seed: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None)

Rotate keypair for public DID: create new key, submit to ledger, update wallet.

- **Parameters**

  **next_seed** – seed for incoming ed25519 keypair (default random)

#### _async_ send_revoc_reg_def(revoc_reg_def: [dict](https://docs.python.org/3/library/stdtypes.html#dict), issuer_did: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, write_ledger: [bool](https://docs.python.org/3/library/functions.html#bool) = True, endorser_did: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None)

Publish a revocation registry definition to the ledger.

#### _async_ send_revoc_reg_entry(revoc_reg_id: [str](https://docs.python.org/3/library/stdtypes.html#str), revoc_def_type: [str](https://docs.python.org/3/library/stdtypes.html#str), revoc_reg_entry: [dict](https://docs.python.org/3/library/stdtypes.html#dict), issuer_did: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, write_ledger: [bool](https://docs.python.org/3/library/functions.html#bool) = True, endorser_did: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None)

Publish a revocation registry entry to the ledger.

#### _async_ submit_get_nym_request(request_json: [str](https://docs.python.org/3/library/stdtypes.html#str))

Submit GET_NYM request to ledger and return response_json.

#### taa_rough_timestamp()

Get a timestamp accurate to the day.

Anything more accurate is a privacy concern.

#### _async_ txn_endorse(request_json: [str](https://docs.python.org/3/library/stdtypes.html#str), endorse_did: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[DIDInfo](aries_cloudagent.wallet.md#aries_cloudagent.wallet.did_info.DIDInfo)] = None)

Endorse a (signed) ledger transaction.

<!-- #### _async_ txn_submit(request_json: str, sign: ~typing.Optional[bool] = None, taa_accept: ~typing.Optional[bool] = None, sign_did: ~aries_cloudagent.wallet.did_info.DIDInfo = <object object>, write_ledger: bool = True)
Submit a signed (and endorsed) transaction to the ledger. -->

#### _async_ update_endpoint_for_did(did: [str](https://docs.python.org/3/library/stdtypes.html#str), endpoint: [str](https://docs.python.org/3/library/stdtypes.html#str), endpoint_type: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[EndpointType] = None, write_ledger: [bool](https://docs.python.org/3/library/functions.html#bool) = True, endorser_did: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, routing_keys: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[List](https://docs.python.org/3/library/typing.html#typing.List)[[str](https://docs.python.org/3/library/stdtypes.html#str)]] = None)

Check and update the endpoint on the ledger.

- **Parameters**

  - **did** – The ledger DID

  - **endpoint** – The endpoint address

  - **endpoint_type** – The type of the endpoint

### _class_ aries_cloudagent.ledger.indy.IndySdkLedgerPool(name: [str](https://docs.python.org/3/library/stdtypes.html#str), \*, checked: [bool](https://docs.python.org/3/library/functions.html#bool) = False, keepalive: [int](https://docs.python.org/3/library/functions.html#int) = 0, cache: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[BaseCache](aries_cloudagent.cache.md#aries_cloudagent.cache.base.BaseCache)] = None, cache_duration: [int](https://docs.python.org/3/library/functions.html#int) = 600, genesis_transactions: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, read_only: [bool](https://docs.python.org/3/library/functions.html#bool) = False, socks_proxy: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None)

Bases: [`object`](https://docs.python.org/3/library/functions.html#object)

Indy ledger manager class.

#### _async_ check_pool_config()

Check if a pool config has been created.

#### _async_ close()

Close the pool ledger.

#### _async_ context_close()

Release the reference and schedule closing of the pool ledger.

#### _async_ context_open()

Open the ledger if necessary and increase the number of active references.

#### _async_ create_pool_config(genesis_transactions: [str](https://docs.python.org/3/library/stdtypes.html#str), recreate: [bool](https://docs.python.org/3/library/functions.html#bool) = False)

Create the pool ledger configuration.

#### _property_ genesis*txns(*: [str](https://docs.python.org/3/library/stdtypes.html#str_)

Get the configured genesis transactions.

#### _async_ open()

Open the pool ledger, creating it if necessary.

### _class_ aries_cloudagent.ledger.indy.IndySdkLedgerPoolProvider()

Bases: [`BaseProvider`](aries_cloudagent.config.md#aries_cloudagent.config.base.BaseProvider)

Indy ledger pool provider which keys off the selected pool name.

#### provide(settings: [BaseSettings](aries_cloudagent.config.md#aries_cloudagent.config.base.BaseSettings), injector: [BaseInjector](aries_cloudagent.config.md#aries_cloudagent.config.base.BaseInjector))

Create and open the pool instance.

## aries_cloudagent.ledger.indy_vdr module

Indy-VDR ledger implementation.

### _class_ aries_cloudagent.ledger.indy_vdr.IndyVdrLedger(pool: IndyVdrLedgerPool, profile: [Profile](aries_cloudagent.core.md#aries_cloudagent.core.profile.Profile))

Bases: `BaseLedger`

Indy-VDR ledger class.

#### BACKEND*NAME(*: [str](https://docs.python.org/3/library/stdtypes.html#str_ _ = 'indy-vdr_ )

#### _async_ accept_txn_author_agreement(taa_record: [dict](https://docs.python.org/3/library/stdtypes.html#dict), mechanism: [str](https://docs.python.org/3/library/stdtypes.html#str), accept_time: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[int](https://docs.python.org/3/library/functions.html#int)] = None)

Save a new record recording the acceptance of the TAA.

#### _async_ build_and_return_get_nym_request(submitter_did: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)], target_did: [str](https://docs.python.org/3/library/stdtypes.html#str))

Build GET_NYM request and return request_json.

#### _async_ credential_definition_id2schema_id(credential_definition_id)

From a credential definition, get the identifier for its schema.

- **Parameters**

  **credential_definition_id** – The identifier of the credential definition
  from which to identify a schema

#### _async_ fetch_credential_definition(credential_definition_id: [str](https://docs.python.org/3/library/stdtypes.html#str))

Get a credential definition from the ledger by id.

- **Parameters**

  **credential_definition_id** – The cred def id of the cred def to fetch

#### _async_ fetch_schema_by_id(schema_id: [str](https://docs.python.org/3/library/stdtypes.html#str))

Get schema from ledger.

- **Parameters**

  **schema_id** – The schema id (or stringified sequence number) to retrieve

- **Returns**

  Indy schema dict

#### _async_ fetch_schema_by_seq_no(seq_no: [int](https://docs.python.org/3/library/functions.html#int))

Fetch a schema by its sequence number.

- **Parameters**

  **seq_no** – schema ledger sequence number

- **Returns**

  Indy schema dict

#### _async_ fetch_txn_author_agreement()

Fetch the current AML and TAA from the ledger.

#### _async_ get_all_endpoints_for_did(did: [str](https://docs.python.org/3/library/stdtypes.html#str))

Fetch all endpoints for a ledger DID.

- **Parameters**

  **did** – The DID to look up on the ledger or in the cache

#### _async_ get_credential_definition(credential_definition_id: [str](https://docs.python.org/3/library/stdtypes.html#str))

Get a credential definition from the cache if available, otherwise the ledger.

- **Parameters**

  **credential_definition_id** – The schema id of the schema to fetch cred def for

#### _async_ get_endpoint_for_did(did: [str](https://docs.python.org/3/library/stdtypes.html#str), endpoint_type: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[EndpointType] = None)

Fetch the endpoint for a ledger DID.

- **Parameters**

  - **did** – The DID to look up on the ledger or in the cache

  - **endpoint_type** – The type of the endpoint. If none given, returns all

#### _async_ get_key_for_did(did: [str](https://docs.python.org/3/library/stdtypes.html#str))

Fetch the verkey for a ledger DID.

- **Parameters**

  **did** – The DID to look up on the ledger or in the cache

#### _async_ get_latest_txn_author_acceptance()

Look up the latest TAA acceptance.

#### _async_ get_nym_role(did: [str](https://docs.python.org/3/library/stdtypes.html#str))

Return the role of the input public DID’s NYM on the ledger.

- **Parameters**

  **did** – DID to query for role on the ledger.

#### _async_ get_revoc_reg_def(revoc_reg_id: [str](https://docs.python.org/3/library/stdtypes.html#str))

Get revocation registry definition by ID.

#### _async_ get_revoc_reg_delta(revoc_reg_id: [str](https://docs.python.org/3/library/stdtypes.html#str), timestamp_from=0, timestamp_to=None)

Look up a revocation registry delta by ID.

:param revoc_reg_id revocation registry id
:param timestamp_from from time. a total number of seconds from Unix Epoch
:param timestamp_to to time. a total number of seconds from Unix Epoch

:returns delta response, delta timestamp

#### _async_ get_revoc_reg_entry(revoc_reg_id: [str](https://docs.python.org/3/library/stdtypes.html#str), timestamp: [int](https://docs.python.org/3/library/functions.html#int))

Get revocation registry entry by revocation registry ID and timestamp.

#### _async_ get_schema(schema_id: [str](https://docs.python.org/3/library/stdtypes.html#str))

Get a schema from the cache if available, otherwise fetch from the ledger.

- **Parameters**

  **schema_id** – The schema id (or stringified sequence number) to retrieve

#### _async_ get_txn_author_agreement(reload: [bool](https://docs.python.org/3/library/functions.html#bool) = False)

Get the current transaction author agreement, fetching it if necessary.

#### _async_ get_wallet_public_did()

Fetch the public DID from the wallet.

#### _async_ is_ledger_read_only()

Check if ledger is read-only including TAA.

#### nym_to_did(nym: [str](https://docs.python.org/3/library/stdtypes.html#str))

Format a nym with the ledger’s DID prefix.

#### _property_ pool_handle()

Accessor for the ledger pool handle.

#### _property_ pool*name(*: [str](https://docs.python.org/3/library/stdtypes.html#str_)

Accessor for the ledger pool name.

#### _property_ read*only(*: [bool](https://docs.python.org/3/library/functions.html#bool_)

Accessor for the ledger read-only flag.

#### _async_ register_nym(did: [str](https://docs.python.org/3/library/stdtypes.html#str), verkey: [str](https://docs.python.org/3/library/stdtypes.html#str), alias: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, role: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, write_ledger: [bool](https://docs.python.org/3/library/functions.html#bool) = True, endorser_did: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None)

Register a nym on the ledger.

- **Parameters**

  - **did** – DID to register on the ledger.

  - **verkey** – The verification key of the keypair.

  - **alias** – Human-friendly alias to assign to the DID.

  - **role** – For permissioned ledgers, what role should the new DID have.

#### _async_ rotate_public_did_keypair(next_seed: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None)

Rotate keypair for public DID: create new key, submit to ledger, update wallet.

- **Parameters**

  **next_seed** – seed for incoming ed25519 keypair (default random)

#### _async_ send_revoc_reg_def(revoc_reg_def: [dict](https://docs.python.org/3/library/stdtypes.html#dict), issuer_did: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, write_ledger: [bool](https://docs.python.org/3/library/functions.html#bool) = True, endorser_did: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None)

Publish a revocation registry definition to the ledger.

#### _async_ send_revoc_reg_entry(revoc_reg_id: [str](https://docs.python.org/3/library/stdtypes.html#str), revoc_def_type: [str](https://docs.python.org/3/library/stdtypes.html#str), revoc_reg_entry: [dict](https://docs.python.org/3/library/stdtypes.html#dict), issuer_did: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, write_ledger: [bool](https://docs.python.org/3/library/functions.html#bool) = True, endorser_did: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None)

Publish a revocation registry entry to the ledger.

#### _async_ submit_get_nym_request(request_json: [str](https://docs.python.org/3/library/stdtypes.html#str))

Submit GET_NYM request to ledger and return response_json.

#### taa_rough_timestamp()

Get a timestamp accurate to the day.

Anything more accurate is a privacy concern.

#### _async_ txn_endorse(request_json: [str](https://docs.python.org/3/library/stdtypes.html#str), endorse_did: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[DIDInfo](aries_cloudagent.wallet.md#aries_cloudagent.wallet.did_info.DIDInfo)] = None)

Endorse (sign) the provided transaction.

<!-- #### _async_ txn_submit(request_json: str, sign: bool, taa_accept: ~typing.Optional[bool] = None, sign_did: ~aries_cloudagent.wallet.did_info.DIDInfo = <object object>, write_ledger: bool = True)
Write the provided (signed and possibly endorsed) transaction to the ledger. -->

#### _async_ update_endpoint_for_did(did: [str](https://docs.python.org/3/library/stdtypes.html#str), endpoint: [str](https://docs.python.org/3/library/stdtypes.html#str), endpoint_type: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[EndpointType] = None, write_ledger: [bool](https://docs.python.org/3/library/functions.html#bool) = True, endorser_did: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, routing_keys: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[List](https://docs.python.org/3/library/typing.html#typing.List)[[str](https://docs.python.org/3/library/stdtypes.html#str)]] = None)

Check and update the endpoint on the ledger.

- **Parameters**

  - **did** – The ledger DID

  - **endpoint** – The endpoint address

  - **endpoint_type** – The type of the endpoint

### _class_ aries_cloudagent.ledger.indy_vdr.IndyVdrLedgerPool(name: [str](https://docs.python.org/3/library/stdtypes.html#str), \*, keepalive: [int](https://docs.python.org/3/library/functions.html#int) = 0, cache: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[BaseCache](aries_cloudagent.cache.md#aries_cloudagent.cache.base.BaseCache)] = None, cache_duration: [int](https://docs.python.org/3/library/functions.html#int) = 600, genesis_transactions: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, read_only: [bool](https://docs.python.org/3/library/functions.html#bool) = False, socks_proxy: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None)

Bases: [`object`](https://docs.python.org/3/library/functions.html#object)

Indy-VDR ledger pool manager.

#### _property_ cfg*path(*: [Path](https://docs.python.org/3/library/pathlib.html#pathlib.Path_)

Get the path to the configuration file, ensuring it’s created.

#### _async_ close()

Close the pool ledger.

#### _async_ context_close()

Release the reference and schedule closing of the pool ledger.

#### _async_ context_open()

Open the ledger if necessary and increase the number of active references.

#### _async_ create_pool_config(genesis_transactions: [str](https://docs.python.org/3/library/stdtypes.html#str), recreate: [bool](https://docs.python.org/3/library/functions.html#bool) = False)

Create the pool ledger configuration.

#### _property_ genesis*hash(*: [str](https://docs.python.org/3/library/stdtypes.html#str_)

Get the hash of the configured genesis transactions.

#### _property_ genesis*txns(*: [str](https://docs.python.org/3/library/stdtypes.html#str_)

Get the configured genesis transactions.

#### _async_ open()

Open the pool ledger, creating it if necessary.

## aries_cloudagent.ledger.routes module

## aries_cloudagent.ledger.util module

Ledger utilities.

### _async_ aries_cloudagent.ledger.util.notify_register_did_event(profile: [Profile](aries_cloudagent.core.md#aries_cloudagent.core.profile.Profile), did: [str](https://docs.python.org/3/library/stdtypes.html#str), meta_data: [dict](https://docs.python.org/3/library/stdtypes.html#dict))

Send notification for a DID post-process event.
