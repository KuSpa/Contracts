contract saving
invariant: aString notifying: aController

	|block|
	
	block := Compiler evaluate: aString notifying: aController.
	((block isBlock) and: [block numArgs = 1])
		ifFalse: [^false].
		
	Contract updateOrInstallInvariant: block onClass: (self selectedClass).
	self changed: #contract.
	^true