"
I represent a concrete listbox menu for my package's application.

I define the order of ListBoxMenuItems (including separators) that will appear 
in my listbox menu when it is rendered.  My superclass uses this information 
to build & display the listbox menu; it also handles dispatching, etc.

Public API and Key Messages

- message one   
- message two 
- (for bonus points) how to create instances.

   One simple example is simply gorgeous.
 
Internal Representation and Key Implementation Points.


    Implementation Points
"
Class {
	#name : #SVNEditListboxMenu,
	#superclass : #ListboxMenu,
	#category : #'SVN-Edit-Menu'
}

{ #category : #initialization }
SVNEditListboxMenu class >> initialize [
	"Define the ordered collection of listbox items to appear in my menu."
	"These items are ListboxMenuItem subclasses, which will be queried, 
	and instantiated, when the menu is actually built by my superclass."
	
	listboxOrderedCollection := {
		DumpSvnRepository .
		LoadSvnRepository .
			ListboxSeparator .
		OpenSvnDumpFile .
		EditSvnDumpFile .
		SaveSvnDumpFile .
			ListboxSeparator .
		ImportFromServer .
		ExportToServer .
			ListboxSeparator .
		CloneGitFromSvn .
		PushGitToBareRepo .
		PushGitBareRepo .
			ListboxSeparator .
		QuitSvnEditApp .
		}
]
