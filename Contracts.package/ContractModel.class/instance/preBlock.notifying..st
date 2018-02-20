contract saving
preBlock: aString notifying: aController

	|block|
	
	
	block := Compiler evaluate: aString notifying: aController.
	((block isBlock) and: [block numArgs = 1])
		ifFalse: [^false].
		
	Contract updateOrInstallPreCondition: block onClass: (self selectedClass) selector: (self selectedMessageName).
	self parentModel changed: #contract.
	^true.