pipeline {
  agent any
  tools{
    nodejs'16.13.0'
  }
  stages {
  stage('Git ') {
            steps {
                echo 'pulling Main Project from git ...';
                git branch: 'master', credentialsId: 'git', url: 'https://github.com/youssef4898/AngularRepo.git '            }
        }
  
	stage('build'){
	  steps{
      script{
        sh "npm install"
        sh "ansible-playbook Ansible/build.yml -i Ansible/inventory/host.yml"

      }
		
    }
}
      stage('docker'){
	  steps{
      script{
        sh "ansible-playbook Ansible/docker.yml -i Ansible/inventory/host.yml"

      }
		
    }
}
      stage('push the image to a dockerhub repository') {
            steps {
                sh " docker login -u youssef1998 -p 123456789 "
                sh 'ansible-playbook Ansible/docker-registry.yml -i Ansible/inventory/hosts.yml'
                         }
                  }
                         
                         
        
      
    }
}
