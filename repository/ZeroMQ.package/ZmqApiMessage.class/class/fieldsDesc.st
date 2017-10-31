field definition
fieldsDesc
"typedef struct zmq_msg_t {
    unsigned char _ [64];
} zmq_msg_t;

ZmqApiMessage rebuildFieldAccessors

ZmqApiMessage compileFields
byteSize := ZmqApiMessage compiledSpec first bitAnd: FFIStructSizeMask.
"

	^ #(
		CharArray64 _;
	)