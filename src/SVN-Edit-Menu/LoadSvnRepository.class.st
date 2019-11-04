"
I represent a menu entry/command for loading an SVN repository from a dump file.

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
	#name : #LoadSvnRepository,
	#superclass : #SVNEditListboxMenuItem,
	#category : #'SVN-Edit-Menu'
}

{ #category : #initialization }
LoadSvnRepository class >> initialize [
	"Define the string representing me that appears in a listbox menu."
	
	listboxString := 'Load SVN repo'
]

{ #category : #execution }
LoadSvnRepository >> performSelectedOperation [
	"Load an SVN repository (new or existing) on the host with a dump file."	
			
	UIManager default alert: 'I''m going to load an SVN repository on the host disk with a dump file.
	
I''ll need to ask you for the path to the dump file, and a directory path to the SVN repo directory.

If the SVN repo directory doesn''t exist, I''ll offer you the option of creating it.' 
]
