# aries_cloudagent.revocation.models package

## Submodules

## aries_cloudagent.revocation.models.indy module

## aries_cloudagent.revocation.models.issuer_cred_rev_record module

## aries_cloudagent.revocation.models.issuer_rev_reg_record module

## aries_cloudagent.revocation.models.revocation_registry module

Classes for managing a revocation registry.


### _class_ aries_cloudagent.revocation.models.revocation_registry.RevocationRegistry(registry_id: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, \*, cred_def_id: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, issuer_did: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, max_creds: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[int](https://docs.python.org/3/library/functions.html#int)] = None, reg_def_type: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, tag: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, tails_local_path: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, tails_public_uri: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, tails_hash: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, reg_def: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[dict](https://docs.python.org/3/library/stdtypes.html#dict)] = None)
Bases: [`object`](https://docs.python.org/3/library/functions.html#object)

Manage a revocation registry and tails file.


#### MAX_SIZE(_ = 3276_ )

#### MIN_SIZE(_ = _ )

#### _property_ cred_def_id(_: [str](https://docs.python.org/3/library/stdtypes.html#str_ )
Accessor for the credential definition ID.


#### _classmethod_ from_definition(revoc_reg_def: [dict](https://docs.python.org/3/library/stdtypes.html#dict), public_def: [bool](https://docs.python.org/3/library/functions.html#bool))
Initialize a revocation registry instance from a definition.


#### _async_ get_or_fetch_local_tails_path()
Get the local tails path, retrieving from the remote if necessary.


#### get_receiving_tails_local_path()
Make the local path to the tails file we download from remote URI.


#### has_local_tails_file()
Test if the tails file exists locally.


#### _property_ issuer_did(_: [str](https://docs.python.org/3/library/stdtypes.html#str_ )
Accessor for the issuer DID.


#### _property_ max_creds(_: [int](https://docs.python.org/3/library/functions.html#int_ )
Accessor for the maximum number of issued credentials.


#### _property_ reg_def(_: [dict](https://docs.python.org/3/library/stdtypes.html#dict_ )
Accessor for the revocation registry definition.


#### _property_ reg_def_type(_: [str](https://docs.python.org/3/library/stdtypes.html#str_ )
Accessor for the revocation registry type.


#### _property_ registry_id(_: [str](https://docs.python.org/3/library/stdtypes.html#str_ )
Accessor for the revocation registry ID.


#### _async_ retrieve_tails()
Fetch the tails file from the public URI.


#### _property_ tag(_: [str](https://docs.python.org/3/library/stdtypes.html#str_ )
Accessor for the tag part of the revoc. reg. ID.


#### _property_ tails_hash(_: [str](https://docs.python.org/3/library/stdtypes.html#str_ )
Accessor for the tails file hash.


#### _property_ tails_local_path(_: [str](https://docs.python.org/3/library/stdtypes.html#str_ )
Accessor for the tails file local path.


#### _property_ tails_public_uri(_: [str](https://docs.python.org/3/library/stdtypes.html#str_ )
Accessor for the tails file public URI.
