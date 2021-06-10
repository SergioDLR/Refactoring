Class {
	#name : #PopularRetriever,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #'as yet unclassified' }
PopularRetriever >> preguntasPopulares [ 
^(cuoora getPreguntasHoy select:[:q | q positiveVotes size >= (self promediarVotosHoy)]).
]

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
	| qRet temp |
	qRet := OrderedCollection new.
	temp := self preguntasPopulares. 
	qRet := self ordenarLista: temp.
	^self ignorar:aUser deLista:qRet.
]
