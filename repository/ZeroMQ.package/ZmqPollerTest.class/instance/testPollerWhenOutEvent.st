as yet unclassified
testPollerWhenOutEvent
	| poller req rep |
	poller := ZmqPoller new.
	rep := self newRepSocket.
	req := self newReqSocket.
	rep bind: 'inproc://#1'.	
	req connect: 'inproc://#1'.
	poller pollSocket: req forEvents: ZmqPollOut.
	self assert: (poller pollFor: 1 milliSeconds) equals: 1.
	