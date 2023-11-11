## Udacity DevOps Capstone Project

[![CircleCI](https://dl.circleci.com/status-badge/img/gh/thanhtrungnguyen/udacity-devops-capstone-project/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/thanhtrungnguyen/udacity-devops-capstone-project/tree/main)

[Go to the Web site](http://adb108faca05b47dca22080cafeb7a57-460402139.us-west-1.elb.amazonaws.com/)

## Executive Summary

This project uses CircleCI and an AWS EKS (Amazon Elastic Kubernetes Service) cluster to operationalize a Flask demo web application for my blog:

1. **Ongoing Utilization of CircleCI**:

   A CircleCI pipeline has been established in order to automate the development procedure.

   - To guarantee code quality, we carry out code linting in the pipeline.
     . We create an application Docker image.
     . After that, the Docker image is uploaded to a public Docker Registry—Docker Hub, in this case—for convenient deployment and access.

2. **AWS EKS Kubernetes Deployment**:

   - To administer our Kubernetes cluster, we make use of AWS EKS.
   - The Flask application is deployed and executed within the EKS cluster.
     . This makes it possible for us to use Kubernetes for scaling, container orchestration, and management.

3. **Rolling Updates and Production Deployment**:

   - We use a rolling update method when it is time to push a new version of the application to production.
     . As a result, there will be less downtime and the program will transition between versions smoothly.
     . This update is orchestrated using Kubernetes.

4. **Makefile and Shell Scripts**: - We have arranged the many tasks in this project into a Makefile in order to automate and streamline them. Task execution and project management are made easier by this organized method.

We have developed a comprehensive workflow for creating, testing, and deploying the "hello" Flask application by combining CircleCI, AWS EKS, Docker Hub, and Kubernetes. This ensures effective development and production deployment processes.

## Duty

In order to create a Docker image and deploy it to a Kubernetes cluster, this project adheres to CI/CD best practices. The following are the main tasks for the project:

1. **Setup of Environment**:

   - Use `make setup` to initialize the virtual Python environment.
     Install each and every required dependency using `make install`.

2. **Assurance of Code Quality**:

   - Use linting to test the project's code:
     - Dockerfile, Python code, and Lint shell scripts: `make lint}

3. **Creation of Docker Images**:

   - To containerize the "hello" application, create a Dockerfile at `Dockerfile}.

4. **Deployment of Docker Images**:

   - Upload the containerized program to Docker Hub, or another public Docker registry.

5. **Deployment of Kubernetes Cluster**:

   - Use `make create-cluster` to deploy a Kubernetes cluster.

6. **Kubernetes Application Deployment**:

   - Use `make deployment` to launch the application into the Kubernetes cluster.

7. **Rolling Updates**: - Use a rolling-update technique to implement an update strategy for the application inside the cluster: {make rolling}

The software development lifecycle is fully automated by this CI/CD project, guaranteeing effective development and deployment procedures from code quality checks to deployment in a Kubernetes cluster.
