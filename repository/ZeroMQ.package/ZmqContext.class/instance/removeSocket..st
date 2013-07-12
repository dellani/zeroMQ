private
removeSocket:  aZmqSocket
	resources remove: aZmqSocket.
	globalPoller ifNotNil: [globalPoller removeSocket: aZmqSocket].
	aZmqSocket privateClose.