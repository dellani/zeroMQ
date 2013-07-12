as yet unclassified
initialize 
	super initialize.
	self initializeLookups.
	monitor := Monitor new.
	self context register: self.
