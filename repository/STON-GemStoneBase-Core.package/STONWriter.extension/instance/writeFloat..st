*ston-gemstonebase-core
writeFloat: float
	writeStream nextPutAll: (float asStringUsingFormat: #( 10 2 false ))
