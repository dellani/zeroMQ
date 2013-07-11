as yet unclassified
socketAt: anInteger
	^self socketAt: anInteger ifAbsent: [Error signal: 'Unkown socket']
.
