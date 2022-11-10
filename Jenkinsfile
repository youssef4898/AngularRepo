pipeline {
  agent any
    stages { 
      stage ("Pull"){
        steps {
          sh "echo 'helloWord' "
        }
      }
	stage('build'){
	  steps{
      script{
        sh "ansible-playbook ansible/build.yml -i ansible/inventory/host.yml"

      }
		
    }
}
    }
}
