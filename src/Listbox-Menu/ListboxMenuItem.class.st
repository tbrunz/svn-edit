"
I represent an abstract listbox menu item.

I need to be subclassed to create an abstract listbox menu item for a particular 
application.  I provide a set of common abstract methods for my subclasses.

I don't know how to do anything...  I'm abstract!

#TODO
Public API and Key Messages

- message one   
- message two 
- (for bonus points) how to create instances.

   One simple example is simply gorgeous.
 
Internal Representation and Key Implementation Points.


    Implementation Points
"
Class {
	#name : #ListboxMenuItem,
	#superclass : #Object,
	#classInstVars : [
		'listboxString'
	],
	#category : #'Listbox-Menu'
}

{ #category : #accessing }
ListboxMenuItem class >> listboxString [
	^ listboxString
]

{ #category : #accessing }
ListboxMenuItem class >> listboxString: aListboxString [
	listboxString := aListboxString
]

{ #category : #execution }
ListboxMenuItem >> performSelectedOperation [
	"Abstract method to execute a menu item's function, when selected."	
			
	self subclassResponsibility 
]
