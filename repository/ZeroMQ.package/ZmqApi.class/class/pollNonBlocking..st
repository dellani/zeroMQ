as yet unclassified
pollNonBlocking: aBlock
	[ aBlock value < 0 ]
		whileTrue: [ 
			| errno |
			errno := self apiZmqErrno.
			ZmqApiConstants zmqErrorAgain = errno
				ifTrue: [ Processor yield]
				ifFalse: [ Error signal: 'Error ' , errno asString , ' occured.' ] ]