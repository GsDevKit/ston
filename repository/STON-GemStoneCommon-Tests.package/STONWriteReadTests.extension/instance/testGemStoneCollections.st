*ston-gemstonecommon-tests
testGemStoneCollections
  | collections |
  collections := STON listClass
    withAll:
      {#[1 2 3].
       (KeyValueDictionary new
        at: 1 put: 1;
        at: 2 put: 2;
        yourself)}.
  self serializeAndMaterialize: collections
