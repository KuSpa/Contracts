creation and updating
updateOrInstallPreCondition: preBlock onClass: aClass selector: aSelector

	|compiledMethod|
	compiledMethod := aClass lookupSelector: aSelector.
	(compiledMethod isKindOf: self) ifTrue: [^compiledMethod precondition: preBlock].
	
	(self installOn: aClass selector: aSelector) precondition: preBlock.