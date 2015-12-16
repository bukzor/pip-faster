all: .tox/venv
	. ./.tox/venv/bin/activate && ./test

.tox/venv: Makefile requirements.txt
	rm -rf .tox/venv
	virtualenv .tox/venv
	./.tox/venv/bin/pip install -r requirements.txt
