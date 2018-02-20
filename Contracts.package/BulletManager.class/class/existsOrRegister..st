accessing
existsOrRegister: anObject
	"returns if an Object is already registered. If not, register it."
	
	(self lookup includesKey: anObject) ifTrue: [^true] ifFalse: [self lookup at: anObject put: false. ^ false].