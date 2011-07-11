as yet unclassified
checkForError: aBlock
	| retVal |
	retVal := aBlock value.
	retVal < 0 ifTrue:[
		| errorCode |
		errorCode := self apiZmqErrno.
		Error signal: 'Error ',errorCode asString, ' occured.'.
	].