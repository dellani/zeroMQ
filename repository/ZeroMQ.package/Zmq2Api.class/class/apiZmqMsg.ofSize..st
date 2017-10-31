private-library api
apiZmqMsg: message ofSize: size
	^ self ffiCall: #(long zmq_msg_init_size (ZmqApiMessage* message, long size) )
	"<cdecl:  long 'zmq_msg_init_size' (ZmqApiMessage* long) module:'zmq'>
	^self externalCallFailed"