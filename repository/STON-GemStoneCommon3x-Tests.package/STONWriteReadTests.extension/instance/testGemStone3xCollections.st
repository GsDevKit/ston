*ston-gemstonecommon3x-tests
testGemStone3xCollections
  | collections |
  collections := STON listClass
    withAll:
      { #[1 2 3] }.
  self serializeAndMaterialize: collections
