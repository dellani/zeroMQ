private-socket handling
connectSocket: aZmqApiSocket to: aByteString
	ZmqApi executeApiCall: [ZmqApi apiZmqConnect: aZmqApiSocket to: aByteString].