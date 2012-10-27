private-library api
apiZmqMsgData: aZmqApiMessage
	<cdecl: void* 'zmq_msg_data' (Zmq3ApiMessage*) module:'zmq'>
	^self externalCallFailed