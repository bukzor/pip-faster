.PHONY: demo
demo: venv
	. ./venv/bin/activate && ./demo.sh


.PHONY: test
test: venv
	. ./venv/bin/activate && ./test

venv: Makefile requirements.txt
	rm -rf venv
	virtualenv venv
	./venv/bin/pip install -r requirements.txt
