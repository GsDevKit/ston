utf8
toUTF8EncodedString: object
  ^ true
    ifTrue: [ self toString: object ]
    ifFalse: [ (self toString: object) encodeAsUTF8intoString ]