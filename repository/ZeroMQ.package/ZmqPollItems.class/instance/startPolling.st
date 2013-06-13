as yet unclassified
startPolling
	pollerProcess ifNotNil: [ Error signal: 'Poller already started!' ].
	pollerProcess := [ 
	[ 
	self poll > 0
		ifFalse: [ self giveOtherThreadsTimeToRun ] ] repeat ] forkAt: Processor highIOPriority.
	pollerProcess name: 'Zmq Poller'