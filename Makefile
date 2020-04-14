all: lint dist

black: force
	black src/

deps: force
	pip install -r requirements.txt
	pip install -r requirements-dev.txt

dist: force
	python setup.py sdist bdist_wheel

flake8: force
	flake8 src/

lint: black flake8 mypy

mypy: force
	mypy src/

force: ;
