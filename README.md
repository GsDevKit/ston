# STON - Smalltalk Object Notation


A lightweight text-based, human-readable data interchange format 
for class-based object-oriented languages like Smalltalk.
It can be used to serialize domain level objects, 
either for persistency or network transport. 
As its name suggests, it is based on JSON (Javascript Object Notation). 
It adds symbols as a primitive value, class tags for object values and references. 
Implementations for Pharo Smalltalk, Squeak and Gemstone Smalltalk are available.

### Installation

```Smalltalk
Metacello new
	baseline: 'Ston';
	repository: 'github://glassdb/ston:gemstone';
	load.
```

*See the [Metacello installation instructions](https://github.com/glassdb/metacello-work/blob/master/README.md) 
for details on installing Metacello.*

### TravisCI Status

**gemstone** : [![Build Status](https://travis-ci.org/GsDevKit/ston.svg?branch=gemstone)](http://travis-ci.org/GsDevKit/ston) 
## Please read the [Smalltalk Object Notation](https://github.com/svenvc/ston/blob/master/ston-paper.md) paper


*Sven Van Caekenberghe* 
[MIT Licensed](https://github.com/svenvc/ston/blob/master/license.txt)
