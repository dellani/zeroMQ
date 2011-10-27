private
removeSocket:  aZmqSocket
	sockets remove: aZmqSocket.
	aZmqSocket privateClose.