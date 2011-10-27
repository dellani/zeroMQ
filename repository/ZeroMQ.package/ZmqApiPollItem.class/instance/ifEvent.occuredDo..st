testing
ifEvent: bitMask occuredDo:  aBlock
	^((self revents bitAnd: bitMask) = bitMask) ifTrue: aBlock.