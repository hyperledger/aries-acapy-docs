# aries_cloudagent.transport.queue package

## Submodules

## aries_cloudagent.transport.queue.base module

Abstract message queue.


### _class_ aries_cloudagent.transport.queue.base.BaseMessageQueue()
Bases: [`ABC`](https://docs.python.org/3/library/abc.html#abc.ABC)

Abstract message queue class.


#### _abstract async_ dequeue(\*, timeout: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[int](https://docs.python.org/3/library/functions.html#int)] = None)
Dequeue a message.


* **Returns**

    The dequeued message, or None if a timeout occurs



* **Raises**

    
    * **asyncio.CancelledError if the queue has been stopped** – 


    * **asyncio.TimeoutError if the timeout is reached** – 



#### _abstract async_ enqueue(message)
Enqueue a message.


* **Parameters**

    **message** – The message to add to the end of the queue



* **Raises**

    **asyncio.CancelledError if the queue has been stopped** – 



#### _abstract async_ join()
Wait for the queue to empty.


#### _abstract_ reset()
Empty the queue and reset the stop event.


#### _abstract_ stop()
Cancel active iteration of the queue.


#### _abstract_ task_done()
Indicate that the current task is complete.

## aries_cloudagent.transport.queue.basic module

Basic in memory queue.


### _class_ aries_cloudagent.transport.queue.basic.BasicMessageQueue()
Bases: `BaseMessageQueue`

Basic in memory queue implementation class.


#### _async_ dequeue(\*, timeout: [Optional](https://docs.python.org/3/library/typing.html#typing.Optional)[[int](https://docs.python.org/3/library/functions.html#int)] = None)
Dequeue a message.


* **Returns**

    The dequeued message, or None if a timeout occurs



* **Raises**

    
    * **asyncio.CancelledError if the queue has been stopped** – 


    * **asyncio.TimeoutError if the timeout is reached** – 



#### _async_ enqueue(message)
Enqueue a message.


* **Parameters**

    **message** – The message to add to the end of the queue



* **Raises**

    **asyncio.CancelledError if the queue has been stopped** – 



#### _async_ join()
Wait for the queue to empty.


#### make_queue()
Create the queue instance.


#### reset()
Empty the queue and reset the stop event.


#### stop()
Cancel active iteration of the queue.


#### task_done()
Indicate that the current task is complete.
