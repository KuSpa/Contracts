toolbuilder
buildPostPaneWith: builder

	|textSpec|
	
	textSpec := builder pluggableCodePaneSpec new.

	textSpec 
		model: self embeddedModel;
		frame: (LayoutFrame new
					leftFraction: 0 offset:  0;
					topFraction:0.5 offset: self buttonHeight/ 2;
					rightFraction:1 offset: 0;
					bottomFraction:1 offset: 0);
		getText: #postBlock; 
		setText: #postBlock:notifying:; 
		selection: #contentsSelection; 
		menu: #codePaneMenu:shifted:.
		
	^ textSpec