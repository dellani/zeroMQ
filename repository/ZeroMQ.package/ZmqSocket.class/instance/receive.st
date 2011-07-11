as yet unclassified
receive
	| messagePointer msg |
	messagePointer := ZmqApiMessage externalNew.
	ZmqApi initializeMessage: messagePointer.
	ZmqApi receiveFromSocket: socketPointer message: messagePointer.
	msg := ZmqApi messageContent: messagePointer.
	ZmqApi closeMessage: messagePointer.
	^msg
