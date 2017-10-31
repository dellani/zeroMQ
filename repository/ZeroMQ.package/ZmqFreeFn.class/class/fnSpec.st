callback spec
fnSpec
	"typedef void (zmq_free_fn) (void *data, void *hint);
	 int zmq_msg_init_data (zmq_msg_t *msg, void *data, size_t size, zmq_free_fn *ffn, void *hint);
	 http://api.zeromq.org/4-2:zmq-msg-init-data"

	^'void (void *data, void *hint)'