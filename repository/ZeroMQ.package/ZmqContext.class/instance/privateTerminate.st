private
privateTerminate
	contextPointer
		ifNotNil: [		
			self zmqApi apiZmqTerm: contextPointer.
			contextPointer := nil. ]