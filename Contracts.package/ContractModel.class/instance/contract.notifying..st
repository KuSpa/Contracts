contract saving
contract: aString notifying: aController

	(self parentModel editSelection == #editMessage)
		ifTrue:[	^ self preBlock: aString notifying: aController.].
			
	(self parentModel editSelection == #editClass)
		ifTrue:[^self invariant: aString notifying: aController.].
	^false