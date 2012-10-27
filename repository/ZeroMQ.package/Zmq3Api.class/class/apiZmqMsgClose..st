private-library api
apiZmqMsgClose: threads
	<cdecl: long 'zmq_msg_close' (Zmq3ApiMessage*) module:'zmq'>
	^self externalCallFailed