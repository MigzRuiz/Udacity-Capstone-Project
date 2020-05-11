pipeline {
    agent any
    stages {
        stage('Creating Kubernetes Cluster') {
			steps {
				withAWS(region:'us-west-2', credentials:'aws-master') {
					sh 'echo "Creating Kubernetes Cluster"'
					sh '''
						eksctl create cluster \
						--name capstone \
						--nodegroup-name standard-workers \
						--node-type t2.micro \
						--nodes 2 \
						--nodes-min 1 \
						--nodes-max 3 \
						--node-ami auto \
						--region us-west-2 \
						--zones us-west-2a \
						--zones us-west-2b \
						--zones us-west-2c \
					'''
				}
			}
		}
		stage('Create CONF file for the cluster') {
			steps {
				withAWS(region:'us-east-1', credentials:'ecr_credentials') {
					sh '''
						aws eks --region us-west-2 update-kubeconfig --name capstone
					'''
				}
			}
		}
    }
}

