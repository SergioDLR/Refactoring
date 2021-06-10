Class {
	#name : #SocialRetriever,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #'as yet unclassified' }
SocialRetriever >> getPreguntasRelevantesDe: aUser [
	^self ordenarLista: aUser preguntasDeSeguidores
]
