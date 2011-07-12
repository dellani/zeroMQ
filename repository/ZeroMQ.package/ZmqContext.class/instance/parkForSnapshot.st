as yet unclassified
parkForSnapshot
	monitor
		critical: [ 
			sockets do: [ :zmqSocket | zmqSocket parkForSnapshot ].
			self privateTerminate.
			parked := true ]