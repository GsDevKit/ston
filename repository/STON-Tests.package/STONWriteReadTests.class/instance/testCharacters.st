tests
testCharacters
  | characters |
  characters := STON listClass
    withAll:
      (($a asInteger to: $z asInteger) collect: [ :ea | Character withValue: ea ])
        ,
          (($A asInteger to: $Z asInteger) collect: [ :ea | Character withValue: ea ]).
  self serializeAndMaterialize: characters