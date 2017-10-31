private-library api
apiZmqStrError: errno
	^ self ffiCall: #(char* zmq_strerror (long errno ) )
	"<cdecl:char* 'zmq_strerror' (long)  module:'zmq'>
	^self externalCallFailed"