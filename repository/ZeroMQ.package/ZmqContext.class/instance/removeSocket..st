private
removeSocket:  aZmqSocket
	sockets remove: aZmqSocket.
	globalPoller removeSocket: aZmqSocket.
	aZmqSocket privateClose.