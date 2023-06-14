# Deploy backend application on K8S cluster using CI/CD Jenkins pipeline
# Project Requirement 
![220208892-c15e032a-8c96-4ea1-9731-e40c6edd0f00](https://github.com/MohamedSamy74/infra-repo-iti-final-project/assets/44952687/58977aef-9350-46a2-9f1f-afc1d1573279)
# Tools Used
- Terraform
- GCP
- Kubernetes
- Jenkins
- Docker
- Shell script
# Getting Started
- Setup your GCP account
- Make sure to install the required tools such as (Terraform, and Docker)
# Prerequisites
- Install Terraform
- GCP Account
- Master Jenkins Up and Running
# Installation
- Clone This Repo
- Configure your GCP credentials
- `gcloud auth login`
- Build The Dockerfile and push it

- Run Terraform files
- `terraform init`
- `terraform apply`

Connect to the GKE private cluster
- `gcloud container clusters get-credentials <cluster_name> --zone <zone> --project <project_id>`
  
Copy the provided k8s files and run them by:
- `kubectl apply -f <file-name>`

- Run the following command to get the IP Address of your Application
- `kubectl get all`

Copy the IP address of LoadBalancer and insert it in your browser to access the Application!

Now Your Infrastructure & Application Is Up and Running !!
-------------
Remember, to run this pipeline, you will need to configure your GCP personal credentials locally on the Jenkins master machine. You can do this by following the GCP documentation on setting up authentication for your environment.

note: I attached the documentation links that I used in each file.
# Thank you
