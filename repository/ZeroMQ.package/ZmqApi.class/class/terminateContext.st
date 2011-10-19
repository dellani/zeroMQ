as yet unclassified
terminateContext
	ZmqCurrentContextPointer
		ifNotNil: [ 
			self apiZmqTerm: ZmqCurrentContextPointer.
			ZmqCurrentContextPointer := nil ]