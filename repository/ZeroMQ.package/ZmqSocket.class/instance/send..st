as yet unclassified
send: aByteArray
	monitor
		critical: [ 			
			| messagePointer |		
			self waitForUnpark.
			messagePointer := ZmqApi messageFromByteArray: aByteArray.
			ZmqApi checkForError: [ ZmqApi apiZmqSendToSocket: self socketPointer message: messagePointer withFlags: 0 ].
			ZmqApi checkForError: [ ZmqApi apiZmqMsgClose: messagePointer ] ]