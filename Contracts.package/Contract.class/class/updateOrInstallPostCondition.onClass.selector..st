creation and updating
updateOrInstallPostCondition: postBlock onClass: aClass selector: aSelector

	|compiledMethod|
	compiledMethod := aClass lookupSelector: aSelector.
	(compiledMethod isKindOf: self) ifTrue: [^compiledMethod postcondition: postBlock].
	
	(self installOn: aClass selector: aSelector) postcondition: postBlock.