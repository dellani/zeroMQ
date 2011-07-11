as yet unclassified
bindSocket: aZmqApiSocket to: aByteString
	self checkForError: [self apiZmqBind: aZmqApiSocket to:  aByteString ].