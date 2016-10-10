*ston-core
fromSton: stonReader
  ^ self fromString: stonReader parseListSingleton usingFormat: #($: true false)