Class {
	#name : #Question,
	#superclass : #Mensaje,
	#instVars : [
		'title',
		'answers',
		'topics'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #'instance creation' }
Question class >> newWithTitle: title description: aDescription user: aUser [
	^ self new
		title: title;
		description: aDescription;
		user: aUser;
		yourself.
]

{ #category : #'instance creation' }
Question class >> newWithTitle: title description: aDescription user: aUser topic: aTopic [
	^ self new
		title: title;
		description: aDescription;
		addTopic: aTopic;
		user: aUser;
		yourself.
]

{ #category : #adding }
Question >> addTopic: aTopic [
	topics add: aTopic.
	aTopic addQuestion: self.

]

{ #category : #'as yet unclassified' }
Question >> esDeHoy [ 
^ timestamp asDate = Date today.
]

{ #category : #'initalize-release' }
Question >> initialize [
	answers := OrderedCollection new.
	topics := OrderedCollection new.
	votes := OrderedCollection new.
	timestamp := DateAndTime now.
]

{ #category : #accessing }
Question >> title [
	^title 
]

{ #category : #accessing }
Question >> title: aTitle [
	title := aTitle 
]

{ #category : #accessing }
Question >> topics [
	^topics 
]
