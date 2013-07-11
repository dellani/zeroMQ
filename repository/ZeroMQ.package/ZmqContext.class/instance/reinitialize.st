system startup
reinitialize
	monitor
		critical: [ 
			parked := false.
			sockets do: [ :socket | socket reinitialize ].
			globalPoller reinitialize.
			monitor signalAll ]