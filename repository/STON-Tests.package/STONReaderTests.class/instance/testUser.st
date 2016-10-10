tests
testUser
  | user x |
  (user := STONTestUser new)
    username: 'john@foo.com';
    password: 'secret1'.
  self assert: (x := self
        materialize:
          'STONTestUser{#username:''john@foo.com'',#password:''secret1'',#enabled:true}')
        = user