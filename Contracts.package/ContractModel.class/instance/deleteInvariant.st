contract deletion
deleteInvariant

	|class|
	
	class := self selectedClass.
	class invariant: nil.
	
	Contract removeEmptyContractsOfClass: class.
	
	self changed: #contract.
	self changed: #deleteButtonState.