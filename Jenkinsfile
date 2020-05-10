pipeline {
    agent any
    stages {
        stage('Creating Kubernetes Cluster') {
			steps {
				withAWS(region:'us-west-2', credentials:'aws-static') {
					sh 'echo "Creating Kubernetes Cluster"'
					sh '''
						eksctl create cluster \
						--name capstonecluster \
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
    }
}