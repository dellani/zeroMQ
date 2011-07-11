as yet unclassified
send: aByteArray
	| messagePointer |
	messagePointer := ZmqApi messageFromByteArray: aByteArray.
	ZmqApi checkForError:[ZmqApi apiZmqSendToSocket: socketPointer message: messagePointer withFlags: 0].
	ZmqApi checkForError:[ZmqApi apiZmqMsgClose: messagePointer].