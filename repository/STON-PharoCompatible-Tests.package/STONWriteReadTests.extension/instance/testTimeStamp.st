*ston-pharocompatible-tests
testTimeStamp
  | datesAndTimes |
  datesAndTimes := STON listClass
    withAll: {(TimeStamp fromString: TimeStamp now asString)}.	"normalize for comparison purposes"
  self serializeAndMaterialize: datesAndTimes