as yet unclassified
parkForSnapshot
	self critical: [
		pollerProcess ifNotNil:[pollerProcess suspend]
	].