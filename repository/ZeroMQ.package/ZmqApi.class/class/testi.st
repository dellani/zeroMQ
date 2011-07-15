as yet unclassified
testi
	| socket1 socket2 |
	socket1 := self context zmqSubscriberSocket  bind: 'tcp://*:5555'.
	socket1 subscribeAll.
	socket1 withResultDo: [:bytes| Transcript show: bytes].
	
	