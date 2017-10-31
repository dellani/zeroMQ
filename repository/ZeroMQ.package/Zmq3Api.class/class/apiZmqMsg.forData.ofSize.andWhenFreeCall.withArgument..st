private-library api
apiZmqMsg: message forData: data ofSize: size andWhenFreeCall: functionPtr withArgument: argument
	^ self ffiCall: #(long zmq_msg_init_data (ZmqApiMessage* message, ExternalStructure* data, long size, ExternalStructure* functionPtr, ExternalStructure* argument ) )
	"<cdecl:  long 'zmq_msg_init_data' (ZmqApiMessage* ExternalStructure* long ExternalStructure* ExternalStructure*) module:'zmq'>
	^self externalCallFailed"