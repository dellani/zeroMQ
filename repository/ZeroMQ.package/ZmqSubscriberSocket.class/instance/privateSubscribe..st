as yet unclassified
privateSubscribe: aByteArray
	ZmqApi setSocketOption: ZmqApiConstants zmqSubscribe forSocket: self socketPointer to: aByteArray.  