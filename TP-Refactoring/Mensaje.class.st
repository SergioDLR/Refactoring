Class {
	#name : #Mensaje,
	#superclass : #Object,
	#instVars : [
		'timestamp',
		'user',
		'votes',
		'description'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #adding }
Mensaje >> addVote: aVote [
	votes add: aVote
]

{ #category : #accessing }
Mensaje >> description [
	^ description
]

{ #category : #private }
Mensaje >> description: anObject [
	description := anObject
]

{ #category : #accessing }
Mensaje >> negativeVotes [ 
	^ votes reject: [ :vote | vote isLike ]
]

{ #category : #accessing }
Mensaje >> positiveVotes [
	^votes select:[:vote |vote isLike].
]

{ #category : #accessing }
Mensaje >> timestamp [
	^ timestamp
]

{ #category : #private }
Mensaje >> timestamp: anObject [
	timestamp := anObject
]

{ #category : #accessing }
Mensaje >> user [
	^ user
]

{ #category : #private }
Mensaje >> user: anObject [
	user := anObject
]

{ #category : #accessing }
Mensaje >> votes [
	^ votes
]
