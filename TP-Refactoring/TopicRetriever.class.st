Class {
	#name : #TopicRetriever,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #'as yet unclassified' }
TopicRetriever >> getPreguntasRelevantesDe: aUser [
	^self ordenarLista: aUser preguntasDeTopicos
]
