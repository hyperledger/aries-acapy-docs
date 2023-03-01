# aries_cloudagent.ledger.merkel_validation package

## Submodules

## aries_cloudagent.ledger.merkel_validation.constants module

Constants for State Proof and LeafHash Inclusion Verification.

## aries_cloudagent.ledger.merkel_validation.domain_txn_handler module

Utilities for Processing Replies to Domain Read Requests.

### aries_cloudagent.ledger.merkel_validation.domain_txn_handler.decode_state_value(encoded_value)

Return val, lsn, lut from encoded state value.

### aries_cloudagent.ledger.merkel_validation.domain_txn_handler.encode_state_value(value, seqNo, txnTime)

Return encoded state value.

### aries_cloudagent.ledger.merkel_validation.domain_txn_handler.extract_params_write_request(data)

Return tree_size, leaf_index, audit_path, expected_root_hash from reply.

### aries_cloudagent.ledger.merkel_validation.domain_txn_handler.get_proof_nodes(reply)

Return proof_nodes from reply.

### aries_cloudagent.ledger.merkel_validation.domain_txn_handler.hash_of(text)

Return 256 bit hexadecimal digest of text.

### aries_cloudagent.ledger.merkel_validation.domain_txn_handler.make_state_path_for_attr(did, attr_name, attr_is_hash=False)

Return state_path for ATTR.

### aries_cloudagent.ledger.merkel_validation.domain_txn_handler.make_state_path_for_claim_def(authors_did, schema_seq_no, signature_type, tag)

Return state_path for CLAIM DEF.

### aries_cloudagent.ledger.merkel_validation.domain_txn_handler.make_state_path_for_nym(did)

Return state_path for NYM.

### aries_cloudagent.ledger.merkel_validation.domain_txn_handler.make_state_path_for_revoc_def(authors_did, cred_def_id, revoc_def_type, revoc_def_tag)

Return state_path for REVOC_DEF.

### aries_cloudagent.ledger.merkel_validation.domain_txn_handler.make_state_path_for_revoc_reg_entry(revoc_reg_def_id)

Return state_path for REVOC_REG_ENTRY.

### aries_cloudagent.ledger.merkel_validation.domain_txn_handler.make_state_path_for_revoc_reg_entry_accum(revoc_reg_def_id)

Return state_path for REVOC_REG_ENTRY_ACCUM.

### aries_cloudagent.ledger.merkel_validation.domain_txn_handler.make_state_path_for_schema(authors_did, schema_name, schema_version)

Return state_path for SCHEMA.

### aries_cloudagent.ledger.merkel_validation.domain_txn_handler.parse_attr_txn(txn_data)

Process txn_data and parse attr_txn based on attr_type.

### aries_cloudagent.ledger.merkel_validation.domain_txn_handler.prepare_attr_for_state(txn, path_only=False)

Return key, value pair for state from ATTR.

### aries_cloudagent.ledger.merkel_validation.domain_txn_handler.prepare_claim_def_for_state(txn, path_only=False)

Return key-value pair for state from CLAIM_DEF.

### aries_cloudagent.ledger.merkel_validation.domain_txn_handler.prepare_for_state_read(reply)

Return state value from read requests reply.

### aries_cloudagent.ledger.merkel_validation.domain_txn_handler.prepare_for_state_write(reply)

Return state key, value pair from write requests reply.

### aries_cloudagent.ledger.merkel_validation.domain_txn_handler.prepare_get_attr_for_state(reply)

Return value for state from GET_ATTR.

### aries_cloudagent.ledger.merkel_validation.domain_txn_handler.prepare_get_claim_def_for_state(reply)

Return value for state from GET_CLAIM_DEF.

### aries_cloudagent.ledger.merkel_validation.domain_txn_handler.prepare_get_nym_for_state(reply)

Return value for state from GET_NYM.

### aries_cloudagent.ledger.merkel_validation.domain_txn_handler.prepare_get_revoc_def_for_state(reply)

Return value for state from GET_REVOC_DEF.

### aries_cloudagent.ledger.merkel_validation.domain_txn_handler.prepare_get_revoc_reg_delta_for_state(reply)

Return value for state from GET_REVOC_REG_DELTA.

### aries_cloudagent.ledger.merkel_validation.domain_txn_handler.prepare_get_revoc_reg_entry_accum_for_state(reply)

Return value for state from GET_REVOC_REG_ENTRY_ACCUM.

### aries_cloudagent.ledger.merkel_validation.domain_txn_handler.prepare_get_revoc_reg_entry_for_state(reply)

Return value for state from GET_REVOC_REG_ENTRY.

### aries_cloudagent.ledger.merkel_validation.domain_txn_handler.prepare_get_schema_for_state(reply)

