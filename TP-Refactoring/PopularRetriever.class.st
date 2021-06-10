Class {
	#name : #PopularRetriever,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #'as yet unclassified' }
PopularRetriever >> promediarVotos: aList [
^(cuoora contarVotosPositivos) / aList size

]

{ #category : #retrieving }
PopularRetriever >> retrieveQuestions: aUser [
	| qRet temp followingCol topicsCol newsCol popularTCol |
	qRet := OrderedCollection new.
	popularTCol := OrderedCollection new.
	popularTCol := cuoora getPreguntasHoy . 
	temp := (popularTCol select:[:q | q positiveVotes size >= (self promediarVotos: popularTCol) ]).
	qRet := self ordenarLista: temp.
	^self ignorar:aUser deLista:qRet.
]
