initialization
initialize 
	super initialize.
	sockets := WeakSet new.
	parked := false.
	monitor := Monitor new.
	poller := ZmqPollItems new.
	poller startPolling.