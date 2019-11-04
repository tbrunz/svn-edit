"
I represent a menu entry/command for opening an SVN dump file on the host and 
loading its metadata into the image.

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
	#name : #OpenSvnDumpFile,
	#superclass : #SVNEditListboxMenuItem,
	#category : #'SVN-Edit-Menu'
}

{ #category : #initialization }
OpenSvnDumpFile class >> initialize [
	"Define the string representing me that appears in a listbox menu."
	
	listboxString := 'Open dump file'
]

{ #category : #execution }
OpenSvnDumpFile >> performSelectedOperation [
	"Open an SVN dump file located on the host disk."	
			
	UIManager default alert: 'I''m going to open an SVN dump file on the host disk, and stream in its metadata.
	
I''ll need to ask you for the path to the dump file.'
]
