private-library api
apiZmqMsgRecv: messagePointer socket: socketPointer withFlags: flags
	"zmq_msg_recv - receive a message part from a socket
	 int zmq_msg_recv (zmq_msg_t *msg, void *socket, int flags);
	 http://api.zeromq.org/4-2:zmq-msg-recv"
	^ self
		ffiCall:
			#(int zmq_msg_recv #(ZmqApiMessage* messagePointer, ZmqApiSocket* socketPointer, int flags))