api
apiZmqSendToSocket: socketPointer message: messagePointer withFlags: flags
	<cdecl: long 'zmq_send' (ZmqApiSocket* ZmqApiMessage* long) module:'zmq'>