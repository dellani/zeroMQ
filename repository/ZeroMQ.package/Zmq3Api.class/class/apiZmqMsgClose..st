private-library api
apiZmqMsgClose: threads
	^ self ffiCall: #(long zmq_msg_close (ZmqApiMessage* threads) )s
	"<cdecl: long 'zmq_msg_close' (ZmqApiMessage*) module:'zmq'>
	^self externalCallFailed"