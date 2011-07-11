api
apiZmqBind: socket to: endpoint
	<cdecl: long 'zmq_bind' (ZmqApiSocket* char*) module:'zmq'>
	^self externalCallFailed