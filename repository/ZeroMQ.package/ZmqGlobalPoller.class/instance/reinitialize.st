system startup
reinitialize

			(pollerProcess isNil or: [ pollerProcess isTerminated ])
				ifTrue: [ 
					pollerProcess := nil.
					self startPolling ]
				ifFalse: [ pollerProcess resume ] 