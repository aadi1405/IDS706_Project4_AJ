
[![Python application test with Github Actions](https://github.com/aadi1405/IDS706_Project4_AJ/actions/workflows/devops.yml/badge.svg)](https://github.com/aadi1405/IDS706_Project4_AJ/actions/workflows/devops.yml)

# Project 4 -
Continuous Delivery of Flask/FastAPI Data Engineering API on AWS

Create a Microservice that returns a JSON payload and performs a Data Engineering related task
Push tested source code to Github and perform Continuous Integration with Github Actions (or similar SaaS Build service)
Configure Build Server to Deploy Changes on build (Continuous Delivery)

# Steps -  

1) Created python virtual env
2) Created the scaffold files, empty files - Makefile, requirements.txt, main.py, Dockerfile, mylib/__innit__.py
3) Populate Makefile 
4) Set up Github Actions 
5) Make sure Pylint is working - formatting
6) Test code with Pytest and Pytest Coverage
7) Build a cli using python fire library
8) Building FastAPI microservice
9) Using Text blob NLP service to parse phrases
10) Building container
11) Setup AWS Code Build push to ECR (Elastic Container Registry)


![image](https://user-images.githubusercontent.com/67281453/205518554-b047ba23-f7d4-4dbb-a0a1-4817282cde04.png)


## This project was learnt from [Build Real-World Python Microservices with Continuous Delivery From Zero](https://www.youtube.com/watch?v=YB-_FsssK8E)

## What is the FASTAPI application?

A Json payload that retrieves wikipedia information and has three functions, namely,
1) Search : Shows the list of wikipedia pages with a similar name
2) wiki : Returns the wikipedia content for the value searched
3) phrase : returns the paragraph in phrases (Using TextBlob)


## Code Build on AWS - Success (This was deleted right after the project to avoid any charges)

Screenshot to show what was done on AWS : 

![image](https://user-images.githubusercontent.com/67281453/205520605-0b7b1f94-a6b1-4614-8d0f-d4e5768a15a9.png)

![image](https://user-images.githubusercontent.com/67281453/205520635-6a4b4754-07fb-45e8-928b-77eba40f2e65.png)








