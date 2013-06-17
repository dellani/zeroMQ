as yet unclassified
rebuildPollItemStructure
	| item |
	self
		critical: [ 
			pollItemExternalAddress
				ifNotNil: [ 
					[ pollItemExternalAddress free ]
						on: PrimitiveFailed
						do: [ 
							"Address was faulty because of process just started"
							 ] ].
			pollItemExternalAddress := ExternalAddress allocate: ZmqApiPollItem byteSize * positionToSocketLookup size.
			positionToSocketLookup
				keysAndValuesDo: [ :position :socket | 
					item := self pollItemAt: position.
					item zmqSocket: socket socketPointer.
					item events: ZmqApiConstants zmqPollIn | ZmqApiConstants zmqPollOut.
					pollItemStructure := ExternalStructure fromHandle: pollItemExternalAddress ] ]