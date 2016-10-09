tests
testDatesAndTimes
  | datesAndTimes |
  datesAndTimes := STON listClass
    withAll: {(Time fromSeconds: Time now asSeconds).
      (Date today).
      (DateAndTime fromString: DateAndTime now asString)}.
  self serializeAndMaterialize: datesAndTimes