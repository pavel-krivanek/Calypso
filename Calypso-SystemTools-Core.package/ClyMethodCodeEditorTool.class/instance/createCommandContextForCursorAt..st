contexts
createCommandContextForCursorAt: aCursorPoint

	| sourceNode |
	sourceNode := self findSourceNodeAt: aCursorPoint.
	
	^ClySourceCodeContext for: self selectedNode: sourceNode