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
0.0.1 (): when calling methods that return with errno EINT call is made again
0.0.1 (): Added support for ZeroMQ version 3. 
0.0.1 (): Poller related fixes included to configuration.
0.0.1 : Improved test readability'.
		spec author: 'PanuWetterstrand'.
		spec timestamp: '7/11/2013 20:40'.
		spec project: 'FFI' with: '1.4'.
		spec package: 'ZeroMQ' with: 'ZeroMQ-PanuWetterstrand.20'. ].
