random support
random: aRandom nextInt: anInteger
  "Answer a random integer in the interval [1, anInteger]."

  anInteger strictlyPositive
    ifFalse: [ self error: 'Range must be positive' ].
  ^ (aRandom next * anInteger) truncated + 1