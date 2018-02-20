contract loading
postBlock 

	self changed: #deleteButtonState.
	(self currentCompiledMethod isKindOf: Contract) ifFalse: [^nil].
	
	self currentCompiledMethod hasPostcondition ifTrue: [^self currentCompiledMethod postcondition sourceString].
	^nil