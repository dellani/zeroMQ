controlling
terminate
	poller stopPolling.
	sockets do: [ :zmqSocket | zmqSocket privateClose ].
	sockets removeAll.
	self privateTerminate.
	self become: ZmqTerminatedContext new.