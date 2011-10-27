message handling
closeMessage: aZmqApiMessage
	self checkForError: [self apiZmqMsgClose: aZmqApiMessage].