contract loading
preBlock 
	
	(self currentCompiledMethod isKindOf: Contract) ifFalse: [^nil].
	
	self currentCompiledMethod hasPrecondition ifTrue: [^self currentCompiledMethod precondition sourceString].
	^nil