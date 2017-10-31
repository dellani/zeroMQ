private-library api
apiZmqSocketInContext: context socketType: type
	^ self ffiCall: #(ZmqApiSocket* zmq_socket #(ZmqApiContext* context, long type))
	"<cdecl: ZmqApiSocket* 'zmq_socket' (ZmqApiContext* long) module:'zmq'>
	^self externalCallFailed"