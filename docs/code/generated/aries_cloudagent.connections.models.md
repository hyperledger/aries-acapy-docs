# aries_cloudagent.connections.models package

## Subpackages


* [aries_cloudagent.connections.models.diddoc package](aries_cloudagent.connections.models.diddoc.md)


    * [`DIDDoc`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.DIDDoc)


        * [`DIDDoc.CONTEXT`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.DIDDoc.CONTEXT)


        * [`DIDDoc.add_service_pubkeys()`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.DIDDoc.add_service_pubkeys)


        * [`DIDDoc.authnkey`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.DIDDoc.authnkey)


        * [`DIDDoc.deserialize()`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.DIDDoc.deserialize)


        * [`DIDDoc.did`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.DIDDoc.did)


        * [`DIDDoc.from_json()`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.DIDDoc.from_json)


        * [`DIDDoc.pubkey`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.DIDDoc.pubkey)


        * [`DIDDoc.serialize()`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.DIDDoc.serialize)


        * [`DIDDoc.service`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.DIDDoc.service)


        * [`DIDDoc.set()`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.DIDDoc.set)


        * [`DIDDoc.to_json()`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.DIDDoc.to_json)


    * [`LinkedDataKeySpec`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.LinkedDataKeySpec)


        * [`LinkedDataKeySpec.authn_type`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.LinkedDataKeySpec.authn_type)


        * [`LinkedDataKeySpec.specifier`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.LinkedDataKeySpec.specifier)


        * [`LinkedDataKeySpec.ver_type`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.LinkedDataKeySpec.ver_type)


    * [`PublicKey`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.PublicKey)


        * [`PublicKey.authn`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.PublicKey.authn)


        * [`PublicKey.controller`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.PublicKey.controller)


        * [`PublicKey.did`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.PublicKey.did)


        * [`PublicKey.id`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.PublicKey.id)


        * [`PublicKey.to_dict()`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.PublicKey.to_dict)


        * [`PublicKey.type`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.PublicKey.type)


        * [`PublicKey.value`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.PublicKey.value)


    * [`PublicKeyType`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.PublicKeyType)


        * [`PublicKeyType.ED25519_SIG_2018`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.PublicKeyType.ED25519_SIG_2018)


        * [`PublicKeyType.EDDSA_SA_SIG_SECP256K1`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.PublicKeyType.EDDSA_SA_SIG_SECP256K1)


        * [`PublicKeyType.RSA_SIG_2018`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.PublicKeyType.RSA_SIG_2018)


        * [`PublicKeyType.authn_type`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.PublicKeyType.authn_type)


        * [`PublicKeyType.get()`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.PublicKeyType.get)


        * [`PublicKeyType.specification()`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.PublicKeyType.specification)


        * [`PublicKeyType.specifier`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.PublicKeyType.specifier)


        * [`PublicKeyType.ver_type`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.PublicKeyType.ver_type)


    * [`Service`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.Service)


        * [`Service.did`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.Service.did)


        * [`Service.endpoint`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.Service.endpoint)


        * [`Service.id`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.Service.id)


        * [`Service.priority`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.Service.priority)


        * [`Service.recip_keys`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.Service.recip_keys)


        * [`Service.routing_keys`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.Service.routing_keys)


        * [`Service.to_dict()`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.Service.to_dict)


        * [`Service.type`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.Service.type)


    * [Submodules](aries_cloudagent.connections.models.diddoc.md#submodules)


    * [aries_cloudagent.connections.models.diddoc.diddoc module](aries_cloudagent.connections.models.diddoc.md#module-aries_cloudagent.connections.models.diddoc.diddoc)


        * [`DIDDoc`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.diddoc.DIDDoc)


            * [`DIDDoc.CONTEXT`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.diddoc.DIDDoc.CONTEXT)


            * [`DIDDoc.add_service_pubkeys()`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.diddoc.DIDDoc.add_service_pubkeys)


            * [`DIDDoc.authnkey`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.diddoc.DIDDoc.authnkey)


            * [`DIDDoc.deserialize()`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.diddoc.DIDDoc.deserialize)


            * [`DIDDoc.did`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.diddoc.DIDDoc.did)


            * [`DIDDoc.from_json()`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.diddoc.DIDDoc.from_json)


            * [`DIDDoc.pubkey`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.diddoc.DIDDoc.pubkey)


            * [`DIDDoc.serialize()`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.diddoc.DIDDoc.serialize)


            * [`DIDDoc.service`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.diddoc.DIDDoc.service)


            * [`DIDDoc.set()`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.diddoc.DIDDoc.set)


            * [`DIDDoc.to_json()`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.diddoc.DIDDoc.to_json)


    * [aries_cloudagent.connections.models.diddoc.publickey module](aries_cloudagent.connections.models.diddoc.md#module-aries_cloudagent.connections.models.diddoc.publickey)


        * [`LinkedDataKeySpec`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.publickey.LinkedDataKeySpec)


            * [`LinkedDataKeySpec.authn_type`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.publickey.LinkedDataKeySpec.authn_type)


            * [`LinkedDataKeySpec.specifier`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.publickey.LinkedDataKeySpec.specifier)


            * [`LinkedDataKeySpec.ver_type`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.publickey.LinkedDataKeySpec.ver_type)


        * [`PublicKey`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.publickey.PublicKey)


            * [`PublicKey.authn`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.publickey.PublicKey.authn)


            * [`PublicKey.controller`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.publickey.PublicKey.controller)


            * [`PublicKey.did`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.publickey.PublicKey.did)


            * [`PublicKey.id`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.publickey.PublicKey.id)


            * [`PublicKey.to_dict()`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.publickey.PublicKey.to_dict)


            * [`PublicKey.type`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.publickey.PublicKey.type)


            * [`PublicKey.value`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.publickey.PublicKey.value)


        * [`PublicKeyType`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.publickey.PublicKeyType)


            * [`PublicKeyType.ED25519_SIG_2018`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.publickey.PublicKeyType.ED25519_SIG_2018)


            * [`PublicKeyType.EDDSA_SA_SIG_SECP256K1`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.publickey.PublicKeyType.EDDSA_SA_SIG_SECP256K1)


            * [`PublicKeyType.RSA_SIG_2018`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.publickey.PublicKeyType.RSA_SIG_2018)


            * [`PublicKeyType.authn_type`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.publickey.PublicKeyType.authn_type)


            * [`PublicKeyType.get()`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.publickey.PublicKeyType.get)


            * [`PublicKeyType.specification()`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.publickey.PublicKeyType.specification)


            * [`PublicKeyType.specifier`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.publickey.PublicKeyType.specifier)


            * [`PublicKeyType.ver_type`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.publickey.PublicKeyType.ver_type)


    * [aries_cloudagent.connections.models.diddoc.service module](aries_cloudagent.connections.models.diddoc.md#module-aries_cloudagent.connections.models.diddoc.service)


        * [`Service`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.service.Service)


            * [`Service.did`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.service.Service.did)


            * [`Service.endpoint`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.service.Service.endpoint)


            * [`Service.id`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.service.Service.id)


            * [`Service.priority`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.service.Service.priority)


            * [`Service.recip_keys`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.service.Service.recip_keys)


            * [`Service.routing_keys`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.service.Service.routing_keys)


            * [`Service.to_dict()`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.service.Service.to_dict)


            * [`Service.type`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.service.Service.type)


    * [aries_cloudagent.connections.models.diddoc.util module](aries_cloudagent.connections.models.diddoc.md#module-aries_cloudagent.connections.models.diddoc.util)


        * [`canon_did()`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.util.canon_did)


        * [`canon_ref()`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.util.canon_ref)


        * [`ok_did()`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.util.ok_did)


        * [`resource()`](aries_cloudagent.connections.models.diddoc.md#aries_cloudagent.connections.models.diddoc.util.resource)


## Submodules

## aries_cloudagent.connections.models.conn_record module

## aries_cloudagent.connections.models.connection_target module
