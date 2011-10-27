private
privateTerminate
	contextPointer
		ifNotNil: [		
			ZmqApi apiZmqTerm: contextPointer.
			contextPointer := nil. ]