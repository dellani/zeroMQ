as yet unclassified
startPolling
	pollerProcess ifNotNil: [ Error signal: 'Poller already started!' ].
	pollerProcess := [ 
	[ 
	self poll.
	self giveOtherThreadsTimeToRun ] repeat ] forkAt: Processor highestPriority.
	pollerProcess name: 'Zmq Poller'