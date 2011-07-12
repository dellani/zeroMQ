as yet unclassified
parkForSnapshot
	monitor
		critical: [ 
			parked := true.
			self privateClose.
			]