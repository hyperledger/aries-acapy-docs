# aries_cloudagent.utils package

## Submodules

## aries_cloudagent.utils.classloader module

The classloader provides utilties to dynamically load classes and modules.


### _class_ aries_cloudagent.utils.classloader.ClassLoader()
Bases: [`object`](https://docs.python.org/3/library/functions.html#object)

Class used to load classes from modules dynamically.


#### _classmethod_ load_class(class_name: [str](https://docs.python.org/3/library/stdtypes.html#str), default_module: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, package: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None)
Resolve a complete class path (ie. typing.Dict) to the class itself.


* **Parameters**

    
    * **class_name** – the class name


    * **default_module** – the default module to load, if not part of in the class name


    * **package** – the parent package to search for the module



* **Returns**

    The resolved class



* **Raises**

    
    * **ClassNotFoundError** – If the class could not be resolved at path


    * **ModuleLoadError** – If there was an error loading the module



#### _classmethod_ load_module(mod_path: [str](https://docs.python.org/3/library/stdtypes.html#str), package: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None)
Load a module by its absolute path.


* **Parameters**

    
    * **mod_path** – the absolute or relative module path


    * **package** – the parent package to search for the module



* **Returns**

    The resolved module or None if the module cannot be found



* **Raises**

    **ModuleLoadError** – If there was an error loading the module



#### _classmethod_ load_subclass_of(base_class: [Type](https://docs.python.org/3/library/typing.html#typing.Type), mod_path: [str](https://docs.python.org/3/library/stdtypes.html#str), package: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None)
Resolve an implementation of a base path within a module.


* **Parameters**

    
    * **base_class** – the base class being implemented


    * **mod_path** – the absolute module path


    * **package** – the parent package to search for the module



* **Returns**

    The resolved class



* **Raises**

    
    * **ClassNotFoundError** – If the module or class implementation could not be found


    * **ModuleLoadError** – If there was an error loading the module



#### _classmethod_ scan_subpackages(package: [str](https://docs.python.org/3/library/stdtypes.html#str))
Return a list of sub-packages defined under a named package.


### _exception_ aries_cloudagent.utils.classloader.ClassNotFoundError(\*args, error_code: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, \*\*kwargs)
Bases: [`BaseError`](aries_cloudagent.core.md#aries_cloudagent.core.error.BaseError)

Class not found error.


### _class_ aries_cloudagent.utils.classloader.DeferLoad(cls_path: [str](https://docs.python.org/3/library/stdtypes.html#str))
Bases: [`object`](https://docs.python.org/3/library/functions.html#object)

Helper to defer loading of a class definition.


#### _property_ resolved()
Accessor for the resolved class instance.


### _exception_ aries_cloudagent.utils.classloader.ModuleLoadError(\*args, error_code: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, \*\*kwargs)
Bases: [`BaseError`](aries_cloudagent.core.md#aries_cloudagent.core.error.BaseError)

Module load error.

## aries_cloudagent.utils.dependencies module

Dependency related util methods.


### aries_cloudagent.utils.dependencies.assert_ursa_bbs_signatures_installed()
Assert ursa_bbs_signatures module is installed.


### aries_cloudagent.utils.dependencies.is_indy_sdk_module_installed()
Check whether indy (indy-sdk) module is installed.


* **Returns**

    Whether indy (indy-sdk) is installed.



* **Return type**

    [bool](https://docs.python.org/3/library/functions.html#bool)



### aries_cloudagent.utils.dependencies.is_ursa_bbs_signatures_module_installed()
Check whether ursa_bbs_signatures module is installed.


* **Returns**

    Whether ursa_bbs_signatures is installed.



* **Return type**

    [bool](https://docs.python.org/3/library/functions.html#bool)


## aries_cloudagent.utils.env module

Environment utility methods.


### aries_cloudagent.utils.env.storage_path(\*subpaths, create: [bool](https://docs.python.org/3/library/functions.html#bool) = False)
Get the default aca-py home directory.

## aries_cloudagent.utils.http module

## aries_cloudagent.utils.jwe module

## aries_cloudagent.utils.outofband module

## aries_cloudagent.utils.repeat module

## aries_cloudagent.utils.stats module

Classes for tracking performance and timing.


### _class_ aries_cloudagent.utils.stats.Collector(\*, enabled: [bool](https://docs.python.org/3/library/functions.html#bool) = True, log_path: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None)
Bases: [`object`](https://docs.python.org/3/library/functions.html#object)

Collector for a set of statistics.


#### _property_ enabled(_: [bool](https://docs.python.org/3/library/functions.html#bool_ )
Accessor for the collector’s enabled property.


#### extract(groups: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[Sequence](https://docs.python.org/3/library/typing.html#typing.Sequence)[[str](https://docs.python.org/3/library/stdtypes.html#str)]] = None)
Extract statistics for a specific set of groups.


#### log(name: [str](https://docs.python.org/3/library/stdtypes.html#str), duration: [float](https://docs.python.org/3/library/functions.html#float), start: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[float](https://docs.python.org/3/library/functions.html#float)] = None)
Log an entry in the statistics if the collector is enabled.


#### mark(\*names)
Make a custom decorator function for adding to the set of groups.


#### reset()
Reset the collector’s statistics.


#### _property_ results(_: [dict](https://docs.python.org/3/library/stdtypes.html#dict_ )
Accessor for the current set of collected statistics.


#### timer(\*groups)
Create a new timer attached to this collector.


#### wrap(obj, prop_name: [Union](https://docs.python.org/3/library/typing.html#typing.Union)[[str](https://docs.python.org/3/library/stdtypes.html#str), [Sequence](https://docs.python.org/3/library/typing.html#typing.Sequence)[[str](https://docs.python.org/3/library/stdtypes.html#str)]], groups: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[Sequence](https://docs.python.org/3/library/typing.html#typing.Sequence)[[str](https://docs.python.org/3/library/stdtypes.html#str)]] = None, \*, ignore_missing: [bool](https://docs.python.org/3/library/functions.html#bool) = False)
Wrap a method on a class or class instance.


#### wrap_coro(fn, groups: [Sequence](https://docs.python.org/3/library/typing.html#typing.Sequence)[[str](https://docs.python.org/3/library/stdtypes.html#str)])
Wrap a coroutine instance to collect timing statistics on execution.


#### wrap_fn(fn, groups: [Sequence](https://docs.python.org/3/library/typing.html#typing.Sequence)[[str](https://docs.python.org/3/library/stdtypes.html#str)])
Wrap a function instance to collect timing statistics on execution.


### _class_ aries_cloudagent.utils.stats.Stats()
Bases: [`object`](https://docs.python.org/3/library/functions.html#object)

A collection of statistics.


#### extract(names: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[Sequence](https://docs.python.org/3/library/typing.html#typing.Sequence)[[str](https://docs.python.org/3/library/stdtypes.html#str)]] = None)
Summarize the stats in a dictionary.


#### log(name: [str](https://docs.python.org/3/library/stdtypes.html#str), duration: [float](https://docs.python.org/3/library/functions.html#float))
Log an entry in the stats.


### _class_ aries_cloudagent.utils.stats.Timer(collector: Collector, groups: [Sequence](https://docs.python.org/3/library/typing.html#typing.Sequence)[[str](https://docs.python.org/3/library/stdtypes.html#str)])
Bases: [`object`](https://docs.python.org/3/library/functions.html#object)

Timer instance for a running task.


#### _classmethod_ now()
Fetch a standard timer value.


#### start()
Start the timer.


#### stop()
Stop the timer.

## aries_cloudagent.utils.task_queue module

Classes for managing a set of asyncio tasks.


### _class_ aries_cloudagent.utils.task_queue.CompletedTask(task: Task, exc_info: [Tuple](https://docs.python.org/3/library/typing.html#typing.Tuple), ident: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, timing: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[dict](https://docs.python.org/3/library/stdtypes.html#dict)] = None)
Bases: [`object`](https://docs.python.org/3/library/functions.html#object)

Represent the result of a queued task.


### _class_ aries_cloudagent.utils.task_queue.PendingTask(coro: [Coroutine](https://docs.python.org/3/library/typing.html#typing.Coroutine), complete_hook: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[Callable](https://docs.python.org/3/library/typing.html#typing.Callable)] = None, ident: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, task_future: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[Future] = None, queued_time: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[float](https://docs.python.org/3/library/functions.html#float)] = None)
Bases: [`object`](https://docs.python.org/3/library/functions.html#object)

Represent a task in the queue.


#### cancel()
Cancel the pending task.


#### _property_ cancelled()
Accessor for the cancelled property.


#### _property_ task(_: Tas_ )
Accessor for the task.


### _class_ aries_cloudagent.utils.task_queue.TaskQueue(max_active: [int](https://docs.python.org/3/library/functions.html#int) = 0, timed: [bool](https://docs.python.org/3/library/functions.html#bool) = False, trace_fn: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[Callable](https://docs.python.org/3/library/typing.html#typing.Callable)] = None)
Bases: [`object`](https://docs.python.org/3/library/functions.html#object)

A class for managing a set of asyncio tasks.


#### add_active(task: Task, task_complete: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[Callable](https://docs.python.org/3/library/typing.html#typing.Callable)] = None, ident: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, timing: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[dict](https://docs.python.org/3/library/stdtypes.html#dict)] = None)
Register an active async task with an optional completion callback.


* **Parameters**

    
    * **task** – The asyncio task instance


    * **task_complete** – An optional callback to run on completion


    * **ident** – A string identifer for the task


    * **timing** – An optional dictionary of timing information



#### add_pending(pending: PendingTask)
Add a task to the pending queue.


* **Parameters**

    **pending** – The PendingTask to add to the task queue



#### cancel()
Cancel any pending or active tasks in the queue.


#### cancel_pending()
Cancel any pending tasks in the queue.


#### _property_ cancelled(_: [bool](https://docs.python.org/3/library/functions.html#bool_ )
Accessor for the cancelled property of the queue.


#### _async_ complete(timeout: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[float](https://docs.python.org/3/library/functions.html#float)] = None, cleanup: [bool](https://docs.python.org/3/library/functions.html#bool) = True)
Cancel any pending tasks and wait for, or cancel active tasks.


#### completed_task(task: Task, task_complete: [Callable](https://docs.python.org/3/library/typing.html#typing.Callable), ident: [str](https://docs.python.org/3/library/stdtypes.html#str), timing: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[dict](https://docs.python.org/3/library/stdtypes.html#dict)] = None)
Clean up after a task has completed and run callbacks.


#### _property_ current_active(_: [int](https://docs.python.org/3/library/functions.html#int_ )
Accessor for the current number of active tasks in the queue.


#### _property_ current_pending(_: [int](https://docs.python.org/3/library/functions.html#int_ )
Accessor for the current number of pending tasks in the queue.


#### _property_ current_size(_: [int](https://docs.python.org/3/library/functions.html#int_ )
Accessor for the total number of tasks in the queue.


#### drain()
Start the process to run queued tasks.


#### _async_ flush()
Wait for any active or pending tasks to be completed.


#### _property_ max_active(_: [int](https://docs.python.org/3/library/functions.html#int_ )
Accessor for the maximum number of active tasks in the queue.


#### put(coro: [Coroutine](https://docs.python.org/3/library/typing.html#typing.Coroutine), task_complete: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[Callable](https://docs.python.org/3/library/typing.html#typing.Callable)] = None, ident: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None)
Add a new task to the queue, delaying execution if busy.


* **Parameters**

    
    * **coro** – The coroutine to run


    * **task_complete** – A callback to run on completion


    * **ident** – A string identifier for the task


Returns: a future resolving to the asyncio task instance once queued


#### _property_ ready(_: [bool](https://docs.python.org/3/library/functions.html#bool_ )
Accessor for the ready property of the queue.


#### run(coro: [Coroutine](https://docs.python.org/3/library/typing.html#typing.Coroutine), task_complete: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[Callable](https://docs.python.org/3/library/typing.html#typing.Callable)] = None, ident: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[str](https://docs.python.org/3/library/stdtypes.html#str)] = None, timing: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[dict](https://docs.python.org/3/library/stdtypes.html#dict)] = None)
Start executing a coroutine as an async task, bypassing the pending queue.


* **Parameters**

    
    * **coro** – The coroutine to run


    * **task_complete** – An optional callback to run on completion


    * **ident** – A string identifier for the task


    * **timing** – An optional dictionary of timing information


Returns: the new asyncio task instance


#### _async_ wait_for(timeout: [float](https://docs.python.org/3/library/functions.html#float))
Wait for all queued tasks to complete with a timeout.


### aries_cloudagent.utils.task_queue.coro_ident(coro: [Coroutine](https://docs.python.org/3/library/typing.html#typing.Coroutine))
Extract an identifier for a coroutine.


### _async_ aries_cloudagent.utils.task_queue.coro_timed(coro: [Coroutine](https://docs.python.org/3/library/typing.html#typing.Coroutine), timing: [dict](https://docs.python.org/3/library/stdtypes.html#dict))
Capture timing for a coroutine.


### aries_cloudagent.utils.task_queue.task_exc_info(task: Task)
Extract exception info from an asyncio task.

## aries_cloudagent.utils.tracing module
