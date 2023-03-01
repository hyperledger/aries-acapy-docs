# aries_cloudagent.vc.ld_proofs.purposes package

## Submodules

## aries_cloudagent.vc.ld_proofs.purposes.assertion_proof_purpose module

Assertion proof purpose class.


### _class_ aries_cloudagent.vc.ld_proofs.purposes.assertion_proof_purpose.AssertionProofPurpose(\*, date: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[datetime](https://docs.python.org/3/library/datetime.html#datetime.datetime)] = None, max_timestamp_delta: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[timedelta](https://docs.python.org/3/library/datetime.html#datetime.timedelta)] = None)
Bases: `ControllerProofPurpose`

Assertion proof purpose class.


#### term(_ = 'assertionMethod_ )
## aries_cloudagent.vc.ld_proofs.purposes.authentication_proof_purpose module

Authentication proof purpose class.


### _class_ aries_cloudagent.vc.ld_proofs.purposes.authentication_proof_purpose.AuthenticationProofPurpose(\*, challenge: [str](https://docs.python.org/3/library/stdtypes.html#str), domain: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, date: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[datetime](https://docs.python.org/3/library/datetime.html#datetime.datetime)] = None, max_timestamp_delta: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[timedelta](https://docs.python.org/3/library/datetime.html#datetime.timedelta)] = None)
Bases: `ControllerProofPurpose`

Authentication proof purpose.


#### term(_ = 'authentication_ )

#### update(proof: [dict](https://docs.python.org/3/library/stdtypes.html#dict))
Update poof purpose, challenge and domain on proof.


#### validate(\*, proof: [dict](https://docs.python.org/3/library/stdtypes.html#dict), document: [dict](https://docs.python.org/3/library/stdtypes.html#dict), suite: LinkedDataProof, verification_method: [dict](https://docs.python.org/3/library/stdtypes.html#dict), document_loader: [Callable](https://docs.python.org/3/library/typing.html#typing.Callable)[[[str](https://docs.python.org/3/library/stdtypes.html#str), [dict](https://docs.python.org/3/library/stdtypes.html#dict)], [dict](https://docs.python.org/3/library/stdtypes.html#dict)])
Validate whether challenge and domain are valid.

## aries_cloudagent.vc.ld_proofs.purposes.controller_proof_purpose module

Controller proof purpose class.


### _class_ aries_cloudagent.vc.ld_proofs.purposes.controller_proof_purpose.ControllerProofPurpose(\*, term: [str](https://docs.python.org/3/library/stdtypes.html#str), date: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[datetime](https://docs.python.org/3/library/datetime.html#datetime.datetime)] = None, max_timestamp_delta: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[timedelta](https://docs.python.org/3/library/datetime.html#datetime.timedelta)] = None)
Bases: `ProofPurpose`

Controller proof purpose class.


#### validate(\*, proof: [dict](https://docs.python.org/3/library/stdtypes.html#dict), document: [dict](https://docs.python.org/3/library/stdtypes.html#dict), suite: LinkedDataProof, verification_method: [dict](https://docs.python.org/3/library/stdtypes.html#dict), document_loader: [Callable](https://docs.python.org/3/library/typing.html#typing.Callable)[[[str](https://docs.python.org/3/library/stdtypes.html#str), [dict](https://docs.python.org/3/library/stdtypes.html#dict)], [dict](https://docs.python.org/3/library/stdtypes.html#dict)])
Validate whether verification method of proof is authorized by controller.

## aries_cloudagent.vc.ld_proofs.purposes.credential_issuance_purpose module

Credential Issuance proof purpose class.


### _class_ aries_cloudagent.vc.ld_proofs.purposes.credential_issuance_purpose.CredentialIssuancePurpose(\*, date: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[datetime](https://docs.python.org/3/library/datetime.html#datetime.datetime)] = None, max_timestamp_delta: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[timedelta](https://docs.python.org/3/library/datetime.html#datetime.timedelta)] = None)
Bases: `AssertionProofPurpose`

Credential Issuance proof purpose.


#### validate(\*, proof: [dict](https://docs.python.org/3/library/stdtypes.html#dict), document: [dict](https://docs.python.org/3/library/stdtypes.html#dict), suite: LinkedDataProof, verification_method: [dict](https://docs.python.org/3/library/stdtypes.html#dict), document_loader: [Callable](https://docs.python.org/3/library/typing.html#typing.Callable)[[[str](https://docs.python.org/3/library/stdtypes.html#str), [dict](https://docs.python.org/3/library/stdtypes.html#dict)], [dict](https://docs.python.org/3/library/stdtypes.html#dict)])
Validate if the issuer matches the controller of the verification method.

## aries_cloudagent.vc.ld_proofs.purposes.proof_purpose module

Base Proof Purpose class.


### _class_ aries_cloudagent.vc.ld_proofs.purposes.proof_purpose.ProofPurpose(\*, term: [str](https://docs.python.org/3/library/stdtypes.html#str), date: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[datetime](https://docs.python.org/3/library/datetime.html#datetime.datetime)] = None, max_timestamp_delta: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[timedelta](https://docs.python.org/3/library/datetime.html#datetime.timedelta)] = None)
Bases: [`object`](https://docs.python.org/3/library/functions.html#object)

Base proof purpose class.


#### match(proof: [dict](https://docs.python.org/3/library/stdtypes.html#dict))
Check whether the passed proof matches with the term of this proof purpose.


#### update(proof: [dict](https://docs.python.org/3/library/stdtypes.html#dict))
Update proof purpose on proof.


#### validate(\*, proof: [dict](https://docs.python.org/3/library/stdtypes.html#dict), document: [dict](https://docs.python.org/3/library/stdtypes.html#dict), suite: LinkedDataProof, verification_method: [dict](https://docs.python.org/3/library/stdtypes.html#dict), document_loader: [Callable](https://docs.python.org/3/library/typing.html#typing.Callable)[[[str](https://docs.python.org/3/library/stdtypes.html#str), [dict](https://docs.python.org/3/library/stdtypes.html#dict)], [dict](https://docs.python.org/3/library/stdtypes.html#dict)])
Validate whether created date of proof is out of max_timestamp_delta range.
