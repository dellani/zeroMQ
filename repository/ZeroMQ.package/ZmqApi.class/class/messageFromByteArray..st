as yet unclassified
messageFromByteArray: aByteArray
	  | messagePointer dataPointer size null |
	size := aByteArray size.
	null := (ExternalStructure fromHandle: ExternalAddress new beNull).
	dataPointer := ExternalAddress allocate: size.
	messagePointer := ZmqApiMessage externalNew.
	aByteArray withIndexDo: [:b :i| dataPointer byteAt: i put: b].	
	self apiZmqMsg: messagePointer forData: (ExternalStructure fromHandle: dataPointer) ofSize: size andWhenFreeCall: null withArgument: null .
	^messagePointer.