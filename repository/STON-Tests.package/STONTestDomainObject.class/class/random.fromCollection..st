random support
random: aRandom fromCollection: aCollection
  "Answer a random element of aCollection.  Uses aRandom which
	should be kept by the user in a variable and used every time."

  ^ aCollection at: (self random: aRandom nextInt: aCollection size)