Class {
	#name : #SocialRetriever,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #retrieving }
SocialRetriever >> retrieveQuestions: aUser [
	| qRet temp followingCol topicsCol newsCol popularTCol averageVotes|
	qRet := OrderedCollection new.
	followingCol := OrderedCollection new.
	aUser following do:[ :follow | followingCol addAll: follow questions ].
	temp := followingCol asSortedCollection:[ :a :b | a positiveVotes size > b positiveVotes size ].
	qRet := temp last: (100 min: temp size).
	^qRet reject:[:q | q user = aUser].
]
