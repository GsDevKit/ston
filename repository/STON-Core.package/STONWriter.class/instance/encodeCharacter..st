private
encodeCharacter: char
	| code encoding |
	((code := char codePoint) < 127 and: [ (encoding := STONCharacters at: code + 1) notNil ])
		ifTrue: [ 
			encoding = #pass
				ifTrue: [ writeStream nextPut: char ]
				ifFalse: [ writeStream nextPutAll: encoding ] ]
		ifFalse: [ 
			writeStream nextPutAll: '\u'.
			writeStream nextPutAll: (code printPaddedWith: $0 to: 4 base: 16) ]