accessing
contextPointer
	^contextPointer ifNil: [ contextPointer := ZmqApi apiZmqInit: 1 ]