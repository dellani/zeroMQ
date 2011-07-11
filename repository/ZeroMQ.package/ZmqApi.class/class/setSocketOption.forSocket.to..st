as yet unclassified
setSocketOption: option forSocket: socketPointer to: value
	| data size |
	data := 	value asByteArray.
	size := data size.
	self checkForError: [self apiZmqSetsockoptSocket: socketPointer option: option value: data size: size].  