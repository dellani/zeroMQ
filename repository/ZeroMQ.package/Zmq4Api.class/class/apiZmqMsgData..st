private-library api
apiZmqMsgData: aZmqApiMessage
	"zmq_msg_data - retrieve pointer to message content
	void *zmq_msg_data (zmq_msg_t *msg);
	http://api.zeromq.org/4-2:zmq-msg-data"
	^ self ffiCall: #(void* zmq_msg_data (ZmqApiMessage* aZmqApiMessage) )
