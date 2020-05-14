pipeline {
	agent any
	stages {
		stage('Lint HTML') {
			steps {
				sh 'tidy -q -e *.html'
			}
		}
        stage('Install Docker') {
            steps {
                sh '''
                    sudo snap install docker
                '''
            }
        }
		stage('Build Docker Image') {
			steps {
					sh '''
						docker build --tag=migzruiz/capstone .
					'''
				}
			}
		}
	}
}
