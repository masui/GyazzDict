all:
	ruby gyazz2dic kdict 'リスト' > tmp
	ruby connection2txt tmp > dict.txt
