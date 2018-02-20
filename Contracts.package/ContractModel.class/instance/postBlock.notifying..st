contract saving
postBlock: aString notifying: aController

	|block|
	
	
	block := Compiler evaluate: aString notifying: aController.
	((block isBlock) and: [block numArgs = 2])
		ifFalse: [^false].
	
	Contract updateOrInstallPostCondition: block onClass: (self selectedClass) selector: (self selectedMessageName).
	self parentModel changed: #postBlock.
	^true.