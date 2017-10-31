private-library api
apiZmqStrError: errnum
	"zmq_strerror - get ØMQ error message string
	 const char *zmq_strerror (int errnum);
	 http://api.zeromq.org/4-2:zmq-strerror"
	^ self ffiCall: #(char* zmq_strerror (long errnum) )
	
