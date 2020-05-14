pipeline {
	  

    agent any
    stages {
		stage('Initialize'){
        	def dockerHome = tool 'myDocker'
        	def mavenHome  = tool 'myMaven'
        	env.PATH = "${dockerHome}/bin:${mavenHome}/bin:${env.PATH}"
   		}

		stage('Lint HTML') {
			steps {
				sh 'tidy -q -e capstone/*.html'
			}
		}
		
		stage('Push to Docker Registry'){
        	withCredentials([usernamePassword(credentialsId: 'dockerhub', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {
            		sh '''
						docker build -t migzruiz/capstone .
					'''
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

