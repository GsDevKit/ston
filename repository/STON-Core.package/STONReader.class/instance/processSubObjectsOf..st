private
processSubObjectsOf: object
  stack addFirst: object.
  [ stack isEmpty ]
    whileFalse: [ stack removeFirst stonProcessSubObjects: [ :each | each isStonReference
            ifTrue: [ self resolveReference: each ]
            ifFalse: [ each stonContainSubObjects
                ifTrue: [ stack addFirst: each ]
                ifFalse: [ each ] ] ] ]