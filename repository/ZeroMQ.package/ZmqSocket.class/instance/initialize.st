initialization
initialize 
	super initialize.
	monitor := Monitor new.
	associations := OrderedCollection new.
	parked := false.