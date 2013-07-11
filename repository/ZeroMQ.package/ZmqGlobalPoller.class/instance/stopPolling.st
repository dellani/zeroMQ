as yet unclassified
stopPolling
	monitor
		critical: [ 
			pollerProcess
				ifNotNil: [ 
					pollerProcess terminate.
					] ]