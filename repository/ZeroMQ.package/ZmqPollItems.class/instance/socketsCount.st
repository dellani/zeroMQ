as yet unclassified
socketsCount
	self
		critical: [ 
			^ socketToPositionLookup size. ].