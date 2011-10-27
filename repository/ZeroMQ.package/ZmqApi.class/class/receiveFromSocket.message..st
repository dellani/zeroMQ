receive
receiveFromSocket: socketPointer message: messagePointer
	self pollNonBlocking: [self apiZmqReceiveFromSocket: socketPointer message: messagePointer withFlags: ZmqApiConstants zmqNoBlock] 
