private
encodeString: string
  | encodedString |
  encodedString := string encodeAsUTF8intoString.
  writeStream
    nextPut:
      (jsonMode
        ifTrue: [ $" ]
        ifFalse: [ $' ]).
  encodedString do: [ :each | self encodeCharacter: each ].
  writeStream
    nextPut:
      (jsonMode
        ifTrue: [ $" ]
        ifFalse: [ $' ])