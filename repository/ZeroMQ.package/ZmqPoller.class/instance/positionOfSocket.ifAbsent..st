as yet unclassified
positionOfSocket: aZmqSocket ifAbsent: aBlock.
	^socketToPositionLookup at: aZmqSocket ifAbsent: aBlock.
