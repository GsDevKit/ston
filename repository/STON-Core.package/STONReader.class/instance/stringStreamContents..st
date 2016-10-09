private
stringStreamContents: block
  stringStream ifNil: [ stringStream := WriteStream on: String new ].
  stringStream reset.
  block value: stringStream.
  ^ stringStream contents