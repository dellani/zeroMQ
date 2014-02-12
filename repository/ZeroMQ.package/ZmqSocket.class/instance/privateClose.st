as yet unclassified
privateClose
	monitor
		critical: [ 
			socketPointer
				ifNotNil: [ 
					self logDebug: 'Socket closing.'.
					self context removeFromPoller: self.
					ZmqApi closeSocket: socketPointer.
					socketPointer := nil.
					self logDebug: 'Socket closed.'. ] ]