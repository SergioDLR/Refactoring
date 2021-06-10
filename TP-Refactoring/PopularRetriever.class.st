Class {
	#name : #PopularRetriever,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #'as yet unclassified' }
PopularRetriever >> getPreguntasRelevantesDe: aUser [
	^self ordenarLista: self preguntasPopulares
]

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
