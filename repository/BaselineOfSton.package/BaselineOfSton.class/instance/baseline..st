baseline
baseline: spec
  <baseline>
  spec for: #'common' do: [ spec
        package: 'STON-Core';
        package: 'STON-Tests' with: [ spec requires: 'STON-Core' ];
        yourself.
      spec
        group: 'default' with: #('Core');
        group: 'Core' with: #('STON-Core');
        group: 'UTF8' with: #();
        group: 'Tests' with: #('STON-Tests');
        yourself ].
  spec for: #(#'pharo' #'gemstone') do: [ spec
        package: 'STON-UTF8-Core' with: [ spec requires: 'STON-Core' ];
        package: 'STON-UTF8-Tests' with: [ spec requires: 'STON-UTF8-Core' ];
        yourself.
      spec
        group: 'default' with: #('Core');
        group: 'UTF8' with: #('STON-UTF8-Core');
        group: 'Tests' with: #('STON-UTF8-Tests');
        yourself ].
  spec for: #'pharo' do: [ spec
        package: 'STON-Core' with: [ spec includes: #('STON-Pharo-Core') ];
        package: 'STON-Pharo-Core' with: [ spec requires: #('STON-Core') ];
        package: 'STON-Tests' with: [ spec includes: #('STON-Pharo-Tests') ];
        package: 'STON-Pharo-Tests' with: [ spec requires: #('STON-Tests') ];
        yourself ].
  spec for: #'gemstoneCommon' do: [ spec
        package: 'STON-Core'
          with: [ spec includes: #('STON-GemStoneCommon-Core') ];
        package: 'STON-GemStoneCommon-Core'
          with: [ spec requires: #('STON-Core') ];
        package: 'STON-Tests'
          with: [ spec includes: #('STON-GemStoneCommon-Tests') ];
        package: 'STON-GemStoneCommon-Tests'
          with: [ spec requires: #('STON-Tests') ];
        yourself ].
  spec for: #'gemstone64' do: [ spec
        package: 'STON-Core'
          with: [ spec includes: #('STON-GemStoneBase-Core') ];
        package: 'STON-GemStoneBase-Core'
          with: [ spec requires: #('STON-Core') ];
        package: 'STON-Tests'
          with: [ spec includes: #('STON-GemStoneBase-Tests') ];
        package: 'STON-GemStoneBase-Tests'
          with: [ spec requires: #('STON-Tests') ];
        yourself ].
  spec for: #'gemstone' do: [ spec
        package: 'STON-Core' with: [ spec includes: #('STON-GemStone-Core') ];
        package: 'STON-GemStone-Core' with: [ spec requires: #('STON-Core') ];
        package: 'STON-Tests' with: [ spec includes: #('STON-GemStone-Tests') ];
        package: 'STON-GemStone-Tests' with: [ spec requires: #('STON-Tests') ];
        yourself ].
  spec for: #'gsc2.x' do: [ spec
        package: 'STON-Core' with: [ spec includes: #('STON-GemStone2x-Core') ];
        package: 'STON-GemStone2x-Core' with: [ spec requires: 'STON-Core' ];
        yourself ]