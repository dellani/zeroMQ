as yet unclassified
ifEvent: bitMask occuredDo:  aBlock
	^((self revents bitAnd: bitMask) = bitMask) ifTrue: aBlock.