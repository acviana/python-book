check-line-endings:
	grep -in "\. " src/*.md

count-todos:
	grep -ic "TODO" src/*.md
