private-library api
apiZmqMsgInit: message ofSize: size
	"zmq_msg_init_size - initialise ØMQ message of a specified size
	 int zmq_msg_init_size (zmq_msg_t *msg, size_t size);
	 http://api.zeromq.org/4-2:zmq-msg-init-size"
	^ self ffiCall: #(long zmq_msg_init_size (ZmqApiMessage* message, long size) )

