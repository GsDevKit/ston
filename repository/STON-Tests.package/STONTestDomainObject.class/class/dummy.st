instance creation
dummy
  | random |
  random := Random new.
  ^ self new
    integer: (self random: random nextInt: 999999);
    float: (self random: random nextInt: 999) / Float pi;
    boolean: (self random: random fromCollection: #(true false));
    bytes: (ByteArray
            streamContents: [ :out | 32 timesRepeat: [ out nextPut: (self random: random nextInt: 255) ] ]);
    description: (String
            streamContents: [ :out | (self random: random nextInt: 16) timesRepeat: [ out nextPutAll: 'Blah' ] ]);
    color: (self random: random fromCollection: #(#'red' #'green' #'blue'));
    tags: (Array
            with:
              (self random: random fromCollection: #(#'one' #'two' #'three'))
            with:
              (self random: random fromCollection: #(#'alpha' #'beta' #'gamma'))
            with:
              (self random: random fromCollection: #(#'low' #'medium' #'high')));
    yourself