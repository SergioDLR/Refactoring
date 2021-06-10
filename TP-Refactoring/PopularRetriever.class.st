Class {
	#name : #PopularRetriever,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #'as yet unclassified' }
PopularRetriever >> promediarVotos: aList [
^(cuoora contarVotosPositivos) / aList size

]

{ #category : #'as yet unclassified' }
PopularRetriever >> promediarVotosHoy [
^(self promediarVotos: cuoora getPreguntasHoy).  
]

{ #category : #retrieving }
PopularRetriever >> retrieveQuestions: aUser [
	| qRet temp followingCol topicsCol newsCol popularTCol |
	qRet := OrderedCollection new.
	popularTCol := OrderedCollection new.
	temp := (cuoora getPreguntasHoy select:[:q | q positiveVotes size >= (self promediarVotosHoy)]).
	qRet := self ordenarLista: temp.
	^self ignorar:aUser deLista:qRet.
]
