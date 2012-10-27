private-library api
apiZmqMsg: message forData: data ofSize: size andWhenFreeCall: functionPtr withArgument: argument
	<cdecl:  long 'zmq_msg_init_data' (Zmq3ApiMessage* ExternalStructure* long ExternalStructure* ExternalStructure*) module:'zmq'>
	^self externalCallFailed