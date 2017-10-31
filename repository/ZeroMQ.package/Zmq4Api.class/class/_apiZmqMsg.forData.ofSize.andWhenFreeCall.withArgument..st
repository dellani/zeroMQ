private-library api
_apiZmqMsg: message forData: data ofSize: size andWhenFreeCall: functionPtr withArgument: argument
	"typedef void (zmq_free_fn) (void *data, void *hint);
	 int zmq_msg_init_data (zmq_msg_t *msg, void *data, size_t size, zmq_free_fn *ffn, void *hint);
	 http://api.zeromq.org/4-2:zmq-msg-init-data"
	^ self ffiCall: #(long zmq_msg_init_data (ZmqApiMessage* message, FFIVoid* data, long size, ZmqFreeFn* functionPtr, FFIVoid* argument ) )