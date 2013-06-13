queries
dataAvailable
	self logDebug: 'There is data available.'.
	resultHandler ifNil:[self logDebug: 'Data available, but no handler'] ifNotNil:[resultHandler cull: self receive].