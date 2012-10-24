private
newSocket: aSocketClass
	| socket |
	socket := aSocketClass context: self.
	socket needsPoller
		ifTrue: [ poller pollInSocket: socket ].
	^ sockets add: socket