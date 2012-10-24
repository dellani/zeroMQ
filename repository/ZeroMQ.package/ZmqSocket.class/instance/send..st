as yet unclassified
send: aByteArray
	monitor
		critical: [ 
			| messagePointer |
			self waitForUnpark.
			messagePointer := ZmqApi messageFromByteArray: aByteArray.
			ZmqApi executeApiCall: [ ZmqApi apiZmqSendToSocket: self socketPointer message: messagePointer withFlags: 0 ].
			ZmqApi executeApiCall: [ ZmqApi apiZmqMsgClose: messagePointer ].
			self logDebug: 'Sended ' , aByteArray size asString , ' bytes' ]