private-library api
apiZmqInit: threads
	^ self ffiCall: #(ZmqApiContext* zmq_init (long threads) )
	"<cdecl: ZmqApiContext* 'zmq_init' (long) module:'zmq'>
	^self externalCallFailed"