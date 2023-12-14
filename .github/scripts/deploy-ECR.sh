#!/bin/bash

aws ecr get-login-password --region <your-region> | docker login --username AWS --password-stdin <your-ecr-repo-url>

aws ecr get-login-password --region <your-region> | docker login --username AWS --password-stdin <AWS_ACCOUNT_ID>.dkr.ecr.<REGION>.amazonaws.com/aws-ecr-nginx

docker push <AWS_ACCOUNT_ID>.dkr.ecr.<REGION>.amazonaws.com/aws-ecr-nginx:1.0.0