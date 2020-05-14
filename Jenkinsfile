pipeline {
	  
	environment {
    registry = 'migzruiz/capstone'
    registryCredential = 'dockerhub'
    dockerImage = ''
    tag = '0.1'
    semicolon = ':'
  	}

    agent any
    stages {
		stage('Lint HTML') {
			steps {
				sh 'tidy -q -e capstone/*.html'
			}
		}
		
		stage('Building Docker Image') {
      		steps {
				script {
					dockerImage = docker.build registry + semicolon + tag
				}
				sh 'docker image ls -a'
			}
    	}

		stage('Push Docker Image to Docker Hub') {
      		steps{
				script {
					docker.withRegistry( '', registryCredential ) {
						dockerImage.push()
					}
				}
      		}
    	}

    }
}

