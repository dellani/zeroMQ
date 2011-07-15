as yet unclassified
initialize 
	super initialize.
	positionToSocketLookup  := Dictionary new.
	socketToPositionLookup := IdentityDictionary new.
	monitor := Monitor new.
	parked := false.