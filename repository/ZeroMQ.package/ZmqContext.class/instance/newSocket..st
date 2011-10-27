private
newSocket: aSocketClass
	^sockets add: (aSocketClass context: self).
