contract loading
contract

	self changed: #deleteButtonState.
	(self parentModel editSelection == #editClass)
		ifTrue: [^self invariant].
	(self parentModel editSelection == #editMessage)
		ifTrue: [^self preBlock].
	^nil