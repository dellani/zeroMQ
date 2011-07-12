socket creation
newSocket: aSocketClass
	^sockets add: (aSocketClass context: self).
