accessing
compiledMethodAt: aSelector
	^(members detect:[:e | e selectors includes: aSelector ]) compiledMethodAt:aSelector.