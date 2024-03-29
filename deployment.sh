#! /bin/bash
# aws eks update-kubeconfig --region us-west-2 --name capstone-v1
kubectl create deployment devops-capstone --image=thanhtrungdocker/devops-capstone:v1 --replicas=4 && \
kubectl expose deployment/devops-capstone --type="LoadBalancer" --port 80
echo "Kubernetes developments:"
kubectl get deployments -o wide
echo "Kubernetes services:"
kubectl get services -o wide
echo "Kubernetes pods"
kubectl get pods -o wide
