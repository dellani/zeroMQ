as yet unclassified
context: aZmqContext
	| socketPointer |
	socketPointer := ZmqApi apiZmqSocketInContext:  aZmqContext contextPointer socketType: self socketType.
	^self socketPointer: socketPointer inContext: aZmqContext.