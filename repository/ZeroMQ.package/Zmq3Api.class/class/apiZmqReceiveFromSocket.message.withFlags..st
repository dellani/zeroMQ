private-library api
apiZmqReceiveFromSocket: socket message: message withFlags: flags
	^ self ffiCall: #(long zmq_recvmsg (ZmqApiSocket* socket, ZmqApiMessage* message, long flags ) ) 
  "<cdecl: long 'zmq_recvmsg' (ZmqApiSocket* ZmqApiMessage* long) module:'zmq'>
  ^self externalCallFailed"