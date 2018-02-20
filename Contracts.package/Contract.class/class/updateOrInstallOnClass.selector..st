private
updateOrInstallOnClass: aClass selector: aSelector

	((aClass lookupSelector: aSelector) isKindOf: self) ifTrue: [^nil].
	
	self installOn: aClass selector: aSelector.