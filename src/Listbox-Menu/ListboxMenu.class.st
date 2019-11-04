"
I represent a generic listbox menu.

I need to be provided with a subclass of ListBoxMenuItem, with which I can 
build an app-specific listbox menu that invokes its subclasses.

I know how to dynamically create a listbox menu from an ordered collection of
ListBoxMenuItem objects.  I also know how to display my menus and respond to 
user selections by returning the objects they are bound to.

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
	#name : #ListboxMenu,
	#superclass : #Object,
	#classInstVars : [
		'listboxOrderedCollection'
	],
	#category : #'Listbox-Menu'
}

{ #category : #configuration }
ListboxMenu class >> buildListBoxMenu: abstractListBoxMenuClass [
	"Build a listbox menu from an ordered collection of subclasses of an 
	application's abstract ListboxMenuItem class."	
			
	| menuStrings handlers |
	menuStrings := OrderedCollection new .
	handlers := OrderedCollection new .
	
	abstractListBoxMenuClass listboxOrderedCollection do: [ :menuItemClass | 
			menuStrings add: menuItemClass listboxString . 
			handlers add: menuItemClass new .
			] .
	^ [ UIManager default chooseFrom: menuStrings values: handlers title: 'Pick an operation:' ]
]

{ #category : #accessing }
ListboxMenu class >> listboxOrderedCollection [
	^ listboxOrderedCollection
]

{ #category : #accessing }
ListboxMenu class >> listboxOrderedCollection: aListboxOrderedCollection [
	listboxOrderedCollection := aListboxOrderedCollection
]
