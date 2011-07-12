as yet unclassified
contextPointer
	^ZmqCurrentContextPointer ifNil:[ZmqCurrentContextPointer := self newContext ].