*ston-gemstonebase-core
lookupClass: name
  ^ (System myUserProfile objectNamed: name asSymbol)
    ifNil: [ classes at: name ifAbsentPut: [ (ClassOrganizer new allSubclassesOf: Object)
            detect: [ :cls | cls stonName == name ]
            ifNone: [ self error: 'Cannot resolve class named ' , name printString ] ] ]