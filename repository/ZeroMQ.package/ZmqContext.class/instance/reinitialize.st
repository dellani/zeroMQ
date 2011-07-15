as yet unclassified
reinitialize
	monitor
		critical: [ 
			parked := false.
			sockets do: [ :socket | socket reinitialize ].
			poller reinitialize.
			monitor signalAll ]