contract loading
deleteButtonState

	(self parentModel editSelection == #editClass)
		ifTrue: [^self selectedClass hasInvariant ].
		
	(self parentModel editSelection == #editMessage)
		ifTrue: [^((self currentCompiledMethod isKindOf: Contract)and:[self currentCompiledMethod hasPrecondition or: [self currentCompiledMethod hasPostcondition]])].
		
	^false