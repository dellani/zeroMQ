private-library api
apiZmqContextDestroy: aZmqApiContext
	^ self ffiCall: #(long zmq_ctx_destroy (ZmqApiContext* aZmqApiContext ) )
	"<cdecl: long 'zmq_ctx_destroy' (ZmqApiContext*) module:'zmq'>
	^self externalCallFailed"