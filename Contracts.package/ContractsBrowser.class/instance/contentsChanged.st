dispatching and embedded model
contentsChanged

	super contentsChanged.	
	self changed: #contract.
	self changed: #postBlock.
	self changed: #deleteButtonState.