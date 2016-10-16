*ston-pharocompatible-tests
testNewSymbol
  | n notASymbol shouldBeSymbol |
  "Find a name that has not yet been interned"
  n := 0.
  [ (Symbol _existingWithAll: (notASymbol := 'notASymbol' , n printString)) notNil ]
    whileTrue: [ n := n + 1 ].
  shouldBeSymbol := self materialize: '#' , notASymbol.	"Parsing the new, not yet interned name should create a new Symbol"
  self
    assert:
      (shouldBeSymbol _isSymbol and: [ notASymbol = shouldBeSymbol asString ])