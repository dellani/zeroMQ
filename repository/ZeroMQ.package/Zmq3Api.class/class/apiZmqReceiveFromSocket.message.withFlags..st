private-library api
apiZmqReceiveFromSocket: socket message:  message withFlags:   flags
  <cdecl: long 'zmq_recvmsg' (ZmqApiSocket* ZmqApiMessage* long) module:'zmq'>
  ^self externalCallFailed