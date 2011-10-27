private-library api
apiZmqPollSockets: aZmqPollItemArray ofLenght: length withTimeout: timeout
	<cdecl:  long 'zmq_poll' (ExternalStructure* long longlong) module:'zmq'>
	^self externalCallFailed