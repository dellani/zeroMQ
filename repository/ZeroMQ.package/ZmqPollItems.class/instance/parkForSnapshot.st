system startup
parkForSnapshot
	self critical: [
		pollerProcess ifNotNil:[pollerProcess suspend]
	].