Return value for state from GET_SCHEMA.

### aries_cloudagent.ledger.merkel_validation.domain_txn_handler.prepare_nym_for_state(txn)

Return encoded state path from NYM.

### aries_cloudagent.ledger.merkel_validation.domain_txn_handler.prepare_revoc_def_for_state(txn, path_only=False)

Return key-value pair for state from REVOC_DEF.

### aries_cloudagent.ledger.merkel_validation.domain_txn_handler.prepare_revoc_reg_entry_accum_for_state(txn)

Return key-value pair for state from REVOC_REG_ENTRY_ACCUM.

### aries_cloudagent.ledger.merkel_validation.domain_txn_handler.prepare_revoc_reg_entry_for_state(txn, path_only=False)

Return key-value pair for state from REVOC_REG_ENTRY.

### aries_cloudagent.ledger.merkel_validation.domain_txn_handler.prepare_schema_for_state(txn, path_only=False)

Return key-value pair for state from SCHEMA.

## aries_cloudagent.ledger.merkel_validation.hasher module

Merkle tree hasher for leaf and children nodes.

<!-- ### _class_ aries_cloudagent.ledger.merkel_validation.hasher.HexTreeHasher(hashfunc=<built-in function openssl_sha256>)
Bases: `TreeHasher`

Merkle tree hasher for hex data. -->

#### hash_children(left, right)

Return parent node hash corresponding to 2 child nodes.

#### hash_leaf(data)

Return leaf node hash.

<!-- ### _class_ aries_cloudagent.ledger.merkel_validation.hasher.TreeHasher(hashfunc=<built-in function openssl_sha256>)
Bases: [`object`](https://docs.python.org/3/library/functions.html#object)

Merkle tree hasher for bytes data. -->

#### hash_children(left, right)

Return parent node hash corresponding to 2 child nodes.

#### hash_leaf(data)

Return leaf node hash.

## aries_cloudagent.ledger.merkel_validation.merkel_verifier module

Verify Leaf Inclusion.

### _class_ aries_cloudagent.ledger.merkel_validation.merkel_verifier.MerkleVerifier(hasher=<aries_cloudagent.ledger.merkel_validation.hasher.TreeHasher object>)

Bases: [`object`](https://docs.python.org/3/library/functions.html#object)

Utility class for verifying leaf inclusion.

#### _async_ calculate_root_hash(leaf, leaf_index, audit_path, tree_size)

Calculate root hash, used to verify Merkel AuditPath.

Reference: section 2.1.1 of RFC6962.

- **Parameters**

  - **leaf** – Leaf data.

  - **leaf_index** – Index of the leaf in the tree.

  - **audit_path** – A list of SHA-256 hashes representing the Merkle audit

  - **path.** –

  - **tree_size** – tree size

#### lsb(x)

Return Least Significant Bits.

## aries_cloudagent.ledger.merkel_validation.trie module

Validates State Proof.

### _class_ aries_cloudagent.ledger.merkel_validation.trie.SubTrie(root_hash=None)

Bases: [`object`](https://docs.python.org/3/library/functions.html#object)

Utility class for SubTrie and State Proof validation.

#### _async static_ get_new_trie_with_proof_nodes(proof_nodes)

Return SubTrie created from proof_nodes.

#### _property_ root_hash()

Return 32 bytes string.

#### set_root_hash(root_hash=None)

.

#### _async static_ verify_spv_proof(expected_value, proof_nodes, serialized=True)

Verify State Proof.

## aries_cloudagent.ledger.merkel_validation.utils module

Merkel Validation Utils.

### aries_cloudagent.ledger.merkel_validation.utils.ascii_chr(value)

Return bytes object.

### aries_cloudagent.ledger.merkel_validation.utils.audit_path_length(index: [int](https://docs.python.org/3/library/functions.html#int), tree_size: [int](https://docs.python.org/3/library/functions.html#int))

Return AuditPath length.

- **Parameters**

  - **index** – Leaf index

  - **tree_size** – Tree size

### aries_cloudagent.ledger.merkel_validation.utils.bin_to_nibbles(s)

Convert string s to nibbles (half-bytes).

### aries_cloudagent.ledger.merkel_validation.utils.encode_hex(b)

Return bytes object for string or hexadecimal rep for bytes input.

- **Parameters**

  **b** – string or bytes

### aries_cloudagent.ledger.merkel_validation.utils.sha3_256(x)

Return 256 bit digest.

### aries_cloudagent.ledger.merkel_validation.utils.unpack_to_nibbles(bindata)

Unpack packed binary data to nibbles.

- **Parameters**

  **bindata** – binary packed from nibbles
