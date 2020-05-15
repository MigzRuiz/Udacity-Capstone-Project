Steps:
* Launched and Installed a Jenkins instance on EC2
* Create a pipeline on Jenkins to create Kubernetes cluster
   * Fixed credentials for Jenkins to do the cloudformation
   * Installed eksctl on the Jenkins server
   * Installed python-pip (sudo apt install python-pip) on the Jenkins server
   * Installed aws cli on the Jenkins server
   * Added my credentials on the Jenkins server
* Create a pipeline to deploy docker