private-library api
apiZmqConnect: socket to: endpoint
	<cdecl: long 'zmq_connect' (ZmqApiSocket* char*) module:'zmq'>
	^self externalCallFailed