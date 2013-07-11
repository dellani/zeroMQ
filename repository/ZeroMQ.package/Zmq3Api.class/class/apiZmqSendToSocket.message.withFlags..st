private-library api
apiZmqSendToSocket: socketPointer message: messagePointer withFlags: flags
	<cdecl: long 'zmq_sendmsg' (ZmqApiSocket* ZmqApiMessage* long) module:'zmq'>