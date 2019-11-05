"
I represent a menu entry/command for importing an SVN dump file from a server.

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
	#name : #ImportFromServer,
	#superclass : #SVNEditListboxMenuItem,
	#category : #'SVN-Edit-Menu'
}

{ #category : #initialization }
ImportFromServer class >> initialize [
	"Define the string representing me that appears in a listbox menu."
	
	listboxString := 'Server -> Host'
]

{ #category : #execution }
ImportFromServer >> performSelectedOperation [
	"Import an SVN dump file from a remote server."	
			
	UIManager default message: 'I''m going to transfer an SVN dump file from a remote server to the host disk.
	
I''ll need to ask you for the URL of the dump file on the server, and a destination directory path on the host.' 
]
