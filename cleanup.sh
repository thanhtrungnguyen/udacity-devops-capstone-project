#! /bin/bash
DEPLOYMENT_NAME=devops-capstone
echo "Deleting service ${DEPLOYMENT_NAME} ..."
kubectl delete services ${DEPLOYMENT_NAME}

echo "Deleting deployment ${DEPLOYMENT_NAME} ..."
kubectl delete deployments ${DEPLOYMENT_NAME}

echo "Deployments:"
kubectl get deployments -o wide

echo "List all service:"
kubectl get services -o wide

echo "List all ports:"
kubectl get pods -o wide