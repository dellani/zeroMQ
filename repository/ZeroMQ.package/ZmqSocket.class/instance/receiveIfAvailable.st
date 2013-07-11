as yet unclassified
receiveIfAvailable
	monitor 
		critical: [ 
			| messagePointer msg |
			messagePointer := self context zmqApi newMessagePointer.
			self context zmqApi initializeMessage: messagePointer.
			self context zmqApi receiveFromSocket: self socketPointer message: messagePointer withFlags: ZmqApiConstants zmqNoBlock .
			msg := self context zmqApi messageContent: messagePointer.
			self context zmqApi closeMessage: messagePointer.
			^ msg ]