private-api conveniency
signalErrno: errno
	| msg |
	msg := 'Error ' , errno asString , ' occured.'.
	ZmqLog logError: msg.
	Error signal: msg