pipeline {
  agent any
  tools{
    nodejs'16.13.0'
  }
    stages { 
      stage ("Pull"){
        steps {
          sh "echo 'helloWord' "
        }
      }
	stage('build'){
	  steps{
      script{
       
        sh "ansible-playbook Ansible/build.yml -i Ansible/inventory/host.yml"

      }
		
    }
}
    }
}
