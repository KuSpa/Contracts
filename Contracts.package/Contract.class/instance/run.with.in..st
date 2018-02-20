system
run: aSelector with: arguments in: aReceiver
"The main reason why I exist. When the selector is called and the CompiledMethod should be executed, this is executed instead."
	
	|aResult gotShot old|
	
	self hasPrecondition ifTrue: [precondition value: arguments].
	
	"lookup the BulletManager class or Wiki.
	
	When we already exist (true returned), gotShot is going to be initialised (default false).
	When we don't, we registered us and pretend to got shot to later get armed.
		This is important because it catches every problem with instance creation and arms automaticly, after it is safe to call the new object"
	gotShot := (aReceiver xXxExistsOrRegisterxXx) not. "<- singals if we got triggered on THIS contract."
	old := aReceiver copy.
	
	"Only do furhter contracting, when we are not called by an other Contract of this Object! Ohterwise we will get a infinite recursion and we DO NOT WANT THAT"
	aReceiver xXxIsArmedxXx ifTrue: [ "when false, another Contract for this Object already triggered, meaning that we are not called from outside the object and do not need to trigger ourself"
		aReceiver xXxShootxXx.
		gotShot := true.
		wrappedClass hasInvariant ifTrue: [wrappedClass invariant value: aReceiver]].
	
	"Main Execution"
	aResult := oldMethod valueWithReceiver: aReceiver arguments: arguments.	

	"2 possible cases that gotShot = true:
		1: instance creation and the object exists now, since our compiledMethod got executed -> safe to call invariants now
		2: we are returned to the lowset stackdepth and are going to leave the object soon. then we have to test the postcondition and if the invariant is true. As LAST we reload ourself."
	gotShot ifTrue: [
		self hasPostcondition ifTrue: [postcondition value: aReceiver value: old].
		wrappedClass hasInvariant ifTrue: [wrappedClass invariant value: aReceiver].
		aReceiver xXxReloadxXx.].
	
	^aResult. 