# aries_cloudagent.vc.ld_proofs package


### _class_ aries_cloudagent.vc.ld_proofs.AssertionProofPurpose(\*, date: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[datetime](https://docs.python.org/3/library/datetime.html#datetime.datetime)] = None, max_timestamp_delta: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[timedelta](https://docs.python.org/3/library/datetime.html#datetime.timedelta)] = None)
Bases: [`ControllerProofPurpose`](aries_cloudagent.vc.ld_proofs.purposes.md#aries_cloudagent.vc.ld_proofs.purposes.controller_proof_purpose.ControllerProofPurpose)

Assertion proof purpose class.


#### term(_ = 'assertionMethod_ )

### _class_ aries_cloudagent.vc.ld_proofs.AuthenticationProofPurpose(\*, challenge: [str](https://docs.python.org/3/library/stdtypes.html#str), domain: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, date: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[datetime](https://docs.python.org/3/library/datetime.html#datetime.datetime)] = None, max_timestamp_delta: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[timedelta](https://docs.python.org/3/library/datetime.html#datetime.timedelta)] = None)
Bases: [`ControllerProofPurpose`](aries_cloudagent.vc.ld_proofs.purposes.md#aries_cloudagent.vc.ld_proofs.purposes.controller_proof_purpose.ControllerProofPurpose)

Authentication proof purpose.


#### term(_ = 'authentication_ )

#### update(proof: [dict](https://docs.python.org/3/library/stdtypes.html#dict))
Update poof purpose, challenge and domain on proof.


#### validate(\*, proof: [dict](https://docs.python.org/3/library/stdtypes.html#dict), document: [dict](https://docs.python.org/3/library/stdtypes.html#dict), suite: LinkedDataProof, verification_method: [dict](https://docs.python.org/3/library/stdtypes.html#dict), document_loader: [Callable](https://docs.python.org/3/library/typing.html#typing.Callable)[[[str](https://docs.python.org/3/library/stdtypes.html#str), [dict](https://docs.python.org/3/library/stdtypes.html#dict)], [dict](https://docs.python.org/3/library/stdtypes.html#dict)])
Validate whether challenge and domain are valid.


### _class_ aries_cloudagent.vc.ld_proofs.BbsBlsSignature2020(\*, key_pair: [KeyPair](aries_cloudagent.vc.ld_proofs.crypto.md#aries_cloudagent.vc.ld_proofs.crypto.key_pair.KeyPair), proof: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[dict](https://docs.python.org/3/library/stdtypes.html#dict)] = None, verification_method: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, date: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[datetime](https://docs.python.org/3/library/datetime.html#datetime.datetime)] = None)
Bases: [`BbsBlsSignature2020Base`](aries_cloudagent.vc.ld_proofs.suites.md#aries_cloudagent.vc.ld_proofs.suites.bbs_bls_signature_2020_base.BbsBlsSignature2020Base)

BbsBlsSignature2020 class.


#### _async_ create_proof(\*, document: [dict](https://docs.python.org/3/library/stdtypes.html#dict), purpose: [ProofPurpose](aries_cloudagent.vc.ld_proofs.purposes.md#aries_cloudagent.vc.ld_proofs.purposes.proof_purpose.ProofPurpose), document_loader: [Callable](https://docs.python.org/3/library/typing.html#typing.Callable)[[[str](https://docs.python.org/3/library/stdtypes.html#str), [dict](https://docs.python.org/3/library/stdtypes.html#dict)], [dict](https://docs.python.org/3/library/stdtypes.html#dict)])
Create proof for document, return proof.


#### _async_ sign(\*, verify_data: [List](https://docs.python.org/3/library/typing.html#typing.List)[[bytes](https://docs.python.org/3/library/stdtypes.html#bytes)], proof: [dict](https://docs.python.org/3/library/stdtypes.html#dict))
Sign the data and add it to the proof.


* **Parameters**

    
    * **verify_data** (*List**[*[*bytes*](https://docs.python.org/3/library/stdtypes.html#bytes)*]*) – The data to sign.


    * **proof** ([*dict*](https://docs.python.org/3/library/stdtypes.html#dict)) – The proof to add the signature to



* **Returns**

    The proof object with the added signature



* **Return type**

    [dict](https://docs.python.org/3/library/stdtypes.html#dict)



#### signature_type(_ = 'BbsBlsSignature2020_ )

#### _async_ verify_proof(\*, proof: [dict](https://docs.python.org/3/library/stdtypes.html#dict), document: [dict](https://docs.python.org/3/library/stdtypes.html#dict), purpose: [ProofPurpose](aries_cloudagent.vc.ld_proofs.purposes.md#aries_cloudagent.vc.ld_proofs.purposes.proof_purpose.ProofPurpose), document_loader: [Callable](https://docs.python.org/3/library/typing.html#typing.Callable)[[[str](https://docs.python.org/3/library/stdtypes.html#str), [dict](https://docs.python.org/3/library/stdtypes.html#dict)], [dict](https://docs.python.org/3/library/stdtypes.html#dict)])
Verify proof against document and proof purpose.


#### _async_ verify_signature(\*, verify_data: [List](https://docs.python.org/3/library/typing.html#typing.List)[[bytes](https://docs.python.org/3/library/stdtypes.html#bytes)], verification_method: [dict](https://docs.python.org/3/library/stdtypes.html#dict), document: [dict](https://docs.python.org/3/library/stdtypes.html#dict), proof: [dict](https://docs.python.org/3/library/stdtypes.html#dict), document_loader: [Callable](https://docs.python.org/3/library/typing.html#typing.Callable)[[[str](https://docs.python.org/3/library/stdtypes.html#str), [dict](https://docs.python.org/3/library/stdtypes.html#dict)], [dict](https://docs.python.org/3/library/stdtypes.html#dict)])
Verify the data against the proof.


* **Parameters**

    
    * **verify_data** ([*bytes*](https://docs.python.org/3/library/stdtypes.html#bytes)) – The data to check


    * **verification_method** ([*dict*](https://docs.python.org/3/library/stdtypes.html#dict)) – The verification method to use.


    * **document** ([*dict*](https://docs.python.org/3/library/stdtypes.html#dict)) – The document the verify data is derived for as extra context


    * **proof** ([*dict*](https://docs.python.org/3/library/stdtypes.html#dict)) – The proof to check


    * **document_loader** (*DocumentLoader*) – Document loader used for resolving



* **Returns**

    Whether the signature is valid for the data



* **Return type**

    [bool](https://docs.python.org/3/library/functions.html#bool)



### _class_ aries_cloudagent.vc.ld_proofs.BbsBlsSignatureProof2020(\*, key_pair: [KeyPair](aries_cloudagent.vc.ld_proofs.crypto.md#aries_cloudagent.vc.ld_proofs.crypto.key_pair.KeyPair))
Bases: [`BbsBlsSignature2020Base`](aries_cloudagent.vc.ld_proofs.suites.md#aries_cloudagent.vc.ld_proofs.suites.bbs_bls_signature_2020_base.BbsBlsSignature2020Base)

BbsBlsSignatureProof2020 class.


#### _async_ derive_proof(\*, proof: [dict](https://docs.python.org/3/library/stdtypes.html#dict), document: [dict](https://docs.python.org/3/library/stdtypes.html#dict), reveal_document: [dict](https://docs.python.org/3/library/stdtypes.html#dict), document_loader: [Callable](https://docs.python.org/3/library/typing.html#typing.Callable)[[[str](https://docs.python.org/3/library/stdtypes.html#str), [dict](https://docs.python.org/3/library/stdtypes.html#dict)], [dict](https://docs.python.org/3/library/stdtypes.html#dict)], nonce: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[bytes](https://docs.python.org/3/library/stdtypes.html#bytes)] = None)
Derive proof for document, return dict with derived document and proof.


#### signature_type(_ = 'BbsBlsSignatureProof2020_ )

#### supported_derive_proof_types(_ = ['BbsBlsSignature2020', 'sec:BbsBlsSignature2020', 'https://w3id.org/security#BbsBlsSignature2020'_ )

#### _async_ verify_proof(\*, proof: [dict](https://docs.python.org/3/library/stdtypes.html#dict), document: [dict](https://docs.python.org/3/library/stdtypes.html#dict), purpose: [ProofPurpose](aries_cloudagent.vc.ld_proofs.purposes.md#aries_cloudagent.vc.ld_proofs.purposes.proof_purpose.ProofPurpose), document_loader: [Callable](https://docs.python.org/3/library/typing.html#typing.Callable)[[[str](https://docs.python.org/3/library/stdtypes.html#str), [dict](https://docs.python.org/3/library/stdtypes.html#dict)], [dict](https://docs.python.org/3/library/stdtypes.html#dict)])
Verify proof against document and proof purpose.


### _class_ aries_cloudagent.vc.ld_proofs.ControllerProofPurpose(\*, term: [str](https://docs.python.org/3/library/stdtypes.html#str), date: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[datetime](https://docs.python.org/3/library/datetime.html#datetime.datetime)] = None, max_timestamp_delta: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[timedelta](https://docs.python.org/3/library/datetime.html#datetime.timedelta)] = None)
Bases: [`ProofPurpose`](aries_cloudagent.vc.ld_proofs.purposes.md#aries_cloudagent.vc.ld_proofs.purposes.proof_purpose.ProofPurpose)

Controller proof purpose class.


#### validate(\*, proof: [dict](https://docs.python.org/3/library/stdtypes.html#dict), document: [dict](https://docs.python.org/3/library/stdtypes.html#dict), suite: LinkedDataProof, verification_method: [dict](https://docs.python.org/3/library/stdtypes.html#dict), document_loader: [Callable](https://docs.python.org/3/library/typing.html#typing.Callable)[[[str](https://docs.python.org/3/library/stdtypes.html#str), [dict](https://docs.python.org/3/library/stdtypes.html#dict)], [dict](https://docs.python.org/3/library/stdtypes.html#dict)])
Validate whether verification method of proof is authorized by controller.


### _class_ aries_cloudagent.vc.ld_proofs.CredentialIssuancePurpose(\*, date: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[datetime](https://docs.python.org/3/library/datetime.html#datetime.datetime)] = None, max_timestamp_delta: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[timedelta](https://docs.python.org/3/library/datetime.html#datetime.timedelta)] = None)
Bases: [`AssertionProofPurpose`](aries_cloudagent.vc.ld_proofs.purposes.md#aries_cloudagent.vc.ld_proofs.purposes.assertion_proof_purpose.AssertionProofPurpose)

Credential Issuance proof purpose.


#### validate(\*, proof: [dict](https://docs.python.org/3/library/stdtypes.html#dict), document: [dict](https://docs.python.org/3/library/stdtypes.html#dict), suite: LinkedDataProof, verification_method: [dict](https://docs.python.org/3/library/stdtypes.html#dict), document_loader: [Callable](https://docs.python.org/3/library/typing.html#typing.Callable)[[[str](https://docs.python.org/3/library/stdtypes.html#str), [dict](https://docs.python.org/3/library/stdtypes.html#dict)], [dict](https://docs.python.org/3/library/stdtypes.html#dict)])
Validate if the issuer matches the controller of the verification method.


### _class_ aries_cloudagent.vc.ld_proofs.DocumentLoader(profile: [Profile](aries_cloudagent.core.md#aries_cloudagent.core.profile.Profile), cache_ttl: [int](https://docs.python.org/3/library/functions.html#int) = 300)
Bases: [`object`](https://docs.python.org/3/library/functions.html#object)

JSON-LD document loader.


#### _async_ load_document(url: [str](https://docs.python.org/3/library/stdtypes.html#str), options: [dict](https://docs.python.org/3/library/stdtypes.html#dict))
Load JSON-LD document.

Method signature conforms to PyLD document loader interface

Document loading is processed in separate thread to deal with
async to sync transformation.


### _class_ aries_cloudagent.vc.ld_proofs.DocumentVerificationResult(\*, verified: [bool](https://docs.python.org/3/library/functions.html#bool), document: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[dict](https://docs.python.org/3/library/stdtypes.html#dict)] = None, results: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[List](https://docs.python.org/3/library/typing.html#typing.List)[ProofResult]] = None, errors: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[List](https://docs.python.org/3/library/typing.html#typing.List)[[Exception](https://docs.python.org/3/library/exceptions.html#Exception)]] = None)
Bases: [`object`](https://docs.python.org/3/library/functions.html#object)

Domain verification result class.


### _class_ aries_cloudagent.vc.ld_proofs.Ed25519Signature2018(\*, key_pair: [KeyPair](aries_cloudagent.vc.ld_proofs.crypto.md#aries_cloudagent.vc.ld_proofs.crypto.key_pair.KeyPair), proof: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[dict](https://docs.python.org/3/library/stdtypes.html#dict)] = None, verification_method: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, date: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[Union](https://docs.python.org/3/library/typing.html#typing.Union)[[datetime](https://docs.python.org/3/library/datetime.html#datetime.datetime), [str](https://docs.python.org/3/library/stdtypes.html#str)]] = None)
Bases: [`JwsLinkedDataSignature`](aries_cloudagent.vc.ld_proofs.suites.md#aries_cloudagent.vc.ld_proofs.suites.jws_linked_data_signature.JwsLinkedDataSignature)

Ed25519Signature2018 suite.


#### signature_type(_ = 'Ed25519Signature2018_ )

### _class_ aries_cloudagent.vc.ld_proofs.JwsLinkedDataSignature(\*, signature_type: [str](https://docs.python.org/3/library/stdtypes.html#str), algorithm: [str](https://docs.python.org/3/library/stdtypes.html#str), required_key_type: [str](https://docs.python.org/3/library/stdtypes.html#str), key_pair: [KeyPair](aries_cloudagent.vc.ld_proofs.crypto.md#aries_cloudagent.vc.ld_proofs.crypto.key_pair.KeyPair), proof: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[dict](https://docs.python.org/3/library/stdtypes.html#dict)] = None, verification_method: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, date: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[Union](https://docs.python.org/3/library/typing.html#typing.Union)[[datetime](https://docs.python.org/3/library/datetime.html#datetime.datetime), [str](https://docs.python.org/3/library/stdtypes.html#str)]] = None)
Bases: [`LinkedDataSignature`](aries_cloudagent.vc.ld_proofs.suites.md#aries_cloudagent.vc.ld_proofs.suites.linked_data_signature.LinkedDataSignature)

JWS Linked Data class.


#### _async_ sign(\*, verify_data: [bytes](https://docs.python.org/3/library/stdtypes.html#bytes), proof: [dict](https://docs.python.org/3/library/stdtypes.html#dict))
Sign the data and add it to the proof.

Adds a jws to the proof that can be used for multiple
signature algorithms.


* **Parameters**

    
    * **verify_data** ([*bytes*](https://docs.python.org/3/library/stdtypes.html#bytes)) – The data to sign.


    * **proof** ([*dict*](https://docs.python.org/3/library/stdtypes.html#dict)) – The proof to add the signature to



* **Returns**

    The proof object with the added signature



* **Return type**

    [dict](https://docs.python.org/3/library/stdtypes.html#dict)



#### _async_ verify_signature(\*, verify_data: [bytes](https://docs.python.org/3/library/stdtypes.html#bytes), verification_method: [dict](https://docs.python.org/3/library/stdtypes.html#dict), document: [dict](https://docs.python.org/3/library/stdtypes.html#dict), proof: [dict](https://docs.python.org/3/library/stdtypes.html#dict), document_loader: [Callable](https://docs.python.org/3/library/typing.html#typing.Callable)[[[str](https://docs.python.org/3/library/stdtypes.html#str), [dict](https://docs.python.org/3/library/stdtypes.html#dict)], [dict](https://docs.python.org/3/library/stdtypes.html#dict)])
Verify the data against the proof.

Checks for a jws on the proof.


* **Parameters**

    
    * **verify_data** ([*bytes*](https://docs.python.org/3/library/stdtypes.html#bytes)) – The data to check


    * **verification_method** ([*dict*](https://docs.python.org/3/library/stdtypes.html#dict)) – The verification method to use.


    * **document** ([*dict*](https://docs.python.org/3/library/stdtypes.html#dict)) – The document the verify data is derived for as extra context


    * **proof** ([*dict*](https://docs.python.org/3/library/stdtypes.html#dict)) – The proof to check


    * **document_loader** (*DocumentLoader*) – Document loader used for resolving



* **Returns**

    Whether the signature is valid for the data



* **Return type**

    [bool](https://docs.python.org/3/library/functions.html#bool)



### _class_ aries_cloudagent.vc.ld_proofs.KeyPair()
Bases: [`ABC`](https://docs.python.org/3/library/abc.html#abc.ABC)

Base key pair class.


#### _abstract_ from_verification_method(verification_method: [dict](https://docs.python.org/3/library/stdtypes.html#dict))
Create new key pair class based on the passed verification method.


#### _abstract property_ has_public_key(_: [bool](https://docs.python.org/3/library/functions.html#bool_ )
Whether key pair has a public key.

Public key is required for verification, but can be set dynamically
in the verification process.


#### _abstract property_ public_key(_: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[bytes](https://docs.python.org/3/library/stdtypes.html#bytes)_ )
Getter for the public key bytes.


* **Returns**

    The public key



* **Return type**

    [bytes](https://docs.python.org/3/library/stdtypes.html#bytes)



#### _abstract async_ sign(message: [Union](https://docs.python.org/3/library/typing.html#typing.Union)[[List](https://docs.python.org/3/library/typing.html#typing.List)[[bytes](https://docs.python.org/3/library/stdtypes.html#bytes)], [bytes](https://docs.python.org/3/library/stdtypes.html#bytes)])
Sign message(s) using key pair.


#### _abstract async_ verify(message: [Union](https://docs.python.org/3/library/typing.html#typing.Union)[[List](https://docs.python.org/3/library/typing.html#typing.List)[[bytes](https://docs.python.org/3/library/stdtypes.html#bytes)], [bytes](https://docs.python.org/3/library/stdtypes.html#bytes)], signature: [bytes](https://docs.python.org/3/library/stdtypes.html#bytes))
Verify message(s) against signature using key pair.


### _class_ aries_cloudagent.vc.ld_proofs.LinkedDataProof(\*, signature_type: [str](https://docs.python.org/3/library/stdtypes.html#str), proof: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[dict](https://docs.python.org/3/library/stdtypes.html#dict)] = None, supported_derive_proof_types: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[List](https://docs.python.org/3/library/typing.html#typing.List)[[str](https://docs.python.org/3/library/stdtypes.html#str)]] = None)
Bases: [`ABC`](https://docs.python.org/3/library/abc.html#abc.ABC)

Base Linked data proof.


#### _async_ create_proof(\*, document: [dict](https://docs.python.org/3/library/stdtypes.html#dict), purpose: [ProofPurpose](aries_cloudagent.vc.ld_proofs.purposes.md#aries_cloudagent.vc.ld_proofs.purposes.proof_purpose.ProofPurpose), document_loader: [Callable](https://docs.python.org/3/library/typing.html#typing.Callable)[[[str](https://docs.python.org/3/library/stdtypes.html#str), [dict](https://docs.python.org/3/library/stdtypes.html#dict)], [dict](https://docs.python.org/3/library/stdtypes.html#dict)])
Create proof for document.


* **Parameters**

    
    * **document** ([*dict*](https://docs.python.org/3/library/stdtypes.html#dict)) – The document to create the proof for


    * **purpose** (*ProofPurpose*) – The proof purpose to include in the proof


    * **document_loader** (*DocumentLoader*) – Document loader used for resolving



* **Returns**

    The proof object



* **Return type**

    [dict](https://docs.python.org/3/library/stdtypes.html#dict)



#### _async_ derive_proof(\*, proof: [dict](https://docs.python.org/3/library/stdtypes.html#dict), document: [dict](https://docs.python.org/3/library/stdtypes.html#dict), reveal_document: [dict](https://docs.python.org/3/library/stdtypes.html#dict), document_loader: [Callable](https://docs.python.org/3/library/typing.html#typing.Callable)[[[str](https://docs.python.org/3/library/stdtypes.html#str), [dict](https://docs.python.org/3/library/stdtypes.html#dict)], [dict](https://docs.python.org/3/library/stdtypes.html#dict)], nonce: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[bytes](https://docs.python.org/3/library/stdtypes.html#bytes)] = None)
Derive proof for document, returning derived document and proof.


* **Parameters**

    
    * **proof** ([*dict*](https://docs.python.org/3/library/stdtypes.html#dict)) – The proof to derive from


    * **document** ([*dict*](https://docs.python.org/3/library/stdtypes.html#dict)) – The document to derive the proof for


    * **reveal_document** ([*dict*](https://docs.python.org/3/library/stdtypes.html#dict)) – The JSON-LD frame the revealed attributes


    * **document_loader** (*DocumentLoader*) – Document loader used for resolving


    * **nonce** ([*bytes*](https://docs.python.org/3/library/stdtypes.html#bytes)*, **optional*) – Nonce to use for the proof. Defaults to None.



* **Returns**

    The derived document and proof



* **Return type**

    DeriveProofResult



#### match_proof(signature_type: [str](https://docs.python.org/3/library/stdtypes.html#str))
Match signature type to signature type of this suite.


#### _async_ verify_proof(\*, proof: [dict](https://docs.python.org/3/library/stdtypes.html#dict), document: [dict](https://docs.python.org/3/library/stdtypes.html#dict), purpose: [ProofPurpose](aries_cloudagent.vc.ld_proofs.purposes.md#aries_cloudagent.vc.ld_proofs.purposes.proof_purpose.ProofPurpose), document_loader: [Callable](https://docs.python.org/3/library/typing.html#typing.Callable)[[[str](https://docs.python.org/3/library/stdtypes.html#str), [dict](https://docs.python.org/3/library/stdtypes.html#dict)], [dict](https://docs.python.org/3/library/stdtypes.html#dict)])
Verify proof against document and proof purpose.


* **Parameters**

    
    * **proof** ([*dict*](https://docs.python.org/3/library/stdtypes.html#dict)) – The proof to verify


    * **document** ([*dict*](https://docs.python.org/3/library/stdtypes.html#dict)) – The document to verify the proof against


    * **purpose** (*ProofPurpose*) – The proof purpose to verify the proof against


    * **document_loader** (*DocumentLoader*) – Document loader used for resolving



* **Returns**

    The results of the proof verification



* **Return type**

    ValidationResult



### _exception_ aries_cloudagent.vc.ld_proofs.LinkedDataProofException()
Bases: [`Exception`](https://docs.python.org/3/library/exceptions.html#Exception)

Base exception for linked data proof module.


### _class_ aries_cloudagent.vc.ld_proofs.LinkedDataSignature(\*, signature_type: [str](https://docs.python.org/3/library/stdtypes.html#str), proof: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[dict](https://docs.python.org/3/library/stdtypes.html#dict)] = None, verification_method: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, date: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[datetime](https://docs.python.org/3/library/datetime.html#datetime.datetime)] = None)
Bases: [`LinkedDataProof`](aries_cloudagent.vc.ld_proofs.suites.md#aries_cloudagent.vc.ld_proofs.suites.linked_data_proof.LinkedDataProof)

Linked Data Signature class.


#### _async_ create_proof(\*, document: [dict](https://docs.python.org/3/library/stdtypes.html#dict), purpose: [ProofPurpose](aries_cloudagent.vc.ld_proofs.purposes.md#aries_cloudagent.vc.ld_proofs.purposes.proof_purpose.ProofPurpose), document_loader: [Callable](https://docs.python.org/3/library/typing.html#typing.Callable)[[[str](https://docs.python.org/3/library/stdtypes.html#str), [dict](https://docs.python.org/3/library/stdtypes.html#dict)], [dict](https://docs.python.org/3/library/stdtypes.html#dict)])
Create proof for document, return proof.


#### _abstract async_ sign(\*, verify_data: [bytes](https://docs.python.org/3/library/stdtypes.html#bytes), proof: [dict](https://docs.python.org/3/library/stdtypes.html#dict))
Sign the data and add it to the proof.


* **Parameters**

    
    * **verify_data** ([*bytes*](https://docs.python.org/3/library/stdtypes.html#bytes)) – The data to sign.


    * **proof** ([*dict*](https://docs.python.org/3/library/stdtypes.html#dict)) – The proof to add the signature to



* **Returns**

    The proof object with the added signature



* **Return type**

    [dict](https://docs.python.org/3/library/stdtypes.html#dict)



#### _async_ verify_proof(\*, proof: [dict](https://docs.python.org/3/library/stdtypes.html#dict), document: [dict](https://docs.python.org/3/library/stdtypes.html#dict), purpose: [ProofPurpose](aries_cloudagent.vc.ld_proofs.purposes.md#aries_cloudagent.vc.ld_proofs.purposes.proof_purpose.ProofPurpose), document_loader: [Callable](https://docs.python.org/3/library/typing.html#typing.Callable)[[[str](https://docs.python.org/3/library/stdtypes.html#str), [dict](https://docs.python.org/3/library/stdtypes.html#dict)], [dict](https://docs.python.org/3/library/stdtypes.html#dict)])
Verify proof against document and proof purpose.


#### _abstract async_ verify_signature(\*, verify_data: [bytes](https://docs.python.org/3/library/stdtypes.html#bytes), verification_method: [dict](https://docs.python.org/3/library/stdtypes.html#dict), document: [dict](https://docs.python.org/3/library/stdtypes.html#dict), proof: [dict](https://docs.python.org/3/library/stdtypes.html#dict), document_loader: [Callable](https://docs.python.org/3/library/typing.html#typing.Callable)[[[str](https://docs.python.org/3/library/stdtypes.html#str), [dict](https://docs.python.org/3/library/stdtypes.html#dict)], [dict](https://docs.python.org/3/library/stdtypes.html#dict)])
Verify the data against the proof.


* **Parameters**

    
    * **verify_data** ([*bytes*](https://docs.python.org/3/library/stdtypes.html#bytes)) – The data to check


    * **verification_method** ([*dict*](https://docs.python.org/3/library/stdtypes.html#dict)) – The verification method to use.


    * **document** ([*dict*](https://docs.python.org/3/library/stdtypes.html#dict)) – The document the verify data is derived for as extra context


    * **proof** ([*dict*](https://docs.python.org/3/library/stdtypes.html#dict)) – The proof to check


    * **document_loader** (*DocumentLoader*) – Document loader used for resolving



* **Returns**

    Whether the signature is valid for the data



* **Return type**

    [bool](https://docs.python.org/3/library/functions.html#bool)



### _class_ aries_cloudagent.vc.ld_proofs.ProofPurpose(\*, term: [str](https://docs.python.org/3/library/stdtypes.html#str), date: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[datetime](https://docs.python.org/3/library/datetime.html#datetime.datetime)] = None, max_timestamp_delta: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[timedelta](https://docs.python.org/3/library/datetime.html#datetime.timedelta)] = None)
Bases: [`object`](https://docs.python.org/3/library/functions.html#object)

Base proof purpose class.


#### match(proof: [dict](https://docs.python.org/3/library/stdtypes.html#dict))
Check whether the passed proof matches with the term of this proof purpose.


#### update(proof: [dict](https://docs.python.org/3/library/stdtypes.html#dict))
Update proof purpose on proof.


#### validate(\*, proof: [dict](https://docs.python.org/3/library/stdtypes.html#dict), document: [dict](https://docs.python.org/3/library/stdtypes.html#dict), suite: LinkedDataProof, verification_method: [dict](https://docs.python.org/3/library/stdtypes.html#dict), document_loader: [Callable](https://docs.python.org/3/library/typing.html#typing.Callable)[[[str](https://docs.python.org/3/library/stdtypes.html#str), [dict](https://docs.python.org/3/library/stdtypes.html#dict)], [dict](https://docs.python.org/3/library/stdtypes.html#dict)])
Validate whether created date of proof is out of max_timestamp_delta range.


### _class_ aries_cloudagent.vc.ld_proofs.ProofResult(\*, verified: [bool](https://docs.python.org/3/library/functions.html#bool), proof: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[dict](https://docs.python.org/3/library/stdtypes.html#dict)] = None, error: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[Exception](https://docs.python.org/3/library/exceptions.html#Exception)] = None, purpose_result: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[PurposeResult] = None)
Bases: [`object`](https://docs.python.org/3/library/functions.html#object)

Proof result class.


### _class_ aries_cloudagent.vc.ld_proofs.ProofSet()
Bases: [`object`](https://docs.python.org/3/library/functions.html#object)

Class for managing proof sets on a JSON-LD document.


#### _async static_ add(\*, document: [dict](https://docs.python.org/3/library/stdtypes.html#dict), suite: [LinkedDataProof](aries_cloudagent.vc.ld_proofs.suites.md#aries_cloudagent.vc.ld_proofs.suites.linked_data_proof.LinkedDataProof), purpose: [ProofPurpose](aries_cloudagent.vc.ld_proofs.purposes.md#aries_cloudagent.vc.ld_proofs.purposes.proof_purpose.ProofPurpose), document_loader: [Callable](https://docs.python.org/3/library/typing.html#typing.Callable)[[[str](https://docs.python.org/3/library/stdtypes.html#str), [dict](https://docs.python.org/3/library/stdtypes.html#dict)], [dict](https://docs.python.org/3/library/stdtypes.html#dict)])
Add a Linked Data proof to the document.

If the document contains other proofs, the proof will be appended
to the existing set of proofs.

Important note: This method assumes that the term proof in the given
document has the same definition as the https://w3id.org/security/v2
JSON-LD @context.


* **Parameters**

    
    * **document** ([*dict*](https://docs.python.org/3/library/stdtypes.html#dict)) – JSON-LD document to be signed.


    * **suite** (*LinkedDataProof*) – A signature suite instance that will create the proof


    * **purpose** (*ProofPurpose*) – A proof purpose instance that will augment the proof
    with information describing its intended purpose.


    * **document_loader** (*DocumentLoader*) – Document loader to use.



* **Returns**

    The signed document, with the signature in the top-level

        proof property.




* **Return type**

    [dict](https://docs.python.org/3/library/stdtypes.html#dict)



#### _async static_ derive(\*, document: [dict](https://docs.python.org/3/library/stdtypes.html#dict), reveal_document: [dict](https://docs.python.org/3/library/stdtypes.html#dict), suite: [LinkedDataProof](aries_cloudagent.vc.ld_proofs.suites.md#aries_cloudagent.vc.ld_proofs.suites.linked_data_proof.LinkedDataProof), document_loader: [Callable](https://docs.python.org/3/library/typing.html#typing.Callable)[[[str](https://docs.python.org/3/library/stdtypes.html#str), [dict](https://docs.python.org/3/library/stdtypes.html#dict)], [dict](https://docs.python.org/3/library/stdtypes.html#dict)], nonce: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[bytes](https://docs.python.org/3/library/stdtypes.html#bytes)] = None)
Create new derived Linked Data proof(s) on document using the reveal document.

Important note: This method assumes that the term proof in the given
document has the same definition as the https://w3id.org/security/v2
JSON-LD @context. (v3 because BBS?)


* **Parameters**

    
    * **document** ([*dict*](https://docs.python.org/3/library/stdtypes.html#dict)) – JSON-LD document with one or more proofs to be derived.


    * **reveal_document** ([*dict*](https://docs.python.org/3/library/stdtypes.html#dict)) – JSON-LD frame specifying the attributes to reveal.


    * **suite** (*LinkedDataProof*) – A signature suite instance to derive the proof.


    * **document_loader** (*DocumentLoader*) – Document loader to use.


    * **nonce** ([*bytes*](https://docs.python.org/3/library/stdtypes.html#bytes)*, **optional*) – Nonce to use for the proof. Defaults to None.



* **Returns**

    The derived document with the derived proof(s) in the top-level

        proof property.




* **Return type**

    [dict](https://docs.python.org/3/library/stdtypes.html#dict)



#### _async static_ verify(\*, document: [dict](https://docs.python.org/3/library/stdtypes.html#dict), suites: [List](https://docs.python.org/3/library/typing.html#typing.List)[[LinkedDataProof](aries_cloudagent.vc.ld_proofs.suites.md#aries_cloudagent.vc.ld_proofs.suites.linked_data_proof.LinkedDataProof)], purpose: [ProofPurpose](aries_cloudagent.vc.ld_proofs.purposes.md#aries_cloudagent.vc.ld_proofs.purposes.proof_purpose.ProofPurpose), document_loader: [Callable](https://docs.python.org/3/library/typing.html#typing.Callable)[[[str](https://docs.python.org/3/library/stdtypes.html#str), [dict](https://docs.python.org/3/library/stdtypes.html#dict)], [dict](https://docs.python.org/3/library/stdtypes.html#dict)])
Verify Linked Data proof(s) on a document.

The proofs to be verified must match the given proof purse.

Important note: This method assumes that the term proof in the given
document has the same definition as the https://w3id.org/security/v2
JSON-LD @context.


* **Parameters**

    
    * **document** ([*dict*](https://docs.python.org/3/library/stdtypes.html#dict)) – JSON-LD document with one or more proofs to be verified.


    * **suites** (*List**[**LinkedDataProof**]*) – Acceptable signature suite instances
    for verifying the proof(s).


    * **purpose** (*ProofPurpose*) – A proof purpose instance that will match proofs
    to be verified and ensure they were created according to the
    appropriate purpose.


    * **document_loader** (*DocumentLoader*) – Document loader to use.



* **Returns**

    Object with a verified property that is true

        if at least one proof matching the given purpose and suite verifies
        and false otherwise. Also contains errors and results properties
        with extra data.




* **Return type**

    DocumentVerificationResult



### _class_ aries_cloudagent.vc.ld_proofs.PurposeResult(\*, valid: [bool](https://docs.python.org/3/library/functions.html#bool), error: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[Exception](https://docs.python.org/3/library/exceptions.html#Exception)] = None, controller: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[dict](https://docs.python.org/3/library/stdtypes.html#dict)] = None)
Bases: [`object`](https://docs.python.org/3/library/functions.html#object)

Proof purpose result class.


### _class_ aries_cloudagent.vc.ld_proofs.WalletKeyPair(\*, wallet: [BaseWallet](aries_cloudagent.wallet.md#aries_cloudagent.wallet.base.BaseWallet), key_type: [KeyType](aries_cloudagent.wallet.md#aries_cloudagent.wallet.key_type.KeyType), public_key_base58: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None)
Bases: [`KeyPair`](aries_cloudagent.vc.ld_proofs.crypto.md#aries_cloudagent.vc.ld_proofs.crypto.key_pair.KeyPair)

Base wallet key pair.


#### from_verification_method(verification_method: [dict](https://docs.python.org/3/library/stdtypes.html#dict))
Create new WalletKeyPair from public key in verification method.


#### _property_ has_public_key(_: [bool](https://docs.python.org/3/library/functions.html#bool_ )
Whether key pair has public key.


#### _property_ public_key(_: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[bytes](https://docs.python.org/3/library/stdtypes.html#bytes)_ )
Getter for public key.


#### _async_ sign(message: [Union](https://docs.python.org/3/library/typing.html#typing.Union)[[List](https://docs.python.org/3/library/typing.html#typing.List)[[bytes](https://docs.python.org/3/library/stdtypes.html#bytes)], [bytes](https://docs.python.org/3/library/stdtypes.html#bytes)])
Sign message using wallet.


#### _async_ verify(message: [Union](https://docs.python.org/3/library/typing.html#typing.Union)[[List](https://docs.python.org/3/library/typing.html#typing.List)[[bytes](https://docs.python.org/3/library/stdtypes.html#bytes)], [bytes](https://docs.python.org/3/library/stdtypes.html#bytes)], signature: [bytes](https://docs.python.org/3/library/stdtypes.html#bytes))
Verify message against signature using wallet.


### _async_ aries_cloudagent.vc.ld_proofs.derive(\*, document: [dict](https://docs.python.org/3/library/stdtypes.html#dict), reveal_document: [dict](https://docs.python.org/3/library/stdtypes.html#dict), suite: [LinkedDataProof](aries_cloudagent.vc.ld_proofs.suites.md#aries_cloudagent.vc.ld_proofs.suites.linked_data_proof.LinkedDataProof), document_loader: [Callable](https://docs.python.org/3/library/typing.html#typing.Callable)[[[str](https://docs.python.org/3/library/stdtypes.html#str), [dict](https://docs.python.org/3/library/stdtypes.html#dict)], [dict](https://docs.python.org/3/library/stdtypes.html#dict)], nonce: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[bytes](https://docs.python.org/3/library/stdtypes.html#bytes)] = None)
Derive proof(s) for document with reveal document.

All proofs matching the signature suite type will be replaced with a derived
proof. Other proofs will be discarded.


* **Parameters**

    
    * **document** ([*dict*](https://docs.python.org/3/library/stdtypes.html#dict)) – The document with one or more proofs to be derived


    * **reveal_document** ([*dict*](https://docs.python.org/3/library/stdtypes.html#dict)) – The JSON-LD frame specifying the revealed attributes


    * **suite** (*LinkedDataProof*) – The linked data signature cryptographic suite
    with which to derive the proof


    * **document_loader** (*DocumentLoader*) – The document loader to use.


    * **nonce** ([*bytes*](https://docs.python.org/3/library/stdtypes.html#bytes)*, **optional*) – Nonce to use for the proof. Defaults to None.



* **Returns**

    The document with derived proof(s).



* **Return type**

    [dict](https://docs.python.org/3/library/stdtypes.html#dict)



### aries_cloudagent.vc.ld_proofs.get_properties_without_context(document: [dict](https://docs.python.org/3/library/stdtypes.html#dict), document_loader: [Callable](https://docs.python.org/3/library/typing.html#typing.Callable)[[[str](https://docs.python.org/3/library/stdtypes.html#str), [dict](https://docs.python.org/3/library/stdtypes.html#dict)], [dict](https://docs.python.org/3/library/stdtypes.html#dict)])
Get the properties from document that don’t have an context definition.


### _async_ aries_cloudagent.vc.ld_proofs.sign(\*, document: [dict](https://docs.python.org/3/library/stdtypes.html#dict), suite: [LinkedDataProof](aries_cloudagent.vc.ld_proofs.suites.md#aries_cloudagent.vc.ld_proofs.suites.linked_data_proof.LinkedDataProof), purpose: [ProofPurpose](aries_cloudagent.vc.ld_proofs.purposes.md#aries_cloudagent.vc.ld_proofs.purposes.proof_purpose.ProofPurpose), document_loader: [Callable](https://docs.python.org/3/library/typing.html#typing.Callable)[[[str](https://docs.python.org/3/library/stdtypes.html#str), [dict](https://docs.python.org/3/library/stdtypes.html#dict)], [dict](https://docs.python.org/3/library/stdtypes.html#dict)])
Cryptographically signs the provided document by adding a proof section.

Proof is added based on the provided suite and proof purpose


* **Parameters**

    
    * **document** ([*dict*](https://docs.python.org/3/library/stdtypes.html#dict)) – JSON-LD document to be signed.


    * **suite** (*LinkedDataProof*) – The linked data signature cryptographic suite
    with which to sign the document


    * **purpose** (*ProofPurpose*) – A proof purpose instance that will match proofs to be
    verified and ensure they were created according to the appropriate purpose.


    * **document_loader** (*DocumentLoader*) – The document loader to use.



* **Raises**

    **LinkedDataProofException** – When a jsonld url cannot be resolved, OR signing fails.



* **Returns**

    Signed document.



* **Return type**

    [dict](https://docs.python.org/3/library/stdtypes.html#dict)



### _async_ aries_cloudagent.vc.ld_proofs.verify(\*, document: [dict](https://docs.python.org/3/library/stdtypes.html#dict), suites: [List](https://docs.python.org/3/library/typing.html#typing.List)[[LinkedDataProof](aries_cloudagent.vc.ld_proofs.suites.md#aries_cloudagent.vc.ld_proofs.suites.linked_data_proof.LinkedDataProof)], purpose: [ProofPurpose](aries_cloudagent.vc.ld_proofs.purposes.md#aries_cloudagent.vc.ld_proofs.purposes.proof_purpose.ProofPurpose), document_loader: [Callable](https://docs.python.org/3/library/typing.html#typing.Callable)[[[str](https://docs.python.org/3/library/stdtypes.html#str), [dict](https://docs.python.org/3/library/stdtypes.html#dict)], [dict](https://docs.python.org/3/library/stdtypes.html#dict)])
Verify the linked data signature on the provided document.


* **Parameters**

    
    * **document** ([*dict*](https://docs.python.org/3/library/stdtypes.html#dict)) – The document with one or more proofs to be verified.


    * **suites** (*List**[**LinkedDataProof**]*) – Acceptable signature suite instances for
    verifying the proof(s).


    * **purpose** (*ProofPurpose*) – A proof purpose instance that will match proofs to be
    verified and ensure they were created according to the appropriate purpose.


    * **document_loader** (*DocumentLoader*) – The document loader to use.



* **Returns**

    Object with a verified boolean property that is

        True if at least one proof matching the given purpose and suite verifies
        and False otherwise. a results property with an array of detailed
        results. if False an errors property will be present, with a list
        containing all of the errors that occurred during the verification process.




* **Return type**

    DocumentVerificationResult


## Subpackages


* [aries_cloudagent.vc.ld_proofs.crypto package](aries_cloudagent.vc.ld_proofs.crypto.md)


    * [Submodules](aries_cloudagent.vc.ld_proofs.crypto.md#submodules)


    * [aries_cloudagent.vc.ld_proofs.crypto.key_pair module](aries_cloudagent.vc.ld_proofs.crypto.md#module-aries_cloudagent.vc.ld_proofs.crypto.key_pair)


        * [`KeyPair`](aries_cloudagent.vc.ld_proofs.crypto.md#aries_cloudagent.vc.ld_proofs.crypto.key_pair.KeyPair)


            * [`KeyPair.from_verification_method()`](aries_cloudagent.vc.ld_proofs.crypto.md#aries_cloudagent.vc.ld_proofs.crypto.key_pair.KeyPair.from_verification_method)


            * [`KeyPair.has_public_key`](aries_cloudagent.vc.ld_proofs.crypto.md#aries_cloudagent.vc.ld_proofs.crypto.key_pair.KeyPair.has_public_key)


            * [`KeyPair.public_key`](aries_cloudagent.vc.ld_proofs.crypto.md#aries_cloudagent.vc.ld_proofs.crypto.key_pair.KeyPair.public_key)


            * [`KeyPair.sign()`](aries_cloudagent.vc.ld_proofs.crypto.md#aries_cloudagent.vc.ld_proofs.crypto.key_pair.KeyPair.sign)


            * [`KeyPair.verify()`](aries_cloudagent.vc.ld_proofs.crypto.md#aries_cloudagent.vc.ld_proofs.crypto.key_pair.KeyPair.verify)


    * [aries_cloudagent.vc.ld_proofs.crypto.wallet_key_pair module](aries_cloudagent.vc.ld_proofs.crypto.md#module-aries_cloudagent.vc.ld_proofs.crypto.wallet_key_pair)


        * [`WalletKeyPair`](aries_cloudagent.vc.ld_proofs.crypto.md#aries_cloudagent.vc.ld_proofs.crypto.wallet_key_pair.WalletKeyPair)


            * [`WalletKeyPair.from_verification_method()`](aries_cloudagent.vc.ld_proofs.crypto.md#aries_cloudagent.vc.ld_proofs.crypto.wallet_key_pair.WalletKeyPair.from_verification_method)


            * [`WalletKeyPair.has_public_key`](aries_cloudagent.vc.ld_proofs.crypto.md#aries_cloudagent.vc.ld_proofs.crypto.wallet_key_pair.WalletKeyPair.has_public_key)


            * [`WalletKeyPair.public_key`](aries_cloudagent.vc.ld_proofs.crypto.md#aries_cloudagent.vc.ld_proofs.crypto.wallet_key_pair.WalletKeyPair.public_key)


            * [`WalletKeyPair.sign()`](aries_cloudagent.vc.ld_proofs.crypto.md#aries_cloudagent.vc.ld_proofs.crypto.wallet_key_pair.WalletKeyPair.sign)


            * [`WalletKeyPair.verify()`](aries_cloudagent.vc.ld_proofs.crypto.md#aries_cloudagent.vc.ld_proofs.crypto.wallet_key_pair.WalletKeyPair.verify)


* [aries_cloudagent.vc.ld_proofs.purposes package](aries_cloudagent.vc.ld_proofs.purposes.md)


    * [Submodules](aries_cloudagent.vc.ld_proofs.purposes.md#submodules)


    * [aries_cloudagent.vc.ld_proofs.purposes.assertion_proof_purpose module](aries_cloudagent.vc.ld_proofs.purposes.md#module-aries_cloudagent.vc.ld_proofs.purposes.assertion_proof_purpose)


        * [`AssertionProofPurpose`](aries_cloudagent.vc.ld_proofs.purposes.md#aries_cloudagent.vc.ld_proofs.purposes.assertion_proof_purpose.AssertionProofPurpose)


            * [`AssertionProofPurpose.term`](aries_cloudagent.vc.ld_proofs.purposes.md#aries_cloudagent.vc.ld_proofs.purposes.assertion_proof_purpose.AssertionProofPurpose.term)


    * [aries_cloudagent.vc.ld_proofs.purposes.authentication_proof_purpose module](aries_cloudagent.vc.ld_proofs.purposes.md#module-aries_cloudagent.vc.ld_proofs.purposes.authentication_proof_purpose)


        * [`AuthenticationProofPurpose`](aries_cloudagent.vc.ld_proofs.purposes.md#aries_cloudagent.vc.ld_proofs.purposes.authentication_proof_purpose.AuthenticationProofPurpose)


            * [`AuthenticationProofPurpose.term`](aries_cloudagent.vc.ld_proofs.purposes.md#aries_cloudagent.vc.ld_proofs.purposes.authentication_proof_purpose.AuthenticationProofPurpose.term)


            * [`AuthenticationProofPurpose.update()`](aries_cloudagent.vc.ld_proofs.purposes.md#aries_cloudagent.vc.ld_proofs.purposes.authentication_proof_purpose.AuthenticationProofPurpose.update)


            * [`AuthenticationProofPurpose.validate()`](aries_cloudagent.vc.ld_proofs.purposes.md#aries_cloudagent.vc.ld_proofs.purposes.authentication_proof_purpose.AuthenticationProofPurpose.validate)


    * [aries_cloudagent.vc.ld_proofs.purposes.controller_proof_purpose module](aries_cloudagent.vc.ld_proofs.purposes.md#module-aries_cloudagent.vc.ld_proofs.purposes.controller_proof_purpose)


        * [`ControllerProofPurpose`](aries_cloudagent.vc.ld_proofs.purposes.md#aries_cloudagent.vc.ld_proofs.purposes.controller_proof_purpose.ControllerProofPurpose)


            * [`ControllerProofPurpose.validate()`](aries_cloudagent.vc.ld_proofs.purposes.md#aries_cloudagent.vc.ld_proofs.purposes.controller_proof_purpose.ControllerProofPurpose.validate)


    * [aries_cloudagent.vc.ld_proofs.purposes.credential_issuance_purpose module](aries_cloudagent.vc.ld_proofs.purposes.md#module-aries_cloudagent.vc.ld_proofs.purposes.credential_issuance_purpose)


        * [`CredentialIssuancePurpose`](aries_cloudagent.vc.ld_proofs.purposes.md#aries_cloudagent.vc.ld_proofs.purposes.credential_issuance_purpose.CredentialIssuancePurpose)


            * [`CredentialIssuancePurpose.validate()`](aries_cloudagent.vc.ld_proofs.purposes.md#aries_cloudagent.vc.ld_proofs.purposes.credential_issuance_purpose.CredentialIssuancePurpose.validate)


    * [aries_cloudagent.vc.ld_proofs.purposes.proof_purpose module](aries_cloudagent.vc.ld_proofs.purposes.md#module-aries_cloudagent.vc.ld_proofs.purposes.proof_purpose)


        * [`ProofPurpose`](aries_cloudagent.vc.ld_proofs.purposes.md#aries_cloudagent.vc.ld_proofs.purposes.proof_purpose.ProofPurpose)


            * [`ProofPurpose.match()`](aries_cloudagent.vc.ld_proofs.purposes.md#aries_cloudagent.vc.ld_proofs.purposes.proof_purpose.ProofPurpose.match)


            * [`ProofPurpose.update()`](aries_cloudagent.vc.ld_proofs.purposes.md#aries_cloudagent.vc.ld_proofs.purposes.proof_purpose.ProofPurpose.update)


            * [`ProofPurpose.validate()`](aries_cloudagent.vc.ld_proofs.purposes.md#aries_cloudagent.vc.ld_proofs.purposes.proof_purpose.ProofPurpose.validate)


* [aries_cloudagent.vc.ld_proofs.suites package](aries_cloudagent.vc.ld_proofs.suites.md)


    * [Submodules](aries_cloudagent.vc.ld_proofs.suites.md#submodules)


    * [aries_cloudagent.vc.ld_proofs.suites.bbs_bls_signature_2020 module](aries_cloudagent.vc.ld_proofs.suites.md#module-aries_cloudagent.vc.ld_proofs.suites.bbs_bls_signature_2020)


        * [`BbsBlsSignature2020`](aries_cloudagent.vc.ld_proofs.suites.md#aries_cloudagent.vc.ld_proofs.suites.bbs_bls_signature_2020.BbsBlsSignature2020)


            * [`BbsBlsSignature2020.create_proof()`](aries_cloudagent.vc.ld_proofs.suites.md#aries_cloudagent.vc.ld_proofs.suites.bbs_bls_signature_2020.BbsBlsSignature2020.create_proof)


            * [`BbsBlsSignature2020.sign()`](aries_cloudagent.vc.ld_proofs.suites.md#aries_cloudagent.vc.ld_proofs.suites.bbs_bls_signature_2020.BbsBlsSignature2020.sign)


            * [`BbsBlsSignature2020.signature_type`](aries_cloudagent.vc.ld_proofs.suites.md#aries_cloudagent.vc.ld_proofs.suites.bbs_bls_signature_2020.BbsBlsSignature2020.signature_type)


            * [`BbsBlsSignature2020.verify_proof()`](aries_cloudagent.vc.ld_proofs.suites.md#aries_cloudagent.vc.ld_proofs.suites.bbs_bls_signature_2020.BbsBlsSignature2020.verify_proof)


            * [`BbsBlsSignature2020.verify_signature()`](aries_cloudagent.vc.ld_proofs.suites.md#aries_cloudagent.vc.ld_proofs.suites.bbs_bls_signature_2020.BbsBlsSignature2020.verify_signature)


    * [aries_cloudagent.vc.ld_proofs.suites.bbs_bls_signature_2020_base module](aries_cloudagent.vc.ld_proofs.suites.md#module-aries_cloudagent.vc.ld_proofs.suites.bbs_bls_signature_2020_base)


        * [`BbsBlsSignature2020Base`](aries_cloudagent.vc.ld_proofs.suites.md#aries_cloudagent.vc.ld_proofs.suites.bbs_bls_signature_2020_base.BbsBlsSignature2020Base)


            * [`BbsBlsSignature2020Base.BBS_SUPPORTED`](aries_cloudagent.vc.ld_proofs.suites.md#aries_cloudagent.vc.ld_proofs.suites.bbs_bls_signature_2020_base.BbsBlsSignature2020Base.BBS_SUPPORTED)


    * [aries_cloudagent.vc.ld_proofs.suites.bbs_bls_signature_proof_2020 module](aries_cloudagent.vc.ld_proofs.suites.md#module-aries_cloudagent.vc.ld_proofs.suites.bbs_bls_signature_proof_2020)


        * [`BbsBlsSignatureProof2020`](aries_cloudagent.vc.ld_proofs.suites.md#aries_cloudagent.vc.ld_proofs.suites.bbs_bls_signature_proof_2020.BbsBlsSignatureProof2020)


            * [`BbsBlsSignatureProof2020.derive_proof()`](aries_cloudagent.vc.ld_proofs.suites.md#aries_cloudagent.vc.ld_proofs.suites.bbs_bls_signature_proof_2020.BbsBlsSignatureProof2020.derive_proof)


            * [`BbsBlsSignatureProof2020.signature_type`](aries_cloudagent.vc.ld_proofs.suites.md#aries_cloudagent.vc.ld_proofs.suites.bbs_bls_signature_proof_2020.BbsBlsSignatureProof2020.signature_type)


            * [`BbsBlsSignatureProof2020.supported_derive_proof_types`](aries_cloudagent.vc.ld_proofs.suites.md#aries_cloudagent.vc.ld_proofs.suites.bbs_bls_signature_proof_2020.BbsBlsSignatureProof2020.supported_derive_proof_types)


            * [`BbsBlsSignatureProof2020.verify_proof()`](aries_cloudagent.vc.ld_proofs.suites.md#aries_cloudagent.vc.ld_proofs.suites.bbs_bls_signature_proof_2020.BbsBlsSignatureProof2020.verify_proof)


    * [aries_cloudagent.vc.ld_proofs.suites.ed25519_signature_2018 module](aries_cloudagent.vc.ld_proofs.suites.md#module-aries_cloudagent.vc.ld_proofs.suites.ed25519_signature_2018)


        * [`Ed25519Signature2018`](aries_cloudagent.vc.ld_proofs.suites.md#aries_cloudagent.vc.ld_proofs.suites.ed25519_signature_2018.Ed25519Signature2018)


            * [`Ed25519Signature2018.signature_type`](aries_cloudagent.vc.ld_proofs.suites.md#aries_cloudagent.vc.ld_proofs.suites.ed25519_signature_2018.Ed25519Signature2018.signature_type)


    * [aries_cloudagent.vc.ld_proofs.suites.jws_linked_data_signature module](aries_cloudagent.vc.ld_proofs.suites.md#module-aries_cloudagent.vc.ld_proofs.suites.jws_linked_data_signature)


        * [`JwsLinkedDataSignature`](aries_cloudagent.vc.ld_proofs.suites.md#aries_cloudagent.vc.ld_proofs.suites.jws_linked_data_signature.JwsLinkedDataSignature)


            * [`JwsLinkedDataSignature.sign()`](aries_cloudagent.vc.ld_proofs.suites.md#aries_cloudagent.vc.ld_proofs.suites.jws_linked_data_signature.JwsLinkedDataSignature.sign)


            * [`JwsLinkedDataSignature.verify_signature()`](aries_cloudagent.vc.ld_proofs.suites.md#aries_cloudagent.vc.ld_proofs.suites.jws_linked_data_signature.JwsLinkedDataSignature.verify_signature)


    * [aries_cloudagent.vc.ld_proofs.suites.linked_data_proof module](aries_cloudagent.vc.ld_proofs.suites.md#module-aries_cloudagent.vc.ld_proofs.suites.linked_data_proof)


        * [`DeriveProofResult`](aries_cloudagent.vc.ld_proofs.suites.md#aries_cloudagent.vc.ld_proofs.suites.linked_data_proof.DeriveProofResult)


            * [`DeriveProofResult.document`](aries_cloudagent.vc.ld_proofs.suites.md#aries_cloudagent.vc.ld_proofs.suites.linked_data_proof.DeriveProofResult.document)


            * [`DeriveProofResult.proof`](aries_cloudagent.vc.ld_proofs.suites.md#aries_cloudagent.vc.ld_proofs.suites.linked_data_proof.DeriveProofResult.proof)


        * [`LinkedDataProof`](aries_cloudagent.vc.ld_proofs.suites.md#aries_cloudagent.vc.ld_proofs.suites.linked_data_proof.LinkedDataProof)


            * [`LinkedDataProof.create_proof()`](aries_cloudagent.vc.ld_proofs.suites.md#aries_cloudagent.vc.ld_proofs.suites.linked_data_proof.LinkedDataProof.create_proof)


            * [`LinkedDataProof.derive_proof()`](aries_cloudagent.vc.ld_proofs.suites.md#aries_cloudagent.vc.ld_proofs.suites.linked_data_proof.LinkedDataProof.derive_proof)


            * [`LinkedDataProof.match_proof()`](aries_cloudagent.vc.ld_proofs.suites.md#aries_cloudagent.vc.ld_proofs.suites.linked_data_proof.LinkedDataProof.match_proof)


            * [`LinkedDataProof.verify_proof()`](aries_cloudagent.vc.ld_proofs.suites.md#aries_cloudagent.vc.ld_proofs.suites.linked_data_proof.LinkedDataProof.verify_proof)


    * [aries_cloudagent.vc.ld_proofs.suites.linked_data_signature module](aries_cloudagent.vc.ld_proofs.suites.md#module-aries_cloudagent.vc.ld_proofs.suites.linked_data_signature)


        * [`LinkedDataSignature`](aries_cloudagent.vc.ld_proofs.suites.md#aries_cloudagent.vc.ld_proofs.suites.linked_data_signature.LinkedDataSignature)


            * [`LinkedDataSignature.create_proof()`](aries_cloudagent.vc.ld_proofs.suites.md#aries_cloudagent.vc.ld_proofs.suites.linked_data_signature.LinkedDataSignature.create_proof)


            * [`LinkedDataSignature.sign()`](aries_cloudagent.vc.ld_proofs.suites.md#aries_cloudagent.vc.ld_proofs.suites.linked_data_signature.LinkedDataSignature.sign)


            * [`LinkedDataSignature.verify_proof()`](aries_cloudagent.vc.ld_proofs.suites.md#aries_cloudagent.vc.ld_proofs.suites.linked_data_signature.LinkedDataSignature.verify_proof)


            * [`LinkedDataSignature.verify_signature()`](aries_cloudagent.vc.ld_proofs.suites.md#aries_cloudagent.vc.ld_proofs.suites.linked_data_signature.LinkedDataSignature.verify_signature)


## Submodules

## aries_cloudagent.vc.ld_proofs.check module

Validator methods to check for properties without a context.


### aries_cloudagent.vc.ld_proofs.check.diff_dict_keys(full: [dict](https://docs.python.org/3/library/stdtypes.html#dict), with_missing: [dict](https://docs.python.org/3/library/stdtypes.html#dict), prefix: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, \*, document_loader: [Callable](https://docs.python.org/3/library/typing.html#typing.Callable)[[[str](https://docs.python.org/3/library/stdtypes.html#str), [dict](https://docs.python.org/3/library/stdtypes.html#dict)], [dict](https://docs.python.org/3/library/stdtypes.html#dict)], context)
Get the difference in dict keys between full and with_missing.

Checks recursively


* **Parameters**

    
    * **full** ([*dict*](https://docs.python.org/3/library/stdtypes.html#dict)) – The full dict with all keys present


    * **with_missing** ([*dict*](https://docs.python.org/3/library/stdtypes.html#dict)) – The dict with possibly keys missing


    * **prefix** ([*str*](https://docs.python.org/3/library/stdtypes.html#str)*, **optional*) – The prefix. Mostly used for internal recursion.



* **Returns**

    List of missing property names in with_missing



* **Return type**

    Sequence[[str](https://docs.python.org/3/library/stdtypes.html#str)]



### aries_cloudagent.vc.ld_proofs.check.get_properties_without_context(document: [dict](https://docs.python.org/3/library/stdtypes.html#dict), document_loader: [Callable](https://docs.python.org/3/library/typing.html#typing.Callable)[[[str](https://docs.python.org/3/library/stdtypes.html#str), [dict](https://docs.python.org/3/library/stdtypes.html#dict)], [dict](https://docs.python.org/3/library/stdtypes.html#dict)])
Get the properties from document that don’t have an context definition.

## aries_cloudagent.vc.ld_proofs.constants module

JSON-LD, Linked Data Proof and Verifiable Credential constants.

## aries_cloudagent.vc.ld_proofs.document_loader module

JSON-LD document loader methods.


### _class_ aries_cloudagent.vc.ld_proofs.document_loader.DocumentLoader(profile: [Profile](aries_cloudagent.core.md#aries_cloudagent.core.profile.Profile), cache_ttl: [int](https://docs.python.org/3/library/functions.html#int) = 300)
Bases: [`object`](https://docs.python.org/3/library/functions.html#object)

JSON-LD document loader.


#### _async_ load_document(url: [str](https://docs.python.org/3/library/stdtypes.html#str), options: [dict](https://docs.python.org/3/library/stdtypes.html#dict))
Load JSON-LD document.

Method signature conforms to PyLD document loader interface

Document loading is processed in separate thread to deal with
async to sync transformation.

## aries_cloudagent.vc.ld_proofs.error module

Linked data proof exception classes.


### _exception_ aries_cloudagent.vc.ld_proofs.error.LinkedDataProofException()
Bases: [`Exception`](https://docs.python.org/3/library/exceptions.html#Exception)

Base exception for linked data proof module.

## aries_cloudagent.vc.ld_proofs.ld_proofs module

Linked data proof signing and verification methods.


### _async_ aries_cloudagent.vc.ld_proofs.ld_proofs.derive(\*, document: [dict](https://docs.python.org/3/library/stdtypes.html#dict), reveal_document: [dict](https://docs.python.org/3/library/stdtypes.html#dict), suite: [LinkedDataProof](aries_cloudagent.vc.ld_proofs.suites.md#aries_cloudagent.vc.ld_proofs.suites.linked_data_proof.LinkedDataProof), document_loader: [Callable](https://docs.python.org/3/library/typing.html#typing.Callable)[[[str](https://docs.python.org/3/library/stdtypes.html#str), [dict](https://docs.python.org/3/library/stdtypes.html#dict)], [dict](https://docs.python.org/3/library/stdtypes.html#dict)], nonce: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[bytes](https://docs.python.org/3/library/stdtypes.html#bytes)] = None)
Derive proof(s) for document with reveal document.

All proofs matching the signature suite type will be replaced with a derived
proof. Other proofs will be discarded.


* **Parameters**

    
    * **document** ([*dict*](https://docs.python.org/3/library/stdtypes.html#dict)) – The document with one or more proofs to be derived


    * **reveal_document** ([*dict*](https://docs.python.org/3/library/stdtypes.html#dict)) – The JSON-LD frame specifying the revealed attributes


    * **suite** (*LinkedDataProof*) – The linked data signature cryptographic suite
    with which to derive the proof


    * **document_loader** (*DocumentLoader*) – The document loader to use.


    * **nonce** ([*bytes*](https://docs.python.org/3/library/stdtypes.html#bytes)*, **optional*) – Nonce to use for the proof. Defaults to None.



* **Returns**

    The document with derived proof(s).



* **Return type**

    [dict](https://docs.python.org/3/library/stdtypes.html#dict)



### _async_ aries_cloudagent.vc.ld_proofs.ld_proofs.sign(\*, document: [dict](https://docs.python.org/3/library/stdtypes.html#dict), suite: [LinkedDataProof](aries_cloudagent.vc.ld_proofs.suites.md#aries_cloudagent.vc.ld_proofs.suites.linked_data_proof.LinkedDataProof), purpose: [ProofPurpose](aries_cloudagent.vc.ld_proofs.purposes.md#aries_cloudagent.vc.ld_proofs.purposes.proof_purpose.ProofPurpose), document_loader: [Callable](https://docs.python.org/3/library/typing.html#typing.Callable)[[[str](https://docs.python.org/3/library/stdtypes.html#str), [dict](https://docs.python.org/3/library/stdtypes.html#dict)], [dict](https://docs.python.org/3/library/stdtypes.html#dict)])
Cryptographically signs the provided document by adding a proof section.

Proof is added based on the provided suite and proof purpose


* **Parameters**

    
    * **document** ([*dict*](https://docs.python.org/3/library/stdtypes.html#dict)) – JSON-LD document to be signed.


    * **suite** (*LinkedDataProof*) – The linked data signature cryptographic suite
    with which to sign the document


    * **purpose** (*ProofPurpose*) – A proof purpose instance that will match proofs to be
    verified and ensure they were created according to the appropriate purpose.


    * **document_loader** (*DocumentLoader*) – The document loader to use.



* **Raises**

    **LinkedDataProofException** – When a jsonld url cannot be resolved, OR signing fails.



* **Returns**

    Signed document.



* **Return type**

    [dict](https://docs.python.org/3/library/stdtypes.html#dict)



### _async_ aries_cloudagent.vc.ld_proofs.ld_proofs.verify(\*, document: [dict](https://docs.python.org/3/library/stdtypes.html#dict), suites: [List](https://docs.python.org/3/library/typing.html#typing.List)[[LinkedDataProof](aries_cloudagent.vc.ld_proofs.suites.md#aries_cloudagent.vc.ld_proofs.suites.linked_data_proof.LinkedDataProof)], purpose: [ProofPurpose](aries_cloudagent.vc.ld_proofs.purposes.md#aries_cloudagent.vc.ld_proofs.purposes.proof_purpose.ProofPurpose), document_loader: [Callable](https://docs.python.org/3/library/typing.html#typing.Callable)[[[str](https://docs.python.org/3/library/stdtypes.html#str), [dict](https://docs.python.org/3/library/stdtypes.html#dict)], [dict](https://docs.python.org/3/library/stdtypes.html#dict)])
Verify the linked data signature on the provided document.


* **Parameters**

    
    * **document** ([*dict*](https://docs.python.org/3/library/stdtypes.html#dict)) – The document with one or more proofs to be verified.


    * **suites** (*List**[**LinkedDataProof**]*) – Acceptable signature suite instances for
    verifying the proof(s).


    * **purpose** (*ProofPurpose*) – A proof purpose instance that will match proofs to be
    verified and ensure they were created according to the appropriate purpose.


    * **document_loader** (*DocumentLoader*) – The document loader to use.



* **Returns**

    Object with a verified boolean property that is

        True if at least one proof matching the given purpose and suite verifies
        and False otherwise. a results property with an array of detailed
        results. if False an errors property will be present, with a list
        containing all of the errors that occurred during the verification process.




* **Return type**

    DocumentVerificationResult


## aries_cloudagent.vc.ld_proofs.proof_set module

Class to represent a Linked Data proof set.


### _class_ aries_cloudagent.vc.ld_proofs.proof_set.ProofSet()
Bases: [`object`](https://docs.python.org/3/library/functions.html#object)

Class for managing proof sets on a JSON-LD document.


#### _async static_ add(\*, document: [dict](https://docs.python.org/3/library/stdtypes.html#dict), suite: [LinkedDataProof](aries_cloudagent.vc.ld_proofs.suites.md#aries_cloudagent.vc.ld_proofs.suites.linked_data_proof.LinkedDataProof), purpose: [ProofPurpose](aries_cloudagent.vc.ld_proofs.purposes.md#aries_cloudagent.vc.ld_proofs.purposes.proof_purpose.ProofPurpose), document_loader: [Callable](https://docs.python.org/3/library/typing.html#typing.Callable)[[[str](https://docs.python.org/3/library/stdtypes.html#str), [dict](https://docs.python.org/3/library/stdtypes.html#dict)], [dict](https://docs.python.org/3/library/stdtypes.html#dict)])
Add a Linked Data proof to the document.

If the document contains other proofs, the proof will be appended
to the existing set of proofs.

Important note: This method assumes that the term proof in the given
document has the same definition as the https://w3id.org/security/v2
JSON-LD @context.


* **Parameters**

    
    * **document** ([*dict*](https://docs.python.org/3/library/stdtypes.html#dict)) – JSON-LD document to be signed.


    * **suite** (*LinkedDataProof*) – A signature suite instance that will create the proof


    * **purpose** (*ProofPurpose*) – A proof purpose instance that will augment the proof
    with information describing its intended purpose.


    * **document_loader** (*DocumentLoader*) – Document loader to use.



* **Returns**

    The signed document, with the signature in the top-level

        proof property.




* **Return type**

    [dict](https://docs.python.org/3/library/stdtypes.html#dict)



#### _async static_ derive(\*, document: [dict](https://docs.python.org/3/library/stdtypes.html#dict), reveal_document: [dict](https://docs.python.org/3/library/stdtypes.html#dict), suite: [LinkedDataProof](aries_cloudagent.vc.ld_proofs.suites.md#aries_cloudagent.vc.ld_proofs.suites.linked_data_proof.LinkedDataProof), document_loader: [Callable](https://docs.python.org/3/library/typing.html#typing.Callable)[[[str](https://docs.python.org/3/library/stdtypes.html#str), [dict](https://docs.python.org/3/library/stdtypes.html#dict)], [dict](https://docs.python.org/3/library/stdtypes.html#dict)], nonce: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[bytes](https://docs.python.org/3/library/stdtypes.html#bytes)] = None)
Create new derived Linked Data proof(s) on document using the reveal document.

Important note: This method assumes that the term proof in the given
document has the same definition as the https://w3id.org/security/v2
JSON-LD @context. (v3 because BBS?)


* **Parameters**

    
    * **document** ([*dict*](https://docs.python.org/3/library/stdtypes.html#dict)) – JSON-LD document with one or more proofs to be derived.


    * **reveal_document** ([*dict*](https://docs.python.org/3/library/stdtypes.html#dict)) – JSON-LD frame specifying the attributes to reveal.


    * **suite** (*LinkedDataProof*) – A signature suite instance to derive the proof.


    * **document_loader** (*DocumentLoader*) – Document loader to use.


    * **nonce** ([*bytes*](https://docs.python.org/3/library/stdtypes.html#bytes)*, **optional*) – Nonce to use for the proof. Defaults to None.



* **Returns**

    The derived document with the derived proof(s) in the top-level

        proof property.




* **Return type**

    [dict](https://docs.python.org/3/library/stdtypes.html#dict)



#### _async static_ verify(\*, document: [dict](https://docs.python.org/3/library/stdtypes.html#dict), suites: [List](https://docs.python.org/3/library/typing.html#typing.List)[[LinkedDataProof](aries_cloudagent.vc.ld_proofs.suites.md#aries_cloudagent.vc.ld_proofs.suites.linked_data_proof.LinkedDataProof)], purpose: [ProofPurpose](aries_cloudagent.vc.ld_proofs.purposes.md#aries_cloudagent.vc.ld_proofs.purposes.proof_purpose.ProofPurpose), document_loader: [Callable](https://docs.python.org/3/library/typing.html#typing.Callable)[[[str](https://docs.python.org/3/library/stdtypes.html#str), [dict](https://docs.python.org/3/library/stdtypes.html#dict)], [dict](https://docs.python.org/3/library/stdtypes.html#dict)])
Verify Linked Data proof(s) on a document.

The proofs to be verified must match the given proof purse.

Important note: This method assumes that the term proof in the given
document has the same definition as the https://w3id.org/security/v2
JSON-LD @context.


* **Parameters**

    
    * **document** ([*dict*](https://docs.python.org/3/library/stdtypes.html#dict)) – JSON-LD document with one or more proofs to be verified.


    * **suites** (*List**[**LinkedDataProof**]*) – Acceptable signature suite instances
    for verifying the proof(s).


    * **purpose** (*ProofPurpose*) – A proof purpose instance that will match proofs
    to be verified and ensure they were created according to the
    appropriate purpose.


    * **document_loader** (*DocumentLoader*) – Document loader to use.



* **Returns**

    Object with a verified property that is true

        if at least one proof matching the given purpose and suite verifies
        and false otherwise. Also contains errors and results properties
        with extra data.




* **Return type**

    DocumentVerificationResult


## aries_cloudagent.vc.ld_proofs.validation_result module

Proof verification and validation result classes.


### _class_ aries_cloudagent.vc.ld_proofs.validation_result.DocumentVerificationResult(\*, verified: [bool](https://docs.python.org/3/library/functions.html#bool), document: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[dict](https://docs.python.org/3/library/stdtypes.html#dict)] = None, results: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[List](https://docs.python.org/3/library/typing.html#typing.List)[ProofResult]] = None, errors: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[List](https://docs.python.org/3/library/typing.html#typing.List)[[Exception](https://docs.python.org/3/library/exceptions.html#Exception)]] = None)
Bases: [`object`](https://docs.python.org/3/library/functions.html#object)

Domain verification result class.


### _class_ aries_cloudagent.vc.ld_proofs.validation_result.ProofResult(\*, verified: [bool](https://docs.python.org/3/library/functions.html#bool), proof: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[dict](https://docs.python.org/3/library/stdtypes.html#dict)] = None, error: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[Exception](https://docs.python.org/3/library/exceptions.html#Exception)] = None, purpose_result: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[PurposeResult] = None)
Bases: [`object`](https://docs.python.org/3/library/functions.html#object)

Proof result class.


### _class_ aries_cloudagent.vc.ld_proofs.validation_result.PurposeResult(\*, valid: [bool](https://docs.python.org/3/library/functions.html#bool), error: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[Exception](https://docs.python.org/3/library/exceptions.html#Exception)] = None, controller: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[dict](https://docs.python.org/3/library/stdtypes.html#dict)] = None)
Bases: [`object`](https://docs.python.org/3/library/functions.html#object)

Proof purpose result class.
