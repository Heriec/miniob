.PHONY: run init build

run:
	./build/bin/observer -f ../etc/observer.ini -P cli

init:
	bash build.sh init

build:
	bash build.sh

test-%:
	python3 test/case/miniob_test.py --test-cases=$*