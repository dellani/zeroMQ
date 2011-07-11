as yet unclassified
closeSocket: aZmqApiSocket
	^self checkForError: [self apiZmqClose: aZmqApiSocket ].