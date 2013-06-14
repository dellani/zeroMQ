system startup
reinitialize
	self
		critical: [
			self rebuildPollItemStructure.
			(pollerProcess isNil or: [ pollerProcess isTerminated ])
				ifTrue: [ 
					pollerProcess := nil.
					self startPolling ]
				ifFalse: [ pollerProcess resume ] ]