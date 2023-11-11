#! /bin/bash

DEPLOYMENT_NAME=devops-capstone
NEW_IMAGE_NAME=registry.hub.docker.com/thanhtrungdocker/devops-capstone:latest

kubectl get deployments -o wide
kubectl set image deployments/${DEPLOYMENT_NAME} ${DEPLOYMENT_NAME}=${NEW_IMAGE_NAME}
kubectl get deployments -o wide
kubectl describe pods | grep -i image
kubectl get pods -o wide