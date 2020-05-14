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
				withCredentials([[$class: 'UsernamePasswordMultiBinding', credentialsId: 'dockerhub', usernameVariable: 'DOCKER_USERNAME', passwordVariable: 'DOCKER_PASSWORD']]){
					sh '''
						docker build -t migzruiz/capstone .
					'''
				}
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

