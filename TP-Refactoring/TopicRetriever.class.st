Class {
	#name : #TopicRetriever,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #retrieving }
TopicRetriever >> retrieveQuestions: aUser [
	^self ignorar:aUser deLista:(self ordenarLista: aUser preguntasDeTopicos ).
]
