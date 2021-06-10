Class {
	#name : #NewsRetriever,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #'as yet unclassified' }
NewsRetriever >> getPreguntasRelevantesDe: aUser [
	^ self ordenarLista: cuoora getPreguntasHoy
]
