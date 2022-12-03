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
	docker build -t deploy-fastapi .

deploy:
	#deploy container

run:
	#run container
	docker run -p 127.0.0.1:8080:8080 bb8f1741a1fa

all: install lint test deploy