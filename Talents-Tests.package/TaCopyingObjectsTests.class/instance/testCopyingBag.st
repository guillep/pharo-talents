as yet unclassified
testCopyingBag
	| x t1 x2 |
	x := { 1. 2. 3. } asBag.
	t1 := self newTalent: #Tamanio.
	t1 compile: 'tamanio ^ self size'.

	x2 := x copyWithTalent: t1.
	
	self assert: x size equals: 3.
	self assert: x2 size equals: 3.
	
	x remove: 1.
	
	self assert: x2 size equals: 3.