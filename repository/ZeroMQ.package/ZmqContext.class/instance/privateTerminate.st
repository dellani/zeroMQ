as yet unclassified
privateTerminate
	contextPointer
		ifNotNil: [		
			ZmqApi apiZmqTerm: contextPointer.
			contextPointer := nil. ]