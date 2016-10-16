*ston-pharo-core
fromSton: stonReader
	^ self readFrom: stonReader parseListSingleton readStream
