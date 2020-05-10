pipeline {
    agent any
    stages {
        stage('Create EKS Cluster IAM Role') {
			steps {
				withAWS(region:'us-west-2', credentials:'aws-static') {
                    sh 'echo "Creating CloudFormation Stack"'
					cfnUpdate(stack:'eksClusterRole', file:'template.yaml')
				}
			}
		}
    }
}