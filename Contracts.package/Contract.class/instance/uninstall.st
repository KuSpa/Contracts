deletion
uninstall

	|category|
	
	oldMethod isNil ifTrue: [ Exception signal: 'Critical error while uninstalling: OldMethod is nil.'. ^self].
	category := wrappedClass whichCategoryIncludesSelector: selector.
	wrappedClass removeSelector: selector. "silently???"	

	wrappedClass addAndClassifySelector: selector withMethod: oldMethod inProtocol: category notifying: nil.
	
	self release.
