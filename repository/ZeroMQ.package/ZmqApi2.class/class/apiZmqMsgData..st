private-library api
apiZmqMsgData: aZmqApiMessage
	<cdecl: void* 'zmq_msg_data' (ZmqApiMessage*) module:'zmq'>
	^self externalCallFailed