"
I am an application used to interactively manipulate SVN repository dump files.
I can import/export, dump/load, and edit the histories of SVN dump files.
I can also create Git repositories from SVN repos or their dump files.

I am responsible for creating my GUI menu, displaying it, and running a loop 
to respond to each menu pick.

I use an application-specific subclass of a generic menu manager to define my 
commands and the classes that handle them.

#TODO
Public API and Key Messages:  

- message one   
- message two 
- (for bonus points) how to create instances.

   One simple example is simply gorgeous.
 
Internal Representation and Key Implementation Points.


    Implementation Points
"
Class {
	#name : #SVNEdit,
	#superclass : #Object,
	#classVars : [
		'SvnEditCommandMenu'
	],
	#category : #'SVN-Edit'
}

{ #category : #'class initialization' }
SVNEdit class >> initialize [ 
	"Create the menu of commands specific to this class."	
	
	SvnEditCommandMenu := ListboxMenu buildListBoxMenu: SVNEditListboxMenu
]

{ #category : #accessing }
SVNEdit class >> start [
	"Create an app-specific menu, then run the application's main loop: 
	display the menu & respond to the options the user clicks."	
			
	^ self new 
		runMenuEventLoop
]

{ #category : #operation }
SVNEdit >> runMenuEventLoop [
	"Run a loop to display a command menu & dispatch on the items selected."	
	
	[ SvnEditCommandMenu value performSelectedOperation ] whileNotNil: [ true ]
]
