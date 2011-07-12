as yet unclassified
testVersion
	self assert: ZmqApi version notNil description: 'Could not get version'.
	self assert: ZmqApi version >= (ZmqVersion major: 2 minor: 1 patch: 1) description: 'This is developed for 2.1.7 version or higher'.