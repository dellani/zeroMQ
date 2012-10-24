private-library api
apiZmqContextDestroy: aZmqApiContext
	<cdecl: long 'zmq_context_destroy' (ZmqApiContext*) module:'zmq'>
	^self externalCallFailed