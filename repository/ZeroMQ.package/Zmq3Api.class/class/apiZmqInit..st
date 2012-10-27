private-library api
apiZmqInit: threads
	<cdecl: ZmqApiContext* 'zmq_init' (long) module:'zmq'>
	^self externalCallFailed