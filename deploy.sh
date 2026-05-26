#!/bin/bash

aws ecr get-login-password --region us-east-2 | docker login --username AWS --password-stdin 328065812392.dkr.ecr.us-east-2.amazonaws.com

docker build -t lambda-final .

docker tag lambda-final:latest 328065812392.dkr.ecr.us-east-2.amazonaws.com/lambda-final:latest

docker push 328065812392.dkr.ecr.us-east-2.amazonaws.com/lambda-final:latest