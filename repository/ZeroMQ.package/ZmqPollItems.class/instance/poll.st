as yet unclassified
poll
	| updated position |
	self
		critical: [
			updated := ZmqApi
				checkForError: [ ZmqApi apiZmqPollSockets: pollItemStructure ofLenght: positionToSocketLookup size withTimeout: 0 ].
			position := 0.
			[ updated > 0 ]
				whileTrue: [ 
					| item |
					position := position + 1.
					updated := updated - 1.
					item := self pollItemAt: position.
					item ifReadEvent: [ (self socketAt: position) dataAvailable ] ] ]