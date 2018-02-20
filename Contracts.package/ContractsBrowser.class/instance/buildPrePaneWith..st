toolbuilder
buildPrePaneWith: builder

	|textSpec|
	
	textSpec := builder pluggableCodePaneSpec new.
	
	textSpec 
		model: self embeddedModel;
		frame: (LayoutFrame new
					leftFraction: 0 offset:  0;
					topFraction:0 offset: self buttonHeight;
					rightFraction:1 offset: 0;
					bottomFraction:0.5 offset: self buttonHeight /2);
		getText: #contract; 
		setText: #contract:notifying:; 
		selection: #contentsSelection; 
		menu: #codePaneMenu:shifted:.
		
	^textSpec