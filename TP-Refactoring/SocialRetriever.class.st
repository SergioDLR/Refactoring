Class {
	#name : #SocialRetriever,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #retrieving }
SocialRetriever >> retrieveQuestions: aUser [
	| qRet temp followingCol topicsCol newsCol popularTCol averageVotes|
	qRet := OrderedCollection new.
	followingCol := OrderedCollection new.
	followingCol := aUser preguntasDeSeguidores.	
	qRet := self ordenarLista: followingCol. 
	^self ignorar:aUser deLista:qRet.
]
