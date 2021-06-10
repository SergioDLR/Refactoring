Class {
	#name : #PopularRetriever,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #retrieving }
PopularRetriever >> retrieveQuestions: aUser [
	| qRet temp followingCol topicsCol newsCol popularTCol averageVotes|
	qRet := OrderedCollection new.
	popularTCol := OrderedCollection new.
	popularTCol := cuoora getPreguntasHoy . 
	averageVotes := cuoora  contarVotosPositivos / popularTCol size.
	temp := (popularTCol select:[:q | q positiveVotes size >= averageVotes ]).
	qRet := self ordenarLista: temp.
	^self ignorar:aUser deLista:qRet.
]
