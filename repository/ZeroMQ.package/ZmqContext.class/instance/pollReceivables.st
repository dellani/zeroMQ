as yet unclassified
pollReceivables
	| dataPointer counter updated |
	dataPointer := ExternalAddress allocate: sockets size * ZmqApiPollItem byteSize.
	counter := 1.
	sockets
		do: [ :zmqSocket | 
			| pollItem |
			pollItem := (ZmqApiPollItem externalNew)
				zmqSocket: zmqSocket socketPointer;
				filedescriptor: 16r0000;
				revents: 1;
				events: 1;
				yourself.
			dataPointer structAt: counter put: pollItem getHandle length: ZmqApiPollItem byteSize.
			counter := counter + ZmqApiPollItem byteSize ].
	updated := ZmqApi
		executeApiCall: [ ZmqApi apiZmqPollSockets: (ExternalStructure fromHandle: dataPointer) ofLenght: sockets size withTimeout: 0 ].
	0 to: sockets size - 1 do: [ :i | 
		| item |
		item := ZmqApiPollItem
			fromHandle: (dataPointer structAt: 1 + (i * ZmqApiPollItem byteSize) length: ZmqApiPollItem byteSize) ].
	dataPointer free