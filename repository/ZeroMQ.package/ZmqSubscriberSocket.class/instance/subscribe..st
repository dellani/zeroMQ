as yet unclassified
subscribe: aByteArray
	ZmqApi setSocketOption: ZmqApiConstants zmqSubscribe forSocket: self socketPointer to: aByteArray.	  
	subscriptions add: aByteArray.