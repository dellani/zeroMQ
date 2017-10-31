private-library api
apiZmqClose: socket
	^ self ffiCall: #(long zmq_close #(ZmqApiSocket* socket))
	"<cdecl: long 'zmq_close' (ZmqApiSocket*) module:'zmq'>
	^self externalCallFailed"