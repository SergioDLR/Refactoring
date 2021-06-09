Class {
	#name : #TopicRetriever,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #retrieving }
TopicRetriever >> retrieveQuestions: aUser [
	| qRet temp followingCol topicsCol newsCol popularTCol averageVotes|
	qRet := OrderedCollection new.
	topicsCol := OrderedCollection new.
	aUser topics do:[ :topic | topicsCol addAll: topic questions ].
	temp := topicsCol asSortedCollection:[ :a :b | a positiveVotes size > b positiveVotes size ].
	qRet := temp last: (100 min: temp size).
	^qRet reject:[:q | q user = aUser].
]
