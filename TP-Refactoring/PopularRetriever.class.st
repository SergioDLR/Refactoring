Class {
	#name : #PopularRetriever,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #retrieving }
PopularRetriever >> retrieveQuestions: aUser [
	| qRet temp followingCol topicsCol newsCol popularTCol averageVotes|
	qRet := OrderedCollection new.
	popularTCol := OrderedCollection new.
	cuoora questions do:[:q | (q timestamp asDate = Date today) ifTrue: [popularTCol add: q]].
	averageVotes := (cuoora questions sum: [:q | q positiveVotes size ]) / popularTCol size.
	temp := (popularTCol select:[:q | q positiveVotes size >= averageVotes ]) asSortedCollection:[ :a :b | a positiveVotes size > b positiveVotes size ].
	qRet := temp last: (100 min: temp size).	
	^qRet reject:[:q | q user = aUser].
]
