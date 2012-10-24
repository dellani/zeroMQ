private-api conveniency
executeApiCall: aBlock
	| retVal tryAgains |
	retVal := aBlock value.
	tryAgains := {(ZmqApiConstants errnoEAGAIN).
	(ZmqApiConstants errnoEINTR)}.
	retVal < 0
		ifTrue: [ 
			| errno |
			errno := self apiZmqErrno.
			(tryAgains includes: errno)
				ifFalse: [ 
					| msg |
					msg := 'Error ' , errno asString , ' occured.'.
					ZmqLog logError: msg.
					Error signal: msg ] ].
	^ retVal