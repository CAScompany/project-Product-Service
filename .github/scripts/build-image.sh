#!/bin/bash

docker build -t $ECR_REPOSITORY/$REGISTRY:product-serviceaws-$CI_ENV-v$VERSION ./Docker 
