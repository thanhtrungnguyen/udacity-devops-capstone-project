#! /bin/bash
DEPLOYMENT_NAME=devoops-capstone
echo ":::: Deleting service ${DEPLOYMENT_NAME} ::::"
kubectl delete services ${DEPLOYMENT_NAME}

echo ":::: Deleting deployment ${DEPLOYMENT_NAME} ::::"
kubectl delete deployments ${DEPLOYMENT_NAME}

echo ":::: DEPLOYMENT ::::"
kubectl get deployments -o wide
echo ":::: SERVICES ::::"
kubectl get services -o wide
echo ":::: PODS ::::"
kubectl get pods -o wide