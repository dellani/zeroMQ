api
apiZmqMsg: message forData: data ofSize: size andWhenFreeCall: functionPtr withArgument: argument
	<cdecl:  long 'zmq_msg_init_data' (ZmqApiMessage* ExternalStructure* long ExternalStructure* ExternalStructure*) module:'zmq'>
	^self externalCallFailed