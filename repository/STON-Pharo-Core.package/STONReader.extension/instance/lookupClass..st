*ston-pharo-core
lookupClass: name
	Smalltalk globals 
		at: name 
		ifPresent: [ :cls | ^ cls ].
	^ classes 
		at: name 
		ifAbsentPut: [
			Object allSubclasses 
				detect: [ :cls | cls stonName == name ] 
				ifNone: [ self error: 'Cannot resolve class named ', name printString ] ]
