private-library api
apiZmqSendToSocket: socketPointer message: messagePointer withFlags: flags
	"zmq_sendmsg - send a message part on a socket
	int zmq_sendmsg (void *socket, zmq_msg_t *msg, int flags);
	 http://api.zeromq.org/4-2:zmq-sendmsg"
	^ self ffiCall: #(long zmq_sendmsg (ZmqApiSocket* socketPointer, ZmqApiMessage* messagePointer, long flags) )