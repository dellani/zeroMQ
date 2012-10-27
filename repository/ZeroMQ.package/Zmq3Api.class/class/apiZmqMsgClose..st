private-library api
apiZmqMsgClose: threads
	<cdecl: long 'zmq_msg_close' (ZmqApiMessage*) module:'zmq'>
	^self externalCallFailed