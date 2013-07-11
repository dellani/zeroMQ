initialization
initialize 
	super initialize.
	api := ZmqApi forCurrentVersion.
	sockets := WeakSet new.
	parked := false.
	monitor := Monitor new.
	globalPoller := ZmqGlobalPoller context: self.
	globalPoller startPolling.
	