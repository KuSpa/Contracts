creation and updating
updateOrInstallInvariant: anInvariant onClass: aClass

	aClass invariant: anInvariant.
	aClass selectors do: [:selector | self updateOrInstallOnClass: aClass selector: selector].