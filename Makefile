install:
	#install commands
	pip install --upgrade pip &&\
		pip install -r requirements.txt

post-install:
	#post install commands
	python -m textblob.download_corpora

format:
	# format commands
	black *.py mylib/*.py

lint:
	pylint --disable=R,C hello.py mylib/*.py

test:
	python -m pytest -vv --cov=mylib --cov=main test_main.py

build:
	#build container
	docker build -t deploy-fastapi .

run:
	#run container
	#docker run -p 127.0.0.1:8080:8080 34117cf4b55d


deploy:
	#deploy container
	aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 423447124377.dkr.ecr.us-east-1.amazonaws.com	docker build -t wiki-fast-app .
	docker build -t wiki-fast-app .
	docker tag wiki-fast-app:latest 423447124377.dkr.ecr.us-east-1.amazonaws.com/wiki-fast-app:latest
	docker push 423447124377.dkr.ecr.us-east-1.amazonaws.com/wiki-fast-app:latest

all: install post-install lint test deploy