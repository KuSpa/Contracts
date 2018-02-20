accessing
removeIfEmpty
	"test if my existence still has a purpose. If I neither have a pre- or postcondition nor an invariant, I don't provide any extra behavior and am only slowing down the message execution. If that's the case, kill me. Bye, you cruel world."
	
		((wrappedClass isNil or: [oldMethod isNil]) ifTrue:[Error signal: 'while unistalling defect Contract']).

		(wrappedClass invariant isNil and: [(self hasPrecondition not) and: [self hasPostcondition not]])
			ifTrue: [	self uninstall]