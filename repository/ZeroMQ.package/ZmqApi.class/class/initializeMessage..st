message handling
initializeMessage: aZmqApiMessage
	self checkForError: [self apiZmqMsgInit: aZmqApiMessage].