install:
	#install commands
	pip install --upgrade pip &&\
		pip install -r requirements.txt

format:
	# format commands
	black *.py mylib/*.py

lint:
	pylint --disable=R,C hello.py

test:
	python -m pytest -vv --cov=hello test_hello.py

all: install lint test