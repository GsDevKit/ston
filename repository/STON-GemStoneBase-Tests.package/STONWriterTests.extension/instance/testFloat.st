*ston-gemstonebase-tests
testFloat
  self assert: (self serialize: 1.5) = '1.5'.
  self assert: (self serialize: 0.0) = '0.0'.
  self assert: (self serialize: -1.5) = '-1.5'.
  self assert: ((self serialize: Float pi) beginsWith: '3.14159').
  self assert: ((self serialize: 1 / 3) beginsWith: '0.333').
  self assert: (self serialize: (10 raisedTo: 100) asFloat) = '1e100'.
  self assert: (self class
        compareFloat:
          (Float fromString: (self serialize: (10 raisedTo: -50) asFloat))
        to: (Float fromString: '1e-50')).
  self assert: (self class
        compareFloat:
          (Float fromString: (self serialize: (10 raisedTo: -50) asFloat negated))
        to: (Float fromString: '-1e-50'))
