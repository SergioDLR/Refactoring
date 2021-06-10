Class {
	#name : #NewsRetriever,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #retrieving }
NewsRetriever >> retrieveQuestions: aUser [
	^self ignorar:aUser deLista:(self ordenarLista: (cuoora getPreguntasHoy)).
]
