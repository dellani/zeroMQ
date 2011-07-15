as yet unclassified
reinitialize
	self critical: [ pollerProcess ifNotNil:[pollerProcess resume] ]