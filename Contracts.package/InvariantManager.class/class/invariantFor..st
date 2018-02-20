accessing
invariantFor: anObject

	(self lookup includesKey: anObject) ifFalse: [^nil].
	^self lookup at: anObject.