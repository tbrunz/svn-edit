"
I represent a menu entry/command for editing an SVN dump file.

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
	#name : #EditSvnDumpFile,
	#superclass : #SVNEditListboxMenuItem,
	#category : #'SVN-Edit-Menu'
}

{ #category : #initialization }
EditSvnDumpFile class >> initialize [
	"Define the string representing me that appears in a listbox menu."
	
	listboxString := 'Edit dump file'
]

{ #category : #execution }
EditSvnDumpFile >> performSelectedOperation [
	"Edit the metadata of an SVN dump file looated on the host."	
			
	UIManager default alert: 'I''m going to help you edit the metadata of an SVN dump file on the host disk.
	
You will have to have already selected and opened a dump file.' 
]
