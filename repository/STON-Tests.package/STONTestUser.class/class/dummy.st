instance creation
dummy
  "self dummy"

  | username password random |
  random := Random new.
  username := String streamContents: [ :stream | stream
        nextPutAll: 'user';
        print: (self random: random nextInt: 999);
        nextPutAll: '@company';
        print: (self random: random nextInt: 99);
        nextPutAll: '.com' ].
  password := String streamContents: [ :stream | stream
        nextPutAll: 'secret';
        print: (self random: random nextInt: 999) ].
  ^ self new
    username: username;
    password: password;
    yourself