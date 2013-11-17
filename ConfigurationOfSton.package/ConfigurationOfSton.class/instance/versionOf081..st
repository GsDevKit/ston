versions
versionOf081: spec
    <version: '0.8.1'>
    spec
        for: #'common'
        do: [ 
            spec blessing: #'release'.
            spec
                description:
                    'CHECKPOINT: picked up Ston-Core-SvenVanCaekenberghe.35. Green tests:
  http://travis-ci.org/#!/dalehenrich/ston/builds/1636569'.
            spec author: 'dkh'.
            spec timestamp: '6/16/2012 11:35' ].
    spec
        for: #'pharo'
        do: [ 
            spec
                baseline: 'Ston'
                with: [ spec repository: 'github://dalehenrich/ston:a81c9e993dd1dd3e60be3fbea7e1dd7fb7326eaa/repository' ] ]