pipeline {
  agent any
  tools{
    NodeJS'14.17.0'
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
        sh ' node -v '
        sh "ansible-playbook Ansible/build.yml -i Ansible/inventory/host.yml"

      }
		
    }
}
    }
}
