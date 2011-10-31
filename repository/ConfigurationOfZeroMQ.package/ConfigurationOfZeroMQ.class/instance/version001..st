versions
version001: spec
	<version: '0.0.1' imports: #('0.0.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'development'.
		spec description: '0.0.1: Improved image shutdown and startup handling and started to write tests.
		       0.0.1: Started to implemented zmq_poll.
0.0.1 (): Restored some code that was tought to be lost.
0.0.1 (): Added some refactorings.
0.0.1 (): Sockets are removed from poller when they are closed.
0.0.1 (): when calling methods that return with errno EINT call is made again'.
		spec author: 'PanuSuominen'.
		spec timestamp: '10/27/2011 23:15'.
		spec project: 'FFI' with: '1.4'.
		spec package: 'ZeroMQ' with: 'ZeroMQ-PanuSuominen.11'. ].
