contract deletion
deleteContract

	(self parentModel editSelection == #editMessage)
		ifTrue:[	^ self deleteConditions].
			
	(self parentModel editSelection == #editClass)
		ifTrue:[^self deleteInvariant].
	
	^false