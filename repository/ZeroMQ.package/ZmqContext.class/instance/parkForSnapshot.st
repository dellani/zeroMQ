as yet unclassified
parkForSnapshot
	monitor
		critical: [
			poller parkForSnapshot.
			sockets do: [ :zmqSocket | zmqSocket parkForSnapshot ].
			self privateTerminate.
			parked := true ]