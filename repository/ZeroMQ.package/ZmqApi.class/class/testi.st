as yet unclassified
testi
	| socket |
	socket := ZmqContext new publisherSocket bind: 'tcp://*:5555'.
	[[socket send: 'jee' asByteArray ] repeat] fork.
	
	