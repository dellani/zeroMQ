as yet unclassified
removeSocket:  aZmqSocket
	sockets remove: aZmqSocket.
	aZmqSocket privateClose.