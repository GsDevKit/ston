tests
testDate
  | date |
  date := Date newDay: 1 monthNumber: 1 year: 2012.
  self assert: (self materialize: 'Date[''2012-01-01'']') = date