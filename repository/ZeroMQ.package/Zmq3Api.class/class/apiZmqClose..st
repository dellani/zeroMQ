private-library api
apiZmqClose: socket
	<cdecl: long 'zmq_close' (ZmqApiSocket*) module:'zmq'>
	^self externalCallFailed