"
I represent a semi-concrete listbox menu item for my package's application.

I need to be subclassed to create a set of concrete command objects, one for 
each of my menu items, to provide the menu strings & the commands they invoke.  

I implement the abstract methods of my package, provide its common variables, 
and use the common variables & methods of my parent abstract class.

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
	#name : #SVNEditListboxMenuItem,
	#superclass : #ListboxMenuItem,
	#category : #'SVN-Edit-Menu'
}

{ #category : #execution }
SVNEditListboxMenuItem >> performSelectedOperation [
	"If this method runs, it's a programming error, most likely a config error."	
			
	UIManager default alert: 'Programming error!
	
The app messaged "perfomSelectedOperation" to the abstract ListboxMenuItem.

Check to make sure that only subclasses are being provided as menu items.' 
]
