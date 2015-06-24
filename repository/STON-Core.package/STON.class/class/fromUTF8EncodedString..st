utf8
fromUTF8EncodedString: utf8EncodedString
  ^ true
    ifTrue: [ self fromString: utf8EncodedString ]
    ifFalse: [ self fromString: utf8EncodedString decodeFromUTF8 ]