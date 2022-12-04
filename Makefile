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
	aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 423447124377.dkr.ecr.us-east-1.amazonaws.com
	docker build -t fastapi-wiki .
	docker tag fastapi-wiki:latest 423447124377.dkr.ecr.us-east-1.amazonaws.com/fastapi-wiki:latest
	docker push 423447124377.dkr.ecr.us-east-1.amazonaws.com/fastapi-wiki:latest

run:
	#run container
	docker run -p 127.0.0.1:8080:8080 bb8f1741a1fa

all: install lint test deploy