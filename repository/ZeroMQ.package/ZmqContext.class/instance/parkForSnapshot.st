system startup
parkForSnapshot
	monitor
		critical: [
			globalPoller parkForSnapshot.
			sockets do: [ :zmqSocket | zmqSocket parkForSnapshot ].
			self privateTerminate.
			parked := true ]