private-library api
apiZmqReceiveFromSocket: socket message: message withFlags: flags
	"zmq_recvmsg - receive a message part from a socket
	 int zmq_recvmsg (void *socket, zmq_msg_t *msg, int flags);
	 http://api.zeromq.org/4-2:zmq-recvmsg"
	^ self ffiCall: #(long zmq_recvmsg (ZmqApiSocket* socket, ZmqApiMessage* message, long flags ) )