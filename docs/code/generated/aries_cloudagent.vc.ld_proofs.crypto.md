# aries_cloudagent.vc.ld_proofs.crypto package

## Submodules

## aries_cloudagent.vc.ld_proofs.crypto.key_pair module

Base key pair class.


### _class_ aries_cloudagent.vc.ld_proofs.crypto.key_pair.KeyPair()
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

## aries_cloudagent.vc.ld_proofs.crypto.wallet_key_pair module

Key pair based on base wallet interface.


### _class_ aries_cloudagent.vc.ld_proofs.crypto.wallet_key_pair.WalletKeyPair(\*, wallet: [BaseWallet](aries_cloudagent.wallet.md#aries_cloudagent.wallet.base.BaseWallet), key_type: [KeyType](aries_cloudagent.wallet.md#aries_cloudagent.wallet.key_type.KeyType), public_key_base58: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None)
Bases: `KeyPair`

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
