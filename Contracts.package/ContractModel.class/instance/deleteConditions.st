contract deletion
deleteConditions

	(self currentCompiledMethod isKindOf: Contract) ifTrue:
		[self currentCompiledMethod precondition: nil;
			postcondition:nil;
			removeIfEmpty.
		self changed: #contract.
		self changed: #postBlock.		
		self  changed: #deleteButtonState.]
	