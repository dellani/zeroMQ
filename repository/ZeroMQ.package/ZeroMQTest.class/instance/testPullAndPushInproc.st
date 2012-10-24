tests
testPullAndPushInproc
	| publisher subscriber1 subscriber2 fromSub1 fromSub2 message1 message2 |
	publisher := self newPushSocket bind: 'inproc://#3'.
	subscriber1 := self newPullSocket connect: 'inproc://#3'.
	subscriber2 := self newPullSocket connect: 'inproc://#3'.
	message1 := 'Message1' asByteArray.
	message2 := 'Message2' asByteArray.	
	publisher send: message1.
	publisher send: message2.	
	fromSub1 := subscriber1 receive.
	fromSub2 := subscriber2 receive.	

	self assert: fromSub1 equals: message1.
	self assert: fromSub2 equals: message2.