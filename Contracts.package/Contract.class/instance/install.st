initialize
install

	|category|
	category := wrappedClass whichCategoryIncludesSelector: selector.
	
	
	"clean up.
	
	since we test for existing contracts before creating new ones, we should never need this, but save is save"
	[oldMethod := wrappedClass lookupSelector: selector.
	oldMethod isKindOf: self class] whileTrue: [oldMethod uninstall].

	wrappedClass addAndClassifySelector: selector withMethod: self inProtocol: category notifying: nil.
