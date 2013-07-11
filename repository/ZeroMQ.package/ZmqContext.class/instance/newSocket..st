private
newSocket: aSocketClass
	| socket |
	socket := aSocketClass context: self.
	^ sockets add: socket