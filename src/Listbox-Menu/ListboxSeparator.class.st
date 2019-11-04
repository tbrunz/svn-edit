"
I represent an listbox menu separator item.

I don't have any subclasses or methods; I only provide a separator line in a 
listbox menu. 

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
	#name : #ListboxSeparator,
	#superclass : #ListboxMenuItem,
	#category : #'Listbox-Menu'
}

{ #category : #initialization }
ListboxSeparator class >> initialize [
	"Define the string representing me that appears in a listbox menu."
	
	listboxString := '--------------'
]

{ #category : #execution }
ListboxSeparator >> performSelectedOperation [
	"It's okay to select this as a menu item.  Likely, it's an accident. 
	However, if the user does select this item, then just do nothing."	
			
	^ self 
]
