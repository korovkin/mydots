all: osx
	echo "=> DONE."
	git st

phony:
	echo "."

osx: phony
	echo "=> FETCH: OSX"
	brew list > brew_list.txt

