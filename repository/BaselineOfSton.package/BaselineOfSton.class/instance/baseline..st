baseline
baseline: spec
    <baseline>
    spec
        for: #'common'
        do: [ 
            spec package: 'STON-Core'.
            spec package: 'STON-Tests' with: [ spec requires: 'STON-Core' ].
            spec
                group: 'default' with: #('Core');
                group: 'Core' with: #('STON-Core');
                group: 'Tests' with: #('STON-Tests') ]