I represent variables of class with explicit information about defining class.
I am always created on some actual variable instance like Slot or ClassVariable:

	ClyVariable on: aSlot definedIn: aClass

My subclasses implement three methods:
- isAccessibleFrom: aClass
- isReadIn: aMethod
- isWrittenIn: aMethod

Internal Representation and Key Implementation Points.

    Instance Variables
	actualVariable:		<Slot, ClassVariable>
	declaringClass:		<Class>