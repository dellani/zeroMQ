as yet unclassified
startPolling
	pollerProcess ifNotNil: [Error signal: 'Poller already started!'].
	pollerProcess := [[self poll. (Delay forMilliseconds: 10) wait ] repeat] fork.
	pollerProcess name: 'Zmq Poller'