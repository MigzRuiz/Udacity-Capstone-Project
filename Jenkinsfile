pipeline {
    agent any
    stages {
        stage('Create EKS Cluster IAM Role') {
			steps {
				withAWS(region:'us-west-2', credentials:'aws-static') {
					sh '''
						aws cloudformation create-stack \
						--stack-name eksClusterRole \
						--template-body file://eks-role.yaml \
						--region=us-west-2
					'''
				}
			}
		}
    }
}