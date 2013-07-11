as yet unclassified
poll
	| events position eventsLeft |
	self
		critical: [ 
			events := self context zmqApi
				executeApiCall: [ self context zmqApi apiZmqPollSockets: pollItemStructure ofLenght: positionToSocketLookup size withTimeout: 0 ].
			position := 0.
			events < 0
				ifTrue: [ self logError: 'Poller encountered error: ' , self zmqApi lastZmqError ].	"	Transcript show:'Polled ', updated asString,' items updated'."
			eventsLeft := events.
			[ eventsLeft > 0 and: [ position <= positionToSocketLookup size ] ]
				whileTrue: [ 
					| item |
					position := position + 1.
					item := self pollItemAt: position.
					item
						ifHasEvents: [ 
							eventsLeft := eventsLeft - 1.
							item ifReadEvent: [ (self socketAt: position) dataAvailable ] ] ] ].
	^ events