private-library api
apiZmqMsgSize: messagePointer
  <cdecl: long 'zmq_msg_size' (ZmqApiMessage*) module:'zmq'>
	^self externalCallFailed