hello:
	echo "this is my first make command"
venv:
	py -3 -m venv .venv &&\
		.venv/bin/activate
install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt
lint:
	pylint --disable=R,C  hello.py
test:
	python -m pytest -vv test_hello.py

all: hello venv install lint test
