system startup
reinitialize
	self critical: [ pollerProcess ifNotNil:[pollerProcess resume] ]