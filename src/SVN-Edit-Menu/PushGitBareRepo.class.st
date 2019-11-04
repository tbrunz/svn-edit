"
I represent a menu entry/command for pushing a bare Git repository located on 
the host disk to a remote server.

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
	#name : #PushGitBareRepo,
	#superclass : #SVNEditListboxMenuItem,
	#category : #'SVN-Edit-Menu'
}

{ #category : #initialization }
PushGitBareRepo class >> initialize [
	"Define the string representing me that appears in a listbox menu."
	
	listboxString := 'Push Git bare'
]

{ #category : #execution }
PushGitBareRepo >> performSelectedOperation [
	"Push a Git bare repository to a remote server (GitHub, GitLab, BitBucket)."	
			
	UIManager default alert: 'I''m going to push a Git bare repository on the host disk to a remote server.
	
I''ll need to ask you for the path to the Git repository, and the URL of the account on the server.'
]
