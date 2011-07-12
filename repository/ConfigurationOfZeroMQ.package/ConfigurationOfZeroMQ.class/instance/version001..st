versions
version001: spec
	<version: '0.0.1' imports: #('0.0.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'development'.
		spec description: '0.0.1: Improved image shutdown and startup handling and started to write tests.'.
		spec author: 'PanuSuominen'.
		spec timestamp: '7/12/2011 15:33'.
		spec project: 'FFI' with: '1.4'.
		spec package: 'ZeroMQ' with: 'ZeroMQ-PanuSuominen.2'. ].
