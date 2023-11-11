setup:
	# Create a python virtualenv & activate it
	python3 -m venv ~/.devops
	# source ~/.devops/bin/activate

install:
	echo "Installing dependencies..."
	pip install --upgrade pip && pip install -r app/requirements.txt

install-hadolint:
	echo "Installing hadolint..."
	sudo wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64 && chmod +x /bin/hadolint

install-docker:
	chmod +x install-docker.sh
	./install-docker.sh

install-kubectl:
	chmod +x install-kubectl.sh
	./install-kubectl.sh

install-eskctl:
	chmod +x install-eksctl.sh
	./install-eksctl.sh

run-docker:
	echo "Running Docker..."
	docker run -t --rm -p 80:80 devops-capstone

build-docker:
	echo "Building Docker..."
	docker build --tag devops-capstone app

upload-docker:
	echo "Uploading Docker to Docker Hub..."
	docker login -u thanhtrungdocker
	docker image tag devops-capstone thanhtrungdocker/devops-capstone:v1
	docker push thanhtrungdocker/devops-capstone:v1

create-cluster:
	chmod +x ./create-cluster.sh
	./create-cluster.sh

deployment:
	chmod +x ./deployment.sh
	./deployment.sh

rolling:
	chmod +x ./rolling.sh
	./rolling.sh

rollback:
	kubectl get deployments -o wide
	kubectl rollout undo deployment devops-capstone
	kubectl describe pods | grep -i image
	kubectl get pods -o wide
	kubectl get deployments -o wide

forwarding:
	kubectl port-forward service/devops-capstone 80:80

cleanup:
	chmod +x ./cleanup.sh
	./cleanup.sh

test:
	# Additional, optional, tests could go here
	#python -m pytest -vv --cov=myrepolib tests/*.py
	#python -m pytest --nbval notebook.ipynb

lint:
	# This is linter for Dockerfiles
	hadolint app/Dockerfile
	# This should be run from inside a virtualenv
	pylint --disable=R,C,W1203,W1202 app/app.py

all: install lint test