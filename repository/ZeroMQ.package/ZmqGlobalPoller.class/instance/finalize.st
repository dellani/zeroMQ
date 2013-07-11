finalization
finalize
	pollItemExternalAddress ifNotNil:[pollItemExternalAddress free].
	super finalize.