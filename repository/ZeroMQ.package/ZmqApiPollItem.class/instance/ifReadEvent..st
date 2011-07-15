as yet unclassified
ifReadEvent:aBlock
	^self ifEvent: ZmqApiConstants zmqPollIn occuredDo: aBlock.