utf8
toUTF8EncodedStringPretty: object
  ^ true
    ifTrue: [ self toStringPretty: object ]
    ifFalse: [ (self toStringPretty: object) encodeAsUTF8intoString ]