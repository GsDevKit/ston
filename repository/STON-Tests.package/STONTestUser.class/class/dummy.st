instance creation
dummy
  "self dummy"

  | username password |
  username := String streamContents: [ :stream | stream
        nextPutAll: 'user';
        print: 999 atRandom;
        nextPutAll: '@company';
        print: 99 atRandom;
        nextPutAll: '.com' ].
  password := String streamContents: [ :stream | stream
        nextPutAll: 'secret';
        print: 999 atRandom ].
  ^ self new
    username: username;
    password: password;
    yourself