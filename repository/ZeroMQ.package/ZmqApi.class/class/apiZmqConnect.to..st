private-library api
apiZmqConnect: socket to: endpoint
	^ self ffiCall: #(long zmq_connect #(ZmqApiSocket* socket, char* endpoint))
	"<cdecl: long 'zmq_connect' (ZmqApiSocket* char*) module:'zmq'>
	^self externalCallFailed"