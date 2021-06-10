Class {
	#name : #TopicRetriever,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #retrieving }
TopicRetriever >> retrieveQuestions: aUser [
	| qRet temp followingCol topicsCol newsCol popularTCol averageVotes|
	qRet := OrderedCollection new.
	topicsCol := OrderedCollection new.
	topicsCol:= aUser preguntasDeTopicos. 
	qRet := self ordenarLista: topicsCol. 
	^self ignorar:aUser deLista:qRet.
]
