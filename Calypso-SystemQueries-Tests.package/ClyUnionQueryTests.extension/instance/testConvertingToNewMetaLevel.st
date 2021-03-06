*Calypso-SystemQueries-Tests
testConvertingToNewMetaLevel
	| newQuery scopes |
	query subqueries: {
		ClyAllMethodGroups from: ClyClassScope of: Object in: environment.
		ClyAllMethodGroups from: ClySubclassScope of: Array in: environment}.
		
	newQuery := query withMetaLevelScope: ClyInstanceSideScope.
	
	self assert: newQuery class equals: self queryClass.
	self
		assert: (newQuery subqueries collect: #class)
		equals: (query subqueries collect: #class).
	self assert: newQuery requiredResult == query requiredResult.
	scopes := newQuery subqueries collect: [ :each | each scope ] as: Set.
	self assert: scopes equals: {
		ClyInstanceSideScope of: Object.
		ClySubclassScope of: Array localScope: ClyInstanceSideScope
	} asSet