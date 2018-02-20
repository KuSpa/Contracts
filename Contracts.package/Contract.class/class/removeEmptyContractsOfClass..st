deletion
removeEmptyContractsOfClass: aClass

	aClass methodDict values do: [:contract | 
		(contract isKindOf: self) ifTrue:
			 [ contract removeIfEmpty]].