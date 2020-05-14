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
		
		stage('Building Docker Image') {
      		steps {
				script {
					dockerImage = docker.build registry + semicolon + tag
				}
				sh 'sudo docker image ls -a'
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

