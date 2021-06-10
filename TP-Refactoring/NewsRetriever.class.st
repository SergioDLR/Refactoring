Class {
	#name : #NewsRetriever,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #retrieving }
NewsRetriever >> retrieveQuestions: aUser [
	| qRet temp followingCol topicsCol newsCol popularTCol averageVotes|
	qRet := OrderedCollection new.
	newsCol := OrderedCollection new.
	cuoora questions do:[:q | (q timestamp asDate = Date today) ifTrue: [newsCol add: q]].
	temp := newsCol asSortedCollection:[ :a :b | a positiveVotes size > b positiveVotes size ].
	qRet := temp last: (100 min: temp size).
	^qRet reject:[:q | q user = aUser].
]