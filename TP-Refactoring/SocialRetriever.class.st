Class {
	#name : #SocialRetriever,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #retrieving }
SocialRetriever >> retrieveQuestions: aUser [
	^self ignorar:aUser deLista:(self ordenarLista: aUser preguntasDeSeguidores).
]
