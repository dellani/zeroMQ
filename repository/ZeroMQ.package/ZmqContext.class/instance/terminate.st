as yet unclassified
terminate
	sockets do: [ :zmqSocket | zmqSocket close ].
	self privateTerminate.
	self become: ZmqTerminatedContext new.