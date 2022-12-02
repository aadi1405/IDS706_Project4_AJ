install:
	#install commands
	pip install --upgrade pip &&\
		pip install -r requirements.txt

format:
	# format commands
	black *.py mylib/*.py

lint:
	pylint --disable=R,C hello.py mylib/*.py

test:
	python -m pytest -vv --cov=mylib test_logic.py

build:
	#build container

deploy:
	#deploy container

all: install lint test deploy