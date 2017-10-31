private-library api
apiZmqMsgInit: messagePointer
	"zmq_msg_init - initialise empty ØMQ message
	 int zmq_msg_init (zmq_msg_t *msg);
	 http://api.zeromq.org/4-2:zmq-msg-init"
	^ self ffiCall: #(long zmq_msg_init (ZmqApiMessage* messagePointer ) )
