Class {
	#name : #NewsRetriever,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #retrieving }
NewsRetriever >> retrieveQuestions: aUser [
	| qRet temp followingCol topicsCol newsCol popularTCol averageVotes|
	qRet := OrderedCollection new.
	newsCol := OrderedCollection new.
	newsCol := cuoora getPreguntasHoy.
	qRet := self ordenarLista: newsCol.
	^self ignorar:aUser deLista:qRet.
]
