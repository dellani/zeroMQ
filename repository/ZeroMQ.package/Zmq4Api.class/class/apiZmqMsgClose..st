private-library api
apiZmqMsgClose: aZmqApiMessage
	"int zmq_msg_close (zmq_msg_t *msg);
	http://api.zeromq.org/4-2:zmq-msg-close"
	^ self ffiCall: #(long zmq_msg_close (ZmqApiMessage* aZmqApiMessage) )