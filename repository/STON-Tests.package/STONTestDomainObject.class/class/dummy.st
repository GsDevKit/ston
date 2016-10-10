instance creation
dummy
  | random |
  random := Random new.
  ^ self new
    integer: self random: random nextInt: 999999;
    float: (self random: random nextInt: 999) / Float pi;
    boolean: #(true false) atRandom;
    bytes: (ByteArray
            streamContents: [ :out | 32 timesRepeat: [ out nextPut: (self random: random nextInt: 255) ] ]);
    description: (String
            streamContents: [ :out | (self random: random nextInt: 16) timesRepeat: [ out nextPutAll: 'Blah' ] ]);
    color: #(#'red' #'green' #'blue') atRandom;
    tags: (Array
            with: #(#'one' #'two' #'three') atRandom
            with: #(#'alpha' #'beta' #'gamma') atRandom
            with: #(#'low' #'medium' #'high') atRandom);
    yourself