versions
versionOf080: spec
    <version: '0.8.0'>
    spec
        for: #'common'
        do: [ 
            spec blessing: #'release'.
            spec
                description:
                    'known good commit with gree tests:
  http://travis-ci.org/#!/dalehenrich/ston/builds/1636314'.
            spec author: 'dkh'.
            spec timestamp: '6/16/2012 11:13' ].
    spec
        for: #'pharo'
        do: [ 
            spec
                baseline: 'Ston'
                with: [ spec repository: 'github://dalehenrich/ston:316e83f6cd24c6fb7c7076c580624f2ab5823065/repository' ] ]