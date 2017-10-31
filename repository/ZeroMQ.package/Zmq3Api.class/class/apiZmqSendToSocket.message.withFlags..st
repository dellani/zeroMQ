private-library api
apiZmqSendToSocket: socketPointer message: messagePointer withFlags: flags
	^ self ffiCall: #(long zmq_sendmsg (ZmqApiSocket* socketPointer, ZmqApiMessage* messagePointer, long flags) )
	"<cdecl: long 'zmq_sendmsg' (ZmqApiSocket* ZmqApiMessage* long) module:'zmq'>"