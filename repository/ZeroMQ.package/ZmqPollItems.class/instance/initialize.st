initialization
initialize 
	super initialize.
	positionToSocketLookup  := Dictionary new.
	socketToPositionLookup := IdentityDictionary new.
	monitor := Monitor new.
