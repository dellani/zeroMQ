baselines
baseline001: spec
	<version: '0.0.1-baseline'>
	spec
		for: #common
		do: [ 
			spec blessing: #baseline.
			spec repository: 'http://www.squeaksource.com/ZeroMQ'.
			spec
				project: 'FFI'
				with: [ 
					spec className: 'ConfigurationOfFFI'.
					spec repository: 'http://www.squeaksource.com/MetacelloRepository' ].
			spec package: 'ZeroMQ' with: [ spec requires: #('FFI') ].
			spec group: 'default' with: #('FFI') ]