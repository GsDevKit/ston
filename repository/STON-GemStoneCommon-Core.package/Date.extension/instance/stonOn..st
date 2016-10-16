*ston-gemstonecommon-core
stonOn: stonWriter
  "Use an ISO style YYYYMMDD representation"

  stonWriter
    writeObject: self
    listSingleton: (self asStringUsingFormat: #(3 2 1 $- 1 1 $: false))
