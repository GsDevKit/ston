convenience
fromStream: readStream
	^ (self reader on: readStream) next