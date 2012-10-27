private-library api
apiZmqReceiveFromSocket: socket message:  message withFlags:   flags
  <cdecl: long 'zmq_recvmsg' (ZmqApiSocket* Zmq3ApiMessage* long) module:'zmq'>
  ^self externalCallFailed