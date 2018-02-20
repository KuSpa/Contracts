toolbuilder
buildContractPanesWith: builder

	|codeBoxes|
	
	 codeBoxes := builder pluggablePanelSpec new
		children: OrderedCollection new;
		yourself.

codeBoxes children addAll: {
	self buildContractButtonsWith: builder.
	self buildPrePaneWith: builder.
	self buildPostPaneWith: builder.
}.

^codeBoxes