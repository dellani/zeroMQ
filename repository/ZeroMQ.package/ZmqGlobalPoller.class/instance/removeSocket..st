as yet unclassified
removeSocket: aZmqSocket
	| sockets |
	self
		critical: [ 
			sockets := socketToPositionLookup keys copyWithout: aZmqSocket.
			self initializeLookups.
			sockets asArray
				keysAndValuesDo: [ :i :v | 
					socketToPositionLookup at: v put: i.
					positionToSocketLookup at: i put: v.
					self rebuildPollItemStructure ] ]