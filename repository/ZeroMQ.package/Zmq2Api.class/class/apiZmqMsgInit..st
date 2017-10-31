private-library api
apiZmqMsgInit: messagePointer
	^ self ffiCall: #(long zmq_msg_init (ZmqApiMessage* messagePointer ) )
  "<cdecl: long 'zmq_msg_init' (ZmqApiMessage*) module:'zmq'>
	^self externalCallFailed"