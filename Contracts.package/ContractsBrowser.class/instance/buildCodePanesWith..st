toolbuilder
buildCodePanesWith: builder

	|codeBoxes|
	
	 codeBoxes := builder pluggablePanelSpec new
		layout: #horizontal;
		spacing: 4;
		children: OrderedCollection new;
		yourself.

codeBoxes children addAll: {
	self buildCodePaneWith: builder.
	self buildContractPanesWith: builder.
}.

^codeBoxes