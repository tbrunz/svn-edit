"
I represent a menu entry/command for saving a loaded SVN dump file to the host 
disk, merging its metadata with the text sections from the original dump file. 

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
	#name : #SaveSvnDumpFile,
	#superclass : #SVNEditListboxMenuItem,
	#category : #'SVN-Edit-Menu'
}

{ #category : #initialization }
SaveSvnDumpFile class >> initialize [
	"Define the string representing me that appears in a listbox menu."
	
	listboxString := 'Save dump file'
]

{ #category : #execution }
SaveSvnDumpFile >> performSelectedOperation [
	"Save the opened SVN dump file metadata to a new dump file located on the host disk."	
			
	UIManager default alert: 'I''m going to save the current SVN repo metadata to a new dump file on the host disk.
	
I will merge in (only) the referenced text sections from the source dump file on the host disk as I do this.
	
I''ll need to ask you for the path to the new dump file.  You will have to have already selected and opened a dump file.'
]
