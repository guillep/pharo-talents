accessing
compiledMethodAt:selector
	| newSelector |
	newSelector := self dealiasSelector: selector.
	^ innerClass methods detect:[:e | e selector = newSelector]