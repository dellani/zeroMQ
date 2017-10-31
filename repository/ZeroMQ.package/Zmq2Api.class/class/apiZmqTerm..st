private-library api
apiZmqTerm: threads
	^self ffiCall: #(long zmq_term (ZmqApiContext* threads) )
	"<cdecl: long 'zmq_term' (ZmqApiContext*) module:'zmq'>
	^self externalCallFailed"