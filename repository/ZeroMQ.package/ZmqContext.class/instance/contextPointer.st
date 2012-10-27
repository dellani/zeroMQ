accessing
contextPointer
	^contextPointer ifNil: [ contextPointer := self zmqApi apiZmqInit: 1 ]