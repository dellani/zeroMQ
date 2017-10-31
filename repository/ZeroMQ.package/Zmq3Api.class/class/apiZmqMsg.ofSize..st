private-library api
apiZmqMsg: message ofSize: size
	^ self ffiCall: #(long zmq_msg_init_size (ZmqApiMessage* message, long size) )
	"int zmq_msg_init_size (zmq_msg_t *msg, size_t size);"