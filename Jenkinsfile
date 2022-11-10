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
        sh "export PATH=/root/.nvm/versions/node/v14.17.0/bin:$PATH"
        sh "ansible-playbook Ansible/build.yml -i Ansible/inventory/host.yml"

      }
		
    }
}
    }
}
