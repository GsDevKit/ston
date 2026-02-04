parsing
parseValue

	| value |
  value := self parseSimpleValue.
  ^ (self matchChar: $:)
    ifTrue: [ Association new key: value value: self parseValue ]
    ifFalse: [ value ]