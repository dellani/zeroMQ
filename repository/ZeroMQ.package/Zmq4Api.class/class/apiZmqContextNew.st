private-library api
apiZmqContextNew
	"http://api.zeromq.org/4-2:zmq-ctx-new
	 void *zmq_ctx_new ();"
	^ self ffiCall: #(ZmqApiContext* zmq_ctx_new ())
