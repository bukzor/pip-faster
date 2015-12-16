all:
	rm -rf .tox/venv
	virtualenv .tox/venv
	./.tox/venv/bin/pip install -r requirements.txt
	. ./.tox/venv/bin/activate && ./test
