queries
dataAvailable
	self logDebug: 'There is data available.'.
	resultHandler ifNotNil:[resultHandler cull: self receive].