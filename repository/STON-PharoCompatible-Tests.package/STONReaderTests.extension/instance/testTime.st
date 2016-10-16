*ston-pharocompatible-tests
testTime
  | time |
  time := Time fromSeconds: 6 * 3600 + (30 * 60) + 15.
  self assert: (self materialize: 'Time[''06:30:15'']') = time