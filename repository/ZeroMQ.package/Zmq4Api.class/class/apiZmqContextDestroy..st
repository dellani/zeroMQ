private-library api
apiZmqContextDestroy: aZmqApiContext
	"int zmq_ctx_destroy (void *context);
	 http://api.zeromq.org/4-2:zmq-ctx-destroy"
	^ self ffiCall: #(long zmq_ctx_destroy #(ZmqApiContext* aZmqApiContext))