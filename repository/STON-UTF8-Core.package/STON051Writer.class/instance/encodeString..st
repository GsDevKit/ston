private
encodeString: string
  "don't use super until encodeAsUTF8intoString removed from super method"

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