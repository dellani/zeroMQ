as yet unclassified
signalErrno: errno
	| msg |
	msg := self zmqErrnoAsString: errno.
	ZmqLog logError: msg.
	Error signal: msg