versions
versionOf090: spec
    <version: '0.9.0'>
    spec
        for: #'common'
        do: [ 
            spec blessing: #'development'.
            spec description: 'currently pointing at HEAD of pharo branch'.
            spec author: 'dkh'.
            spec timestamp: '6/16/2012 10:32' ].
    spec
        for: #'pharo'
        do: [ spec baseline: 'Ston' with: [ spec repository: 'github://dalehenrich/ston:pharo/repository' ] ]