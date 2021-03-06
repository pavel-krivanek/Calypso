building
buildItemsPerClassFrom: systemObjects
	| itemsPerClass item localItems |
	itemsPerClass := IdentityDictionary new.

	systemObjects do: [ :each |
		item := each asCalypsoBrowserItem.
		localItems := itemsPerClass
			at: item systemDefinitionClass ifAbsentPut: [self containerForItemsOfClass ].
		localItems add: item].
	
	^itemsPerClass