as yet unclassified
initializeContextPointer
	contextPointer ifNil: [ contextPointer := ZmqApi apiZmqInit: 1 ]