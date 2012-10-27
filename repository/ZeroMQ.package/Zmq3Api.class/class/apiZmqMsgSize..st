private-library api
apiZmqMsgSize: messagePointer
  <cdecl: long 'zmq_msg_size' (Zmq3ApiMessage*) module:'zmq'>
	^self externalCallFailed