contract loading
invariant

	(self selectedClassOrMetaClass invariant) ifNotNil:
		 [^self selectedClassOrMetaClass invariant sourceString].
		
	^nil