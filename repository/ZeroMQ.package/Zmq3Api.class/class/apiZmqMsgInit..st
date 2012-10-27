private-library api
apiZmqMsgInit: messagePointer
  <cdecl: long 'zmq_msg_init' (Zmq3ApiMessage*) module:'zmq'>
	^self externalCallFailed