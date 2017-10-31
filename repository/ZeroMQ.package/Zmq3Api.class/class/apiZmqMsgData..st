private-library api
apiZmqMsgData: aZmqApiMessage
	^ self ffiCall: #(void* zmq_msg_data (ZmqApiMessage* aZmqApiMessage) )
	"<cdecl: void* 'zmq_msg_data' (ZmqApiMessage*) module:'zmq'>
	^self externalCallFailed"