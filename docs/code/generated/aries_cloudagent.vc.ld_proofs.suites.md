# aries_cloudagent.vc.ld_proofs.suites package

## Submodules

## aries_cloudagent.vc.ld_proofs.suites.bbs_bls_signature_2020 module

BbsBlsSignature2020 class.


### _class_ aries_cloudagent.vc.ld_proofs.suites.bbs_bls_signature_2020.BbsBlsSignature2020(\*, key_pair: [KeyPair](aries_cloudagent.vc.ld_proofs.crypto.md#aries_cloudagent.vc.ld_proofs.crypto.key_pair.KeyPair), proof: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[dict](https://docs.python.org/3/library/stdtypes.html#dict)] = None, verification_method: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, date: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[datetime](https://docs.python.org/3/library/datetime.html#datetime.datetime)] = None)
Bases: `BbsBlsSignature2020Base`

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


## aries_cloudagent.vc.ld_proofs.suites.bbs_bls_signature_2020_base module

BbsBlsSignature2020Base class.


### _class_ aries_cloudagent.vc.ld_proofs.suites.bbs_bls_signature_2020_base.BbsBlsSignature2020Base(\*, signature_type: [str](https://docs.python.org/3/library/stdtypes.html#str), proof: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[dict](https://docs.python.org/3/library/stdtypes.html#dict)] = None, supported_derive_proof_types: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[List](https://docs.python.org/3/library/typing.html#typing.List)[[str](https://docs.python.org/3/library/stdtypes.html#str)]] = None)
Bases: `LinkedDataProof`

Base class for BbsBlsSignature suites.


#### BBS_SUPPORTED(_ = Fals_ )
## aries_cloudagent.vc.ld_proofs.suites.bbs_bls_signature_proof_2020 module

BbsBlsSignatureProof2020 class.


### _class_ aries_cloudagent.vc.ld_proofs.suites.bbs_bls_signature_proof_2020.BbsBlsSignatureProof2020(\*, key_pair: [KeyPair](aries_cloudagent.vc.ld_proofs.crypto.md#aries_cloudagent.vc.ld_proofs.crypto.key_pair.KeyPair))
Bases: `BbsBlsSignature2020Base`

BbsBlsSignatureProof2020 class.


#### _async_ derive_proof(\*, proof: [dict](https://docs.python.org/3/library/stdtypes.html#dict), document: [dict](https://docs.python.org/3/library/stdtypes.html#dict), reveal_document: [dict](https://docs.python.org/3/library/stdtypes.html#dict), document_loader: [Callable](https://docs.python.org/3/library/typing.html#typing.Callable)[[[str](https://docs.python.org/3/library/stdtypes.html#str), [dict](https://docs.python.org/3/library/stdtypes.html#dict)], [dict](https://docs.python.org/3/library/stdtypes.html#dict)], nonce: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[bytes](https://docs.python.org/3/library/stdtypes.html#bytes)] = None)
Derive proof for document, return dict with derived document and proof.


#### signature_type(_ = 'BbsBlsSignatureProof2020_ )

#### supported_derive_proof_types(_ = ['BbsBlsSignature2020', 'sec:BbsBlsSignature2020', 'https://w3id.org/security#BbsBlsSignature2020'_ )

#### _async_ verify_proof(\*, proof: [dict](https://docs.python.org/3/library/stdtypes.html#dict), document: [dict](https://docs.python.org/3/library/stdtypes.html#dict), purpose: [ProofPurpose](aries_cloudagent.vc.ld_proofs.purposes.md#aries_cloudagent.vc.ld_proofs.purposes.proof_purpose.ProofPurpose), document_loader: [Callable](https://docs.python.org/3/library/typing.html#typing.Callable)[[[str](https://docs.python.org/3/library/stdtypes.html#str), [dict](https://docs.python.org/3/library/stdtypes.html#dict)], [dict](https://docs.python.org/3/library/stdtypes.html#dict)])
Verify proof against document and proof purpose.

