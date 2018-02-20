accessing
lookup

	lookup ifNil: [lookup := WeakIdentityKeyDictionary new].
	^lookup.