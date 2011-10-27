private
removeSocket:  aZmqSocket
	sockets remove: aZmqSocket.
	poller removeSocket: aZmqSocket.
	aZmqSocket privateClose.