Class {
	#name : #BaselineOfSVNEdit,
	#superclass : #BaselineOf,
	#category : #BaselineOfSVNEdit
}

{ #category : #baselines }
BaselineOfSVNEdit >> baseline: spec [
	<baseline>
	spec for: #'common' do: [
		spec 
			package: 'Listbox-Menu';
			package: 'SVN-Edit-Menu' with: [ spec requires: #('Listbox-Menu') ];
			package: 'SVN-Edit' with: [ spec requires: #('SVN-Edit-Menu') ];
			package: 'SVN-Edit-Tests' with: [ spec requires: #('SVN-Edit') ].
		spec 
			group: 'Core' with: #('SVN-Edit' 'SVN-Edit-Menu' 'Listbox-Menu');
			group: 'Tests' with: #('SVN-Edit-Tests');
			group: 'default' with: #('Core' 'Tests') 
		]
]
