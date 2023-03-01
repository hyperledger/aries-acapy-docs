# aries_cloudagent.connections.models.diddoc package

DID Document model support.

Copyright 2017-2019 Government of Canada
Public Services and Procurement Canada - buyandsell.gc.ca

Licensed under the Apache License, Version 2.0 (the “License”);
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

[http://www.apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0)

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an “AS IS” BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.


### _class_ aries_cloudagent.connections.models.diddoc.DIDDoc(did: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None)
Bases: [`object`](https://docs.python.org/3/library/functions.html#object)

DID document, grouping a DID with verification keys and services.

Retains DIDs as raw values (orientated toward indy-facing operations),
everything else as URIs (oriented toward W3C-facing operations).


#### CONTEXT(_ = 'https://w3id.org/did/v1_ )

#### add_service_pubkeys(service: [dict](https://docs.python.org/3/library/stdtypes.html#dict), tags: [Union](https://docs.python.org/3/library/typing.html#typing.Union)[[Sequence](https://docs.python.org/3/library/typing.html#typing.Sequence)[[str](https://docs.python.org/3/library/stdtypes.html#str)], [str](https://docs.python.org/3/library/stdtypes.html#str)])
Add public keys specified in service. Return public keys so discovered.


* **Parameters**

    
    * **service** – service from DID document


    * **tags** – potential tags marking public keys of type of interest
    (the standard is still coalescing)



* **Raises**

    [**ValueError**](https://docs.python.org/3/library/exceptions.html#ValueError) – for public key reference not present in DID document.


Returns: list of public keys from the document service specification


#### _property_ authnkey(_: [dict](https://docs.python.org/3/library/stdtypes.html#dict_ )
Accessor for public keys marked as authentication keys, by identifier.


#### _classmethod_ deserialize(did_doc: [dict](https://docs.python.org/3/library/stdtypes.html#dict))
Construct DIDDoc object from dict representation.


* **Parameters**

    **did_doc** – DIDDoc dict representation



* **Raises**

    [**ValueError**](https://docs.python.org/3/library/exceptions.html#ValueError) – for bad DID or missing mandatory item.


Returns: DIDDoc from input json


#### _property_ did(_: [str](https://docs.python.org/3/library/stdtypes.html#str_ )
Accessor for DID.


#### _classmethod_ from_json(did_doc_json: [str](https://docs.python.org/3/library/stdtypes.html#str))
Construct DIDDoc object from json representation.


* **Parameters**

    **did_doc_json** – DIDDoc json representation


Returns: DIDDoc from input json


#### _property_ pubkey(_: [dict](https://docs.python.org/3/library/stdtypes.html#dict_ )
Accessor for public keys by identifier.


#### serialize()
Dump current object to a JSON-compatible dictionary.


* **Returns**

    dict representation of current DIDDoc



#### _property_ service(_: [dict](https://docs.python.org/3/library/stdtypes.html#dict_ )
Accessor for services by identifier.


#### set(item: [Union](https://docs.python.org/3/library/typing.html#typing.Union)[Service, PublicKey])
Add or replace service or public key; return current DIDDoc.


* **Raises**

    [**ValueError**](https://docs.python.org/3/library/exceptions.html#ValueError) – if input item is neither service nor public key.



* **Parameters**

    **item** – service or public key to set


Returns: the current DIDDoc


#### to_json()
Dump current object as json (JSON-LD).


* **Returns**

    json representation of current DIDDoc



### _class_ aries_cloudagent.connections.models.diddoc.LinkedDataKeySpec(ver_type, authn_type, specifier)
Bases: [`tuple`](https://docs.python.org/3/library/stdtypes.html#tuple)


#### _property_ authn_type()
Alias for field number 1


#### _property_ specifier()
Alias for field number 2


#### _property_ ver_type()
Alias for field number 0


### _class_ aries_cloudagent.connections.models.diddoc.PublicKey(did: [str](https://docs.python.org/3/library/stdtypes.html#str), ident: [str](https://docs.python.org/3/library/stdtypes.html#str), value: [str](https://docs.python.org/3/library/stdtypes.html#str), pk_type: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[PublicKeyType] = None, controller: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, authn: [bool](https://docs.python.org/3/library/functions.html#bool) = False)
Bases: [`object`](https://docs.python.org/3/library/functions.html#object)

Public key specification to embed in DID document.

Retains DIDs as raw values (orientated toward indy-facing operations),
everything else as URIs (oriented toward W3C-facing operations).


#### _property_ authn(_: [bool](https://docs.python.org/3/library/functions.html#bool_ )
Accessor for the authentication marker.

Returns: whether public key is marked as having DID authentication privilege


#### _property_ controller(_: [str](https://docs.python.org/3/library/stdtypes.html#str_ )
Accessor for the controller DID.


#### _property_ did(_: [str](https://docs.python.org/3/library/stdtypes.html#str_ )
Accessor for the DID.


#### _property_ id(_: [str](https://docs.python.org/3/library/stdtypes.html#str_ )
Accessor for the public key identifier.


#### to_dict()
Return dict representation of public key to embed in DID document.


#### _property_ type(_: PublicKeyTyp_ )
Accessor for the public key type.


#### _property_ value(_: [str](https://docs.python.org/3/library/stdtypes.html#str_ )
Accessor for the public key value.


### _class_ aries_cloudagent.connections.models.diddoc.PublicKeyType(value)
Bases: [`Enum`](https://docs.python.org/3/library/enum.html#enum.Enum)

Class encapsulating public key types.


#### ED25519_SIG_2018(_ = LinkedDataKeySpec(ver_type='Ed25519VerificationKey2018', authn_type='Ed25519SignatureAuthentication2018', specifier='publicKeyBase58'_ )

#### EDDSA_SA_SIG_SECP256K1(_ = LinkedDataKeySpec(ver_type='Secp256k1VerificationKey2018', authn_type='Secp256k1SignatureAuthenticationKey2018', specifier='publicKeyHex'_ )

#### RSA_SIG_2018(_ = LinkedDataKeySpec(ver_type='RsaVerificationKey2018', authn_type='RsaSignatureAuthentication2018', specifier='publicKeyPem'_ )

#### _property_ authn_type(_: [str](https://docs.python.org/3/library/stdtypes.html#str_ )
Accessor for the authentication type identifier.


#### _static_ get(val: [str](https://docs.python.org/3/library/stdtypes.html#str))
Find enum instance corresponding to input value (RsaVerificationKey2018 etc).


* **Parameters**

    **val** – input value marking public key type


Returns: the public key type


#### specification(val: [str](https://docs.python.org/3/library/stdtypes.html#str))
Return specifier and input value for use in public key specification.


* **Parameters**

    **val** – value of public key


Returns: dict mapping applicable specifier to input value


#### _property_ specifier(_: [str](https://docs.python.org/3/library/stdtypes.html#str_ )
Accessor for the value specifier.


#### _property_ ver_type(_: [str](https://docs.python.org/3/library/stdtypes.html#str_ )
Accessor for the verification type identifier.


### _class_ aries_cloudagent.connections.models.diddoc.Service(did: [str](https://docs.python.org/3/library/stdtypes.html#str), ident: [str](https://docs.python.org/3/library/stdtypes.html#str), typ: [str](https://docs.python.org/3/library/stdtypes.html#str), recip_keys: [Union](https://docs.python.org/3/library/typing.html#typing.Union)[[Sequence](https://docs.python.org/3/library/typing.html#typing.Sequence), PublicKey], routing_keys: [Union](https://docs.python.org/3/library/typing.html#typing.Union)[[Sequence](https://docs.python.org/3/library/typing.html#typing.Sequence), PublicKey], endpoint: [str](https://docs.python.org/3/library/stdtypes.html#str), priority: [int](https://docs.python.org/3/library/functions.html#int) = 0)
Bases: [`object`](https://docs.python.org/3/library/functions.html#object)

Service specification to embed in DID document.

Retains DIDs as raw values (orientated toward indy-facing operations),
everything else as URIs (oriented toward W3C-facing operations).


#### _property_ did(_: [str](https://docs.python.org/3/library/stdtypes.html#str_ )
Accessor for the DID value.


#### _property_ endpoint(_: [str](https://docs.python.org/3/library/stdtypes.html#str_ )
Accessor for the endpoint value.


#### _property_ id(_: [str](https://docs.python.org/3/library/stdtypes.html#str_ )
Accessor for the service identifier.


#### _property_ priority(_: [int](https://docs.python.org/3/library/functions.html#int_ )
Accessor for the priority value.


#### _property_ recip_keys(_: [List](https://docs.python.org/3/library/typing.html#typing.List)[PublicKey_ )
Accessor for the recipient keys.


#### _property_ routing_keys(_: [List](https://docs.python.org/3/library/typing.html#typing.List)[PublicKey_ )
Accessor for the routing keys.


#### to_dict()
Return dict representation of service to embed in DID document.


#### _property_ type(_: [str](https://docs.python.org/3/library/stdtypes.html#str_ )
Accessor for the service type.

## Submodules

## aries_cloudagent.connections.models.diddoc.diddoc module

DID Document classes.

Copyright 2017-2019 Government of Canada
Public Services and Procurement Canada - buyandsell.gc.ca

Licensed under the Apache License, Version 2.0 (the “License”);
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

[http://www.apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0)

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an “AS IS” BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.


### _class_ aries_cloudagent.connections.models.diddoc.diddoc.DIDDoc(did: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None)
Bases: [`object`](https://docs.python.org/3/library/functions.html#object)

DID document, grouping a DID with verification keys and services.

Retains DIDs as raw values (orientated toward indy-facing operations),
everything else as URIs (oriented toward W3C-facing operations).


#### CONTEXT(_ = 'https://w3id.org/did/v1_ )

#### add_service_pubkeys(service: [dict](https://docs.python.org/3/library/stdtypes.html#dict), tags: [Union](https://docs.python.org/3/library/typing.html#typing.Union)[[Sequence](https://docs.python.org/3/library/typing.html#typing.Sequence)[[str](https://docs.python.org/3/library/stdtypes.html#str)], [str](https://docs.python.org/3/library/stdtypes.html#str)])
Add public keys specified in service. Return public keys so discovered.


* **Parameters**

    
    * **service** – service from DID document


    * **tags** – potential tags marking public keys of type of interest
    (the standard is still coalescing)



* **Raises**

    [**ValueError**](https://docs.python.org/3/library/exceptions.html#ValueError) – for public key reference not present in DID document.


Returns: list of public keys from the document service specification


#### _property_ authnkey(_: [dict](https://docs.python.org/3/library/stdtypes.html#dict_ )
Accessor for public keys marked as authentication keys, by identifier.


#### _classmethod_ deserialize(did_doc: [dict](https://docs.python.org/3/library/stdtypes.html#dict))
Construct DIDDoc object from dict representation.


* **Parameters**

    **did_doc** – DIDDoc dict representation



* **Raises**

    [**ValueError**](https://docs.python.org/3/library/exceptions.html#ValueError) – for bad DID or missing mandatory item.


Returns: DIDDoc from input json


#### _property_ did(_: [str](https://docs.python.org/3/library/stdtypes.html#str_ )
Accessor for DID.


#### _classmethod_ from_json(did_doc_json: [str](https://docs.python.org/3/library/stdtypes.html#str))
Construct DIDDoc object from json representation.


* **Parameters**

    **did_doc_json** – DIDDoc json representation


Returns: DIDDoc from input json


#### _property_ pubkey(_: [dict](https://docs.python.org/3/library/stdtypes.html#dict_ )
Accessor for public keys by identifier.


#### serialize()
Dump current object to a JSON-compatible dictionary.


* **Returns**

    dict representation of current DIDDoc



#### _property_ service(_: [dict](https://docs.python.org/3/library/stdtypes.html#dict_ )
Accessor for services by identifier.


#### set(item: [Union](https://docs.python.org/3/library/typing.html#typing.Union)[Service, PublicKey])
Add or replace service or public key; return current DIDDoc.


* **Raises**

    [**ValueError**](https://docs.python.org/3/library/exceptions.html#ValueError) – if input item is neither service nor public key.



* **Parameters**

    **item** – service or public key to set


Returns: the current DIDDoc


#### to_json()
Dump current object as json (JSON-LD).


* **Returns**

    json representation of current DIDDoc


## aries_cloudagent.connections.models.diddoc.publickey module

DID Document Public Key classes.

Copyright 2017-2019 Government of Canada
Public Services and Procurement Canada - buyandsell.gc.ca

Licensed under the Apache License, Version 2.0 (the “License”);
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

[http://www.apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0)

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an “AS IS” BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.


### _class_ aries_cloudagent.connections.models.diddoc.publickey.LinkedDataKeySpec(ver_type, authn_type, specifier)
Bases: [`tuple`](https://docs.python.org/3/library/stdtypes.html#tuple)


#### _property_ authn_type()
Alias for field number 1


#### _property_ specifier()
Alias for field number 2


#### _property_ ver_type()
Alias for field number 0


### _class_ aries_cloudagent.connections.models.diddoc.publickey.PublicKey(did: [str](https://docs.python.org/3/library/stdtypes.html#str), ident: [str](https://docs.python.org/3/library/stdtypes.html#str), value: [str](https://docs.python.org/3/library/stdtypes.html#str), pk_type: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[PublicKeyType] = None, controller: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, authn: [bool](https://docs.python.org/3/library/functions.html#bool) = False)
Bases: [`object`](https://docs.python.org/3/library/functions.html#object)

Public key specification to embed in DID document.

Retains DIDs as raw values (orientated toward indy-facing operations),
everything else as URIs (oriented toward W3C-facing operations).


#### _property_ authn(_: [bool](https://docs.python.org/3/library/functions.html#bool_ )
Accessor for the authentication marker.

Returns: whether public key is marked as having DID authentication privilege


#### _property_ controller(_: [str](https://docs.python.org/3/library/stdtypes.html#str_ )
Accessor for the controller DID.


#### _property_ did(_: [str](https://docs.python.org/3/library/stdtypes.html#str_ )
Accessor for the DID.


#### _property_ id(_: [str](https://docs.python.org/3/library/stdtypes.html#str_ )
Accessor for the public key identifier.


#### to_dict()
Return dict representation of public key to embed in DID document.


#### _property_ type(_: PublicKeyTyp_ )
Accessor for the public key type.


#### _property_ value(_: [str](https://docs.python.org/3/library/stdtypes.html#str_ )
Accessor for the public key value.


### _class_ aries_cloudagent.connections.models.diddoc.publickey.PublicKeyType(value)
Bases: [`Enum`](https://docs.python.org/3/library/enum.html#enum.Enum)

Class encapsulating public key types.


#### ED25519_SIG_2018(_ = LinkedDataKeySpec(ver_type='Ed25519VerificationKey2018', authn_type='Ed25519SignatureAuthentication2018', specifier='publicKeyBase58'_ )

#### EDDSA_SA_SIG_SECP256K1(_ = LinkedDataKeySpec(ver_type='Secp256k1VerificationKey2018', authn_type='Secp256k1SignatureAuthenticationKey2018', specifier='publicKeyHex'_ )

#### RSA_SIG_2018(_ = LinkedDataKeySpec(ver_type='RsaVerificationKey2018', authn_type='RsaSignatureAuthentication2018', specifier='publicKeyPem'_ )

#### _property_ authn_type(_: [str](https://docs.python.org/3/library/stdtypes.html#str_ )
Accessor for the authentication type identifier.


#### _static_ get(val: [str](https://docs.python.org/3/library/stdtypes.html#str))
Find enum instance corresponding to input value (RsaVerificationKey2018 etc).


* **Parameters**

    **val** – input value marking public key type


Returns: the public key type


#### specification(val: [str](https://docs.python.org/3/library/stdtypes.html#str))
Return specifier and input value for use in public key specification.


* **Parameters**

    **val** – value of public key


Returns: dict mapping applicable specifier to input value


#### _property_ specifier(_: [str](https://docs.python.org/3/library/stdtypes.html#str_ )
Accessor for the value specifier.


#### _property_ ver_type(_: [str](https://docs.python.org/3/library/stdtypes.html#str_ )
Accessor for the verification type identifier.

## aries_cloudagent.connections.models.diddoc.service module

DID Document Service classes.

Copyright 2017-2019 Government of Canada
Public Services and Procurement Canada - buyandsell.gc.ca

Licensed under the Apache License, Version 2.0 (the “License”);
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

[http://www.apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0)

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an “AS IS” BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.


### _class_ aries_cloudagent.connections.models.diddoc.service.Service(did: [str](https://docs.python.org/3/library/stdtypes.html#str), ident: [str](https://docs.python.org/3/library/stdtypes.html#str), typ: [str](https://docs.python.org/3/library/stdtypes.html#str), recip_keys: [Union](https://docs.python.org/3/library/typing.html#typing.Union)[[Sequence](https://docs.python.org/3/library/typing.html#typing.Sequence), PublicKey], routing_keys: [Union](https://docs.python.org/3/library/typing.html#typing.Union)[[Sequence](https://docs.python.org/3/library/typing.html#typing.Sequence), PublicKey], endpoint: [str](https://docs.python.org/3/library/stdtypes.html#str), priority: [int](https://docs.python.org/3/library/functions.html#int) = 0)
Bases: [`object`](https://docs.python.org/3/library/functions.html#object)

Service specification to embed in DID document.

Retains DIDs as raw values (orientated toward indy-facing operations),
everything else as URIs (oriented toward W3C-facing operations).


#### _property_ did(_: [str](https://docs.python.org/3/library/stdtypes.html#str_ )
Accessor for the DID value.


#### _property_ endpoint(_: [str](https://docs.python.org/3/library/stdtypes.html#str_ )
Accessor for the endpoint value.


#### _property_ id(_: [str](https://docs.python.org/3/library/stdtypes.html#str_ )
Accessor for the service identifier.


#### _property_ priority(_: [int](https://docs.python.org/3/library/functions.html#int_ )
Accessor for the priority value.


#### _property_ recip_keys(_: [List](https://docs.python.org/3/library/typing.html#typing.List)[PublicKey_ )
Accessor for the recipient keys.


#### _property_ routing_keys(_: [List](https://docs.python.org/3/library/typing.html#typing.List)[PublicKey_ )
Accessor for the routing keys.


#### to_dict()
Return dict representation of service to embed in DID document.


#### _property_ type(_: [str](https://docs.python.org/3/library/stdtypes.html#str_ )
Accessor for the service type.

## aries_cloudagent.connections.models.diddoc.util module

DIDDoc utility methods.

Copyright 2017-2019 Government of Canada
Public Services and Procurement Canada - buyandsell.gc.ca

Licensed under the Apache License, Version 2.0 (the “License”);
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

[http://www.apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0)

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an “AS IS” BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.


### aries_cloudagent.connections.models.diddoc.util.canon_did(uri: [str](https://docs.python.org/3/library/stdtypes.html#str))
Convert a URI into a DID if need be, left-stripping ‘did:sov:’ if present.


* **Parameters**

    **uri** – input URI or DID



* **Raises**

    [**ValueError**](https://docs.python.org/3/library/exceptions.html#ValueError) – for invalid input.



### aries_cloudagent.connections.models.diddoc.util.canon_ref(did: [str](https://docs.python.org/3/library/stdtypes.html#str), ref: [str](https://docs.python.org/3/library/stdtypes.html#str), delimiter: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None)
Given a reference in a DID document, return it in its canonical form of a URI.


* **Parameters**

    
    * **did** – DID acting as the identifier of the DID document


    * **ref** – reference to canonicalize, either a DID or a fragment pointing to a
    location in the DID doc


    * **delimiter** – delimiter character marking fragment (default ‘#’) or
    introducing identifier (‘;’) against DID resource



### aries_cloudagent.connections.models.diddoc.util.ok_did(token: [str](https://docs.python.org/3/library/stdtypes.html#str))
Whether input token looks like a valid decentralized identifier.


* **Parameters**

    **token** – candidate string


Returns: whether input token looks like a valid schema identifier


### aries_cloudagent.connections.models.diddoc.util.resource(ref: [str](https://docs.python.org/3/library/stdtypes.html#str), delimiter: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None)
Extract the resource for an identifier.

Given a (URI) reference, return up to its delimiter (exclusively), or all of it if
there is none.


* **Parameters**

    
    * **ref** – reference


    * **delimiter** – delimiter character
    (default None maps to ‘#’, or ‘;’ introduces identifiers)
