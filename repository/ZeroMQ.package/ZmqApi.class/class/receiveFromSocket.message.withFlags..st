receive
receiveFromSocket: socketPointer message: messagePointer withFlags: flags
	self checkForError: [self apiZmqReceiveFromSocket: socketPointer  message: messagePointer withFlags: flags] 
