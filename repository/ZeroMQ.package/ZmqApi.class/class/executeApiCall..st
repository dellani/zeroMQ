as yet unclassified
executeApiCall: aBlock
	| retVal |
	retVal := aBlock value.
	retVal < 0
		ifTrue: [ 
			| errno |
			errno := self apiZmqErrno.
			ZmqApiConstants zmqErrorAgain = errno
				ifFalse: [ Error signal: 'Error ' , errno asString , ' occured.' ] ].
	^ retVal