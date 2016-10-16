*ston-pharocompatible-tests
testCustomNewline
  | output |
  output := String streamContents: [ :out | (STON writer on: out)
        newLine: (String with: Character lf);
        prettyPrint: true;
        nextPut: #(1) ].
  self assert: output equals: '[\	1\]' withLFs