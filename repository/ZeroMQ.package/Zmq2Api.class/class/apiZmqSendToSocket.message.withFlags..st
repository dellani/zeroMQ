private-library api
apiZmqSendToSocket: socketPointer message: messagePointer withFlags: flags
	^ self ffiCall: #(long zmq_send (ZmqApiSocket* socketPointer, ZmqApiMessage* messagePointer, long flags) )
	"<cdecl: long 'zmq_send' (ZmqApiSocket* ZmqApiMessage* long) module:'zmq'>"