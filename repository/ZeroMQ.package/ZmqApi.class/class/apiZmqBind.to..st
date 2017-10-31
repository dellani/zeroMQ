private-library api
apiZmqBind: socket to: endpoint
	^ self ffiCall: #(long zmq_bind #(ZmqApiSocket* socket, char* endpoint))
	"<cdecl: long 'zmq_bind' (ZmqApiSocket* char*) module:'zmq'>
	^self externalCallFailed"