pipeline {
    agent any
    stages {
		stage('Lint HTML') {
			steps {
				sh 'tidy -q -e capstone/*.html'
			}
		}
		
		stage('Build Docker Image') {
			steps {
				sh '''
					docker build -t migzruiz/capstone .
				'''
			}
		}

    }
}

