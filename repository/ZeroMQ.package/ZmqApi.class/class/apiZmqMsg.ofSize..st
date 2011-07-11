api
apiZmqMsg: message ofSize: size
	<cdecl:  long 'zmq_msg_init_size' (ZmqApiMessage* long) module:'zmq'>
	^self externalCallFailed