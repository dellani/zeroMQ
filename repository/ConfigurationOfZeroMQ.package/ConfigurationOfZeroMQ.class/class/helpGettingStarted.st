help
helpGettingStarted
	^ HelpTopic title: 'Getting started' contents:
'One needs 32bit ZeroMQ library to be accessible from the image.

ZeroMQ context can be obtained using:
 ZmqApi context

To create socket:
 ZmqApi context zmqPublisherSocket'