"
I represent a menu entry/command for cloning an SVN repository on the host to 
make a new Git working repository.

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
	#name : #CloneGitFromSvn,
	#superclass : #SVNEditListboxMenuItem,
	#category : #'SVN-Edit-Menu'
}

{ #category : #initialization }
CloneGitFromSvn class >> initialize [
	"Define the string representing me that appears in a listbox menu."
	
	listboxString := 'SVN -> Git'
]

{ #category : #execution }
CloneGitFromSvn >> performSelectedOperation [
	"Clone an SVN repository on the host to make a new Git working repository."	
			
	UIManager default message: 'I''m going to clone an SVN repository on the host disk to make a new Git working directory.
	
I''ll need to ask you for the path to the SVN repo directory, and a path for the Git repo directory.' 
]
