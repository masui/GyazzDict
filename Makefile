all:
	ruby gyazz2dic 'kdict::リスト' > tmp
	ruby connection2txt tmp > dict.txt

push:
	git push pitecan.com:/home/masui/git/GyazzDict.git
	git push git@github.com:masui/GyazzDict.git
