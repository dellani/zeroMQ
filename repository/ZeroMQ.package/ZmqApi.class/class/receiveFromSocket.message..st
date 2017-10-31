private-socket handling
receiveFromSocket: socketPointer message: messagePointer
	"self apiZmqMsgRecv: messagePointer socket: socketPointer withFlags: 16r00"

	"self pollApiCall: [ self apiZmqReceiveFromSocket: socketPointer message: messagePointer withFlags: ZmqApiConstants zmqNoBlock]"

	self
		pollApiCall: [ self
				apiZmqMsgRecv: messagePointer
				socket: socketPointer
				withFlags: ZmqApiConstants zmqNoBlock ]