private-library api
apiZmqVersion: major minor: minor patch: patch
	^self ffiCall: #(void zmq_version (ZmqApiStructForInt* major, ZmqApiStructForInt* minor, ZmqApiStructForInt* patch) )
	"<cdecl:  void 'zmq_version' (ZmqApiStructForInt* ZmqApiStructForInt* ZmqApiStructForInt*) module:'zmq'>
	^self externalCallFailed"