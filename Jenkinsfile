pipeline {
    agent any
    stages {
        
		stage('Create CONF file for the cluster') {
			steps {
				withAWS(region:'us-west-2', credentials:'aws-master') {
					sh '''
						aws eks --region us-west-2 update-kubeconfig --name capstone
					'''
				}
			}
		}
    }
}

