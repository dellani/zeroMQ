as yet unclassified
receive
	monitor 
		critical: [ 
			| messagePointer msg |
			messagePointer := ZmqApiMessage externalNew.
			ZmqApi initializeMessage: messagePointer.
			ZmqApi receiveFromSocket: self socketPointer message: messagePointer.
			msg := ZmqApi messageContent: messagePointer.
			ZmqApi closeMessage: messagePointer.
			^ msg ]