## aries_cloudagent.vc.ld_proofs.suites.ed25519_signature_2018 module

Ed25519Signature2018 suite.


### _class_ aries_cloudagent.vc.ld_proofs.suites.ed25519_signature_2018.Ed25519Signature2018(\*, key_pair: [KeyPair](aries_cloudagent.vc.ld_proofs.crypto.md#aries_cloudagent.vc.ld_proofs.crypto.key_pair.KeyPair), proof: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[dict](https://docs.python.org/3/library/stdtypes.html#dict)] = None, verification_method: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, date: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[Union](https://docs.python.org/3/library/typing.html#typing.Union)[[datetime](https://docs.python.org/3/library/datetime.html#datetime.datetime), [str](https://docs.python.org/3/library/stdtypes.html#str)]] = None)
Bases: `JwsLinkedDataSignature`

Ed25519Signature2018 suite.


#### signature_type(_ = 'Ed25519Signature2018_ )
## aries_cloudagent.vc.ld_proofs.suites.jws_linked_data_signature module

JWS Linked Data class.


### _class_ aries_cloudagent.vc.ld_proofs.suites.jws_linked_data_signature.JwsLinkedDataSignature(\*, signature_type: [str](https://docs.python.org/3/library/stdtypes.html#str), algorithm: [str](https://docs.python.org/3/library/stdtypes.html#str), required_key_type: [str](https://docs.python.org/3/library/stdtypes.html#str), key_pair: [KeyPair](aries_cloudagent.vc.ld_proofs.crypto.md#aries_cloudagent.vc.ld_proofs.crypto.key_pair.KeyPair), proof: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[dict](https://docs.python.org/3/library/stdtypes.html#dict)] = None, verification_method: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, date: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[Union](https://docs.python.org/3/library/typing.html#typing.Union)[[datetime](https://docs.python.org/3/library/datetime.html#datetime.datetime), [str](https://docs.python.org/3/library/stdtypes.html#str)]] = None)
Bases: `LinkedDataSignature`

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


## aries_cloudagent.vc.ld_proofs.suites.linked_data_proof module

Abstract base class for linked data proofs.


### _class_ aries_cloudagent.vc.ld_proofs.suites.linked_data_proof.DeriveProofResult(\*\*kwargs)
Bases: [`dict`](https://docs.python.org/3/library/stdtypes.html#dict)

Result dict for deriving a proof.


#### document(_: [dict](https://docs.python.org/3/library/stdtypes.html#dict_ )

#### proof(_: [Union](https://docs.python.org/3/library/typing.html#typing.Union)[[dict](https://docs.python.org/3/library/stdtypes.html#dict), [List](https://docs.python.org/3/library/typing.html#typing.List)[[dict](https://docs.python.org/3/library/stdtypes.html#dict)]_ )

### _class_ aries_cloudagent.vc.ld_proofs.suites.linked_data_proof.LinkedDataProof(\*, signature_type: [str](https://docs.python.org/3/library/stdtypes.html#str), proof: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[dict](https://docs.python.org/3/library/stdtypes.html#dict)] = None, supported_derive_proof_types: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[List](https://docs.python.org/3/library/typing.html#typing.List)[[str](https://docs.python.org/3/library/stdtypes.html#str)]] = None)
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


## aries_cloudagent.vc.ld_proofs.suites.linked_data_signature module

Linked Data Signature class.


### _class_ aries_cloudagent.vc.ld_proofs.suites.linked_data_signature.LinkedDataSignature(\*, signature_type: [str](https://docs.python.org/3/library/stdtypes.html#str), proof: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[dict](https://docs.python.org/3/library/stdtypes.html#dict)] = None, verification_method: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, date: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[datetime](https://docs.python.org/3/library/datetime.html#datetime.datetime)] = None)
Bases: `LinkedDataProof`

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
