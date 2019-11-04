"
I represent a menu entry/command for exporting an SVN dump file to a server.

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
	#name : #ExportToServer,
	#superclass : #SVNEditListboxMenuItem,
	#category : #'SVN-Edit-Menu'
}

{ #category : #initialization }
ExportToServer class >> initialize [
	"Define the string representing me that appears in a listbox menu."
	
	listboxString := 'Host -> Server'
]

{ #category : #execution }
ExportToServer >> performSelectedOperation [
	"Export an SVN dump file on the host to a remote server."	
			
	UIManager default alert: 'I''m going to transfer an SVN dump file on the host disk to a remote server.
	
I''ll need to ask you for the URL to the destination on the server.' 
]
