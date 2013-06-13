initialization
initialize 
	super initialize.
	api := ZmqApi forCurrentVersion.
	sockets := WeakSet new.
	parked := false.
	monitor := Monitor new.
	poller := ZmqPollItems context: self.
	poller startPolling.
	