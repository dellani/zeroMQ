private-library api
apiZmqContextDestroy: aZmqApiContext
	<cdecl: long 'zmq_ctx_destroy' (ZmqApiContext*) module:'zmq'>
	^self externalCallFailed