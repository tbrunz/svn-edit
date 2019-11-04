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
			package: 'SVN-Edit';
			package: 'SVN-Edit-Menu';
			package: 'SVN-Edit-Tests';
			package: 'Listbox-Menu'.
		spec 
			group: 'Core' with: #('SVN-Edit' 'SVN-Edit-Menu' 'Listbox-Menu');
			group: 'Tests' with: #('SVN-Edit-Tests');
			group: 'default' with: #('Core' 'Tests') ]
]
