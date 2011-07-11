as yet unclassified
terminate
	(terminated isNil or:[terminated = false]) ifFalse:[ ZmqApi apiZmqTerm: self contextPointer].
	terminated := true.
	
	