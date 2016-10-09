*ston-gemstone-core
lookupClass: name
	^(System myUserProfile objectNamed: name asSymbol) ifNil: [ self error: 'Cannot resolve class named ', name printString ]
