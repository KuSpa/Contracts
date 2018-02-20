toolbuilder
buildContractButtonsWith: builder

	|buttons deleteButton|
	 buttons := builder pluggablePanelSpec new
		spacing: 2;
		children: OrderedCollection new;
		yourself.	
		
	deleteButton := builder pluggableActionButtonSpec new
		model: self embeddedModel;
		label: 'delete';	
		frame: self optionalButtonsFrame;
		enabled:#deleteButtonState;
		action: #deleteContract.
		
	buttons children add: deleteButton.
	^buttons