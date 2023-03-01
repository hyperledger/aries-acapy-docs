# aries_cloudagent.tails package

## Submodules

## aries_cloudagent.tails.base module

Tails server interface base class.


### _class_ aries_cloudagent.tails.base.BaseTailsServer()
Bases: [`ABC`](https://docs.python.org/3/library/abc.html#abc.ABC)

Base class for tails server interface.


#### _abstract async_ upload_tails_file(context: [InjectionContext](aries_cloudagent.config.md#aries_cloudagent.config.injection_context.InjectionContext), rev_reg_id: [str](https://docs.python.org/3/library/stdtypes.html#str), tails_file_path: [str](https://docs.python.org/3/library/stdtypes.html#str), interval: [float](https://docs.python.org/3/library/functions.html#float) = 1.0, backoff: [float](https://docs.python.org/3/library/functions.html#float) = 0.25, max_attempts: [int](https://docs.python.org/3/library/functions.html#int) = 5)
Upload tails file to tails server.


* **Parameters**

    
    * **rev_reg_id** – The revocation registry identifier


    * **tails_file** – The path to the tails file to upload


    * **interval** – initial interval between attempts


    * **backoff** – exponential backoff in retry interval


    * **max_attempts** – maximum number of attempts to make


## aries_cloudagent.tails.error module

Tails server related errors.


### _exception_ aries_cloudagent.tails.error.TailsServerNotConfiguredError(\*args, error_code: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, \*\*kwargs)
Bases: [`BaseError`](aries_cloudagent.core.md#aries_cloudagent.core.error.BaseError)

Error indicating the tails server plugin hasn’t been configured.

## aries_cloudagent.tails.indy_tails_server module
