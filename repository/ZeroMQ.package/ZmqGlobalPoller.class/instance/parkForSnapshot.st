system startup
parkForSnapshot
	pollerProcess ifNotNil: [ pollerProcess suspend ]