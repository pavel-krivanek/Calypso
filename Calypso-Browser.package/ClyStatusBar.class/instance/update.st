updating
update
	"Here I just trying to reset extent.
	When there are no items it should hide it.
	Otherwise layout policy will ignore it".
	(contextBar submorphs isEmpty and: [commandBar submorphs isEmpty]) 
		ifTrue: [ 
			self height: 0.
			contextBar height: 0.
			commandBar height: 0]