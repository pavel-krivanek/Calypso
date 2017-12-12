instance creation
of: aBasisObject in: aNavigationEnvironment

	((aBasisObject isKindOf: String) not and: [aBasisObject isCollection])
		ifTrue: [ self error: 'use single object instead of array' ].
		
	^self ofAll: {aBasisObject} in: aNavigationEnvironment