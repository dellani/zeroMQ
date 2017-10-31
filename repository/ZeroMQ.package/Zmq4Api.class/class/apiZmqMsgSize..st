private-library api
apiZmqMsgSize: messagePointer
	"zmq_msg_size - retrieve message content size in bytes
	 size_t zmq_msg_size (zmq_msg_t *msg);
	 http://api.zeromq.org/4-2:zmq-msg-size"
	^ self ffiCall: #(long zmq_msg_size (ZmqApiMessage* messagePointer ) )