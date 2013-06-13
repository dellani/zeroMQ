tests
testReqRepWithResultDo
	| resultReceived req rep sem s |
	resultReceived := false.
	s := 'inproc://1234'.
	req := self newReqSocket bind: s.
	rep := self newRepSocket connect: s.
	sem := Semaphore new.
	req
		withResultDo: [ 
			resultReceived := true.
			sem signal ].
	rep
		withResultDo: [ :r | 
			Transcript show: 'got stuff'.
			rep send: r asByteArray ].
	req send: 'viesti' asByteArray.
	sem waitTimeoutMSecs: 50.
	self should: resultReceived