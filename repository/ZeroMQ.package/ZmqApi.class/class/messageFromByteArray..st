private-message handling
messageFromByteArray: aByteArray
	  | messagePointer dataPointer size externalData |
	size := aByteArray size.
	"null := (ExternalStructure fromHandle: ExternalAddress new beNull)."
	"null := ExternalAddress new beNull."
	"dataPointer := ExternalAddress allocate: size."
	messagePointer := self newMessagePointer.
	self apiZmqMsgInit: messagePointer ofSize: size.
	externalData := self apiZmqMsgData: messagePointer.
	dataPointer := externalData getHandle.
	aByteArray withIndexDo: [:b :i| dataPointer byteAt: i put: b].

	"self apiZmqMsgInit: messagePointer forData: dataPointer ofSize: size andWhenFreeCall: null withArgument: null."

	"self apiZmqMsg: messagePointer forData: (ExternalStructure fromHandle: dataPointer) ofSize: size andWhenFreeCall: null withArgument: null ."
	^messagePointer.