utilities
compareFloat: a to: b
  b isNumber
    ifFalse: [ ^ [ a = b ] ifError: [ false ] ].
  a = 0.0
    ifTrue: [ ^ b abs < 0.0001 ].
  b = 0
    ifTrue: [ ^ a abs < 0.0001 ].
  ^ a = b asFloat or: [ (a - b) abs / (a abs max: b abs) < 0.0001 ]