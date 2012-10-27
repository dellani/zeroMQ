private-library api
apiZmqMsg: message ofSize: size
	<cdecl:  long 'zmq_msg_init_size' (Zmq3ApiMessage* long) module:'zmq'>
	^self externalCallFailed