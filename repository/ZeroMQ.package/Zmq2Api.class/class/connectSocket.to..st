private-socket handling
connectSocket: aZmqApiSocket to: aByteString
	self executeApiCall: [self apiZmqConnect: aZmqApiSocket to: aByteString].