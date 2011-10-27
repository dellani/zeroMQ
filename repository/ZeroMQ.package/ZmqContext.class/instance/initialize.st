initialization
initialize 
	super initialize.
	sockets := Set new.
	parked := false.
	monitor := Monitor new.
	poller := ZmqPollItems new.
	poller startPolling.