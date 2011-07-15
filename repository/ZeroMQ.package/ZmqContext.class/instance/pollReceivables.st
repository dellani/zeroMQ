as yet unclassified
pollReceivables
	| dataPointer counter updated |
	dataPointer := ExternalAddress allocate: (sockets size) * ZmqApiPollItem byteSize.
	counter := 1.
	sockets
		do: [ :zmqSocket | |pollItem| 
			pollItem :=ZmqApiPollItem
				externalNew
				zmqSocket: zmqSocket socketPointer;
				filedescriptor:  16r0000; 
				revents:  1;
				events: 1.
				dataPointer structAt: counter put: pollItem getHandle length: ZmqApiPollItem byteSize.
				counter := counter + ZmqApiPollItem byteSize.
				].
	updated := ZmqApi checkForError:  [
		ZmqApi apiZmqPollSockets: (ExternalStructure fromHandle:  dataPointer) ofLenght: sockets size withTimeout: 0].
	Transcript cr;cr;show: 'Updated: '; show: updated;cr.
	0 to: sockets size -1 do:[:i||item|
		item := ZmqApiPollItem fromHandle:  (dataPointer structAt:1+(i*ZmqApiPollItem byteSize)  length: ZmqApiPollItem byteSize).
		Transcript show:'Pointer: ';show: item zmqSocket getHandle hex; show: ' revents: '; show: item revents;show:' events: ';show: item events;cr.
	].
	dataPointer free.