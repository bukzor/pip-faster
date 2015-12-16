all:
	rm -rf venv
	virtualenv venv
	./venv/bin/pip install -r requirements.txt
	. ./venv/bin/activate && ./test
