private-library api
apiZmqMsgSize: messagePointer
	^ self ffiCall: #(long zmq_msg_size (ZmqApiMessage* messagePointer ) )
  "<cdecl: long 'zmq_msg_size' (ZmqApiMessage*) module:'zmq'>
	^self externalCallFailed"