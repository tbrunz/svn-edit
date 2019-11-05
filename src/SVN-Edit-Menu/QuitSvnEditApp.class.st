"
I represent a menu entry/command for quitting the application. 

I define my menu string and I'm the object the menu returns when I'm selected.

I know how to implement the abstract menu methods for providing my menu string 
and for executing menu commands in ways meaningful for what I represent.  

Public API and Key Messages

- message one   
- message two 
- (for bonus points) how to create instances.

   One simple example is simply gorgeous.
 
Internal Representation and Key Implementation Points.


    Implementation Points
"
Class {
	#name : #QuitSvnEditApp,
	#superclass : #SVNEditListboxMenuItem,
	#category : #'SVN-Edit-Menu'
}

{ #category : #initialization }
QuitSvnEditApp class >> initialize [
	"Define the string representing me that appears in a listbox menu."
	
	listboxString := 'Quit'
]

{ #category : #execution }
QuitSvnEditApp >> performSelectedOperation [
	"Quit the app, offering to save any modified, unsaved SVN dump file metadata."	
			
	UIManager default message: 'I''m going to quit the application now...
	
I will detect if there''s any modified, unsaved metadata and offer to save it first.' .

	^ nil  "Return nil to stop the event loop."
]
