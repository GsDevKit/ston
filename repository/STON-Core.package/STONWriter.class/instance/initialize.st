initialize-release
initialize
  prettyPrint := false.
  newLine := String with: Character cr.
  level := 0.
  referencePolicy := #'normal'.
  jsonMode := false.
  objects := IdentityDictionary new