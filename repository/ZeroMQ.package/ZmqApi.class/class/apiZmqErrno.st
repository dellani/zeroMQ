private-library api
apiZmqErrno
	^ self ffiCall: #(long zmq_errno #())
	"<cdecl:long 'zmq_errno' (void)  module:'zmq'>
	^self externalCallFailed"