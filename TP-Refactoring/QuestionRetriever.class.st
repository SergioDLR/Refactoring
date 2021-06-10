Class {
	#name : #QuestionRetriever,
	#superclass : #Object,
	#instVars : [
		'cuoora'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #'instance creation' }
QuestionRetriever class >> new: cuoora [
	^ self new cuoora: cuoora
]

{ #category : #'instance creation' }
QuestionRetriever class >> new: cuoora and: aSymbol [
	^ self new cuoora: cuoora; option:aSymbol; yourself.
]

{ #category : #accesing }
QuestionRetriever >> cuoora: aCuooraInstance [
	cuoora := aCuooraInstance 
]

{ #category : #'as yet unclassified' }
QuestionRetriever >> getPreguntasRelevantesDe: aUser [
	self subclassResponsibility
]

{ #category : #'as yet unclassified' }
QuestionRetriever >> ignorar: aUser deLista: qRet [
    ^qRet reject: [ :q | q user = aUser ].

]

{ #category : #'as yet unclassified' }
QuestionRetriever >> ordenarLista:aList [
^((aList asSortedCollection:[ :a :b | a positiveVotes size > b positiveVotes size ])last: (100 min: aList size)).
]

{ #category : #retrieving }
QuestionRetriever >> retrieveQuestions: aUser [
	^self ignorar:aUser deLista:(self getPreguntasRelevantesDe: aUser)
]
