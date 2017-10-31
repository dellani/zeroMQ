private-library api
apiZmqContextNew
	^ self ffiCall: #(ZmqApiContext* zmq_ctx_new ())
	"<cdecl: ZmqApiContext* 'zmq_ctx_new' (void) module:'zmq'>
	^self externalCallFailed"