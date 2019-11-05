"
I represent a menu entry/command for pushing a Git working repository to a 
newly-created bare Git repository located on the host.

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
	#name : #PushGitToBareRepo,
	#superclass : #SVNEditListboxMenuItem,
	#category : #'SVN-Edit-Menu'
}

{ #category : #initialization }
PushGitToBareRepo class >> initialize [
	"Define the string representing me that appears in a listbox menu."
	
	listboxString := 'Git to bare'
]

{ #category : #execution }
PushGitToBareRepo >> performSelectedOperation [
	"Push a Git working repository to a new bare Git repo on the host disk."	
			
	UIManager default message: 'I''m going to push a Git repository on the host disk to a new bare Git repo, which I will create first.
	
I''ll need to ask you for the path to the Git repository, and a path for the new bare repository.'
]
