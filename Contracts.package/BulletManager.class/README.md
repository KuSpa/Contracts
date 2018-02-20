I am the manager for all objects, which have Contracts installed. My goal is to remove the endless recursion of invariants and postconditions in Contracts. When an Object is disarmed (e.g it's set to false), it's invariant is not executed on  method call. An Object can reload once it returned to the stackdepth where it shot itself (last before the object is put from the stack).

A Contract automatically registers, when called the first time.

Example without me:
	
	method gets called ->
		its contract tests the invariant. ->
			the invariant triggers a new methodSend -> 
				new invariant gets tested from Contract of the new called method and so on. ->
					endless recursion
	
Example with me:

	method gets called ->
		when the Object is armed ->
		shoot (e.g. disarm) and execute the invariant ->
			invariant triggers new method call ->  
			Object is disarmed and won't test its invariant. ->
			Object executed method ->
		reload ->
	leave contract and Object->
			

Instance Variables
	lookup:		<WeakIdentityKeydictionary> 

lookup
	- list of all objects which have Contacts installed which have been triggered at least one
