I am a wrapper for a CompiledMethod, ensuring, that the method is called with the right arguments and if, the method behaves as intended.
I am installed via the ContractsBrowser.

Instance Variables
	oldMethod:		<CompliedMethod>
	postcondition:		<BlockClosure>
	precondition:		<BlockClosure>
	selector:		<Symbol>
	wrappedClass:		<Class>

oldMethod
	- is the compiledMethod where I am installed on.

postcondition
	- a block that ensures the correct state of the method. Defined by the developer

precondition
	- a block that ensures the correct parameter under which the method is supposed tu run correctly

selector
	- self explaining

wrappedClass
	- the class, where i am put into the method dictionary with the selector as key
