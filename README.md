# Capstone Project

> My website: [My blog](http://)
> My github: [Github]()
> CI/CD pipelines: [circleci](https://app.circleci.com/pipelines/github/thanhtrungnguyen/udacity-devops-capstone-project)

## Overview

This project operationalizes a Python Flask demo web my blog using CircleCI and an AWS EKS (Amazon Elastic Kubernetes Service) cluster:

1. **Continuous Integration with CircleCI**:

   - We have set up a CircleCI pipeline to automate the development workflow.
   - In the pipeline, we perform code linting to ensure code quality.
   - We build a Docker image of the application.
   - The Docker image is then pushed to a public Docker Registry, specifically Docker Hub, for easy access and deployment.

2. **Kubernetes Deployment on AWS EKS**:

   - We leverage AWS EKS to manage our Kubernetes cluster.
   - Within the EKS cluster, we deploy and run the Flask application.
   - This allows us to utilize Kubernetes for container orchestration, scaling, and management.

3. **Production Deployment and Rolling Updates**:

   - When it's time to promote a new version of the application to production, we follow a rolling update strategy.
   - This ensures minimal downtime and seamless transitions between different versions of the application.
   - Kubernetes handles the orchestration of this update.

4. **Makefile and Shell Scripts**:
   - To streamline and automate the various tasks in this project, we have organized them into a Makefile.
   - This structured approach simplifies project management and execution of tasks.

By combining CircleCI, AWS EKS, Docker Hub, and Kubernetes, we have created a robust workflow for developing, testing, and deploying the "hello" Flask application, ensuring efficient development and production deployment processes.

## Tasks

This project follows a CI/CD methodology to build a Docker image and deploy it to a Kubernetes cluster. Here are the key tasks within the project:

1. **Environment Setup**:

   - Initialize the Python virtual environment: `make setup`
   - Install all necessary dependencies: `make install`

2. **Code Quality Assurance**:

   - Test the project's code through linting:
     - Lint shell scripts, Dockerfile, and Python code: `make lint`

3. **Docker Image Creation**:

   - Create a Dockerfile to containerize the "hello" application: `Dockerfile`

4. **Docker Image Deployment**:

   - Deploy the containerized application to a public Docker Registry, specifically Docker Hub.

5. **Kubernetes Cluster Deployment**:

   - Deploy a Kubernetes cluster using: `make create-cluster`

6. **Application Deployment in Kubernetes**:

   - Deploy the application into the Kubernetes cluster: `make deployment`

7. **Rolling Updates**:
   - Implement an update strategy for the application within the cluster using a rolling-update approach: `make rolling`

This CI/CD project automates the entire software development lifecycle, from code quality checks to deployment in a Kubernetes cluster, ensuring efficient development and deployment processes.

## CI/CD Tools and Cloud Services:

1. **Circle CI**: A cloud-based CI/CD service.
2. **Amazon AWS**: A provider of cloud services.
3. **AWS EKS**: Amazon Elastic Kubernetes Service, a managed Kubernetes service.
4. **AWS eksctl**: The official CLI tool for Amazon EKS.
5. **AWS CLI**: A command-line tool for interacting with AWS services.
6. **CloudFormation**: An Infrastructure as Code service for AWS.
7. **kubectl**: A command-line tool for controlling Kubernetes clusters.
8. **Docker Hub**: A container image repository service.

## Main files

```shell
├── app
│   ├── app.py
│   ├── Dockerfile
│   ├── requirements.txt
│   ├── static
│   │   ├── css
│   │   │   └── style.css
│   │   └── images
│   │       └── pic.png
│   └── templates
│       └── index.html
├── cleanup.sh
├── create-cluster.sh
├── deployment.sh
├── install-docker.sh
├── install-eksctl.sh
├── install-kubectl.sh
├── Makefile
├── README.md
└── rolling.sh
```

The Makefile triggers the execution of the following shell scripts:

`create-cluster.sh`: creates the EKS cluster

`install-eksctl.sh`: installs the eksctl tool

`install-kubectl.sh`: installs the kubectl tool

`create-cluster.sh`: Create cluster

`deployment.sh`: deploys and exposes a service in the K8S cluster
