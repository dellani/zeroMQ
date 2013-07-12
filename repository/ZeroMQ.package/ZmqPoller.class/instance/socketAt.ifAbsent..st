as yet unclassified
socketAt: anInteger ifAbsent: aBlock
	^positionToSocketLookup at: anInteger ifAbsent: aBlock.
