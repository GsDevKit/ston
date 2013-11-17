"Load and run tests to be performed by TravisCI"
| gitPath |
Transcript cr; show: 'travis---->travisCI.st'.

gitPath := (FileDirectory default directoryNamed: 'git_cache') fullName.

"load the STON tests"
Metacello new
  configuration: 'Ston';
  version: #stable;
  repository: 'filetree://', gitPath, '/ston';
  load: 'Tests'.

"Run the tests"
TravisCIHarness
  value: #( 'BaselineOfSton' )
  value: 'TravisCISuccess.txt' 
  value: 'TravisCIFailure.txt'.

