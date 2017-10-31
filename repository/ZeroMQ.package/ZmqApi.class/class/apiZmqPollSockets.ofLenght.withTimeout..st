private-library api
apiZmqPollSockets: aZmqPollItemArray ofLenght: length withTimeout: timeout
	^ self ffiCall: #(long zmq_poll #(ExternalStructure* aZmqPollItemArray, long length, longlong timeout))
	"<cdecl:  long 'zmq_poll' (ExternalStructure* long longlong) module:'zmq'>
	^self externalCallFailed"