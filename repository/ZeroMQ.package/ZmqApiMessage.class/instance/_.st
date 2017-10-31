accessing structure variables
_
	"This method was automatically generated"
	^(FFITypeArray ofType: #FFICharacterType size: 64) fromHandle: (handle copyFrom: OFFSET__ to: OFFSET__ + 63)