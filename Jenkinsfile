pipeline {
    agent any
    stages {
        stage('Create kubernetes cluster') {
			steps {
				withAWS(region:'us-west-2', credentials:'aws-static') {
					sh '''
						eksctl version
					'''
				}
			}
		}
    }
}